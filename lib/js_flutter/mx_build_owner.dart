import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'mx_json_to_dart.dart';
import 'dart:convert';

import 'mx_js_framework.dart';
import 'mx_json_to_dart.dart';
import 'mx_js_flutter_common.dart';
import 'mx_json_proxy_animation.dart';

typedef Future<dynamic> MXJsonWidgetCallbackFun(String callID, {dynamic p});

Map<String, dynamic> g_mirrorObjectMap = {};

//buildOwner 除了根节点，于 MXJSWidgetState 一一对应，形成树状结构，持有MXJSWidgetState，
//并接收JS调用操作MXJSWidgetState
class MXJsonBuildOwner {
  MXJSFlutterApp ownerApp;
  MXJsonBuildOwner parentBuildOwner;
  Map<String, MXJsonBuildOwner> childrenBuildOwner = {};
  Map<String, MXJSWidget> childrenWidget = {};

  List mirrorObjKeyList = [];
  //

  MXJSWidgetState _jsWidgetState;
  Map<String, dynamic> _widgetMap;

  var widgetName;
  get jsWidgetState => _jsWidgetState;
  
  MXJsonBuildOwner(
      MXJSWidgetState jsWidgetState, MXJsonBuildOwner parentBuildOwner) {
    this.ownerApp = parentBuildOwner?.ownerApp;
    this._jsWidgetState = jsWidgetState;
    this.parentBuildOwner = parentBuildOwner;

    var ownerWidgetID = this._jsWidgetState.widget.widgetID;
    var ownerWidgetName = this._jsWidgetState.widget.name;
    widgetName = ownerWidgetName;

    if (ownerWidgetID != null) {
      parentBuildOwner?.addChildBuildOwner(ownerWidgetID, this);
    } else if (ownerWidgetName != null) {
      parentBuildOwner?.addChildBuildOwner(ownerWidgetName, this);
    } else {
      assert(false);
    }
  }

  MXJsonBuildOwner.rootBuildOwner(this.ownerApp) {}

  void addChildBuildOwner(String widgetID, MXJsonBuildOwner bo) {
    if (widgetID == null || widgetID.isEmpty || bo == null) {
      return;
    }

    childrenBuildOwner[widgetID] = bo;
  }

  removeChildBuildOwner(String widgetID) {
    childrenBuildOwner.remove(widgetID);
  }

  MXJSWidget buildRootWidget(Map widgetData) {
    MXJSWidget w = MXJsonObjToDartObject.jsonToDartObj(this, widgetData);
    return w;
  }

  Widget build(Map widgetData, BuildContext context) {
    var w = MXJsonObjToDartObject.jsonToDartObj(this, widgetData, context:context);

    if (w == null) {
      w = Center(
        child: Text("MXJsonBuildOwner error return null"),
      );
    }

    return w;
  }

  //事件回调
  //flutter->JS
  Future<dynamic> eventCallback(String callID, {dynamic p}) async {
    var ownerWidgetID = this._jsWidgetState?.widget?.widgetID;
    String buildSeq = this._jsWidgetState?.widget?.buildWidgetDataSeq;

    if (this._jsWidgetState.widget.languageType == "Dart") {
      callDartWidgetOnEventCallback(
        widgetID: ownerWidgetID, buildSeq: buildSeq, callID: callID, args: p);
    } else {
      callJSWidgetOnEventCallback(
        widgetID: ownerWidgetID, buildSeq: buildSeq, callID: callID, args: p);
    }
  }

  callJSWidgetOnEventCallback(
      {String widgetID, String buildSeq, String callID, dynamic args}) async {
    MethodCall jsMethodCall = MethodCall("flutterCallOnEventCallback", {
      "widgetID": widgetID,
      "buildSeq": buildSeq,
      "callID": callID,
      "args": args
    });

    ownerApp.callJS(jsMethodCall);
  }

  callDartWidgetOnEventCallback(
      {String widgetID, String buildSeq, String callID, dynamic args}) async {
    MethodCall dartMethodCall = MethodCall("flutterCallOnEventCallback", {
      "widgetID": widgetID,
      "buildSeq": buildSeq,
      "callID": callID,
      "args": args
    });

    ownerApp.callDart(dartMethodCall);
  }

  callJSOnInitState() {
    var ownerWidgetID = this._jsWidgetState.widget.widgetID;
    String buildSeq = this._jsWidgetState.widget.buildWidgetDataSeq;

    MethodCall jsMethodCall = MethodCall("flutterCallOnInitState", {
      "widgetID": ownerWidgetID,
      "buildSeq": buildSeq,
    });

    if (this._jsWidgetState.widget.languageType == "Dart") {
      ownerApp.callDart(jsMethodCall);
    } else {
      ownerApp.callJS(jsMethodCall);
    }
  }

  callJSOnBuildEnd() {
    var ownerWidgetID = this._jsWidgetState.widget.widgetID;
    String buildSeq = this._jsWidgetState.widget.buildWidgetDataSeq;

    MethodCall jsMethodCall = MethodCall("flutterCallOnBuildEnd", {
      "widgetID": ownerWidgetID,
      "buildSeq": buildSeq,
    });

    if (this._jsWidgetState.widget.languageType == "Dart") {
      ownerApp.callDart(jsMethodCall);
    } else {
      ownerApp.callJS(jsMethodCall);
    }
  }

  callJSOnDispose() {
    var ownerWidgetID = this._jsWidgetState.widget.widgetID;
    MethodCall jsMethodCall = MethodCall("flutterCallOnDispose", {
      "widgetID": ownerWidgetID,
      "mirrorObjIDList": mirrorObjKeyList,
    });

    if (this._jsWidgetState.widget.languageType == "Dart") {
      ownerApp.callDart(jsMethodCall);
    } else {
      ownerApp.callJS(jsMethodCall);
    }
    disposeMirrorObjs();
  }

  ///动态创建Widget回调，如List
  ///
  Future<dynamic> widgetBuilderCallback(String callID, {dynamic p}) {}

  //js->flutter

  void jsCallRebuild(args) {
    String widgetDataStr = args["widgetData"];

    Map widgetMap = json.decode(widgetDataStr);
    MXJSWidget jsWidget = buildRootWidget(widgetMap);

    if (jsWidget == null || jsWidget is! MXJSWidget) {
      MXJSLog.error(
          "jsCallRebuild(jsWidget == null || jsWidget is! MXJSWidget): name:${jsWidget.name} widgetData:${jsWidget.widgetData}");
      return;
    }
    String widgetID = jsWidget.widgetID;

    var bo = findBuildOwner(widgetID);

    if (bo == null) {
      MXJSLog.log(
          "findBuildOwner(widgetID) == null: name:${jsWidget.name} id:$widgetID");
      bo = findBuildOwner(jsWidget.name);
    }

    if (bo == null) {
      //TODO:errormx
      MXJSLog.error(
          "findBuildOwner(jsWidget.name)== null: name:${jsWidget.name} id:$widgetID");
      return;
    }

    bo.rebuildJSWidget(jsWidget);
  }

  void rebuildJSWidget(MXJSWidget jsWidget) {
    var ownerWidgetID = this._jsWidgetState.widget.widgetID;

    if (ownerWidgetID != null && ownerWidgetID != jsWidget.widgetID) {
      MXJSLog.log(
          "MXJSWidget:rebuildJSWidget: error: this._jsWidgetState.widget.widgetID != jsWidget.widgetID");
    }
    this._jsWidgetState.jsRebuild(jsWidget);

    //更新为widgetid
    parentBuildOwner?.addChildBuildOwner(jsWidget.widgetID, this);
    removeChildBuildOwner(jsWidget.name);
  }

  //js->flutter
  jsCallNavigatorPush(args) {
    String widgetDataStr = args["widgetData"];

    Map widgetMap = json.decode(widgetDataStr);
    MXJSWidget jsWidget = buildRootWidget(widgetMap);

    if (jsWidget == null || jsWidget is! MXJSWidget) {
      MXJSLog.error(
          "jsCallNavigatorPush(jsWidget == null || jsWidget is! MXJSWidget): name:${jsWidget.name} widgetData:${jsWidget.widgetData}");
      return;
    }

    //谁push jsWidget，找到对应的build owner
    String navPushingWidgetID = jsWidget.navPushingWidgetID;
    var bo = findBuildOwner(navPushingWidgetID);

    if (bo == null) {
      MXJSLog.error(
          "jsCallNavigatorPush(bo == null: name:${jsWidget.name} navPushingWidgetID:$navPushingWidgetID");
      return;
    }

    bo._jsWidgetState.jsNavigatorPush(jsWidget);
  }

  jsCallNavigatorPop(args) {
    String widgetID = args["widgetID"];
    var bo = findBuildOwner(widgetID);

    if (bo == null) {
      MXJSLog.error(
          "jsCallNavigatorPop(bo == null: widgetID:$widgetID");
      return;
    }

    bo._jsWidgetState.jsNavigatorPop();
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

  void jsCallInvoke(widgetDataStr) {
    Map argMap = json.decode(widgetDataStr);
    String mirrorID = argMap["mirrorID"];
    dynamic mirrorObj = getMirrorObjectFromID(mirrorID);
    if (mirrorObj != null)
    { 
      String className = argMap["className"];
      String funcName = argMap["funcName"];
      Map args = argMap["args"];
      invokeFunction(mirrorID, mirrorObj, className, funcName, args);
    }
  }

  // 先写在一起跑通再说，后面再考虑把代码写得优雅些
  void invokeFunction(String mirrorID, dynamic mirrorObj, String className, String funcName, Map args){
    if (className == 'AnimationController'){
      if (funcName == 'forward'){
        (mirrorObj as AnimationController).forward();
      }else if (funcName == 'reverse'){
        (mirrorObj as AnimationController).reverse();
      }else if (funcName == 'repeat'){
        (mirrorObj as AnimationController).repeat();
      }else if (funcName == 'drive'){
        Animatable animatable = args['animatable'];
        (mirrorObj as AnimationController).drive(animatable);
      }
    }
  }
  
  //MirrorObj事件回调
  //flutter->JS
  Future<dynamic> mirrorObjEventCallback(dynamic mirrorID, String functionName, {dynamic p}) async {
    callJSWidgetOnmirrorObjEventCallback(
        mirrorID: mirrorID, functionName: functionName, args: p);
  }

  callJSWidgetOnmirrorObjEventCallback(
      {dynamic mirrorID, String functionName, dynamic args}) async {
    MethodCall jsMethodCall = MethodCall("flutterCallOnMirrorObjInvoke", {
      "mirrorID": mirrorID,
      "functionName": functionName,
      "args": args
    });

    if (this._jsWidgetState.widget.languageType == "Dart") {
      ownerApp.callDart(jsMethodCall);
    } else {
      ownerApp.callJS(jsMethodCall);
    }
  }

  String getJsonObjMirrorID(Map jsonMap) {
    dynamic mirrorID = jsonMap["mirrorID"];
    return mirrorID;
  }

  dynamic getMirrorObjectFromMap(Map jsonMap) {
    dynamic mirrorID = jsonMap["mirrorID"];
    if (mirrorID != null){
      return g_mirrorObjectMap[mirrorID];
    }
    return null;
  }

  dynamic getMirrorObjectFromID(dynamic mirrorID) {
    return g_mirrorObjectMap[mirrorID];
  }

  void setMirrorObject(dynamic mirrorObj, Map jsonMap) {
    String mirrorID = getJsonObjMirrorID(jsonMap);
    if (mirrorID != null){
      if (!mirrorObjKeyList.contains(mirrorID)){
        mirrorObjKeyList.add(mirrorID);
      }
      g_mirrorObjectMap[mirrorID] = mirrorObj;
    }
  }

  void removeMirrorObject(dynamic mirrorID){
    g_mirrorObjectMap.remove(mirrorID);
  }

  void disposeMirrorObjs(){
    mirrorObjKeyList.forEach((dynamic mirrorID){
      dynamic mirrorObj = g_mirrorObjectMap[mirrorID];
      if (mirrorObj is AnimationController) {
        mirrorObj.dispose();
      }

      removeMirrorObject(mirrorID);
    });
  }
}

//MXJSWidget 支持JSON创建
class MXProxyMXJSWidget extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName1 = "MXJSWidget";

    ///**@@@  3 替换类构造函数
    return {
      regClassName1: () => MXProxyMXJSWidget()..init(className: regClassName1)
    };
  }

  @override
  MXJSWidget constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap, {BuildContext context}) {
    var widget = MXJSWidget(
        key: mxj2d(bo, Key(jsonMap["key"])),
        name: mxj2d(bo, jsonMap["name"]),
        widgetID: mxj2d(bo, jsonMap["widgetID"]),
        widgetData: jsonMap["widgetData"],
        buildWidgetDataSeq: mxj2d(bo, jsonMap["buildWidgetDataSeq"]),
        navPushingWidgetID: jsonMap["navPushingWidgetID"],
        parentBuildOwner: bo);
    return widget;
  }
}
