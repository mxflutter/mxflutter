//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'dart:convert';

import 'package:ffi/ffi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mxflutter/mxflutter.dart';

import 'ffi/ffi.dart';
import 'mirror/mx_mirror.dart';
import 'mx_common.dart';
import 'mx_flutter.dart';
import 'mx_flutter_app.dart';
import 'mx_widget.dart';

/// MXBuildOwner 是一个控制节点，与 MXJSSatefullWidget（MXJSWidgetState）一一对应，
/// 形成树状结构，持有MXJSWidgetState，
/// 并接收JS调用操作MXJSWidgetState。
class MXBuildOwner {
  /// MXBuildOwner 组成BoNodeTree管理MXJsWidget的build逻辑。
  MXBuildOwner _parent;

  /// MXBuildOwner 当前owwner的子owner。
  Map<String, MXBuildOwner> _children = {};

  /// MXJSWidget 保存JS侧相关的成员变量。
  Set<String> _mirrorObjIds = Set();

  /// MXBuildOwner 通过持有MXJSWidget的 Element来驱动后续Widget的更新。
  Element _jsWidgetElement;

  MXBuildOwner(Element jsWidgetElement) {
    _jsWidgetElement = jsWidgetElement;
  }

  /// MXFlutterApp 通过rootBuildOwner节点操纵JSWidgetTree
  MXBuildOwner.rootBuildOwner();

  /// 获取最近一次构建缓存的buildContext。
  BuildContext get buildContext => _jsWidgetElement;

  /// 获取对应widget。
  MXJSWidgetBase get widget => _jsWidgetElement?.widget as MXJSWidgetBase;

  /// 获取对应widget的widgetID。
  String get ownerWidgetId => widget?.widgetID;

  /// 获取对应节点的widgetBuildData序号。
  String get widgetBuildDataSeq {
    if (_jsWidgetElement is MXJSStatefulElement) {
      return state?.widgetBuildDataSeq;
    } else if (_jsWidgetElement is MXJSStatelessElement) {
      return widget?.widgetBuildDataSeq;
    }

    return null;
  }

  /// 获取对应widget的state。
  MXJSWidgetState get state {
    if (_jsWidgetElement is MXJSStatefulElement) {
      return (_jsWidgetElement as MXJSStatefulElement).state;
    }
    return null;
  }

  /// 当Widget被Flutter复用，新刷新数据的WidgetID如果变化了，说明JS侧换了其他类型的Widget，
  /// 需要更新widgetID。
  void updateWidgetID(MXJSStatefulWidget oldWidget) {
    MXJSLog.debug("MXJsonBuildOwner:updateWidgetID: "
        "ownerWidgetId: $ownerWidgetId "
        "buildSeq: ${_mirrorObjIds.join('|')}");

    // 用新的widgetId 更新 _parent child 列表。
    _parent._updateChildWidgetId(this, oldWidget.widgetID);

    // 需要call js old widget id dispose。
    if (widget.widgetID != oldWidget.widgetID) {
      MXJSLog.debug("MXJsonBuildOwner:updateWidgetID:  dispose "
          "widgetID: $oldWidget.widgetID ");

      MethodCall jsMethodCall = MethodCall("flutterCallOnDispose", {
        "widgetID": oldWidget.widgetID,
        "mirrorObjIDList": _mirrorObjIds.toList(),
      });

      ownerApp.callJSNeedFrequencyLimit(jsMethodCall);
      disposeMirrorObjs();
    }
  }

  /// 查找child buildOwner。
  MXBuildOwner findChild(widgetID) {
    if (widgetID == null) {
      return null;
    }

    if (widgetID == ownerWidgetId) {
      return this;
    }

    MXBuildOwner boNode = _children[widgetID];
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

  /// 添加child buildOwner。
  void addChild(MXBuildOwner child) {
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

  /// 通过key查找widget。FIXME: 快速多次重复调用。
  dynamic findWidget(Key key) {
    if (key == null) {
      return null;
    }

    for (MXBuildOwner boNode in _children.values) {
      if (boNode._jsWidgetElement.widget.key == key) {
        return boNode._jsWidgetElement.widget;
      }
    }

    return null;
  }

  Widget buildWidgetData(Map widgetData, BuildContext context) {
    return MXMirror.getInstance()
        .jsonToDartObj(widgetData, buildOwner: this, context: context);
  }

  /// app channel.
  MXJSFlutterApp get ownerApp => MXJSFlutter.getInstance().currentApp;

  /// didChangeDependencies.
  void didChangeDependencies() {
    callJSDidChangeDependencies();
  }

  /// 调用js 刷新hostwidget。
  void callJSRefreshHostWidget(String widgetName, String widgetID,
      BuildContext context, Map flutterPushParams) {

    // 0.8.0 修改为同步获取XXX.of
    // var mediaQueryData = MediaQuery.of(context);
    // var themeData = Theme.of(context);
    // var iconThemeData = IconTheme.of(context);

    // TODO: rename flutterCallNavigatorPushWithName.
    MethodCall jsMethodCall = MethodCall("flutterCallNavigatorPushWithName", {
      "widgetName": widgetName,
      "widgetID": widgetID,
      // "themeData": MXUtil.cThemeDataToJson(themeData),
      // "mediaQueryData": MXUtil.cMediaQueryDataToJson(mediaQueryData),
      // "iconThemeData": MXUtil.cIconThemeDataToJson(iconThemeData),
      "flutterPushParams": json.encode(flutterPushParams),
    });

    ownerApp.callJS(jsMethodCall);
  }

  /// 调用js 刷新lazywidget.
  void callJSRefreshLazyWidget(String widgetID, BuildContext context) {
    // TODO: rename flutterCallNavigatorPushWithName.
    MethodCall jsMethodCall = MethodCall("flutterCallRefreshLazyWidget",
        {"widgetID": widgetID, "isJSLazyWidget": true});

    ownerApp.callJS(jsMethodCall);
  }

  /// 事件回调。
  /// flutter->JS.
  dynamic syncEventCallback(String callID, {List args}) {
    Map argument = {
      "widgetID": ownerWidgetId,
      "buildSeq": widgetBuildDataSeq,
      "callID": callID,
      "args": args
    };
    try {
      String encodeArgument = json.encode(argument);
      dynamic utf8Result = syncPropsCallback(Utf8.toUtf8(encodeArgument));
      Map jsonMap = json.decode(Utf8.fromUtf8(utf8Result));
      dynamic result =
          MXMirror.getInstance().jsonToDartObj(jsonMap, buildOwner: this);
      return result;
    } catch (e) {
      MXJSLog.error(
          "MXJsonBuildOwner.syncEventCallback, error:$e; argument: $argument");

      rethrow;
    }
  }

  /// 事件回调。
  /// flutter->JS.
  dynamic eventCallback(String callID, {List args}) async {
    MethodCall jsMethodCall = MethodCall("flutterCallOnEventCallback", {
      "widgetID": ownerWidgetId,
      "buildSeq": widgetBuildDataSeq,
      "callID": callID,
      "args": args
    });

    try {
      return await ownerApp.callJS(jsMethodCall);
    } catch (e) {
      MXJSLog.error("MXJsonBuildOwner.eventCallback, error:$e");
      rethrow;
    }
  }

  // js->flutter。调用Navigator.Push方法，打开页面。
  void jsCallNavigatorPush(Map widgetDataMap) {
    MXJSLog.log("MXJsonBuildOwner:jsNavigatorPush:");

    WidgetBuilder builder = (BuildContext context) {
      dynamic jsWidget = buildWidgetData(widgetDataMap, context);

      if (jsWidget is! MXJSStatefulWidget &&
          jsWidget is! MXJSStatelessWidget &&
          jsWidget is! MXJSPageWidget) {
        String className = widgetDataMap["className"];
        MXJSLog.error("MXJsonBuildOwner:jsCallNavigatorPush: "
            "(rootWidget is! MXJSStatefulWidget && jsWidget is! MXJSStatelessWidget)) "
            "className:$className widgetData:$widgetDataMap");
        return onBuildErrorCreateErrorWidget(widgetDataMap['Name'],
            error: "MXJsonBuildOwner:jsCallNavigatorPush: "
                "(rootWidget is! MXJSStatefulWidget && jsWidget is! MXJSStatelessWidget)) "
                "className:$className widgetData:$widgetDataMap");
      }

      return jsWidget;
    };

    // TODO: 支持多种MaterialPageRoute效果,MaterialPageRoute应该通过j2d 直接生成。
    Navigator.push(
      buildContext,
      MaterialPageRoute(builder: builder),
    );
  }

  /// js事件。
  /// js->flutter。刷新页面。
  void jsCallRebuild(Map widgetDataMap) {
    String widgetID = widgetDataMap["widgetID"];
    String className = widgetDataMap["className"];
    Map widgetBuildData = widgetDataMap["widgetData"];
    String buildWidgetDataSeq = widgetDataMap["buildWidgetDataSeq"];

    _rebuild(widgetID, widgetBuildData, buildWidgetDataSeq);
  }

  /// js->flutter。调用Navigator.pushNamed方法，打开页面。
  void jsCallNavigatorPushNamed(String routeName, dynamic arguments) {
    MXJSLog.log("MXJsonBuildOwner:jsCallNavigatorPushNamed:");

    Navigator.pushNamed(buildContext, routeName, arguments: arguments);
  }

  /// js->flutter。调用Navigator.pop方法，打开页面。
  void jsCallNavigatorPop() {
    MXJSLog.log("MXJsonBuildOwner:jsCallNavigatorPop:");
    Navigator.pop(buildContext);
  }

  /// flutter->js。调用flutterCallOnBuildEnd方法。
  void callJSOnBuildEnd() {
    MXJSLog.debug("MXJSWidgetState:callJSOnBuildEnd: "
        "widgetID:$ownerWidgetId"
        "buildSeq:$widgetBuildDataSeq");

    _notifyBuildEnd();

    MethodCall jsMethodCall = MethodCall("flutterCallOnBuildEnd", {
      "widgetID": ownerWidgetId,
      "buildSeq": widgetBuildDataSeq,
      "rootWidgetID": _parent?.ownerWidgetId,
    });

    MXJSLog.debug("MXJSWidgetState:callJSOnBuildEnd: "
        "buildEndTime, time is ${(new DateTime.now()).millisecondsSinceEpoch}");

    ownerApp.callJSNeedFrequencyLimit(jsMethodCall);
  }

  /// flutter->js。调用futterCallDidChangeDependencies方法。
  void callJSDidChangeDependencies() {
    MXJSLog.debug("MXJSWidgetState:callJSDidChangeDependencies: "
        "widgetID:$ownerWidgetId "
        "buildSeq:$widgetBuildDataSeq");

    MethodCall jsMethodCall = MethodCall(
        "futterCallDidChangeDependencies", {"widgetID": ownerWidgetId});

    ownerApp.callJSNeedFrequencyLimit(jsMethodCall);
  }

  /// flutter->js，调用flutterCallOnFirstFrameEnd方法。
  void callJSOnFirstFrameEnd() {
    // 填充性能监控数据。
    var profileInfoKey = '$ownerWidgetId-$widgetBuildDataSeq';
    var profileInfo = ownerApp.buildProfileInfoMap[profileInfoKey];
    if (profileInfo == null || profileInfo['enableProfile'] != true) {
      return;
    }

    profileInfo.addAll(
        {'firstFrameEndTime': (new DateTime.now()).millisecondsSinceEpoch});

    ownerApp.buildProfileInfoMap.remove(profileInfoKey);

    MethodCall jsMethodCall = MethodCall("flutterCallOnFirstFrameEnd", {
      "widgetID": ownerWidgetId,
      "buildSeq": widgetBuildDataSeq,
      "rootWidgetID": _parent?.ownerWidgetId,
      "profileInfo": profileInfo,
    });
    ownerApp.callJSNeedFrequencyLimit(jsMethodCall);
  }

  /// flutter->js。调用flutterCallOnDispose方法。
  void callJSOnDispose() {
    MXJSLog.debug("MXJSWidgetState:callJSOnDispose: "
        "widgetID: $ownerWidgetId "
        "buildSeq: $widgetBuildDataSeq");

    MethodCall jsMethodCall = MethodCall("flutterCallOnDispose", {
      "widgetID": ownerWidgetId,
      "mirrorObjIDList": _mirrorObjIds.toList(),
    });

    ownerApp.callJSNeedFrequencyLimit(jsMethodCall);
  }

  /// mirror 逻辑。
  /// _mirrorObjKeyList 相当于JS Widget State 的需要保持生命周期的成员变量，
  /// 在widget build 过程总，widget 成员变量的mirror对象，由MXBuildOwner的_mirrorObjKeyList
  /// 保存，以控制生命周期。例如 AnimationController。
  void addMirrorObjectId(String mirrorId) {
    _mirrorObjIds.add(mirrorId);
  }

  /// MirrorObj事件回调。
  /// flutter->JS.
  /// TODO: 这里后面可能回困惑，什么样的回调用eventCallbak 什么样的用 mirrorObjEventCallback。
  /// 开头OnXXXX的用eventCallbak，用callbakId调用到JS，
  /// 其他的用 mirrorObjEventCallback，用funcName 调用到 JS。
  void mirrorObjEventCallback(
      {dynamic mirrorID, String functionName, String callbackID, dynamic p}) {
    MXMirror.getInstance().invokeJSMirrorObj(
        mirrorID: mirrorID,
        functionName: functionName,
        callbackID: callbackID,
        args: p);
  }

  /// MXJSStatelessElement -> BuildOwner。
  /// MXJSStatelessElement 使用 onUnmount 释放JS。
  void onUnmount() {
    onDispose();
  }

  /// MXJSWidgetState -> BuildOwner.
  void onDispose() {
    // 告诉JS，可以销毁这个JSWidget了。
    callJSOnDispose();

    _parent?._removeChild(this);
    // 移除镜像对象。
    disposeMirrorObjs();
  }

  /// 根据_mirrorObjIds列表，移除MXMirror系统里的Object。
  void disposeMirrorObjs() {
    _mirrorObjIds.forEach((dynamic mirrorID) {
      dynamic mirrorObj = MXMirror.getInstance().findMirrorObject(mirrorID);
      String className = mirrorObj.runtimeType.toString();
      Map jsonMap = {
        "args": {"mirrorObj": mirrorObj},
        "className": className,
        "funcName": "dispose"
      };
      MXMirror.getInstance().invokeFunctionWithCallback(jsonMap, null);

      MXMirror.getInstance().removeMirrorObject(mirrorID);
    });

    _mirrorObjIds.clear();
  }


  /// 打印BuildOwnerTree信息。
  void debugPrintBuildOwnerNodeTree() {
    MXJSLog.debug("BuildOwnerNodeTreeText:${_debugBuildOwnerNodeTreeText()}");
  }

  /// 重新绘制。
  void _rebuild(
      String rebuildWidgetID, Map widgetBuildData, String buildWidgetDataSeq) {
    if (rebuildWidgetID != ownerWidgetId) {
      MXJSLog.log("MXJSStatefulWidget:_rebuild: "
          "error: rebuildWidgetID:($rebuildWidgetID) != widgetID($ownerWidgetId)");
    }

    if (_jsWidgetElement is MXJSStatefulElement) {
      MXJSWidgetState state = (_jsWidgetElement as MXJSStatefulElement).state;
      state?.jsCallRebuild(
          rebuildWidgetID, widgetBuildData, buildWidgetDataSeq);
    } else {
      MXJSLog.error("MXJSStatefulWidget:_rebuild: "
          "Same thing error: _jsWidgetElement is not  MXJSStatefulElement"
          "But call _rebuild _jsWidgetElement runtimeType:${_jsWidgetElement.runtimeType}");
    }
  }

  /// 通知build结束。TODO: 优化。
  void _notifyBuildEnd() {
    Future.delayed(Duration(milliseconds: 0), () {
      ownerApp.onWidgetBuildEnd(this);
    });
  }

  /// 打印buildOwner树新消息。
  String _debugBuildOwnerNodeTreeText() {
    var log =
        '{Element WidgetName:${widget?.name} ,WidgetId:${widget?.widgetID},state.WidgetId:${state?.widget?.widgetID}';

    log = '$log child:[';
    _children.forEach((key, value) {
      var child = value._debugBuildOwnerNodeTreeText();
      log = '$log $child,';
    });
    log = '$log]}';

    return log;
  }

  /// 移除child。
  void _removeChild(MXBuildOwner child) {
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

  /// 更新child。
  void _updateChildWidgetId(MXBuildOwner child, String oldWidgetID) {
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

}
