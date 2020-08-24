//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mxflutter/mxflutter_test.dart';
import 'package:mxflutter/src/mirror/src/mx_mirror_object.dart';
import 'package:mxflutter/src/mx_js_bridge.dart';

import 'mirror/mx_mirror.dart';
import 'mx_flutter.dart';
import 'mx_flutter_app.dart';
import 'mx_common.dart';

typedef Future<dynamic> MXJsonWidgetCallbackFun(String callID, {dynamic p});

/// buildOwner 除了根节点，于 MXJSWidgetState 一一对应，形成树状结构，持有MXJSWidgetState，
/// 并接收JS调用操作MXJSWidgetState
class MXJsonBuildOwner {
  MXJsonBuildOwner(Element jsWidgetElement) {
    _jsWidgetElement = jsWidgetElement;
  }

  MXJsonBuildOwner.rootBuildOwner();

  /// MXJsonBuildOwner 组成BoNodeTree管理MXJsWidget的build
  MXJsonBuildOwner _parent;
  Map<String, MXJsonBuildOwner> _children = {};

  /// MXJsonBuildOwner 通过持有MXJSWidget的 Element来驱动后续Widget的更新
  Element _jsWidgetElement;

  BuildContext get buildContext => _jsWidgetElement;
  MXJSWidgetBase get widget => _jsWidgetElement?.widget as MXJSWidgetBase;
  String get ownerWidgetId => widget?.widgetID;

  MXJSWidgetState get state {
    if (_jsWidgetElement is MXJSStatefulElement) {
      return (_jsWidgetElement as MXJSStatefulElement).state;
    }
    return null;
  }

  String get widgetBuildDataSeq {
    if (_jsWidgetElement is MXJSStatefulElement) {
      return state?.widgetBuildDataSeq;
    } else if (_jsWidgetElement is MXJSStatelessElement) {
      return widget?.widgetBuildDataSeq;
    }

    return null;
  }

  /// MXJSWidget 保存JS侧相关的成员变量
  Set<String> _mirrorObjIds = Set();

  /// TODO: 暂时先打日志看下
  reset(MXJSStatefulWidget old) {
    MXJSLog.debug("MXJsonBuildOwner:reset: "
        "ownerWidgetId:$ownerWidgetId "
        "buildSeq:${_mirrorObjIds.join('|')}");

    // 用新的widgetId 更新 _parent child列表
    _parent.updateChildWidgetId(this, old.widgetID);
  }

  void addChild(MXJsonBuildOwner child) {
    if (child?.ownerWidgetId == null) {
      return;
    }

    var oldChild = _children[child.ownerWidgetId];
    if (oldChild != null) {
      MXJSLog.debug("MXJsonBuildOwner:addChild: "
          "widgetID:${child.ownerWidgetId} "
          "_children 已经有了！");
    }

    _children[child.ownerWidgetId] = child;
    child._parent = this;
  }

  MXJsonBuildOwner findChild(widgetID) {
    if (widgetID == null) return null;
    if (widgetID == ownerWidgetId) return this;

    MXJsonBuildOwner boNode = _children[widgetID];
    if (boNode != null) {
      return boNode;
    }

    for (var child in _children.values) {
      boNode = child.findChild(widgetID);
      if (boNode != null) {
        return boNode;
      }
    }

    return null;
  }

  removeChild(MXJsonBuildOwner child) {
    var boNode = _children[child.ownerWidgetId];
    if (boNode != child) {
      MXJSLog.debug("MXJsonBuildOwner:addChild: "
          "widgetID:${child.ownerWidgetId}"
          "_children 中的和要删除的boNode不同");
      return;
    }

    child._parent = null;
    _children.remove(child.ownerWidgetId);
  }

  updateChildWidgetId(MXJsonBuildOwner child, String oldWidgetID) {
    var boNode = _children[oldWidgetID];
    if (boNode != child) {
      MXJSLog.debug("MXJsonBuildOwner:updateChildWidgetId: "
          "widgetID:${child.ownerWidgetId} oldWidgetID:$oldWidgetID"
          "_children 中的和要更新的boNode不同 boNode：$boNode");
      return;
    }

    _children[child.ownerWidgetId] = child;
    _children.remove(oldWidgetID);
  }

  void removeAllChild() {
    _children.clear();
  }

  /// FIXME : 快速多次重复调用
  dynamic findWidget(Key key) {
    if (key == null) {
      return null;
    }

    for (MXJsonBuildOwner boNode in _children.values) {
      if (boNode._jsWidgetElement.widget.key == key) {
        return boNode._jsWidgetElement.widget;
      }
    }

    return null;
  }

  Widget buildRootWidget(Map widgetData) {
    return MXMirror.getInstance().jsonToDartObj(widgetData, buildOwner: this);
  }

  Widget buildWidgetData(Map widgetData, BuildContext context) {
    return MXMirror.getInstance()
        .jsonToDartObj(widgetData, buildOwner: this, context: context);
  }

  /// app channel
  MXJSFlutterApp get ownerApp => MXJSFlutter.getInstance().currentApp;

  /// 调用js 刷新hostwidget
  callJSRefreshHostWidget(
      String widgetName, String widgetID, BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    var themeData = Theme.of(context);
    var iconThemeData = IconTheme.of(context);

    // TODO: rename flutterCallNavigatorPushWithName
    MethodCall jsMethodCall = MethodCall("flutterCallNavigatorPushWithName", {
      "widgetName": widgetName,
      "widgetID": widgetID,
      "themeData": MXUtil.cThemeDataToJson(themeData),
      "mediaQueryData": MXUtil.cMediaQueryDataToJson(mediaQueryData),
      "iconThemeData": MXUtil.cIconThemeDataToJson(iconThemeData),
    });

    ownerApp.callJS(jsMethodCall);
  }

  /// 事件回调
  /// flutter->JS
  dynamic eventCallback(String callID, {List args}) async {
    MethodCall jsMethodCall = MethodCall("flutterCallOnEventCallback", {
      "widgetID": ownerWidgetId,
      "buildSeq": widgetBuildDataSeq,
      "callID": callID,
      "args": args
    });

    return await ownerApp.callJS(jsMethodCall);
  }

  ///动态创建Widget回调，如List
  ///
  Future<dynamic> widgetBuilderCallback(String callID, {dynamic p}) {
    return null;
  }

  /// js事件
  /// js->flutter

  void jsCallRebuild(Map widgetDataMap) {
    String widgetID = widgetDataMap["widgetID"];
    String className = widgetDataMap["className"];
    Map widgetBuildData = widgetDataMap["widgetData"];
    String buildWidgetDataSeq = widgetDataMap["buildWidgetDataSeq"];

    if (className != "MXJSStatefulWidget" &&
        className != "MXJSStatelessWidget") {
      MXJSLog.error("MXJSWidgetState:jsCallRebuild: "
          "(widgetData className is! MXJSStatefulWidget && jsWidget is! MXJSStatelessWidget)) "
          "className:$className widgetData:$widgetDataMap");
      return;
    }

    _rebuild(widgetID, widgetBuildData, buildWidgetDataSeq);
  }

  void _rebuild(
      String rebuildWidgetID, Map widgetBuildData, String buildWidgetDataSeq) {
    if (rebuildWidgetID != ownerWidgetId) {
      MXJSLog.log("MXJSStatefulWidget:_rebuild: "
          "error: rebuildWidgetID:($rebuildWidgetID) != widgetID($ownerWidgetId)");
    }

    if (_jsWidgetElement is MXJSStatefulElement) {
      MXJSWidgetState state = (_jsWidgetElement as MXJSStatefulElement).state;
      state.jsCallRebuild(rebuildWidgetID, widgetBuildData, buildWidgetDataSeq);
    } else {
      MXJSLog.error("MXJSStatefulWidget:_rebuild: "
          "Same thing error: _jsWidgetElement is not  MXJSStatefulElement"
          "But call _rebuild _jsWidgetElement runtimeType:${_jsWidgetElement.runtimeType}");
    }
  }

  // js->flutter
  jsCallNavigatorPush(Map widgetDataMap) {
    MXJSLog.log("MXJsonBuildOwner:jsNavigatorPush:");

    WidgetBuilder builder = (BuildContext context) {
      dynamic jsWidget = buildWidgetData(widgetDataMap, context);

      if (jsWidget is! MXJSStatefulWidget && jsWidget is! MXJSStatelessWidget) {
        String className = widgetDataMap["className"];
        MXJSLog.error("MXJsonBuildOwner:jsCallNavigatorPush: "
            "(rootWidget is! MXJSStatefulWidget && jsWidget is! MXJSStatelessWidget)) "
            "className:$className widgetData:$widgetDataMap");
        return MXJSWidgetBase.errorWidget;
      }

      return jsWidget;
    };

    // TODO: 支持多种MaterialPageRoute效果,MaterialPageRoute应该通过j2d 直接生成
    Navigator.push(
      buildContext,
      MaterialPageRoute(builder: builder),
    );
  }

  jsCallNavigatorPop() {
    MXJSLog.log("MXJsonBuildOwner:jsCallNavigatorPop:");
    Navigator.pop(buildContext);
  }

  /// MXJSWidgetState -> BuildOwner
  void onDispose() {
    _parent?.removeChild(this);

    // 移除镜像对象
    disposeMirrorObjs();

    // 告诉JS，可以销毁这个JSWidget了
    callJSOnDispose();
  }

  /// MXJSStatelessElement -> BuildOwner
  /// MXJSStatelessElement 使用 onUnmount 释放JS
  void onUnmount() {
    onDispose();
  }

  callJSOnBuildEnd() {
    MXJSLog.debug("MXJSWidgetState:callJSOnBuildEnd: "
        "widgetID:$ownerWidgetId"
        "buildSeq:$widgetBuildDataSeq");

    String parentWidgetID = _parent?.ownerWidgetId;

    // 填充性能监控数据
    var profileInfoKey = '$ownerWidgetId-$widgetBuildDataSeq';
    var profileInfo = ownerApp.buildProfileInfoMap[profileInfoKey];

    MethodCall jsMethodCall;
    if (profileInfo != null) {
      profileInfo["buildEndTime"] = (new DateTime.now()).millisecondsSinceEpoch;

      ownerApp.buildProfileInfoMap.remove(profileInfoKey);

      jsMethodCall = MethodCall("flutterCallOnBuildEnd", {
        "widgetID": ownerWidgetId,
        "buildSeq": widgetBuildDataSeq,
        "rootWidgetID": parentWidgetID,
        "profileInfo": profileInfo,
      });
    } else {
      jsMethodCall = MethodCall("flutterCallOnBuildEnd", {
        "widgetID": ownerWidgetId,
        "buildSeq": widgetBuildDataSeq,
        "rootWidgetID": parentWidgetID,
      });
    }

    ownerApp.callJSNeedFrequencyLimit(jsMethodCall);
  }

  callJSOnDispose() {
    MethodCall jsMethodCall = MethodCall("flutterCallOnDispose", {
      "widgetID": ownerWidgetId,
      "mirrorObjIDList": _mirrorObjIds.toList(),
    });

    ownerApp.callJSNeedFrequencyLimit(jsMethodCall);
  }

  String debugBuildOwnerNodeTreeText() {
    var log =
        '{Element WidgetName:${widget?.name} ,WidgetId:${widget?.widgetID},state.WidgetId:${state?.widget?.widgetID}';

    log = '$log child:[';
    _children.forEach((key, value) {
      var child = value.debugBuildOwnerNodeTreeText();
      log = '$log $child,';
    });
    log = '$log]}';

    return log;
  }

  void debugPrintBuildOwnerNodeTree() {
    MXJSLog.debug("BuildOwnerNodeTreeText:${debugBuildOwnerNodeTreeText()}");
  }

  /// =============================================
  /// mirror 逻辑
  /// _mirrorObjKeyList 相当于JS Widget State 的需要保持生命周期的成员变量
  /// 在widget build 过程总，widget 成员变量的mirror对象，由MXBuildOwner的_mirrorObjKeyList
  /// 保存，以控制生命周期。例如 AnimationController
  void addMirrorObjectId(String mirrorId) {
    _mirrorObjIds.add(mirrorId);
  }

  /// MirrorObj事件回调
  /// flutter->JS
  /// TODO: 这里后面可能回困惑，什么样的回调用eventCallbak 什么样的用 mirrorObjEventCallback
  /// 开头OnXXXX的用eventCallbak，用callbakId调用到JS
  /// 其他的用 mirrorObjEventCallback，用funcName 调用到 JS
  Future<dynamic> mirrorObjEventCallback(dynamic mirrorID, String functionName,
      {dynamic p}) async {
    MXMirror.getInstance().invokeJSMirrorObj(mirrorID: mirrorID, functionName: functionName, args: p );
  }

  void disposeMirrorObjs() {
    _mirrorObjIds.forEach((dynamic mirrorID) {
      dynamic mirrorObj = MXMirror.getInstance().findMirrorObject(mirrorID);
      String className = mirrorObj.runtimeType.toString();
      var funcName = className + "#dispose";
      Map jsonMap = {"mirrorObj": mirrorObj, "funcName": funcName};
      MXMirror.getInstance().invokeWithCallback(jsonMap, null);

      MXMirror.getInstance().removeMirrorObject(mirrorID);
    });
  }
}
