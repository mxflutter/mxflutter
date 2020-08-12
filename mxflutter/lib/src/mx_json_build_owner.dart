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
import 'mx_js_widget_helper.dart';
import 'mx_js_flutter_common.dart';
import 'mx_js_mirror_obj_mgr.dart';

typedef Future<dynamic> MXJsonWidgetCallbackFun(String callID, {dynamic p});

/// buildOwner 除了根节点，于 MXJSWidgetState 一一对应，形成树状结构，持有MXJSWidgetState，
/// 并接收JS调用操作MXJSWidgetState
class MXJsonBuildOwner {
  /// MXJsonBuildOwner 组成BoNodeTree管理MXJsWidget的build
  MXJsonBuildOwner _parent;
  Map<String, MXJsonBuildOwner> _children = {};

  /// MXJsonBuildOwner 通过持有MXJSWidget的 Element来驱动后续Widget的更新
  Element _jsWidgetElement;

  /// 最近一次build的BuildContext
  BuildContext buildContext;
  MXJSWidgetBase get widget => _jsWidgetElement.widget as MXJSWidgetBase;

  /// MXJSWidget 保存JS侧相关的成员变量
  List<String> _mirrorObjKeyList = [];

  /// Debug下，获取刷新性能数据
  bool _enableProfile;
  Map _profileInfo;

  MXJsonBuildOwner(Element jsWidgetElement) {
    _jsWidgetElement = jsWidgetElement;
  }

  MXJsonBuildOwner.rootBuildOwner();

  void addChild(String widgetID, MXJsonBuildOwner child) {
    if (widgetID == null || widgetID.isEmpty || child == null) {
      return;
    }

    var oldChild = _children[widgetID];
    if (oldChild != null) {
      // clear
    }

    _children[widgetID] = child;
  }

  removeChild(String widgetID) {
    _children.remove(widgetID);
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

  dynamic buildRootWidget(Map widgetData) {
    var w = MXJsonObjToDartObject.jsonToDartObj(widgetData, buildOwner: this);
    return w;
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
    return await callJSWidgetOnEventCallback(
        widgetID: ownerWidgetID,
        buildSeq: buildSeq,
        callID: callID,
        args: args);
  }

  dynamic callJSWidgetOnEventCallback(
      {String widgetID, String buildSeq, String callID, dynamic args}) async {
    MethodCall jsMethodCall = MethodCall("flutterCallOnEventCallback", {
      "widgetID": widgetID,
      "buildSeq": buildSeq,
      "callID": callID,
      "args": args
    });

    return await ownerApp.callJS(jsMethodCall);
  }

  callJSOnBuildEnd() {
    MXJSLog.debug("MXJSWidgetState:callJSOnBuildEnd: "
        "this.widget.widgetID:${widget.widgetID}"
        "buildSeq:${widget.buildWidgetDataSeq}");

    var ownerWidgetID = widget.widgetID;
    String buildSeq = widget.buildWidgetDataSeq;

    var parentWidgetID = _parent?.widget?.widgetID;

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

  ///动态创建Widget回调，如List
  ///
  Future<dynamic> widgetBuilderCallback(String callID, {dynamic p}) {
    return null;
  }

  //js->flutter

  void jsCallRebuild(widgetDataStr) {
    var startDecodeData = (new DateTime.now()).millisecondsSinceEpoch;

    Map widgetMap = json.decode(widgetDataStr);
    String widgetID = widgetMap["widgetID"];
    String name = widgetMap["name"];
    String className = widgetMap["className"];
    Map widgetData = widgetMap["widgetData"];
    String buildWidgetDataSeq = widgetMap["buildWidgetDataSeq"];

    if (className != "MXJSStatefulWidget" &&
        className != "MXJSStatelessWidget") {
      MXJSLog.error(
          "jsCallRebuild(jsWidget == null || (jsWidget is! MXJSStatefulWidget && jsWidget is! MXJSStatelessWidget)): name:$name widgetData:$widgetData");
      return;
    }

    MXJsonBuildOwner boNode = findBuildOwner(widgetID);

    if (boNode == null) {
      //TODO:error's
      MXJSLog.error("findBuildOwner(jsWidget.widgetID)== null:"
          "name:$name id:$widgetID");
      return;
    }

    //----性能分析代码
    bool enableProfile = widgetMap["enableProfile"];

    if (enableProfile == true) {
      boNode._enableProfile = enableProfile;

      Map profileInfo = Map();
      profileInfo["startDecodeData"] = startDecodeData;

      var endDecodeData = (new DateTime.now()).millisecondsSinceEpoch;
      profileInfo["endDecodeData"] = endDecodeData;
      boNode._profileInfo = profileInfo;
    }
    //----性能分析代码 end

    boNode._rebuild(widgetID, widgetData, buildWidgetDataSeq);
  }

  void _rebuild(String widgetID, Map widgetData, String buildWidgetDataSeq) {
    clearAllChildBuildOwner();
    var ownerWidgetID = this.widget.widgetID;

    if (ownerWidgetID != widgetID) {
      MXJSLog.log("MXJSStatefulWidget:rebuildJSWidget: "
          "error: this.widget.widgetID != jsWidget.widgetID");
    }

    _jsRebuild(widgetID, widgetData, buildWidgetDataSeq);
  }

  void _jsRebuild(String widgetID, Map widgetData, String buildWidgetDataSeq) {
    bool needRebuild = updateWidget(widgetID, widgetData, buildWidgetDataSeq);
    //TODO:check this.widget.state == null
    if (this.widget == null || this.widget.state == null) {
      MXJSLog.error(
          "MXJSStatefullWidget:jsRebuild: this.widget.state == null; widgetID:$widgetID buildWidgetDataSeq:$buildWidgetDataSeq");

      return;
    }

    if (!this.widget.state.mounted) {
      MXJSLog.error(
          "MXJSStatefullWidget:jsRebuild: !this.widget.state.mounted this.widget.state.setState(() {}); widgetID:$widgetID buildWidgetDataSeq:$buildWidgetDataSeq");
      return;
    }

    if (needRebuild) {
      MXJSLog.log(
          "MXJSStatefullWidget:jsRebuild:  needRebuild:true this.widget.state.setState(() {}); widgetID:$widgetID buildWidgetDataSeq:$buildWidgetDataSeq");

      MXJSLog.debug(
          "MXJSStatefullWidget:jsRebuild:  needRebuild:true this.widget.state.setState(() {});widgetID:$widgetID buildWidgetDataSeq:$buildWidgetDataSeq widgetData:$widgetData ");
      this.widget.state.setState(() {});
    }
  }

  //js->flutter
  jsCallNavigatorPush(widgetDataStr) {
    var startDecodeData = (new DateTime.now()).millisecondsSinceEpoch;
    Map widgetMap = json.decode(widgetDataStr);
    var endDecodeData = (new DateTime.now()).millisecondsSinceEpoch;

    dynamic jsWidget = buildRootWidget(widgetMap);

    //----性能分析代码
    bool enableProfile = widgetMap["enableProfile"];

    if (enableProfile == true) {
      jsWidget.enableProfile = enableProfile;

      Map profileInfo = Map();
      profileInfo["startDecodeData"] = startDecodeData;
      profileInfo["endDecodeData"] = endDecodeData;
      jsWidget.profileInfo = profileInfo;
    }
    //----性能分析代码 end

    if (jsWidget == null ||
        (jsWidget.runtimeType.toString() != "MXJSStatefulWidget" &&
            jsWidget.runtimeType.toString() != "MXJSStatelessWidget")) {
      MXJSLog.error(
          "jsCallNavigatorPush(jsWidget == null || (jsWidget is! MXJSStatefulWidget && jsWidget is! MXJSStatelessWidget)): name:${jsWidget.name} widgetData:${jsWidget.widgetData}");
      return;
    }

    //谁push jsWidget，找到对应的build owner
    String navPushingWidgetID = jsWidget.navPushingWidgetID;
    MXJsonBuildOwner bo = findBuildOwner(navPushingWidgetID);

    if (bo == null) {
      MXJSLog.error(
          "jsCallNavigatorPush(bo == null: name:${jsWidget.name} navPushingWidgetID:$navPushingWidgetID");
      return;
    }

    bo.widget.helper.jsNavigatorPush(jsWidget, bo.widget.context);
  }

  jsCallNavigatorPop(args) {
    String widgetID = args["widgetID"];
    var bo = findBuildOwner(widgetID);

    if (bo == null) {
      MXJSLog.error("jsCallNavigatorPop(bo == null: widgetID:$widgetID");
      return;
    }

    bo.widget.helper.jsNavigatorPop(bo.widget.context);
  }

  MXJsonBuildOwner findBuildOwner(widgetID) {
    MXJsonBuildOwner bo = childrenBuildOwner[widgetID];

    if (bo != null) {
      return bo;
    }

    for (var k in childrenBuildOwner.keys) {
      var v = childrenBuildOwner[k];
      MXJsonBuildOwner bo = v.findBuildOwner(widgetID);
      if (bo != null) {
        return bo;
      }
    }

    return null;
  }

  //MirrorObj事件回调
  //flutter->JS
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
      if (!mirrorObjKeyList.contains(mirrorID)) {
        mirrorObjKeyList.add(mirrorID);
      }

      MXJSMirrorObjMgr.getInstance().addMirrorObject(mirrorID, mirrorObj);
    }
  }

  void removeMirrorObject(dynamic mirrorID) {
    MXJSMirrorObjMgr.getInstance().removeMirrorObject(mirrorID);
  }

  void disposeMirrorObjs() {
    mirrorObjKeyList.forEach((dynamic mirrorID) {
      dynamic mirrorObj = getMirrorObjectFromID(mirrorID);
      String className = mirrorObj.runtimeType.toString();

      MXJsonObjProxy proxy =
          MXJsonObjToDartObject.getInstance().getJSObjProxy(className);
      proxy?.jsInvokeMirrorObjFunction(mirrorID, mirrorObj, "dispose", null);

      removeMirrorObject(mirrorID);
    });
  }

  void clearAllChildBuildOwner() {
    this.childrenBuildOwner.clear();
  }

  void onDispose() {
    //框架最困难的点在于确定何时释放不需要的对象

    // 移除parentBuildOwner中当前的widget
    parentBuildOwner.removeChildBuildOwner(this.widget.widgetID);

    //告诉JS，可以销毁这个JSWidget了
    callJSOnDispose();

    // 移除镜像对象
    disposeMirrorObjs();
  }

  void onUnmount() {}
}
