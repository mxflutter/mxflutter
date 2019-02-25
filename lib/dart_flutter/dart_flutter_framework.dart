import 'dart:convert';
import 'dart_flutter_basic_types.dart';

//---DEBUG用---
//非Debug时请注释掉，否则MXFlutter中的DartVM无法执行
import 'package:flutter/services.dart';
//---DEBUG用---

final bool ENABLE_DART_FLUTTER_DEBUG = true;
//---DEBUG用---
dynamic _dartFlutterAppDebugChannel;
//---DEBUG用---

MXDartFlutterApp currentApp;

// void callHostFlutterMethodBridge(String method, String args) native "CallHostFlutterMethod";

void setupDebugAppChannel() {
  //---DEBUG用---
  //非Debug时请注释掉，否则MXFlutter中的DartVM无法执行
  if (ENABLE_DART_FLUTTER_DEBUG) {
    _dartFlutterAppDebugChannel = MethodChannel("dart_flutter.dart_flutter_app_debug_channel");
    _dartFlutterAppDebugChannel.setMethodCallHandler((MethodCall call) {
      bool result = dartFlutterNativeCallBridge(jsonEncode(call.arguments));
      return Future.value(result);
    });
  }
  //---DEBUG用---
}

//Dart调用Native接口
void callHostFlutterMethod(String method, String data) {
  if (ENABLE_DART_FLUTTER_DEBUG) {
    _dartFlutterAppDebugChannel.invokeMethod(method,data);
  } else {
    // callHostFlutterMethodBridge(method,data);
  }
}

//Native调用Dart接口
bool dartFlutterNativeCallBridge(String args) {
  var argsDict = jsonDecode(args);
  var methodName = argsDict["method"];
  var arguments = argsDict["arguments"];
  if (methodName == "flutterCallNavigatorPushWithPageName") {
    currentApp.flutterCallNavigatorPushWithPageName(arguments);
  } else if (methodName == "flutterCallOnEventCallback") {
    currentApp.flutterCallOnEventCallback(arguments);
  } else if (methodName == "flutterCallOnBuildEnd") {
    currentApp.flutterCallOnBuildEnd(arguments);
  } else {
    return false;
  }
  return true;
}

void runDartFlutterApp(MXDartFlutterApp app) {
  currentApp = app;

  currentApp.buildContext = MXDartFlutterBuildContext(app);
}

//全局callbak管理器
class MXDartCallbackMgr {
  dynamic callbackIDFeed;
  dynamic callbackID2fun;
  
  static final MXDartCallbackMgr instance = MXDartCallbackMgr._internal();

  factory MXDartCallbackMgr() {
    return instance;
  }

  MXDartCallbackMgr._internal() {
    this.callbackIDFeed = 0;
    this.callbackID2fun = {};
  }

  generateID() {
    var d = ++this.callbackIDFeed;
    return d.toString();
  }

  createCallbackID(callback) {
    var callbackID = generateID();
    this.callbackID2fun[callbackID] = callback;
    return callbackID;
  }

  invokeCallback(callbackID, args) {
    var callback = findCallback(callbackID);
    callback(args);
  }

  findCallback(callbackID) {
      return this.callbackID2fun[callbackID];
  }
}

class MXDartWidgetMgr {
  dynamic widgetIDFeed;
  dynamic widgetID2WidgetMap;

  static final MXDartWidgetMgr instance = MXDartWidgetMgr._internal();

  factory MXDartWidgetMgr() {
    return instance;
  }

  MXDartWidgetMgr._internal() {
    this.widgetIDFeed = 0;
    this.widgetID2WidgetMap = {};
  }
  generateWidgetID() {
      var wID = ++this.widgetIDFeed;
      return wID.toString();
  }

  registerWidget(widget) {
      this.widgetID2WidgetMap[widget.widgetID] = widget;
  }

  remove(widgetID) {

  }

  findWidget(widgetID) {
      return this.widgetID2WidgetMap[widgetID];
  }

}

class MXDartFlutterBuildContext {
    dynamic rootWidget;
    dynamic inheritedInfo;
    dynamic mediaQueryData;
    dynamic themeData;

    MXDartFlutterBuildContext(dynamic rootWidget) {
      this.rootWidget = rootWidget;
      this.rootWidget.buildContext = this;

      this.inheritedInfo = {};
      this.mediaQueryData = null;
      this.themeData = null;
    }

    buildRootWidget() {
      return MXDartWidget.buildWidgetData(this.rootWidget);
    }

    callFlutterRebuild(widget) {
      var widgetData = MXDartWidget.buildWidgetData(widget);
      callHostFlutterMethod("rebuild",widgetData);
    }

    setInheritedInfo(args) {
      this.inheritedInfo = args;
      this.mediaQueryData = DartFlutterMediaQueryData.fromJson(args["mediaQueryData"]);
      this.themeData = DartFlutterThemeData.fromJson(args["themeData"]);
    }
}

class MXDartFlutterApp {
  String name;
  String initialRoute;
  MXDartWidget rootWidget;
  MXDartFlutterBuildContext buildContext;
  List disposeBuildContextList;

  MXDartFlutterApp() {
    this.disposeBuildContextList = [];
  }

  //相关Native接口
  static bool dartFlutterNativeCall(String args) {
    return dartFlutterNativeCallBridge(args);
  }

  //NavigationPush相关
  void flutterCallNavigatorPushWithPageName(args) {
    var pageName = args["pageName"];
    navigatorPushWithPageName(pageName, args);
  }
  
  void flutterCallOnEventCallback(args) {
    this.rootWidget.onEventCallback(args);
  }

  void flutterCallOnBuildEnd(args) {
      this.rootWidget.onBuildEnd(args);
  }

  void navigatorPushWithPageName(pageName, args) {
    var w = createDartWidgetWithName(pageName);
    navigatorPush(w, args);
  }

  void navigatorPush(widget, args) {
    this.rootWidget = widget;
    disposeBuildContext(this.buildContext);
    this.buildContext = MXDartFlutterBuildContext(widget);
    this.buildContext.setInheritedInfo(args);
    this.buildContext.callFlutterRebuild(widget);
  }

  disposeBuildContext(buildContext) {
  }

  //子类重写,根据widget名创建widget
  createDartWidgetWithName(pageName) {

  }
}

class MXDartWidgetTree {
  dynamic buildWidgetDataSeq;
  dynamic childrenWidget;
  dynamic callbackID2fun;
  dynamic widgetTreeObjMap;

  MXDartWidgetTree(buildWidgetDataSeq) {
    this.buildWidgetDataSeq = buildWidgetDataSeq;
    this.childrenWidget = {}; //id 2 widget
    this.callbackID2fun = {};
    this.widgetTreeObjMap = null;
  }

  //统一用全局的id生成器
  generateID() {
    return MXDartCallbackMgr.instance.generateID();
  }

  createCallbackID(widgetID, callback) {
      var callbackID = widgetID + '/' + this.generateID();
      this.callbackID2fun[callbackID] = callback;
      return callbackID;
  }

  invokeCallback(callbackID, args) {
    var callbackFunction = findCallback(callbackID);
    callbackFunction(args);
  }

  findCallback(callbackID) {
      return this.callbackID2fun[callbackID];
  }
}

class MXDartWidget {
  String name;
  String className;
  dynamic widgetID;
  dynamic widgetData;
  dynamic buildWidgetDataSeq;
  dynamic navPushingWidgetID;
  MXDartWidget rootWidget;
  dynamic navPushingWidget;
  dynamic navPushedWidgets;
  MXDartFlutterBuildContext buildContext;
  MXDartWidgetTree currentWidgetTree;
  MXDartWidgetTree buildingWidgetTree;
  dynamic preWidgetTree;
  dynamic buildWidgetDataSeqFeed;

  MXDartWidget() {
      // this.name = name;
      //继承自MXJSWidget 自定义控件，使用Flutter dart层的MXJSWidget 来承载。
      this.className = "MXJSWidget";
      this.widgetID = MXDartWidgetMgr.instance.generateWidgetID();

      //widgetTree
      this.widgetData = null;
      //构建系列号，每build一次加1
      this.buildWidgetDataSeq = "";

      // The Widget Pages that pushed this Widget ID
      // 把当前widget（this） push 出来的widget ID
      // 序列化到JSON里
      this.navPushingWidgetID = "";

      //不添加进json的控制变量
      //创建自己的widget，为null自己是root
      this.rootWidget = null;

      // The Widget Pages that pushed this Widget
      // 把当前widget（this） push 出来的widget
      this.navPushingWidget = null;

      //The widget that was pushed by this widget
      //由自己this push的widget page
      this.navPushedWidgets = {};
      this.buildContext = null;
      this.currentWidgetTree = null;
      this.buildingWidgetTree = null;
      this.preWidgetTree = null;
      this.buildWidgetDataSeqFeed = 0;
  }

  void setState(fun) {
      this.buildContext.callFlutterRebuild(this);
  }

  //子类重载 
  dynamic build(buildContext) {
      return null;
  }

  //子类重载 
  void dispose() { 

  }

  dynamic buildWidgetTree() {
    this.buildWidgetDataSeq = (++this.buildWidgetDataSeqFeed).toString();
    this.buildingWidgetTree = MXDartWidgetTree(this.buildWidgetDataSeq);

    var tempTree = build(this.buildContext);
    //预处理，这个地方Dart不像JS能直接遍历所有成员变量，比较蛋疼
    // preBuildJson(tempTree);
    this.buildingWidgetTree.widgetTreeObjMap = tempTree;
    //生成Json用
    this.widgetData = this.buildingWidgetTree.widgetTreeObjMap;

    //json实际包含的字段
    var jsonMap = {
        "name": this.name,
        "className": this.className,
        "widgetID": this.widgetID,
        "buildWidgetDataSeq": this.buildWidgetDataSeq,
        "navPushingWidgetID": this.navPushingWidgetID,
        "widgetData": this.widgetData,
    };

    return jsonMap;
  }

  createCallbackID(callback) {
    return this.buildingWidgetTree.createCallbackID(this.widgetID, callback);
  }

  void onEventCallback(args) {
    var callID = args["callID"];  //   widgetID/callID 格式 ： "1313/3434" 
    var arr = callID.split('/');
    var widgetID = arr[0];
    var buildWidgetDataSeq = args["buildSeq"];
    var callArgs = args["args"];

    var jsWidget = findWidgetWithName(widgetID);

    if (jsWidget != null) {
        jsWidget.invokeCallback(buildWidgetDataSeq, callID, args["args"]);
    }
  }

dynamic findWidgetWithName(widgetID) {
    if (this.widgetID == widgetID) {
        return this;
    }

    var widgetTree = this.currentWidgetTree;

    if (widgetTree == null || widgetTree.childrenWidget == null) {
        return null;
    }

    var w = widgetTree.childrenWidget[widgetID];

    if (w) {
        return w;
    }

    for (var k in widgetTree.childrenWidget) {

        var dartWidget = widgetTree.childrenWidget[k];
        w = dartWidget.findWidgetWithName(widgetID);

        if (w) {
            return w;
        }
    }

    //查找被自己push的widgets
    for (var k in this.navPushedWidgets) {

        var dartWidget = this.navPushedWidgets[k];
        w = dartWidget.findWidgetWithName(widgetID);

        if (w) {
            return w;
        }
    }

    return null;
  }

  void invokeCallback(buildWidgetDataSeq, callID, args) {
    if (this.currentWidgetTree.buildWidgetDataSeq != buildWidgetDataSeq) {
      print("MXJSWidget:invokeCallback:this.currentWidgetTree.buildWidgetDataSeq != buildWidgetDataSeq :buildSeq:" + buildWidgetDataSeq +
          "callID:" + callID);

      if (this.preWidgetTree.buildWidgetDataSeq != buildWidgetDataSeq) {
        print("MXJSWidget:invokeCallback:this.preWidgetTree.buildWidgetDataSeq != buildWidgetDataSeq :buildSeq:" + buildWidgetDataSeq +
              "callID:" + callID);
      } else {
        print("MXJSWidget:invokeCallback:this.preWidgetTree.buildWidgetDataSeq == buildWidgetDataSeq :buildSeq:" + buildWidgetDataSeq +
              "callID:" + callID);
      }
      return;
    }

    this.currentWidgetTree.invokeCallback(callID, args);
  }

  void onBuildEnd(args) {
    var widgetID = args["widgetID"];
    var buildWidgetDataSeq = args["buildSeq"];
    var dartWidget = this.findWidgetWithName(widgetID);

    if (dartWidget != null) {
      dartWidget.onFlutterBuildEnd(buildWidgetDataSeq);
    } else {
        // MXJSLog.error("onBuildEnd error: jsWidget == null widgetID " + widgetID);
    }
  }

  void onFlutterBuildEnd(buildWidgetDataSeq) {
    // MXJSLog.log("OnFlutterBuildEnd:buildWidgetDataSeq" + buildWidgetDataSeq);

    if (buildWidgetDataSeq == this.buildingWidgetTree.buildWidgetDataSeq) {
      this.preWidgetTree = this.currentWidgetTree;
      this.currentWidgetTree = this.buildingWidgetTree;
    } else {
        // MXJSLog.error("OnFlutterBuildEnd:buildWidgetDataSeq" + buildWidgetDataSeq);
    }
  }

  navigatorPush(MXDartWidget dartWidget) {
      //设置push jsWidget的widget
      dartWidget.navPushingWidget = this;
      dartWidget.buildContext = this.buildContext;
      dartWidget.navPushingWidgetID = this.widgetID;
      this.navPushedWidgets[dartWidget.widgetID] = dartWidget;
      var widgetData = MXDartWidget.buildWidgetData(dartWidget);
      callHostFlutterMethod("navigatorPush", widgetData);
  }

  toJson() {
    return buildWidgetTree();
  }

  static String buildWidgetData(dynamic widget) {
    return jsonEncode(widget);
  }
}

class MXDartStatelessWidget {
  String name;
  String className;

  MXDartStatelessWidget() {
    this.className = "MXJSStatelessWidget";
  }

  //子类重载 
  dynamic build(buildContext) {
      return null;
  }
}

class DartFlutterTheme extends DartClass {
	DartFlutterTheme({
		this.key,
		this.data,
		this.isMaterialAppTheme,
		this.child,
	});
	final dynamic key;
	final dynamic data;
	final dynamic isMaterialAppTheme;
	final dynamic child;

  static of(context) {
    return context.themeData;
  }
}

class DartFlutterThemeData extends DartClass {
  DartFlutterThemeData({
    this.brightness,
    this.primarySwatch,
    this.primaryColor,
    this.primaryColorBrightness,
    this.primaryColorLight,
    this.primaryColorDark,
    this.accentColor,
    this.accentColorBrightness,
    this.canvasColor,
    this.scaffoldBackgroundColor,
    this.bottomAppBarColor,
    this.cardColor,
    this.dividerColor,
    this.highlightColor,
    this.splashColor,
    this.splashFactory,
    this.selectedRowColor,
    this.unselectedWidgetColor,
    this.disabledColor,
    this.buttonColor,
    this.buttonTheme,
    this.secondaryHeaderColor,
    this.textSelectionColor,
    this.cursorColor,
    this.textSelectionHandleColor,
    this.backgroundColor,
    this.dialogBackgroundColor,
    this.indicatorColor,
    this.hintColor,
    this.errorColor,
    this.toggleableActiveColor,
    this.fontFamily,
    this.textTheme,
    this.primaryTextTheme,
    this.accentTextTheme,
    this.inputDecorationTheme,
    this.iconTheme,
    this.primaryIconTheme,
    this.accentIconTheme,
    this.sliderTheme,
    this.tabBarTheme,
    this.chipTheme,
    this.platform,
    this.materialTapTargetSize,
    this.pageTransitionsTheme,
    this.colorScheme,
    this.dialogTheme,
    this.typography,
  });
  dynamic brightness;
  dynamic primarySwatch;
  dynamic primaryColor;
  dynamic primaryColorBrightness;
  dynamic primaryColorLight;
  dynamic primaryColorDark;
  dynamic accentColor;
  dynamic accentColorBrightness;
  dynamic canvasColor;
  dynamic scaffoldBackgroundColor;
  dynamic bottomAppBarColor;
  dynamic cardColor;
  dynamic dividerColor;
  dynamic highlightColor;
  dynamic splashColor;
  dynamic splashFactory;
  dynamic selectedRowColor;
  dynamic unselectedWidgetColor;
  dynamic disabledColor;
  dynamic buttonColor;
  dynamic buttonTheme;
  dynamic secondaryHeaderColor;
  dynamic textSelectionColor;
  dynamic cursorColor;
  dynamic textSelectionHandleColor;
  dynamic backgroundColor;
  dynamic dialogBackgroundColor;
  dynamic indicatorColor;
  dynamic hintColor;
  dynamic errorColor;
  dynamic toggleableActiveColor;
  dynamic fontFamily;
  dynamic textTheme;
  dynamic primaryTextTheme;
  dynamic accentTextTheme;
  dynamic inputDecorationTheme;
  dynamic iconTheme;
  dynamic primaryIconTheme;
  dynamic accentIconTheme;
  dynamic sliderTheme;
  dynamic tabBarTheme;
  dynamic chipTheme;
  dynamic platform;
  dynamic materialTapTargetSize;
  dynamic pageTransitionsTheme;
  dynamic colorScheme;
  dynamic dialogTheme;
  dynamic typography;

  static fromJson(Map mapObj) {
    var obj = new DartFlutterThemeData();
    mapObj.forEach((k, v) {
        switch (k) {
          case "primaryColor":
            obj.primaryColor = Color(v);
            break;
          case "primaryColorLight":
            obj.primaryColorLight = Color(v);
            break;
          case "primaryColorDark":
            obj.primaryColorDark = Color(v);
            break;
          case "accentColor":
            obj.accentColor = Color(v);
            break;
          case "canvasColor":
            obj.canvasColor = Color(v);
            break;
          case "scaffoldBackgroundColor":
            obj.scaffoldBackgroundColor = Color(v);
            break;
          case "bottomAppBarColor":
            obj.bottomAppBarColor = Color(v);
            break;
          case "cardColor":
            obj.cardColor = Color(v);
            break;
          case "dividerColor":
            obj.dividerColor = Color(v);
            break;
          case "highlightColor":
            obj.highlightColor = Color(v);
            break;
          case "splashColor":
            obj.splashColor = Color(v);
            break;
          case "selectedRowColor":
            obj.selectedRowColor = Color(v);
            break;
          case "unselectedWidgetColor":
            obj.unselectedWidgetColor = Color(v);
            break;
          case "disabledColor":
            obj.disabledColor = Color(v);
            break;
          case "buttonColor":
            obj.buttonColor = Color(v);
            break;
          case "secondaryHeaderColor":
            obj.secondaryHeaderColor = Color(v);
            break;
          case "textSelectionColor":
            obj.textSelectionColor = Color(v);
            break;
          case "cursorColor":
            obj.cursorColor = Color(v);
            break;
          case "textSelectionHandleColor":
            obj.textSelectionHandleColor = Color(v);
            break;
          case "backgroundColor":
            obj.backgroundColor = Color(v);
            break;
          case "dialogBackgroundColor":
            obj.dialogBackgroundColor = Color(v);
            break;
          case "indicatorColor":
            obj.indicatorColor = Color(v);
            break;
          case "hintColor":
            obj.hintColor = Color(v);
            break;
          case "errorColor":
            obj.errorColor = Color(v);
            break;
          case "toggleableActiveColor":
            obj.toggleableActiveColor = Color(v);
            break;

          case "textTheme":
          case "primaryTextTheme":
          case "accentTextTheme":
              break;
              
          default:
              break;
      }
    });
    return obj;
  }
}

class DartFlutterMediaQuery extends DartClass {
	DartFlutterMediaQuery({
		this.key,
		this.data,
		this.child,
	});
	final dynamic key;
	final dynamic data;
	final dynamic child;

  static of(context) {
    return context.mediaQueryData;
  }
}

class DartFlutterMediaQueryData extends DartClass {
	DartFlutterMediaQueryData({
    this.size,
    this.devicePixelRatio,
    this.textScaleFactor,
    this.padding,
    this.viewInsets,
    this.alwaysUse24HourFormat,
    this.accessibleNavigation,
    this.invertColors,
    this.disableAnimations,
    this.boldText,
	});
  dynamic size;
  dynamic devicePixelRatio;
  dynamic textScaleFactor;
  dynamic padding;
  dynamic viewInsets;
  dynamic alwaysUse24HourFormat;
  dynamic accessibleNavigation;
  dynamic invertColors;
  dynamic disableAnimations;
  dynamic boldText;

  static fromJson(Map mapObj) {
    var obj = new DartFlutterMediaQueryData();
    mapObj.forEach((k, v) {
        switch (k) {
          case "size":
            obj.size = Size.fromJson(v);
            break;
          case "padding":
            obj.padding = EdgeInsets.fromJson(v);
            break;
          case "viewInsets":
            obj.viewInsets = EdgeInsets.fromJson(v);
            break;
          case "devicePixelRatio":
            obj.devicePixelRatio = v;
            break;
          case "textScaleFactor":
            obj.textScaleFactor = v;
            break;
          case "alwaysUse24HourFormat":
            obj.alwaysUse24HourFormat = v;
            break;
          case "accessibleNavigation":
            obj.accessibleNavigation = v;
            break;
          case "accessibleNavigation":
            obj.accessibleNavigation = v;
            break;
          case "disableAnimations":
            obj.disableAnimations = v;
            break;
          case "boldText":
            obj.boldText = v;
            break;

          default:
              break;
      }
    });
    return obj;
  }
}