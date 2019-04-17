import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

import 'mx_build_owner.dart';
import 'mx_js_flutter_common.dart';
import '../dart_flutter/dart_flutter_framework.dart';
import '../dart_flutter/mainApp.dart';

typedef Future<dynamic> MXChannelFun(dynamic arguments);

///MXJSFlutter暂时起这个名字吧
///MXJSFlutter是 Native层MXJSFlutterViewController的通讯代理类
///MXJSFluttr 在Flutter层的总入口
///负责MXJSFlutterApp 创建管理，事件分发
class MXJSFlutter {
  //单例代码
  static MXJSFlutter _instance;

  static getInstance() {
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

  runDartApp({String dartAppName, pageName}) {
    if (ENABLE_DART_FLUTTER_DEBUG) {
      debugMain();
    } else {
      pageName ??= "";
      var args = {"dartAppName": dartAppName, "pageName": pageName};
      _jsFlutterMainChannel.invokeMethod("callNativeRunDartApp", args);
    }

    //暂时只支持一个
    currentApp = MXJSFlutterApp(dartAppName);
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
        throw(e);
      }
    } else {
      //runApp(MyApp());
    }
  }

  //flutter层 主动push页面
  MXJSWidget navigatorPushWithPageName(String widgetName,
      {ThemeData themeData, MediaQueryData mediaQueryData, IconThemeData iconThemeData}) {
    MXJSWidget jsWidget = currentApp?.navigatorPushWithPageName(widgetName,
        themeData: themeData, mediaQueryData: mediaQueryData, iconThemeData: iconThemeData);

    return jsWidget;
  }

  //JSFlutterAPI
//JS->Flutter， js侧调用Flutter，传递Json Widget Tree，创建JSWidget
  MXJSWidget createJSWidget(Map widgetData) {
    MXJSWidget jsWidget = currentApp?.createJSWidget(widgetData);
    return jsWidget;
  }

    //flutter层 主动push页面
  MXJSWidget navigatorPushWithPageNameForDart(String widgetName,
      {ThemeData themeData, MediaQueryData mediaQueryData}) {
    MXJSWidget dartWidget = currentApp?.navigatorPushWithPageNameForDart(widgetName,
        themeData: themeData, mediaQueryData: mediaQueryData);

    return dartWidget;
  }
}

///负责JSWidget 创建管理，事件分发
class MXJSFlutterApp {
  String name;

  MethodChannel _jsFlutterAppChannel;
  Map<String, dynamic> _jsFlutterAppChannelFunRegMap = {};
  MXJsonBuildOwner _rootBuildOwner;

  //JSWidget根节点
  MXJSWidget rootWidget;

  MXJSFlutterApp(this.name) {
    _rootBuildOwner = MXJsonBuildOwner.rootBuildOwner(this);
    _setupChannel();
  }

//JSFlutterAPI
//把MXJSWidget作为根节点展示在屏幕
//JS->flutter
void runJSApp(MXJSWidget jsWidget) {
  rootWidget = jsWidget;

  //call flutter runapp
  runApp(rootWidget);
}

//push js页面
//先创建一个空的MXJSWidget，调用JS，等待JS层widgetData来刷新页面
  MXJSWidget navigatorPushWithPageName(String widgetName,
      {ThemeData themeData, MediaQueryData mediaQueryData, IconThemeData iconThemeData}) {
    MXJSWidget jsWidget = MXJSWidget(
      name: widgetName,
      parentBuildOwner: _rootBuildOwner,
      languageType: "JS",
    );

    callJSNavigatorPushWithPageName(widgetName,
        themeData: themeData, mediaQueryData: mediaQueryData, iconThemeData: iconThemeData);

    return jsWidget;
  }

  MXJSWidget navigatorPushWithPageNameForDart(String widgetName,
      {ThemeData themeData, MediaQueryData mediaQueryData}) {
    MXJSWidget jsWidget = MXJSWidget(
      name: widgetName,
      parentBuildOwner: _rootBuildOwner,
      languageType: "Dart",
    );

    callDartNavigatorPushWithPageName(widgetName,
        themeData: themeData, mediaQueryData: mediaQueryData);

    return jsWidget;
  }

  //JSFlutterAPI
//JS->Flutter， js侧调用Flutter，传递Json Widget Tree，创建JSWidget
  MXJSWidget createJSWidget(Map widgetData) {
    MXJSWidget jsWidget = _rootBuildOwner.buildRootWidget(widgetData);

    return jsWidget;
  }

  /// flutter -> JS flutter 调用 JS

  //flutter层 主动push页面
  callJSNavigatorPushWithPageName(String widgetName,
      {ThemeData themeData, MediaQueryData mediaQueryData, IconThemeData iconThemeData}) async {
    MethodCall jsMethodCall =
        MethodCall("flutterCallNavigatorPushWithPageName", {
      "pageName": name,
      "themeData": MXUtil.cThemeDataToJson(themeData),
      "mediaQueryData": MXUtil.cMediaQueryDataToJson(mediaQueryData),
      "iconThemeData": MXUtil.cIconThemeDataToJson(iconThemeData),
    });

    callJS(jsMethodCall);
  }

  //flutter层 主动push页面
  callDartNavigatorPushWithPageName(String widgetName,
      {ThemeData themeData, MediaQueryData mediaQueryData}) async {
    MethodCall dartMethodCall =
        MethodCall("flutterCallNavigatorPushWithPageName", {
      "pageName": name,
      "themeData": MXUtil.cThemeDataToJson(themeData),
      "mediaQueryData": MXUtil.cMediaQueryDataToJson(mediaQueryData),
    });

    callDart(dartMethodCall);
  }

  //flutter->js Channel
  void callJS(MethodCall jsMethodCall) {
    MXJSLog.log("callJSWidget:$jsMethodCall");

    var jsArgs = {
      "method": jsMethodCall.method,
      "arguments": jsMethodCall.arguments,
    };

    _jsFlutterAppChannel.invokeMethod("callJS", jsArgs);
  }

    //flutter->dart Channel
  void callDart(MethodCall dartMethodCall) {
    MXJSLog.log("callDartWidget:$dartMethodCall");

    var dartArgs = {
      "method": dartMethodCall.method,
      "arguments": dartMethodCall.arguments,
    };

    _jsFlutterAppChannel.invokeMethod("callDart", dartArgs);
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
    _jsFlutterAppChannelFunRegMap["invoke"] = _jsInvoke;
		
    if (ENABLE_DART_FLUTTER_DEBUG) {
      setupDebugAppChannel();
    }
  }

  /// JS ->  flutter  开放给调用 JS
  Future<dynamic> _jsRebuild(args) async {
    _rootBuildOwner.jsCallRebuild(args);
  }

  //js层 调用navigatorPush 主动push页面
  Future<dynamic> _navigatorPush(args) async {
    _rootBuildOwner.jsCallNavigatorPush(args);
  }

  //js层 调用navigatorPush 主动push页面
  Future<dynamic> _jsInvoke(args) async {
    _rootBuildOwner.jsCallInvoke(args);
  }
}

///封装JSWidget
class MXJSWidget extends StatefulWidget {
  String name;
  String widgetID;
  Map widgetData;
  String buildWidgetDataSeq;
  String languageType;//"JS" "Dart"

  MXJSWidgetState _state;
  MXJsonBuildOwner _parentBuildOwner;

  // The Widget Pages that pushed this Widget ID
  // 把当前widget（this） push 出来的widget ID
  // 序列化到JSON里
  String navPushingWidgetID;

  // The Widget Pages that pushed this Widget
  // 把当前widget（this） push 出来的widget
  MXJSWidget navPushingWidget = null;

  //The widget that was pushed by this widget
  //由自己this push的widget page
  List<MXJSWidget> navPushedWidgets;

  MXJSWidget(
      {Key key,
      String name,
      String widgetID,
      Map widgetData,
      String buildWidgetDataSeq,
      String navPushingWidgetID,
      MXJsonBuildOwner parentBuildOwner,
      String languageType}) : super(key: key) {
    this.name = name;
    this.widgetID = widgetID;
    this.buildWidgetDataSeq = buildWidgetDataSeq;
    this.widgetData = widgetData;
    this.navPushingWidgetID = navPushingWidgetID;
    this.languageType = languageType;

    _parentBuildOwner = parentBuildOwner;

    ///test
    Map m = {
      "className": "MaterialApp",
      "home": {
        "className": "Scaffold",
        "body": {
          "className": "Container",
          "color": {
            "className": "Color",
            "constructorName": "fromRGBO",
            "r": 123,
            "g": 123,
            "b": 123,
            "opacity": 0.8
          },
          "child": {
            "className": "RaisedButton",
            "onPressed": "onPressed",
            "child": {
              "className": "Text",
              "data": "button",
//              "textAlign": {
//                "className": "Alignment",
//                "constructorName": "bottomCenter"
//              }
            }
          }
        }
      }
    };

    String s = json.encode(m);

    Alignment alignment_1 = Alignment.bottomCenter / 2.0;
    MXJSLog.log('Alignment is $alignment_1');

    //_jsonWidgetData = s;
  }

  bool updateWidget(MXJSWidget jsWidget) {
    this.widgetData = jsWidget.widgetData;

    if (this.widgetID != null && this.widgetID != jsWidget.widgetID) {
      //TODO:errormx
    }

    this.widgetID = jsWidget.widgetID;
    this.buildWidgetDataSeq = jsWidget.buildWidgetDataSeq;
    //TODO:diff
    return true;
  }

  @override
  State<StatefulWidget> createState() {
    _state = MXJSWidgetState();
    return _state;
  }
}

class MXJSWidgetState extends State<MXJSWidget>  with SingleTickerProviderStateMixin {
  MXJSWidgetState() {}
  MXJsonBuildOwner _jsonBuildOwner;

  @override
  void initState() {
    super.initState();

    _jsonBuildOwner = MXJsonBuildOwner(this, widget._parentBuildOwner);

     // 调用JS层initState方法
    _jsonBuildOwner.callJSOnInitState();
  }

  @override
  void dispose() {
    super.dispose();
    //告诉JS，可以销毁这个JSWidget了
    _jsonBuildOwner.callJSOnDispose();
  }

  @override
  Widget build(BuildContext context) {
    MXJSLog.log("MXJSWidget:build: ${widget.widgetData} ");
    if (widget.widgetData == null) {
      return _buildErrorWidget();
    }
    var w = _jsonBuildOwner.build(widget.widgetData, context);

    //告诉JS层，使用当前JSWidget 序列号的数据构建，callbackID,widgetID  与之对应
    _jsonBuildOwner.callJSOnBuildEnd();

    return w;
  }

  Widget _buildErrorWidget() {
    return Center(
        child: new RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: new Text("widgetData=null pop")));
  }

  void jsRebuild(MXJSWidget jsWidget) {
    bool needRebuild = widget.updateWidget(jsWidget);

    if (needRebuild) {
      MXJSLog.log(
          "MXJSWidget:jsRebuild:  setState(() {}); ${widget.widgetData} ");
      setState(() {});
    }
  }

  jsNavigatorPush(MXJSWidget jsWidget) {
    MXJSLog.log("MXJSWidgetState:jsNavigatorPush:");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => jsWidget),
    );
  }

  bool checkIfWidgetInChildrenBuildOwner(MXJSWidget jsWidget) {
    for (var key in jsWidget._parentBuildOwner.childrenBuildOwner.keys) {
      if (key == jsWidget.widgetID) {
        return true;
      }
    }
    return false;
  }
}

///静态json生成Widget
class MXJsonWidget extends StatelessWidget {
  MXJsonWidget();

  ///json字符串
  String _widgetJsonStr;

  ///json解析好的map缓存
  Map<String, dynamic> _widgetJsonDataCache;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}
