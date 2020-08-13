//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mx_js_flutter_lib.dart';

import 'package:mxflutter/mxflutter_test.dart';

import 'mx_json_to_dart.dart';
import 'mx_js_flutter_app.dart';
import 'mx_js_flutter_common.dart';
import 'mx_js_mirror_obj_mgr.dart';

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
  MXJSWidgetBase get widget => _jsWidgetElement.widget as MXJSWidgetBase;
  MXJSWidgetState get state {
    if (_jsWidgetElement is MXJSStatefulElement) {
      return (_jsWidgetElement as MXJSStatefulElement).state;
    }
    return null;
  }

  /// MXJSWidget 保存JS侧相关的成员变量
  List<String> _mirrorObjKeyList = [];

  /// Debug下，获取刷新性能数据
  bool _enableProfile;
  Map _profileInfo;

  /// TODO: 暂时先打日志看下
  reset() {
    MXJSLog.debug("MXJsonBuildOwner:reset: "
        "this.widget.widgetID:${widget.widgetID}"
        "buildSeq:${_mirrorObjKeyList.join('|')}");
  }

  void addChild(String widgetID, MXJsonBuildOwner child) {
    if (widgetID == null || widgetID.isEmpty || child == null) {
      return;
    }

    var oldChild = _children[widgetID];
    if (oldChild != null) {
      MXJSLog.debug("MXJsonBuildOwner:addChild: "
          "widgetID:$widgetID"
          "_children 已经有了！");
    }

    _children[widgetID] = child;
  }

  MXJsonBuildOwner findChild(widgetID) {
    if (widgetID == widget.widgetID) {
      return this;
    }

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

  removeChild(String widgetID, MXJsonBuildOwner child) {
    var boNode = _children[widgetID];

    if (boNode != child) {
      MXJSLog.debug("MXJsonBuildOwner:addChild: "
          "widgetID:$widgetID"
          "_children 中的和要删除的boNode不同");
      return;
    }

    _children.remove(widgetID);
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
    var w = MXJsonObjToDartObject.jsonToDartObj(widgetData, buildOwner: this);
    return w;
  }

  Widget buildWidgetData(Map widgetData, BuildContext context) {
    return MXJsonObjToDartObject.jsonToDartObj(widgetData,
        buildOwner: this, context: context);
  }

  /// app channel
  MXJSFlutterApp get ownerApp => MXJSFlutterLib.getInstance().currentApp;

  /// 事件回调
  /// flutter->JS
  dynamic eventCallback(String callID,
      [dynamic arg1,
      dynamic arg2,
      dynamic arg3,
      dynamic arg4,
      dynamic arg5]) async {
    var ownerWidgetID = this.widget?.widgetID;
    String buildSeq = this.widget?.buildWidgetDataSeq;
    List args = [];
    args.add(arg1);
    args.add(arg2);
    args.add(arg3);
    args.add(arg4);
    args.add(arg5);

    MethodCall jsMethodCall = MethodCall("flutterCallOnEventCallback", {
      "widgetID": ownerWidgetID,
      "buildSeq": buildSeq,
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

    _setProfileInfo(widgetDataMap);
    _rebuild(widgetID, widgetBuildData, buildWidgetDataSeq);
  }

  void _setProfileInfo(Map widgetDataMap) {
    // 性能监控，记录解码时间
    bool enableProfile = widgetDataMap["enableProfile"];
    int startDecodeData = widgetDataMap["#startDecodeData"];
    int endDecodeData = widgetDataMap["#endDecodeData"];

    _enableProfile = enableProfile;

    if (_enableProfile) {
      _profileInfo = {
        "startDecodeData": startDecodeData,
        "endDecodeData": endDecodeData
      };
    }
  }

  void _rebuild(
      String widgetID, Map widgetBuildData, String buildWidgetDataSeq) {
    removeAllChild();
    var ownerWidgetID = this.widget.widgetID;

    if (ownerWidgetID != widgetID) {
      MXJSLog.log("MXJSStatefulWidget:_rebuild: "
          "error: ownerWidgetID:$ownerWidgetID != widgetID$widgetID");
    }

    if (_jsWidgetElement is MXJSStatefulElement) {
      MXJSWidgetState state = (_jsWidgetElement as MXJSStatefulElement).state;
      state.jsCallRebuild(widgetID, widgetBuildData, buildWidgetDataSeq);
    } else {
      MXJSLog.error("MXJSStatefulWidget:_rebuild: "
          "Same thing error: _jsWidgetElement is not  MXJSStatefulElement"
          "But call _rebuild _jsWidgetElement runtimeType:${_jsWidgetElement.runtimeType}");
    }
  }

  // js->flutter
  jsCallNavigatorPush(Map widgetDataMap) {
    MXJSLog.log("MXJsonBuildOwner:jsNavigatorPush:");

    // 记录性能监控信息
    _setProfileInfo(widgetDataMap);

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
    // 框架最困难的点在于确定何时释放不需要的对象
    // 移除parentBuildOwner中当前的widget
    _parent.removeChild(this.widget.widgetID, this);

    // 移除镜像对象
    disposeMirrorObjs();

    //告诉JS，可以销毁这个JSWidget了
    callJSOnDispose();
  }

  /// MXJSStatelessElement -> BuildOwner
  /// MXJSStatelessElement 使用 onUnmount 释放JS
  void onUnmount() {
    onDispose();
  }

  callJSOnBuildEnd() {
    MXJSLog.debug("MXJSWidgetState:callJSOnBuildEnd: "
        "widgetID:${widget.widgetID}"
        "buildSeq:${widget.buildWidgetDataSeq}");

    String ownerWidgetID = widget.widgetID;
    String buildSeq = widget.buildWidgetDataSeq;

    String parentWidgetID = _parent?.widget?.widgetID;

    MethodCall jsMethodCall;
    if (this._enableProfile == true) {
      this._profileInfo["buildEnd"] =
          (new DateTime.now()).millisecondsSinceEpoch;
      jsMethodCall = MethodCall("flutterCallOnBuildEnd", {
        "widgetID": ownerWidgetID,
        "buildSeq": buildSeq,
        "rootWidgetID": parentWidgetID,
        "profileInfo": this._profileInfo,
      });
    } else {
      jsMethodCall = MethodCall("flutterCallOnBuildEnd", {
        "widgetID": ownerWidgetID,
        "buildSeq": buildSeq,
        "rootWidgetID": parentWidgetID,
      });
    }

    ownerApp.callJSNeedFrequencyLimit(jsMethodCall);
  }

  callJSOnDispose() {
    var ownerWidgetID = this.widget.widgetID;
    MethodCall jsMethodCall = MethodCall("flutterCallOnDispose", {
      "widgetID": ownerWidgetID,
      "mirrorObjIDList": _mirrorObjKeyList,
    });

    ownerApp.callJSNeedFrequencyLimit(jsMethodCall);
  }

  /// =============================================
  // TODO: mirror逻辑需要重构，和BuildOwner没关系
  // MirrorObj事件回调
  // flutter->JS
  Future<dynamic> mirrorObjEventCallback(dynamic mirrorID, String functionName,
      {dynamic p}) async {
    callJSWidgetOnmirrorObjEventCallback(
        mirrorID: mirrorID, functionName: functionName, args: p);
  }

  callJSWidgetOnmirrorObjEventCallback(
      {dynamic mirrorID, String functionName, dynamic args}) async {
    MethodCall jsMethodCall = MethodCall("flutterCallOnMirrorObjInvoke",
        {"mirrorID": mirrorID, "functionName": functionName, "args": args});

    ownerApp.callJS(jsMethodCall);
  }

  String getJsonObjMirrorID(Map jsonMap) {
    dynamic mirrorID = jsonMap["mirrorID"];
    return mirrorID;
  }

  dynamic getMirrorObjectFromID(dynamic mirrorID) {
    if (mirrorID == null) {
      return null;
    }
    return MXJSMirrorObjMgr.getInstance().getMirrorObjectFromID(mirrorID);
  }

  void setMirrorObject(dynamic mirrorObj, Map jsonMap) {
    String mirrorID = getJsonObjMirrorID(jsonMap);
    if (mirrorID != null) {
      if (!_mirrorObjKeyList.contains(mirrorID)) {
        _mirrorObjKeyList.add(mirrorID);
      }

      MXJSMirrorObjMgr.getInstance().addMirrorObject(mirrorID, mirrorObj);
    }
  }

  void removeMirrorObject(dynamic mirrorID) {
    MXJSMirrorObjMgr.getInstance().removeMirrorObject(mirrorID);
  }

  void disposeMirrorObjs() {
    _mirrorObjKeyList.forEach((dynamic mirrorID) {
      dynamic mirrorObj = getMirrorObjectFromID(mirrorID);
      String className = mirrorObj.runtimeType.toString();

      MXJsonObjProxy proxy =
          MXJsonObjToDartObject.getInstance().getJSObjProxy(className);
      proxy?.jsInvokeMirrorObjFunction(mirrorID, mirrorObj, "dispose", null);

      removeMirrorObject(mirrorID);
    });
  }
}
