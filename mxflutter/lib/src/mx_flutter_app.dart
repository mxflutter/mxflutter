// MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mx_build_owner.dart';
import 'mx_common.dart';
import 'mx_widget.dart';

/// 管理 JSAPP 代码文件集合。
/// 管理 Flutter 与 JS数据通道，事件通道。
class MXJSFlutterApp {
  /// BuildOwnerTree 根节点，从根节点查找操作刷新Widget Tree.
  MXBuildOwner _rootBuildOwnerNode;

  /// 缓存性能监控数据<widgetId-buildSeq: profileInfoMap>。
  Map<String, Map> buildProfileInfoMap = {};

  /// 对应到JS App ，功能，事件通道。
  MethodChannel _appChannel;

  /// UI Data rebuild大数据通道
  BasicMessageChannel<String> _rebuildChannel;

  /// pushWidget UI Data大数据通道。
  BasicMessageChannel<String> _jsPushWidgetChannel;

  /// 方法字典。
  Map<String, Function> _name2FunMap = {};

  /// JS 调用队列，实时性不高的调用，会合并后发出。
  List<Map> _frequencyLimitMethodCallQueue = [];

  /// 如果新建Widget后，Rebuild过快调用，Flutter Widget还没创建完成，则先缓存
  Map<String, Map> _widgetId2RebuildJSCallCache = {};

  MXJSFlutterApp() {
    _rootBuildOwnerNode = MXBuildOwner.rootBuildOwner();
    _setupChannel();
  }

  /// 【API】 JS->Flutter.
  /// *重要：此API是从Flutter侧打开一个JS页面的入口函数。
  /// 从 Flutter Push 一个 JS 写的页面，
  /// 先创建一个空的MXJSStatefulWidget，调用JS，等待JS层widgetData来刷新页面。
  MXJSStatefulWidget navigatorPushWithName(
      String widgetName, Key widgetKey, Map flutterPushParams) {
    MXJSLog.log(
        "MXJSFlutterApp:navigatorPushWithName: widgetName: $widgetName ");
    return createHostJSWidget(widgetName, widgetKey, flutterPushParams);
  }

  /// 【API】 JS->Flutter.
  /// *重要：此API是从Flutter侧打开一个JS页面的入口函数。
  /// 创建一个hostJSWidget,可以直接放入Fltuter的build widget Tree中，
  /// 先创建一个空的MXJSStatefulWidget，调用JS，等待JS层widgetData来刷新页面。
  MXJSStatefulWidget createHostJSWidget(
      String widgetName, Key widgetKey, Map flutterPushParams) {
    MXJSLog.log("MXJSFlutterApp:createHostJSWidget: widgetName: $widgetName ");
    MXJSStatefulWidget jsWidget = _rootBuildOwnerNode.findWidget(widgetKey);

    if (jsWidget != null) {
      MXJSLog.log(
          "MXJSFlutterApp:_rootBuildOwnerNode.findWidget(widgetKey) true: widgetName: $widgetName ");
      return jsWidget;
    }

    jsWidget = MXJSStatefulWidget.hostWidget(
        key: widgetKey,
        name: widgetName,
        parentBuildOwnerNode: _rootBuildOwnerNode,
        flutterPushParams: flutterPushParams);

    return jsWidget;
  }

  /// 当有新buildOwner创建是通知。
  /// TODO 支持其他调用的缓存。
  void onWidgetBuildEnd(MXBuildOwner boNode) {
    Map widgetDataMap = _widgetId2RebuildJSCallCache[boNode.ownerWidgetId];

    if (widgetDataMap != null) {
      MXJSLog.log("MXJSFlutterApp:jsCall缓存重放 _jsCallRebuild: "
          "name:${boNode.widget.name} widgetId:${boNode.ownerWidgetId}");
      // debug.
      _rootBuildOwnerNode.debugPrintBuildOwnerNodeTree();

      boNode.jsCallRebuild(widgetDataMap);

      // debug.
      _rootBuildOwnerNode.debugPrintBuildOwnerNodeTree();

      _widgetId2RebuildJSCallCache.remove(boNode.ownerWidgetId);
    }
  }

  /// 查询对应widgetID的BuildContext。
  BuildContext queryElementBuildContext(String widgetID) {
    MXBuildOwner buildOwner = _rootBuildOwnerNode.findChild(widgetID);
    return buildOwner?.buildContext;
  }

  /// JS引擎初始化结束后，重新刷新host widget。
  void refreshHostWidgetAfterJSEngineInit({String widgetID, bool success}) {
    BuildContext buildContext = queryElementBuildContext(widgetID);
    MXJSWidgetState state = (buildContext as MXJSStatefulElement).state;
    state.refreshHostWidgetAfterJSEngineInit(jsEngineInitSuccess: success);
  }

  /// Flutter->JS 调用JS方法。
  dynamic callJS(MethodCall jsMethodCall) async {
    MXJSLog.log("callJSWidget:${jsMethodCall.method}");

    /// 如果合并发送的调用队列还没有发出，先刷新队列
    /// 以保证 callJS 的调用顺序
    if(_frequencyLimitMethodCallQueue.isNotEmpty){
      _refreshFrequencyLimitMethodCallQueue();
    }
    
    var jsArgs = {
      "method": jsMethodCall.method,
      "arguments": jsMethodCall.arguments,
    };

    try {
      return await _appChannel.invokeMethod("callJS", jsArgs);
    } catch (e) {
      MXJSLog.error(
          "MXJSFlutterApp:callJS, error:$e, method:${jsMethodCall.method}, arguments:${jsMethodCall.arguments}");
      rethrow;
    }
  }

  /// Flutter->JS 调用JS方法，控制调用频率
  dynamic callJSNeedFrequencyLimit(MethodCall jsMethodCall) async {
    MXJSLog.log("callJSWidget:${jsMethodCall.method}");
    var jsCallMap = {
      "method": jsMethodCall.method,
      "arguments": jsMethodCall.arguments,
    };

    _frequencyLimitMethodCallQueue.add(jsCallMap);

    if (_frequencyLimitMethodCallQueue.length == 1) {
      Future.delayed(Duration(milliseconds: 500), () {
        _refreshFrequencyLimitMethodCallQueue();
      });
    }
  }

  void _refreshFrequencyLimitMethodCallQueue() {
    MXJSLog.log(
        "refreshFrequencyLimitMethodCallQueue: ${_frequencyLimitMethodCallQueue.length}");
    if (_frequencyLimitMethodCallQueue.isEmpty) {
      return;
    }

    var jsArgs = {
      "method": "flutterCallFrequencyLimitCallList",
      "arguments": _frequencyLimitMethodCallQueue,
    };

    _appChannel.invokeMethod("callJS", jsArgs);
    _frequencyLimitMethodCallQueue.clear();
  }

  // 事件处理。
  // JS -> Flutter 开放给调用 JS。
  void _setupChannel() {
    _setupNavigatorPushChannel();
    _setupBuildChannel();
    _setupAppChannel();
    _setupName2FunMap();
  }

  /// JS -> Flutter 开放给JS调用。
  /// navigatorPush 大数据通道。
  void _setupNavigatorPushChannel() {
    // 设置navigatorPush方法通道。
    _jsPushWidgetChannel = BasicMessageChannel(
        'js_flutter.js_flutter_app_channel.navigator_push', StringCodec());
    _jsPushWidgetChannel
        .setMessageHandler((String widgetDataStr) => Future<String>(() {
              _jsCallNavigatorPush(widgetDataStr);
              return null;
            }));
  }

  /// JS -> Flutter 开放给JS调用。
  /// build 大数据通道。
  void _setupBuildChannel() {
    // 设置Rebuild方法通道。
    _rebuildChannel = BasicMessageChannel(
        'js_flutter.js_flutter_app_channel.rebuild', StringCodec());
    _rebuildChannel
        .setMessageHandler((String widgetDataStr) => Future<String>(() {
              _jsCallRebuild(widgetDataStr);
              return null;
            }));
  }

  /// JS -> Flutter 开放给JS调用。
  /// callJS 事件通道。
  void _setupAppChannel() {
    _appChannel = MethodChannel("js_flutter.js_flutter_app_channel");
    _appChannel.setMethodCallHandler((MethodCall call) async {
      MXJSLog.log("_appChannel_methodHandler: recv js call ${call.method}");
      Function fun = _name2FunMap[call.method];
      return fun(call.arguments);
    });
  }

  /// JS -> Flutter 开放给JS调用。
  void _setupName2FunMap() {
    _name2FunMap["navigatorPushNamed"] = _jsCallNavigatorPushNamed;
    _name2FunMap["navigatorPushBundleJSPage"] =
        _jsCallNavigatorPushBundleJSPage;
    _name2FunMap["navigatorPop"] = _jsCallNavigatorPop;
  }

  /// JS->Flutter.
  /// js层 调用navigatorPush 主动push页面。
  /// 和Flutter dart代码调用 MXFluter.navigatorPushWithName 的区别是_navigatorPush并不创建_rootBuildOwner，只是创建_rootBuildOwner的子Widget。
  void _jsCallNavigatorPush(widgetDataStr) {
    var startDecodeDataTime = (new DateTime.now()).millisecondsSinceEpoch;
    Map widgetDataMap = json.decode(widgetDataStr);
    var endDecodeDataTime = (new DateTime.now()).millisecondsSinceEpoch;

    // 谁push jsWidget，找到对应的build owner。
    String navPushingWidgetID = widgetDataMap["navPushingWidgetElementID"];
    MXBuildOwner boNode = _rootBuildOwnerNode.findChild(navPushingWidgetID);

    if (boNode == null) {
      String name = widgetDataMap["name"];
      MXJSLog.error("MXJSFlutterApp:jsCallNavigatorPush: "
          "findBuildOwner(navPushingWidgetID:$navPushingWidgetID) == null，name:$name ");
      return;
    }

    // 刷新性能信息记录。
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

  /// JS->Flutter。
  /// js层 调用navigatorPushNamed 主动push页面。
  void _jsCallNavigatorPushNamed(args) {
    // 谁push jsWidget，找到对应的build owner。
    String navPushingWidgetID = args["navPushingWidgetElementID"];
    MXBuildOwner boNode = _rootBuildOwnerNode.findChild(navPushingWidgetID);

    String routeName = args["routeName"];
    if (boNode == null) {
      MXJSLog.error("MXJSFlutterApp:jsCallNavigatorPushNamed: "
          "findBuildOwner(navPushingWidgetID:$navPushingWidgetID) == routeName ");
      return;
    }

    boNode.jsCallNavigatorPushNamed(routeName, args["mxArguments"]);
  }

  /// JS->Flutter.
  /// js层 调用navigatorPushNamed 主动push页面。
  void _jsCallNavigatorPushBundleJSPage(widgetDataStr) {
    Map widgetDataMap = json.decode(widgetDataStr);

    // 谁push jsWidget，找到对应的build owner。
    String navPushingWidgetID = widgetDataMap["navPushingWidgetElementID"];
    MXBuildOwner boNode = _rootBuildOwnerNode.findChild(navPushingWidgetID);

    if (boNode == null) {
      String name = widgetDataMap["name"];
      MXJSLog.error("MXJSFlutterApp:_jsCallNavigatorPushBundleJSPage: "
          "findBuildOwner(navPushingWidgetID:$navPushingWidgetID) == null，name:$name ");
      return;
    }

    boNode.jsCallNavigatorPush(widgetDataMap);
  }

  /// JS->Flutter.
  /// js层 调用navigatorPop 主动pop页面。
  void _jsCallNavigatorPop(args) {
    Map decodeData = json.decode(args);
    String widgetID = decodeData["widgetID"];

    // 谁push jsWidget，找到对应的build owner。
    MXBuildOwner boNode = _rootBuildOwnerNode.findChild(widgetID);

    if (boNode == null) {
      MXJSLog.error("MXJsonBuildOwner:_jsCallNavigatorPop: "
          "findBuildOwner(widgetID:$widgetID) == null");
      return;
    }

    boNode.jsCallNavigatorPop();
  }

  /// JS -> flutter 开放给调用 JS。
  void _jsCallRebuild(widgetDataStr) {
    var startDecodeDataTime = (new DateTime.now()).millisecondsSinceEpoch;
    Map widgetDataMap = json.decode(widgetDataStr);
    var endDecodeDataTime = (new DateTime.now()).millisecondsSinceEpoch;

    String widgetID = widgetDataMap["widgetID"];
    MXBuildOwner boNode = _rootBuildOwnerNode.findChild(widgetID);

    if (boNode == null) {
      /// 加入缓存。
      _widgetId2RebuildJSCallCache[widgetID] = widgetDataMap;

      MXJSLog.error("MXJSFlutterApp:_jsCallRebuild: "
          "findBuildOwner(widgetID) == null，调用暂时缓存, widgetId:$widgetID");

      _rootBuildOwnerNode.debugPrintBuildOwnerNodeTree();
      return;
    }

    // 刷新性能信息记录。
    bool enableProfile = widgetDataMap["enableProfile"];
    if (enableProfile) {
      String widgetId = widgetDataMap["widgetID"];
      String buildWidgetDataSeq = widgetDataMap["buildWidgetDataSeq"];

      if (buildProfileInfoMap['$widgetId-$buildWidgetDataSeq'] != null) {
        buildProfileInfoMap['$widgetId-$buildWidgetDataSeq'].addAll({
          'enableProfile': enableProfile,
          'startDecodeDataTime': startDecodeDataTime,
          'endDecodeDataTime': endDecodeDataTime
        });
      } else {
        buildProfileInfoMap['$widgetId-$buildWidgetDataSeq'] = {
          'enableProfile': enableProfile,
          'startDecodeDataTime': startDecodeDataTime,
          'endDecodeDataTime': endDecodeDataTime
        };
      }
    }

    MXJSLog.log("MXJSFlutterApp:_jsCallRebuild: "
        "name:${boNode.widget.name}  widgetId:$widgetID");
    // debug.
    _rootBuildOwnerNode.debugPrintBuildOwnerNodeTree();

    boNode.jsCallRebuild(widgetDataMap);

    // debug.
    _rootBuildOwnerNode.debugPrintBuildOwnerNodeTree();
  }
}
