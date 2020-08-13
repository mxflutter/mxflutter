//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mx_json_build_owner.dart';
import 'mx_js_flutter_common.dart';
import 'mx_js_widget.dart';

/// 负责JSWidget 创建管理，事件分发
/// 管理一个JSAPP 代码文件集合
class MXJSFlutterApp {
  String name;

  /// 调用通道
  MethodChannel _appChannel;
  BasicMessageChannel<String> _rebuildChannel; //大数据通道
  BasicMessageChannel<String> _jsPushWidgetChannel; //大数据通道
  Map<String, Function> _channelName2FunMap = {};

  /// widget build owner ：rootBoNode
  MXJsonBuildOwner _rootBuildOwnerNode;

  //JSWidget根节点
  dynamic rootWidget;

  //calljs
  List<Map> _frequencyLimitMethodCallQueue = [];

  MXJSFlutterApp(this.name) {
    _rootBuildOwnerNode = MXJsonBuildOwner.rootBuildOwner();
    _setupChannel();
  }

  ///API
  ///JS->flutter
  ///把MXJSWidget作为根节点展示在屏幕
  void runJSApp(dynamic jsWidget) {
    MXJSLog.log(
        "MXJSFlutterApp:runJSApp:call runApp widgetName: ${jsWidget.widgetName} ");
    rootWidget = jsWidget;
    //call flutter runapp
    runApp(rootWidget);
  }

  ///API
  ///从Flutter Dart代码 Push一个 JS写的页面
  ///*重要：此API是从Dart侧打开一个JS页面的入口函数，将创建一个RootWidget，MXFlutter 的RootWidget对外只显示一个
  ///先创建一个空的MXJSStatefulWidget，调用JS，等待JS层widgetData来刷新页面
  MXJSStatefulWidget navigatorPushWithName(String widgetName, Key widgetKey,
      {ThemeData themeData,
      MediaQueryData mediaQueryData,
      IconThemeData iconThemeData}) {
    MXJSLog.log(
        "MXJSFlutterApp:navigatorPushWithName: widgetName: $widgetName ");

    MXJSStatefulWidget jsWidget = _rootBuildOwnerNode.findWidget(widgetKey);

    if (jsWidget != null) {
      MXJSLog.log(
          "MXJSFlutterApp:_rootBuildOwner.findWidget(widgetKey) true: widgetName: $widgetName ");
      return jsWidget;
    }

    jsWidget = MXJSStatefulWidget.hostWidget(
        key: widgetKey,
        name: widgetName,
        parentBuildOwnerNode: _rootBuildOwnerNode);

    callJSNavigatorPushWithName(jsWidget.name, jsWidget.widgetID,
        themeData: themeData,
        mediaQueryData: mediaQueryData,
        iconThemeData: iconThemeData);

    return jsWidget;
  }

  //JS->Flutter， js侧调用Flutter，传递Json Widget Tree，������建JSWidget
  dynamic createJSWidget(Map widgetData) {
    dynamic jsWidget = _rootBuildOwnerNode.buildRootWidget(widgetData);
    return jsWidget;
  }

  /// flutter -> JS flutter 调用 JS
  /// flutter层 主动push页面,call js 创建名字为widgetName的jswidget
  /// 先创建一个空的MXJSStatefulWidget，调用JS，等待JS层widgetData来刷新页���
  callJSNavigatorPushWithName(String widgetName, String widgetID,
      {ThemeData themeData,
      MediaQueryData mediaQueryData,
      IconThemeData iconThemeData}) async {
    MethodCall jsMethodCall = MethodCall("flutterCallNavigatorPushWithName", {
      "widgetName": widgetName,
      "widgetID": widgetID,
      "themeData": MXUtil.cThemeDataToJson(themeData),
      "mediaQueryData": MXUtil.cMediaQueryDataToJson(mediaQueryData),
      "iconThemeData": MXUtil.cIconThemeDataToJson(iconThemeData),
    });

    callJS(jsMethodCall);
  }

  //flutter->js Channel
  dynamic callJS(MethodCall jsMethodCall) async {
    MXJSLog.log("callJSWidget:${jsMethodCall.method}");

    var jsArgs = {
      "method": jsMethodCall.method,
      "arguments": jsMethodCall.arguments,
    };

    return await _appChannel.invokeMethod("callJS", jsArgs);
  }

  //flutter->js Channel
  dynamic callJSNeedFrequencyLimit(MethodCall jsMethodCall) async {
    MXJSLog.log("callJSWidget:${jsMethodCall.method}");

    var jsCallMap = {
      "method": jsMethodCall.method,
      "arguments": jsMethodCall.arguments,
    };

    _frequencyLimitMethodCallQueue.add(jsCallMap);

    if (_frequencyLimitMethodCallQueue.length == 1) {
      Future.delayed(Duration(milliseconds: 500), () {
        var jsArgs = {
          "method": "flutterCallFrequencyLimitCallList",
          "arguments": _frequencyLimitMethodCallQueue,
        };

        _appChannel.invokeMethod("callJS", jsArgs);

        _frequencyLimitMethodCallQueue.clear();
      });
    }
  }

  //事件处理
  // JS ->  flutter  开放给调用 JS
  _setupChannel() {
    _appChannel = MethodChannel("js_flutter.js_flutter_app_channel");
    _appChannel.setMethodCallHandler((MethodCall call) async {
      // if (call.arguments is Map) {
      //   var ms = (new DateTime.now()).millisecondsSinceEpoch;
      //   MXJSLog.log(
      //       "MXTimeStamp Flutter Receive ${call.method} $ms index=${call.arguments["index"]}");
      // }

      MXJSLog.log("_appChannel_methodHandler: recv js call ${call.method}");

      Function fun = _channelName2FunMap[call.method];
      return fun(call.arguments);
    });

    // JS ->  flutter  开放给调用 JS
    _channelName2FunMap["navigatorPush"] = _jsCallNavigatorPush;
    _channelName2FunMap["navigatorPop"] = _jsCallNavigatorPop;

    // 设置Rebuild方法通道
    _rebuildChannel = const BasicMessageChannel(
        'js_flutter.js_flutter_app_channel.rebuild', StringCodec());
    _rebuildChannel
        .setMessageHandler((String widgetDataStr) => Future<String>(() {
              _jsCallRebuild(widgetDataStr);
              return null;
            }));

    // 设置navigatorPush方法通道
    _jsPushWidgetChannel = const BasicMessageChannel(
        'js_flutter.js_flutter_app_channel.navigator_push', StringCodec());
    _jsPushWidgetChannel
        .setMessageHandler((String widgetDataStr) => Future<String>(() {
      _jsCallNavigatorPush(widgetDataStr);
              return null;
            }));
  }

  /// JS ->  flutter  开放给调用 JS
  Future<dynamic> _jsCallRebuild(widgetDataStr) async {
    var startDecodeData = (new DateTime.now()).millisecondsSinceEpoch;
    Map widgetDataMap = json.decode(widgetDataStr);
    var endDecodeData = (new DateTime.now()).millisecondsSinceEpoch;

    String widgetID = widgetDataMap["widgetID"];
    MXJsonBuildOwner boNode = _rootBuildOwnerNode.findChild(widgetID);

    if (boNode == null) {
      MXJSLog.error("MXJSFlutterApp:_jsCallRebuild: "
          "findBuildOwner(widgetID) == null，name:$name id:$widgetID");
      return;
    }

    boNode.jsCallRebuild(widgetDataMap);
  }

  // js层 调用navigatorPush 主动push页面
  // 和Flutter dart代码调用 MXFluter.navigatorPushWithName 的区别是_navigatorPush并不创建_rootBuildOwner，只是创建_rootBuildOwner的子Widget
  Future<dynamic> _jsCallNavigatorPush(widgetDataStr) async {
    var startDecodeData = (new DateTime.now()).millisecondsSinceEpoch;
    Map widgetDataMap = json.decode(widgetDataStr);
    var endDecodeData = (new DateTime.now()).millisecondsSinceEpoch;

    //谁push jsWidget，找到对应的build owner
    String navPushingWidgetID = widgetDataMap["navPushingWidgetID"];
    MXJsonBuildOwner boNode = _rootBuildOwnerNode.findChild(navPushingWidgetID);

    if (boNode == null) {
      String name = widgetDataMap["name"];
      MXJSLog.error("MXJSFlutterApp:jsCallNavigatorPush: "
          "findBuildOwner(navPushingWidgetID:$navPushingWidgetID) == null，name:$name ");
      return;
    }

    boNode.jsCallNavigatorPush(widgetDataMap);
  }

  //js层 调用navigatorPop 主动pop页面
  Future<dynamic> _jsCallNavigatorPop(args) async {

    String widgetID = args["widgetID"];

    //谁push jsWidget，找到对应的build owner
    MXJsonBuildOwner boNode = _rootBuildOwnerNode.findChild(widgetID);

    if (boNode == null) {
      MXJSLog.error("MXJsonBuildOwner:_jsCallNavigatorPop: "
          "findBuildOwner(widgetID:$widgetID) == null");
      return;
    }

    boNode.jsCallNavigatorPop();
  }
}
