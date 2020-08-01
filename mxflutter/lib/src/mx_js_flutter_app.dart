//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mx_json_build_owner.dart';
import 'mx_js_flutter_common.dart';
import 'mx_js_widget.dart';

///负责JSWidget 创建管理，事件分发
///管理一个JSAPP 代码文件集合
class MXJSFlutterApp {
  String name;

  MethodChannel _jsFlutterAppChannel;
  BasicMessageChannel<String> _jsFlutterAppRebuildChannel; //大数据通道
  BasicMessageChannel<String> _jsFlutterAppJSPushWidgetChannel; //大数据通道
  Map<String, dynamic> _jsFlutterAppChannelFunRegMap = {};
  MXJsonBuildOwner _rootBuildOwner;

  //JSWidget根节点
  dynamic rootWidget;

  //calljs
  List<Map> _frequencyLimitMethodCallQueue = [];

  MXJSFlutterApp(this.name) {
    _rootBuildOwner = MXJsonBuildOwner.rootBuildOwner(this);
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

    MXJSStatefulWidget jsWidget = _rootBuildOwner.findWidget(widgetKey);

    if (jsWidget != null) {
      MXJSLog.log(
          "MXJSFlutterApp:_rootBuildOwner.findWidget(widgetKey) true: widgetName: $widgetName ");
      return jsWidget;
    }

    jsWidget = MXJSStatefulWidget.createEmptyWidget(
        key: widgetKey, name: widgetName, parentBuildOwner: _rootBuildOwner);

    callJSNavigatorPushWithName(jsWidget.name, jsWidget.widgetID,
        themeData: themeData,
        mediaQueryData: mediaQueryData,
        iconThemeData: iconThemeData);

    return jsWidget;
  }

  //JS->Flutter， js侧调用Flutter，传递Json Widget Tree，������建JSWidget
  dynamic createJSWidget(Map widgetData) {
    dynamic jsWidget = _rootBuildOwner.buildRootWidget(widgetData);
    return jsWidget;
  }

  //flutter -> JS flutter 调用 JS
  //flutter层 主动push页面,call js 创建名字为widgetName的jswidget
  //先创建一个空的MXJSStatefulWidget，调用JS，等待JS层widgetData来刷新页���
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

    return await _jsFlutterAppChannel.invokeMethod("callJS", jsArgs);
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

        _jsFlutterAppChannel.invokeMethod("callJS", jsArgs);

        _frequencyLimitMethodCallQueue.clear();
      });
    }
  }

  //事件处理
  // JS ->  flutter  开放给调用 JS
  _setupChannel() {
    _jsFlutterAppChannel = MethodChannel("js_flutter.js_flutter_app_channel");
    _jsFlutterAppChannel.setMethodCallHandler((MethodCall call) async {
      // if (call.arguments is Map) {
      //   var ms = (new DateTime.now()).millisecondsSinceEpoch;
      //   MXJSLog.log(
      //       "MXTimeStamp Flutter Receive ${call.method} $ms index=${call.arguments["index"]}");
      // }

      MXJSLog.log(
          "_jsFlutterAppChannel_methodHandler: recv js call ${call.method}");

      Function fun = _jsFlutterAppChannelFunRegMap[call.method];
      return fun(call.arguments);
    });

    /// JS ->  flutter  开放给调用 JS
    _jsFlutterAppChannelFunRegMap["rebuild"] = _jsRebuild;
    _jsFlutterAppChannelFunRegMap["navigatorPush"] = _navigatorPush;
    _jsFlutterAppChannelFunRegMap["navigatorPop"] = _navigatorPop;

    // 设置Rebuild方法通道
    _jsFlutterAppRebuildChannel = const BasicMessageChannel(
        'js_flutter.js_flutter_app_channel.rebuild', StringCodec());
    _jsFlutterAppRebuildChannel
        .setMessageHandler((String message) => Future<String>(() {
              Map args = {};
              args["widgetData"] = message;
              _jsRebuild(args);
              return null;
            }));

    // 设置navigatorPush方法通道
    _jsFlutterAppJSPushWidgetChannel = const BasicMessageChannel(
        'js_flutter.js_flutter_app_channel.navigator_push', StringCodec());
    _jsFlutterAppJSPushWidgetChannel
        .setMessageHandler((String message) => Future<String>(() {
              Map args = {};
              args["widgetData"] = message;
              _navigatorPush(args);
              return null;
            }));
  }

  /// JS ->  flutter  开放给调用 JS
  Future<dynamic> _jsRebuild(args) async {
    _rootBuildOwner.jsCallRebuild(args);
  }

  //js层 调用navigatorPush 主动push页面
  //和Flutter dart代码调用 MXFluter.navigatorPushWithName 的区别是_navigatorPush并不创建_rootBuildOwner，只是创建_rootBuildOwner的子Widget
  Future<dynamic> _navigatorPush(args) async {
    _rootBuildOwner.jsCallNavigatorPush(args);
  }

  //js层 调用navigatorPop 主动pop页面
  Future<dynamic> _navigatorPop(args) async {
    _rootBuildOwner.jsCallNavigatorPop(args);
  }
}