import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mx_build_owner.dart';
import 'mx_js_flutter_common.dart';

typedef Future<dynamic> MXChannelFun(dynamic arguments);

///MXJSFlutter暂时起这个名字吧
///MXJSFlutter是 Native层MXJSFlutterViewController的通讯代理类
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

  //公开熟悉
  MXJSFlutterApp currentApp;

  MethodChannel _jsFlutterMainChannel;
  Map<String, MXChannelFun> _jsFlutterMainChannelFunRegMap = {};

  MXJSFlutter._() {}

  setup() {
    setupChannel();
  }

  setupChannel() {
    _jsFlutterMainChannel = MethodChannel("js_flutter.flutter_main_channel");
    _jsFlutterMainChannel.setMethodCallHandler((MethodCall call) async {
      MXJSLog.log("_jsFlutterMainChannel_methodHandler:");
      MXJSLog.log(call);

      Function fun = _jsFlutterMainChannelFunRegMap[call.method];
      return fun(call.arguments);
    });

    _jsFlutterMainChannelFunRegMap["reloadApp"] = reloadApp;
    //------mxflutterBridge------
    _jsFlutterMainChannelFunRegMap["mxflutterBridgeMethodChannelInvoke"] = mxflutterBridgeMethodChannelInvoke;
    _jsFlutterMainChannelFunRegMap["mxflutterBridgeEventChannelReceiveBroadcastStreamListenInvoke"] = mxflutterBridgeEventChannelReceiveBroadcastStreamListenInvoke;
    //------mxflutterBridge------
  }

  //flutter -> js
  //MARK: - flutter -> Native
  //由Flutter 代码启动JSApp。 可以用在先显示Dart页面，然后路由调转到JS页面
  //启动JSApp之后，执行JS代码，JS代码可以主动调用Flutter显示自己的页面，也能接受Flutter的指令，显示对应页面
  runJSApp({String jsAppName, pageName}) {
    pageName ??= "";
    var args = {"jsAppName": jsAppName, "pageName": pageName};
    _jsFlutterMainChannel.invokeMethod("callNativeRunJSApp", args);

    //暂时只支持一个
    currentApp = MXJSFlutterApp(jsAppName);
  }

  callJsCallbackFunction(String callbackId, param) {
    var args = {"callbackId": callbackId, "param": param};
    _jsFlutterMainChannel.invokeMethod("callJsCallbackFunction", args);
  }

  Future<dynamic> mxflutterBridgeMethodChannelInvoke(args) async {
    var channelName = args["channelName"];
    var methodName = args["methodName"];
    var params = args["params"];

    var flutterChannel = MethodChannel(channelName);

    try {
      dynamic result = await flutterChannel.invokeMethod(methodName, params);
      return result;
    } on PlatformException {
    }
  }

  Future<dynamic> mxflutterBridgeEventChannelReceiveBroadcastStreamListenInvoke(args) async {
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
      flutterEventChannel.receiveBroadcastStream().listen(onData, onError: onError, onDone: onDone, cancelOnError: cancelOnError);    
    } else {
      flutterEventChannel.receiveBroadcastStream(streamParam).listen(onData, onError: onError, onDone: onDone, cancelOnError: cancelOnError);    
    }
  }

  //js->flutter 显示js页面
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

  //flutter层 主动push页面
  dynamic navigatorPushWithPageName(String widgetName,
      {ThemeData themeData, MediaQueryData mediaQueryData, IconThemeData iconThemeData}) {
    dynamic jsWidget = currentApp?.navigatorPushWithPageName(widgetName,
        themeData: themeData, mediaQueryData: mediaQueryData, iconThemeData: iconThemeData);

    return jsWidget;
  }

  //JSFlutterAPI
//JS->Flutter， js侧调用Flutter，传递Json Widget Tree，创建JSWidget
  dynamic createJSWidget(Map widgetData) {
    dynamic jsWidget = currentApp?.createJSWidget(widgetData);
    return jsWidget;
  }
}

///负责JSWidget 创建管理，事件分发
class MXJSFlutterApp {
  String name;

  MethodChannel _jsFlutterAppChannel;
  Map<String, dynamic> _jsFlutterAppChannelFunRegMap = {};
  MXJsonBuildOwner _rootBuildOwner;

  //JSWidget根节点
  dynamic rootWidget;

  // 首次进入生成的widget
  dynamic firstBuildWidget;

  MXJSFlutterApp(this.name) {
    _rootBuildOwner = MXJsonBuildOwner.rootBuildOwner(this);
    _setupChannel();
  }

//JSFlutterAPI
//把MXJSWidget作为根节点展示在屏幕
//JS->flutter
void runJSApp(dynamic jsWidget) {
  rootWidget = jsWidget;

  //call flutter runapp
  runApp(rootWidget);
}

//push js页面
//先创建一个空的MXJSWidget，调用JS，等待JS层widgetData来刷新页面
  MXJSStatefulWidget navigatorPushWithPageName(String widgetName,
      {ThemeData themeData, MediaQueryData mediaQueryData, IconThemeData iconThemeData}) {

    // 此处判断firstBuildWidget是否并返回。是为了解决解决子wiget触发父widget被navigatorPush（比如textField和textFormField获取键盘焦点），导致子widget事件绑定失效的问题
    if (firstBuildWidget != null) {
      return firstBuildWidget; 
    }

    MXJSStatefulWidget jsWidget = MXJSStatefulWidget(
      name: widgetName,
      parentBuildOwner: _rootBuildOwner
    );

    callJSNavigatorPushWithPageName(widgetName,
        themeData: themeData, mediaQueryData: mediaQueryData, iconThemeData: iconThemeData);

    firstBuildWidget = jsWidget;

    return jsWidget;
  }

  //JSFlutterAPI
//JS->Flutter， js侧调用Flutter，传递Json Widget Tree，创建JSWidget
  dynamic createJSWidget(Map widgetData) {
    dynamic jsWidget = _rootBuildOwner.buildRootWidget(widgetData);
    return jsWidget;
  }

  /// flutter -> JS flutter 调用 JS

  //flutter层 主动push页面
  callJSNavigatorPushWithPageName(String widgetName,
      {ThemeData themeData, MediaQueryData mediaQueryData, IconThemeData iconThemeData}) async {
    MethodCall jsMethodCall =
        MethodCall("flutterCallNavigatorPushWithPageName", {
      "pageName": widgetName,
      "themeData": MXUtil.cThemeDataToJson(themeData),
      "mediaQueryData": MXUtil.cMediaQueryDataToJson(mediaQueryData),
      "iconThemeData": MXUtil.cIconThemeDataToJson(iconThemeData),
    });

    callJS(jsMethodCall);
  }

  //flutter->js Channel
  dynamic callJS(MethodCall jsMethodCall) async {
    MXJSLog.log("callJSWidget:$jsMethodCall");

    var jsArgs = {
      "method": jsMethodCall.method,
      "arguments": jsMethodCall.arguments,
    };

    return await _jsFlutterAppChannel.invokeMethod("callJS", jsArgs);
  }

  ///事件处理
  /// JS ->  flutter  开放给调用 JS
  _setupChannel() {
    _jsFlutterAppChannel = MethodChannel("js_flutter.js_flutter_app_channel");
    _jsFlutterAppChannel.setMethodCallHandler((MethodCall call) async {
      MXJSLog.log("_jsFlutterAppChannel_methodHandler:");
      MXJSLog.log(call);

      Function fun = _jsFlutterAppChannelFunRegMap[call.method];
      return fun(call.arguments);
    });

    /// JS ->  flutter  开放给调用 JS
    _jsFlutterAppChannelFunRegMap["rebuild"] = _jsRebuild;
    _jsFlutterAppChannelFunRegMap["navigatorPush"] = _navigatorPush;
    _jsFlutterAppChannelFunRegMap["navigatorPop"] = _navigatorPop;
    _jsFlutterAppChannelFunRegMap["invoke"] = _jsInvoke;
  }

  /// JS ->  flutter  开放给调用 JS
  Future<dynamic> _jsRebuild(args) async {
    _rootBuildOwner.jsCallRebuild(args);
  }

  //js层 调用navigatorPush 主动push页面
  Future<dynamic> _navigatorPush(args) async {
    _rootBuildOwner.jsCallNavigatorPush(args);
  }

  //js层 调用navigatorPop 主动pop页面
  Future<dynamic> _navigatorPop(args) async {
    _rootBuildOwner.jsCallNavigatorPop(args);
  }

  //js层 调用navigatorPush 主动push页面
  Future<dynamic> _jsInvoke(args) async {
    _rootBuildOwner.jsCallInvoke(args);
  }
}

class MXJSWidgetHelper extends Object {
  MXJSWidgetHelper(dynamic widget) {
    this.widget = widget;
  }
  dynamic widget;
  
  bool updateWidget(dynamic jsWidget) {
    this.widget.widgetData = jsWidget.widgetData;

    if (this.widget.widgetID != null && this.widget.widgetID != jsWidget.widgetID) {
      //TODO:errormx
    }

    this.widget.widgetID = jsWidget.widgetID;
    this.widget.buildWidgetDataSeq = jsWidget.buildWidgetDataSeq;
    //TODO:diff
    return true;
  }

  Widget buildErrorWidget(BuildContext context) {
    return Center(
        child: new RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: new Text("widgetData=null pop")));
  }

  void jsRebuild(MXJSStatefulWidget jsWidget) {
    bool needRebuild = widget.helper.updateWidget(jsWidget);

    if (needRebuild) {
      // MXJSLog.log(
      //     "MXJSStatefullWidget:jsRebuild:  setState(() {}); ${widget.widgetData} ");
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
  String name;
  String widgetID;
  Map widgetData;
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
}

///封装JSWidget
class MXJSStatefulWidget extends StatefulWidget with MXJSBaseWidget {
  MXJSWidgetState _state;

  MXJSStatefulWidget(
      {Key key,
      String name,
      String widgetID,
      Map widgetData,
      String buildWidgetDataSeq,
      String navPushingWidgetID,
      MXJsonBuildOwner parentBuildOwner}) : super(key: key) {
    this.name = name;
    this.widgetID = widgetID;
    this.buildWidgetDataSeq = buildWidgetDataSeq;
    this.widgetData = widgetData;
    this.navPushingWidgetID = navPushingWidgetID;

    this.parentBuildOwner = parentBuildOwner;

    this.helper = MXJSWidgetHelper(this);
  }

  get state => _state;

  @override
  State<StatefulWidget> createState() {
    _state = MXJSWidgetState();
    return _state;
  }
}

class MXJSWidgetState extends State<MXJSStatefulWidget>  with SingleTickerProviderStateMixin {
  MXJSWidgetState();

  @override
  void initState() {
    super.initState();

    if (this.widget.buildOwner == null) {
      this.widget.buildOwner = MXJsonBuildOwner(this.widget, this.widget.parentBuildOwner);
    }
  }

  @override
  void dispose() {
    super.dispose();
    //告诉JS，可以销毁这个JSWidget了
    this.widget.buildOwner.callJSOnDispose();
  }

  @override
  Widget build(BuildContext context) {
    // MXJSLog.log("MXJSStatefulWidget:build: ${widget.widgetData} ");

    if (this.widget.buildOwner == null) {
      this.widget.buildOwner = MXJsonBuildOwner(this.widget, this.widget.parentBuildOwner);
    }
    
    if (widget.widgetData == null) {
      return widget.helper.buildErrorWidget(context);
    }
    
    this.widget.context = context;

    var w = this.widget.buildOwner.build(widget.widgetData, context);

    //告诉JS层，使用当前JSWidget 序列号的数据构建，callbackID,widgetID  与之对应
    this.widget.buildOwner.callJSOnBuildEnd();

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
      String buildWidgetDataSeq,
      String navPushingWidgetID,
      MXJsonBuildOwner parentBuildOwner}) : super(key: key) {
    this.name = name;
    this.widgetID = widgetID;
    this.buildWidgetDataSeq = buildWidgetDataSeq;
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

    //告诉JS层，使用当前JSWidget 序列号的数据构建，callbackID,widgetID  与之对应
    this.buildOwner.callJSOnBuildEnd();

    return w;
  }
}
