//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mx_build_owner.dart';
import 'mx_common.dart';
import 'mx_widget.dart';
import 'mx_mixin.dart';

/// 管理一个JSAPP 代码文件集合
/// 负责 JS 与 Flutter UI数据通道，事件通道
class MXJSFlutterApp {
  MXJSFlutterApp(this.name) {
    _rootBuildOwnerNode = MXJsonBuildOwner.rootBuildOwner();
    _setupChannel();
  }

  String name;

  /// widget build owner ：rootBoNode
  MXJsonBuildOwner _rootBuildOwnerNode;

  /// 缓存性能监控数据<widgetId-buildSeq: profileInfoMap>
  Map<String, Map> buildProfileInfoMap = {};

  /// API JS->Flutter
  /// *重要：此API是从Flutter侧打开一个JS页面的入口函数
  /// 从 Flutter Push 一个 JS 写的页面
  /// 先创建一个空的MXJSStatefulWidget，调用JS，等待JS层widgetData来刷新页面
  MXJSStatefulWidget navigatorPushWithName(String widgetName, Key widgetKey) {
    MXJSLog.log(
        "MXJSFlutterApp:navigatorPushWithName: widgetName: $widgetName ");
    return createHostJSWidget(widgetName, widgetKey);
  }

  /// API JS->Flutter
  /// *重要：此API是从Flutter侧打开一个JS页面的入口函数
  /// 创建一个hostJSWidget,可以直接放入Fltuter的build widget Tree中
  /// 先创建一个空的MXJSStatefulWidget，调用JS，等待JS层widgetData来刷新页面
  MXJSStatefulWidget createHostJSWidget(String widgetName, Key widgetKey) {
    MXJSLog.log(
        "MXJSFlutterApp:createHostJSWidget: widgetName: $widgetName ");

    MXJSStatefulWidget jsWidget = _rootBuildOwnerNode.findWidget(widgetKey);

    if (jsWidget != null) {
      MXJSLog.log(
          "MXJSFlutterApp:_rootBuildOwnerNode.findWidget(widgetKey) true: widgetName: $widgetName ");
      return jsWidget;
    }

    jsWidget = MXSingleTickerMixinWidget.hostWidget(
        key: widgetKey,
        name: widgetName,
        parentBuildOwnerNode: _rootBuildOwnerNode);

    return jsWidget;
  }

  /// Flutter->JS  Channel
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

  /// 功能，事件通道
  MethodChannel _appChannel;

  /// 大数据通道
  BasicMessageChannel<String> _rebuildChannel;

  /// 大数据通道
  BasicMessageChannel<String> _jsPushWidgetChannel;
  Map<String, Function> _name2FunMap = {};

  /// JS 调用队列，实时性不高的调用，用调用队列合并
  List<Map> _frequencyLimitMethodCallQueue = [];

  // 事件处理
  // JS ->  Flutter  开放给调用 JS
  _setupChannel() {
    _setupName2FunMap();
    _setupAppChannel();
    _setupBuildChannel();
  }

  /// JS ->  Flutter 开放给JS调用
  _setupName2FunMap() {
    _name2FunMap["navigatorPush"] = _jsCallNavigatorPush;
    _name2FunMap["navigatorPop"] = _jsCallNavigatorPop;
  }

  /// JS ->  Flutter 开放给JS调用
  /// callJS 事件通道
  _setupAppChannel() {
    _appChannel = MethodChannel("js_flutter.js_flutter_app_channel");
    _appChannel.setMethodCallHandler((MethodCall call) async {
      MXJSLog.log("_appChannel_methodHandler: recv js call ${call.method}");
      Function fun = _name2FunMap[call.method];
      return fun(call.arguments);
    });
  }

  /// JS ->  Flutter 开放给JS调用
  /// build 大数据通道
  _setupBuildChannel() {
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

  /// rebuild quque
  Map<String,Map> _widgetId2RebuildJSCallCache = {};

  /// JS ->  flutter  开放给调用 JS
  Future<dynamic> _jsCallRebuild(widgetDataStr) async {
    var startDecodeDataTime = (new DateTime.now()).millisecondsSinceEpoch;
    Map widgetDataMap = json.decode(widgetDataStr);
    var endDecodeDataTime = (new DateTime.now()).millisecondsSinceEpoch;

    String widgetID = widgetDataMap["widgetID"];
    MXJsonBuildOwner boNode = _rootBuildOwnerNode.findChild(widgetID);

    if (boNode == null) {

      /// 加入缓存
      _widgetId2RebuildJSCallCache[widgetID] = widgetDataMap;

      MXJSLog.error("MXJSFlutterApp:_jsCallRebuild: "
          "findBuildOwner(widgetID) == null，调用暂时缓存，name:$name widgetId:$widgetID");

      _rootBuildOwnerNode.debugPrintBuildOwnerNodeTree();
      return;
    }

    // 刷新性能信息记录
    bool enableProfile = widgetDataMap["enableProfile"];
    if (enableProfile) {
      String widgetId = widgetDataMap["widgetID"];
      String buildWidgetDataSeq = widgetDataMap["buildWidgetDataSeq"];

      buildProfileInfoMap['$widgetId-$buildWidgetDataSeq'] = {
        'enableProfile': enableProfile,
        'startDecodeDataTime': startDecodeDataTime,
        'endDecodeDataTime': endDecodeDataTime
      };
    }

    MXJSLog.log("MXJSFlutterApp:_jsCallRebuild: "
        "name:${boNode.widget.name}  widgetId:$widgetID");
    // debug
    _rootBuildOwnerNode.debugPrintBuildOwnerNodeTree();

    boNode.jsCallRebuild(widgetDataMap);

    // debug
    _rootBuildOwnerNode.debugPrintBuildOwnerNodeTree();
  }

  /// JS->Flutter
  /// js层 调用navigatorPush 主动push页面
  /// 和Flutter dart代码调用 MXFluter.navigatorPushWithName 的区别是_navigatorPush并不创建_rootBuildOwner，只是创建_rootBuildOwner的子Widget
  Future<dynamic> _jsCallNavigatorPush(widgetDataStr) async {
    var startDecodeDataTime = (new DateTime.now()).millisecondsSinceEpoch;
    Map widgetDataMap = json.decode(widgetDataStr);
    var endDecodeDataTime = (new DateTime.now()).millisecondsSinceEpoch;

    //谁push jsWidget，找到对应的build owner
    String navPushingWidgetID = widgetDataMap["navPushingWidgetElementID"];
    MXJsonBuildOwner boNode = _rootBuildOwnerNode.findChild(navPushingWidgetID);

    if (boNode == null) {
      String name = widgetDataMap["name"];
      MXJSLog.error("MXJSFlutterApp:jsCallNavigatorPush: "
          "findBuildOwner(navPushingWidgetID:$navPushingWidgetID) == null，name:$name ");
      return;
    }

    // 刷新性能信息记录
    bool enableProfile = widgetDataMap["enableProfile"];
    if (enableProfile) {
      String widgetId = widgetDataMap["widgetID"];
      String buildWidgetDataSeq = widgetDataMap["buildWidgetDataSeq"];

      buildProfileInfoMap['$widgetId-$buildWidgetDataSeq'] = {
        'enableProfile': enableProfile,
        'startDecodeDataTime': startDecodeDataTime,
        'endDecodeDataTime': endDecodeDataTime
      };
    }

    boNode.jsCallNavigatorPush(widgetDataMap);
  }

  /// JS->Flutter
  /// js层 调用navigatorPop 主动pop页面
  Future<dynamic> _jsCallNavigatorPop(args) async {
    Map decodeData = json.decode(args);
    String widgetID = decodeData["widgetID"];

    //谁push jsWidget，找到对应的build owner
    MXJsonBuildOwner boNode = _rootBuildOwnerNode.findChild(widgetID);

    if (boNode == null) {
      MXJSLog.error("MXJsonBuildOwner:_jsCallNavigatorPop: "
          "findBuildOwner(widgetID:$widgetID) == null");
      return;
    }

    boNode.jsCallNavigatorPop();
  }

  /// 当有新buildOwner创建是通知
  /// TODO 支持其他调用的缓存
  onWidgetBuildEnd(MXJsonBuildOwner boNode){

    Map widgetDataMap = _widgetId2RebuildJSCallCache[boNode.ownerWidgetId];

    if(widgetDataMap != null){
      MXJSLog.log("MXJSFlutterApp:jsCall缓存重放 _jsCallRebuild: "
          "name:${boNode.widget.name} widgetId:${boNode.ownerWidgetId}");
      // debug
      _rootBuildOwnerNode.debugPrintBuildOwnerNodeTree();

      boNode.jsCallRebuild(widgetDataMap);

      // debug
      _rootBuildOwnerNode.debugPrintBuildOwnerNodeTree();

      _widgetId2RebuildJSCallCache.remove(boNode.ownerWidgetId);
    }

  }
}
