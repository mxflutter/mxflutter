//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mx_build_owner.dart';
import 'mx_js_flutter_common.dart';

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
    _jsFlutterAppChannelFunRegMap["invoke"] = _jsInvoke;

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

  //js层 调用Dart代码
  Future<dynamic> _jsInvoke(args) async {
    _rootBuildOwner.jsCallInvoke(args);
  }
}

class MXJSWidgetHelper extends Object {
  MXJSWidgetHelper(dynamic widget) {
    this.widget = widget;
  }

  dynamic widget;

  bool updateWidget(
      String widgetID, Map widgetData, String buildWidgetDataSeq) {
    this.widget.widgetData = widgetData;

    if (this.widget.widgetID != null && this.widget.widgetID != widgetID) {
      //TODO:errormx
      MXJSLog.log(
          "MXJSWidgetHelper:updateWidget:this.widget.widgetID != null && this.widget.widgetID != widgetID");
    }

    this.widget.widgetID = widgetID;
    this.widget.buildingWidgetDataSeq = buildWidgetDataSeq;
    //TODO:diff
    return true;
  }

  Widget buildErrorWidget(BuildContext context) {
    // return Center(
    //     child: new RaisedButton(
    //         onPressed: () {
    //           Navigator.pop(context);
    //         },
    //         child: new Text("widgetData=null pop")));

    return Container(
        color: Colors.white,
        child: Center(
          child: CircularProgressIndicator(),
        ));
  }

  void jsRebuild(String widgetID, Map widgetData, String buildWidgetDataSeq) {
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

  jsNavigatorPush(dynamic jsWidget, BuildContext context) {
    MXJSLog.log("MXJSWidgetState:jsNavigatorPush:");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => jsWidget),
    );
  }

  jsNavigatorPop(BuildContext context) {
    MXJSLog.log("MXJSWidgetState:jsNavigatorPop:");
    Navigator.pop(context);
  }
}

class MXJSBaseWidget extends Object {
  //Flutter 侧生成的MXWidget widgetID 从1开始，为奇数 +2
  static int widgetIDFeed = 1;

  String name;
  String widgetID;
  Map widgetData;

  //正在构建的seq
  String buildingWidgetDataSeq;

  //buildingWidgetDataSeq真正构建成功后在切换成buildWidgetDataSeq
  String buildWidgetDataSeq;

  MXJsonBuildOwner parentBuildOwner;
  MXJsonBuildOwner buildOwner;

  // The Widget Pages that pushed this Widget ID
  // 把当前widget（this） push 出来的widget ID
  // 序列化到JSON里
  String navPushingWidgetID;

  // The Widget Pages that pushed this Widget
  // 把当前widget（this） push 出来的widget
  dynamic navPushingWidget;

  //The widget that was pushed by this widget
  //由自己this push的widget page
  List<dynamic> navPushedWidgets;

  // 辅助类，封装一些方法
  MXJSWidgetHelper helper;

  BuildContext context;

  // 性能数据
  bool enableProfile;
  Map profileInfo;

  static String generateWidgetID() {
    //Flutter 侧生成的MXWidget widgetID 从1开始，为奇数 +2
    widgetIDFeed = widgetIDFeed + 2;
    return widgetIDFeed.toString();
  }
}

///封装JSWidget
// ignore: must_be_immutable
class MXJSStatefulWidget extends StatefulWidget with MXJSBaseWidget {
  MXJSWidgetState _state;

  MXJSStatefulWidget(
      {Key key,
      String name,
      String widgetID,
      Map widgetData,
      String buildingWidgetDataSeq,
      String navPushingWidgetID,
      MXJsonBuildOwner parentBuildOwner})
      : super(key: key) {
    this.name = name;
    this.widgetID = widgetID;
    this.buildingWidgetDataSeq = buildingWidgetDataSeq;
    this.widgetData = widgetData;
    this.navPushingWidgetID = navPushingWidgetID;
    this.parentBuildOwner = parentBuildOwner;
    this.helper = MXJSWidgetHelper(this);
  }

  ///由dart侧创建MXWidget壳子
  static MXJSStatefulWidget createEmptyWidget(
      {Key key, String name, MXJsonBuildOwner parentBuildOwner}) {
    //由dart侧生成 widgetID
    String widgetID = MXJSBaseWidget.generateWidgetID();
    MXJSStatefulWidget widget = MXJSStatefulWidget(
        key: key,
        name: name,
        widgetID: widgetID,
        parentBuildOwner: parentBuildOwner);

    return widget;
  }

  get state => _state;

  @override
  State<StatefulWidget> createState() {
    _state = MXJSWidgetState();
    return _state;
  }

  void resetBuildOwner() {
    if (this.buildOwner == null) {
      this.buildOwner = MXJsonBuildOwner(this, this.parentBuildOwner);
    } else {
      this.parentBuildOwner.addChildBuildOwner(widgetID, this.buildOwner);
    }
  }
}

class MXJSWidgetState extends State<MXJSStatefulWidget>
    with SingleTickerProviderStateMixin {
  MXJSWidgetState();

  @override
  void initState() {
    super.initState();

    //widget 在Tabbar中时可能被dispose后又重新inflateWidget，dispose时会从父BuildOwner中删除自己的BuildOwner
    //flutter根据widget重新build，回先调用initState，重新插入BuildOwnerTree
    this.widget.resetBuildOwner();
  }

  @override
  void dispose() {
    super.dispose();

    this.widget.buildOwner.onDispose();
  }

  @override
  Widget build(BuildContext context) {
    MXJSLog.log(
        "MXJSStatefulWidget:build begin: widgetID ${widget.widgetID} curBuildWidgetDataSeq:${widget.buildWidgetDataSeq} buildingWidgetDataSeq:${widget.buildingWidgetDataSeq}");

    if (this.widget.buildOwner == null) {
      this.widget.buildOwner =
          MXJsonBuildOwner(this.widget, this.widget.parentBuildOwner);
    }

    if (widget.widgetData == null) {
      MXJSLog.error(
          "MXJSWidgetState:build: widget.widgetData == null this.widget.widgetID:${this.widget.widgetID}");
      return widget.helper.buildErrorWidget(context);
    }

    this.widget.context = context;
    var w = this.widget.buildOwner.build(widget.widgetData, context);

    //call JS层，Flutter UI 使用当前JSWidget哪个序列号的数据构建，callbackID,widgetID  与之对应
    MXJSLog.debug(
        "MXJSStatefulWidget:building: widget:$w callJSOnBuildEnd  widgetID ${widget.widgetID} curBuildWidgetDataSeq:${widget.buildWidgetDataSeq} buildingWidgetDataSeq:${widget.buildingWidgetDataSeq}");

    this.widget.buildWidgetDataSeq = this.widget.buildingWidgetDataSeq;
    this.widget.buildOwner.callJSOnBuildEnd();

    MXJSLog.log(
        "MXJSStatefulWidget:build end: widget:$w callJSOnBuildEnd  widgetID ${widget.widgetID} curBuildWidgetDataSeq:${widget.buildWidgetDataSeq} buildingWidgetDataSeq:${widget.buildingWidgetDataSeq}");
    return w;
  }
}

///静态json生成Widget
// ignore: must_be_immutable
class MXJSStatelessWidget extends StatelessWidget with MXJSBaseWidget {
  MXJSStatelessWidget(
      {Key key,
      String name,
      String widgetID,
      Map widgetData,
      String buildingWidgetDataSeq,
      String navPushingWidgetID,
      MXJsonBuildOwner parentBuildOwner})
      : super(key: key) {
    this.name = name;
    this.widgetID = widgetID;
    this.buildingWidgetDataSeq = buildingWidgetDataSeq;
    this.widgetData = widgetData;
    this.navPushingWidgetID = navPushingWidgetID;

    this.parentBuildOwner = parentBuildOwner;

    this.helper = MXJSWidgetHelper(this);

    this.buildOwner = MXJsonBuildOwner(this, this.parentBuildOwner);
  }

  @override
  Widget build(BuildContext context) {
    // MXJSLog.log("MXJSStatelessWidget:build: ${widget.widgetData} ");
    if (this.widgetData == null) {
      return this.helper.buildErrorWidget(context);
    }

    this.context = context;

    var w = this.buildOwner.build(this.widgetData, context);

    this.buildWidgetDataSeq = this.buildingWidgetDataSeq;
    //告诉JS层，使用当前JSWidget 序列号的数据构建，callbackID,widgetID  与之对应
    this.buildOwner.callJSOnBuildEnd();

    return w;
  }
}
