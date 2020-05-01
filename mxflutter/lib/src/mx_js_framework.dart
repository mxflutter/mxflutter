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
import 'mx_js_flutter_common.dart';
import 'mx_json_to_dart.dart';
import 'mx_js_mirror_obj_mgr.dart';

typedef Future<dynamic> MXChannelFun(dynamic arguments);

///*接口类
///MXJSFlutter是 Native层MXJSFlutterEngine的通讯代理类
///MXJSFluttr 在Flutter层的总入口
///负责MXJSFlutterApp 创建管理，事件分发
class MXJSFlutter {
  //单例代码
  static MXJSFlutter _instance;

  static MXJSFlutter getInstance() {
    if (_instance == null) {
      _instance = MXJSFlutter._();
    }

    return _instance;
  }

  factory MXJSFlutter() {
    return MXJSFlutter.getInstance();
  }

  //----

  //公开属性
  MXJSFlutterApp currentApp;

  MethodChannel _jsFlutterMainChannel;
  //通用js <===bridge===> flutter 通道
  BasicMessageChannel<String> _jsFlutterCommonBasicChannel;
  Map<String, MXChannelFun> _jsFlutterMainChannelFunRegMap = {};

  MXJSFlutter._() {}

  setup() {
    setupChannel();
  }

  setupChannel() {
    ///[Native->flutter]
    _jsFlutterMainChannel = MethodChannel("js_flutter.flutter_main_channel");
    _jsFlutterMainChannel.setMethodCallHandler((MethodCall call) async {
      MXJSLog.log("_jsFlutterMainChannel_methodHandler:");
      MXJSLog.log(call);

      Function fun = _jsFlutterMainChannelFunRegMap[call.method];
      return fun(call.arguments);
    });

    _jsFlutterCommonBasicChannel = const BasicMessageChannel(
        'mxflutter.mxflutter_common_basic_channel', StringCodec());
    _jsFlutterCommonBasicChannel
        .setMessageHandler((String message) => Future<String>(() {
              return js2flutterSubCallChannel(message);
            }));

    ///Method reg
    _jsFlutterMainChannelFunRegMap["reloadApp"] = reloadApp;

    ///------mxflutterBridge [js ->native-> flutter]  subcmd------
    ///由js2flutterSubCallChannel调用
    _jsFlutterMainChannelFunRegMap["mxfJSBridgeCreateMirrorObj"] =
        mxfJSBridgeCreateMirrorObj;
    _jsFlutterMainChannelFunRegMap["mxfJSBridgeInvokeMirrorObjWithCallback"] =
        mxfJSBridgeInvokeMirrorObjWithCallback;
    _jsFlutterMainChannelFunRegMap["mxflutterBridgeMethodChannelInvoke"] =
        mxflutterBridgeMethodChannelInvoke;
    _jsFlutterMainChannelFunRegMap[
            "mxflutterBridgeEventChannelReceiveBroadcastStreamListenInvoke"] =
        mxflutterBridgeEventChannelReceiveBroadcastStreamListenInvoke;

    _jsFlutterMainChannelFunRegMap["mxfJSBridgeRemoveMirrorObjsRef"] =
        mxfJSBridgeRemoveMirrorObjsRef;

    ///------mxflutterBridge------
  }

  ///API
  ///flutter -> js
  ///由Flutter 代码启动JSApp。 可以用在先显示Dart页面，然后路由调转到JS页面
  ///启动JSApp之后，执行JS代码，JS代码可以主动调用Flutter显示自己的页面，也能接受Flutter的指令，显示对应页面
  ///jsAppAssetsKey ，JS业务代码参考示例，放置在一个文件夹中，并且有main.js文件，创建MXJSFlutterApp
  runJSApp({String jsAppAssetsKey = "",String jsAppPath = ""}) {
    var args = {"jsAppAssetsKey": jsAppAssetsKey,"jsAppPath":jsAppPath};
    _jsFlutterMainChannel.invokeMethod("callNativeRunJSApp", args);

    //暂时只支持一个
    currentApp = MXJSFlutterApp(jsAppAssetsKey);
  }

  callJsCallbackFunction(String callbackId, param) {
    var args = {"callbackId": callbackId, "param": param};
    _jsFlutterMainChannel.invokeMethod("callJsCallbackFunction", args);
  }

  ///js->flutter 顶层通用调用通道
  ///args参数为JSON字符串argsJSONStr
  Future<String> js2flutterSubCallChannel(argsJSONStr) async {
    MXJSLog.log("js2flutterSubCallChannel");
    MXJSLog.log(argsJSONStr);

    Map args = json.decode(argsJSONStr);
    String funcName = args["funcName"];
    dynamic funArgs = args["args"];

    Function fun = _jsFlutterMainChannelFunRegMap[funcName];
    return fun(funArgs);
  }

  ///flutter->js  顶层通用调用通道
  dynamic invokeJSCommonChannel(MethodCall jsMethodCall) async {
    MXJSLog.log("invokeJSCommonChannel:${jsMethodCall.method}");

    var callInfo = {
      "method": jsMethodCall.method,
      "arguments": jsMethodCall.arguments,
    };

    String sendStr = json.encode(callInfo);
    return _jsFlutterCommonBasicChannel.send(sendStr);
  }

  //Mirror Sys 
  invokeJSMirrorObj(
      {dynamic mirrorID, String functionName, String callbackID,dynamic args}) async {
    Map callInfo = {
      "mirrorID": mirrorID,
      "funcName": functionName,
      "callbackID": callbackID,
      "args": args
    };

    MethodCall jsMethodCall = MethodCall("invokeJSMirrorObj", callInfo);

    invokeJSCommonChannel(jsMethodCall);
  }

  Future<String> mxfJSBridgeCreateMirrorObj(argMap) async {
    MXJsonObjToDartObject.jsonToDartObj(argMap);
    return null;
  }

  Future<String> mxfJSBridgeInvokeMirrorObjWithCallback(args) async {
    if (args == null) {
      return null;
    }

    String mirrorID = args["mirrorID"];
    dynamic mirrorObj =
        MXJSMirrorObjMgr.getInstance().getMirrorObjectFromID(mirrorID);

    if (mirrorObj != null) {
      String className = args["className"];
      String funcName = args["funcName"];
      Map funArgs = args["args"];

      MXJsonObjProxy proxy =
          MXJsonObjToDartObject.getInstance().getJSObjProxy(className);

      if (proxy != null) {
        Completer<String> completer = new Completer<String>();
        proxy.jsInvokeMirrorObjFunction(mirrorID, mirrorObj, funcName, funArgs,
            callback: (result) {
          var returnJSONStr = result;
          if (result != null && !(result is String)) {
            returnJSONStr = json.encode(result);
          }

          //callJsCallbackFunction(onResultId, params);
          completer.complete(returnJSONStr);
        });

        return completer.future;
      }
    }

    return null;
  }

  Future<dynamic> mxfJSBridgeRemoveMirrorObjsRef(dynamic mirrorIDList) {
    MXJSMirrorObjMgr.getInstance().removeMirrorObjects(mirrorIDList);
    return null;
  }

  Future<dynamic> mxflutterBridgeMethodChannelInvoke(args) async {
    var channelName = args["channelName"];
    var methodName = args["methodName"];
    var params = args["params"];

    var flutterChannel = MethodChannel(channelName);

    try {
      dynamic result = await flutterChannel.invokeMethod(methodName, params);
      return result;
    } on PlatformException {}
  }

  Future<dynamic> mxflutterBridgeEventChannelReceiveBroadcastStreamListenInvoke(
      args) async {
    var channelName = args["channelName"];
    var streamParam = args["streamParam"];
    var onDataId = args["onDataId"];
    var onErrorId = args["onErrorId"];
    var onDoneId = args["onDoneId"];
    var cancelOnError = args["cancelOnError"];

    void onData(Object event) {
      callJsCallbackFunction(onDataId, event);
    }

    void onError(Object event) {
      callJsCallbackFunction(onErrorId, event);
    }

    void onDone() {
      callJsCallbackFunction(onDoneId, {});
    }

    var flutterEventChannel = EventChannel(channelName);
    if (streamParam == "") {
      flutterEventChannel.receiveBroadcastStream().listen(onData,
          onError: onError, onDone: onDone, cancelOnError: cancelOnError);
    } else {
      flutterEventChannel.receiveBroadcastStream(streamParam).listen(onData,
          onError: onError, onDone: onDone, cancelOnError: cancelOnError);
    }
  }

  //js->flutter 显示js页面
  //TODO：此API功能还不完善，不支持MediaQueryData的传递
  Future<dynamic> reloadApp(args) async {
    String routeName = args["routeName"];

    if (routeName == "MXJSWidget") {
      String widgetDataStr = args["widgetData"];
      var widgetData = json.decode(widgetDataStr);

      try {
        var w = currentApp.createJSWidget(widgetData);
        currentApp.runJSApp(w);
      } catch (e) {
        MXJSLog.log("reloadApp error:$e");
        rethrow;
      }
    } else {
      //runApp(MyApp());
    }
  }

  ///API - 由MXJSFlutter类提供的API，是MXJS页面的入口API
  ///从Flutter Dart代码 Push一个 JS写的页面
  ///*重要：此API是从Dart侧打开一个JS页面的入口函数，将创建一个RootWidget，MXFlutter 的RootWidget对外只显示一个
  ///先创建一个空的MXJSStatefulWidget，调用JS，等待JS层widgetData来刷新页面
  dynamic navigatorPushWithName(String widgetName, Key widgetKey,
      {ThemeData themeData,
      MediaQueryData mediaQueryData,
      IconThemeData iconThemeData}) {
    dynamic jsWidget = currentApp?.navigatorPushWithName(widgetName, widgetKey,
        themeData: themeData,
        mediaQueryData: mediaQueryData,
        iconThemeData: iconThemeData);

    return jsWidget;
  }

  ///API- 由MXJSFlutter类提供的API，是MXJS页面的入口API
  ///JS->Flutter
  ///js侧调用Flutter，传递Json Widget Tree，创建JSWidget
  dynamic createJSWidget(Map widgetData) {
    dynamic jsWidget = currentApp?.createJSWidget(widgetData);
    return jsWidget;
  }

  mxLog(String log) {
    _jsFlutterMainChannel?.invokeMethod("mxLog", log);
  }
}

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

    if (!this.widget.state.mounted) {
      MXJSLog.error(
          "MXJSStatefullWidget:jsRebuild: !this.widget.state.mounted this.widget.state.setState(() {}); widgetID:$widgetID buildWidgetDataSeq:$buildWidgetDataSeq");
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
  dynamic navPushingWidget = null;

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

    //���诉JS层，使用当前JSWidget 序列号的数据构建，callbackID,widgetID  与之对应

    MXJSLog.log(
        "MXJSStatefulWidget:building: widget:$w callJSOnBuildEnd  widgetID ${widget.widgetID} curBuildWidgetDataSeq:${widget.buildWidgetDataSeq} buildingWidgetDataSeq:${widget.buildingWidgetDataSeq}");

    this.widget.buildWidgetDataSeq = this.widget.buildingWidgetDataSeq;
    this.widget.buildOwner.callJSOnBuildEnd();

    MXJSLog.log(
        "MXJSStatefulWidget:build end: widget:$w callJSOnBuildEnd  widgetID ${widget.widgetID} curBuildWidgetDataSeq:${widget.buildWidgetDataSeq} buildingWidgetDataSeq:${widget.buildingWidgetDataSeq}");
    return w;
  }
}

///静态json生成Widget
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
