//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

let {
  DartClass,
  FlutterWidget,
  Size,
  Color,
  EdgeInsets,
  FlutterWidgetMirrorMgr,
  IconThemeData,
  Key,
  Brightness,
  Colors,
  ColorScheme,
  ButtonThemeData,
} = require("./js_flutter_basic_types.js");

let { TextTheme } = require("./js_flutter_text.js");

const dart_sdk = require("dart_sdk");
const core = dart_sdk.core;
const dart = dart_sdk.dart;

//JSAPP 全局变量
var currentJSApp = null;

//全局函数
function runApp(app) {
  MXNativeJSFlutterAppProxy.callNativeSetCurrentJSApp(app);
}

///=========================MXJSLog========================================
class MXJSLog {
  static setLogLev(lev) {
    MXJSLog.logLev = lev;
  }

  static debug() {
    if (nativePrint && MXJSLog.logLev <= 0) {
      nativePrint("MXJSFlutter:[JS]-" + arguments[0]);
    }
  }

  static log() {
    if (nativePrint && MXJSLog.logLev <= 1) {
      nativePrint("MXJSFlutter:[JS]-" + arguments[0]);
    }
  }


  static error() {
    if (nativePrint && MXJSLog.logLev <= 2) {
      nativePrint("MXJSFlutter:[JS]-[Error]:" + arguments[0]);
    }
  }
}

MXJSLog.LogLevDebug = 0;
MXJSLog.LogLevInfo = 1;
MXJSLog.LogLevError = 2;
MXJSLog.logLev = MXJSLog.LogLevDebug;

///=========================End============================================

///=====================MXNativeJSFlutterAppProxy==========================

///js->native->flutter 顶层通用调用通道
class MXMethodCall {
  constructor(name, args) {
    this.name = name;
    this.args = args;
  }

  encodeJSON() {
    return JSON.stringify({ "funcName": this.name, "args": this.args });
  }
}

class MXFJSBridge {

  ///js->native->flutter 顶层通用调用通道
  static invokeFlutterCommonChannel(basicMethodCall, callback) {
    mxfJSBridgeInvokeFlutterCommonChannel(basicMethodCall.encodeJSON(), function (resultStr) {

      if (callback) {
        callback(resultStr);
      }

      MXJSLog.debug("invokeFlutterCommonChannel: callback: " + resultStr);
    });
  }

  ///mirrorObj sys
  ///调用Logic mirrorObj的函数
  ///*重要区分： JS Logic MirrorObj的生命周期JS侧控制，由Native Weak Ref辅助完成释放
  static createMirrorObj(flutterCallArgs, mirrorID, needMonitordGCValue) {

    let basicMethodCall = new MXMethodCall("mxfJSBridgeCreateMirrorObj", flutterCallArgs);
    MXFJSBridge.invokeFlutterCommonChannel(basicMethodCall);

    //监控jsvalue 释放，同步释放flutter侧对象

    if (typeof(mxfAddJSValueToMirrorObjGCMap) !== "undefined") {
      mxfAddJSValueToMirrorObjGCMap(mirrorID, needMonitordGCValue);
    }
  }

  static onFlutterInvokeJSCommonChannel(messageStr) {

    MXJSLog.debug("MXFJSBridge.onFlutterInvokeJSCommonChannel: " + messageStr);

    let args = JSON.parse(messageStr);

    let method = args["method"];
    let callArgs = args["arguments"];

    let fun = this[method];

    if (fun != null) {
      return fun.call(this, callArgs);
    } else {
      MXJSLog.log("MXFJSBridge.onFlutterInvokeJSCommonChannel: error:fun == null" + args);
      return null;
    }

  }

  //flutter->js invokeJSMirrorObj
  static invokeJSMirrorObj(args) {

    let mirrorID = args["mirrorID"];
    let funcName = args["funcName"];
    let callbackID = args["callbackID"];
    let funArgs = args["args"];

    //TODO: call mirroObj Fun
    MXJSCallbackMgr.getInstance().invokeCallback(callbackID, funArgs)
  }

  static invokeMirrorObjWithCallback(flutterCallArgs, callback) {

    let basicMethodCall = new MXMethodCall("mxfJSBridgeInvokeMirrorObjWithCallback", flutterCallArgs);
    MXFJSBridge.invokeFlutterCommonChannel(basicMethodCall, callback);
  }

}

///JSAPI
///mirrorObj sys
///flutter ->native ->js
globalThis.mxfJSBridgeInvokeJSCommonChannel = function (messageStr) {
  MXFJSBridge.onFlutterInvokeJSCommonChannel(messageStr);
}

class MXNativeJSFlutterAppProxy {
  static callNativeSetCurrentJSApp(app) {
    currentJSApp = app;
    MXNativeJSFlutterApp.setCurrentJSApp(app);
  }

  static callFlutterReloadApp(app, widgetData) {
    currentJSApp = app;
    MXNativeJSFlutterApp.callFlutterReloadApp(app, widgetData);
  }

  static callFlutterWidgetChannel(method, args) {
    MXNativeJSFlutterApp.callFlutterWidgetChannel(method, args);
  }
}

///TODO: 优化
///调用和UI相关的mirrorObj的函数
///*重要区分： UIMirrorObj的生命周期和Flutter Widget控制，由Dart侧Dispose时完成释放
function invokeFlutterFunction(flutterCallArgs) {
  arguments = JSON.stringify(flutterCallArgs);
  MXNativeJSFlutterAppProxy.callFlutterWidgetChannel("invoke", arguments);
}

///TODO: 优化
///github merge
function invokeCommonFlutterFunction(flutterCallArgs) {
  arguments = JSON.stringify(flutterCallArgs);
  MXNativeJSFlutterAppProxy.callFlutterWidgetChannel("invokeCommon", arguments);
}

///=====================MXNativeJSFlutterAppProxy==========================


//全局callbak管理器
class MXJSCallbackMgr {
  constructor() {
    this.callbackIDFeed = 0;
    this.callbackID2fun = {};
  }

  static getInstance() {
    if (!this.instance) {
      this.instance = new MXJSCallbackMgr();
    }

    return this.instance;
  }

  generateID() {
    let d = ++this.callbackIDFeed;
    return String(d);
  }

  createCallbackID(callback) {
    let callbackID = this.generateID();
    this.callbackID2fun[callbackID] = callback;
    return callbackID;
  }

  invokeCallback(callbackID, args) {
    let callback = this.findCallback(callbackID);
    callback(args);
  }

  findCallback(callbackID) {
    return this.callbackID2fun[callbackID];
  }

  removeCallback(callbackID) {
    delete this.callbackID2fun[callbackID];
  }
}



/**
 * @return {String}
 */
function MXCreateCallbackID(callback) {
  return MXJSCallbackMgr.getInstance().createCallbackID(callback);
}

function MXInvokeCallback(callbackID, args) {
  return MXJSCallbackMgr.getInstance().invokeCallback(callbackID, args);
}

class MXJSWidgetMgr {
  constructor() {
    this.widgetIDFeed = 0; //JS侧现生成的MXJSWidget， widgetID为偶数，从0开始
    this.widgetID2WidgetMap = {};
  }

  static getInstance() {
    if (!this.instance) {
      this.instance = new MXJSWidgetMgr();
    }

    return this.instance;
  }

  generateWidgetID() {

    //JS侧现生成的MXJSWidget， widgetID为偶数，从0开始 +2
    this.widgetIDFeed = this.widgetIDFeed + 2;
    let wID = this.widgetIDFeed;
    return String(wID);
  }

  registerWidget(widget) {
    this.widgetID2WidgetMap[widget.widgetID] = widget;
  }

  remove(widgetID) { }

  findWidget(widgetID) {
    return this.widgetID2WidgetMap[widgetID];
  }
}

//MXJSFlutterBuildContext 和flutter BuildContext 保持一致的编程方式
class MXJSFlutterBuildContext {
  constructor(widget, parentBuildContext = null) {
    this.widget = widget;
    this.widget.buildContext = this;

    this.parentBuildContext = parentBuildContext;

    this.inheritedInfo = {};
    this.mediaQueryData = null;
    this.themeData = null;
    this.iconThemeData = null;
  }

  static inheritBuildContext(widget, buildContext) {
    var context = new MXJSFlutterBuildContext(widget, buildContext);
    context.inheritedInfo = buildContext.inheritedInfo;
    context.mediaQueryData = buildContext.mediaQueryData;
    context.themeData = buildContext.themeData;
    context.iconThemeData = buildContext.iconThemeData;
    return context;
  }



  setInheritedInfo(args) {
    this.inheritedInfo = args;

    this.mediaQueryData = MediaQueryData.fromJson(args["mediaQueryData"]);
    this.themeData = ThemeData.fromJson(args["themeData"]);
    this.iconThemeData = IconThemeData.fromJson(args["iconThemeData"]);
  }
}

//JSFlutterApp 基类，用于和Native交互
//开发者需要继承MXJSFlutterApp，重载createJSWidgetWithName函数，根据WidgetName创建框架需要的Widget
class MXJSFlutterApp {
  constructor(name, initialRoute) {
    this.name = name;
    this.initialRoute = initialRoute;

    //App的rootWidget是个虚拟Widget，负责管理push的Widget或runAPP 的Widget
    this.rootWidget = new MXJSStatelessWidget("RootWidget");
    this.rootWidget.helper.setupAsRootWidget();

  }

  run() {
    runWithName(this.initialRoute);
  }


  runWithName(name) {
    let w = this.createJSWidgetWithName(name);
    this.runApp(w);
  }

  ///子类需要重载
  ///当Flutter通过MXJSFlutter.getInstance().navigatorPushWithName("JSWidgetHomePage",...);
  ///push页面时，在这里根据widgetName 创建你自己的Widget
  createJSWidgetWithName(widgetName) {

  }

  //Flutter通过MXJSFlutter.getInstance().navigatorPushWithName("JSWidgetHomePage",...);push页面时,会调用到此函数
  navigatorPushWithName(widgetName, widgetID, args) {

    let w = this.createJSWidgetWithName(widgetName);
    this.setupWidget(w, widgetName, widgetID, args);

    this.navigatorPush(w, args);
  }

  setupWidget(widget, widgetName, widgetID, args) {
    //设置widgetID
    widget.widgetID = widgetID;
  }

  //这个接口暂时不完备，暂不要使用，要在JS侧创建setInheritedInfo，参照navigatorPush
  ///JS侧入口API
  //创建MXJSWidget，调用build 创建jsonWidgetTree，调用Flutter runApp 重新加载Flutter根页面
  runApp(widget) {

    //这个接口暂时不完备，要在JS侧创建setInheritedInfo，参照navigatorPush

    let bc = new MXJSFlutterBuildContext(widget);
    widget.buildContext = bc;

    this.rootWidget.helper.addChildWidget(widget);

    let app = this;
    this.buildRootWidget(widget);
  }

  ///JS侧入口API
  //当Flutter层 PageRoute(builder: (context) =>  被调用时，创建MXJSWidget，build后调用rebuild界面
  navigatorPush(widget, args) {

    let bc = new MXJSFlutterBuildContext(widget);
    bc.setInheritedInfo(args);
    widget.buildContext = bc;

    this.rootWidget.helper.addChildWidget(widget);

    widget.helper.callFlutterRebuild();
  }

  buildRootWidget(widget) {
    MXJSLog.log("buildRootWidget ::" + widget.widgetLogInfoStr());
    let widgetData = MXJSWidgetHelper.buildWidgetData(widget);

    MXNativeJSFlutterAppProxy.callFlutterReloadApp(app, widgetData);
  }


  //flutter->js channel
  nativeCall(args) {
    MXJSLog.log("MXJSFlutterApp:nativeCall" + args);

    let method = args["method"];
    let callArgs = args["arguments"];

    let fun = this[method];

    if (fun != null) {
      return fun.call(this, callArgs);
    } else {
      MXJSLog.log("MXJSFlutterApp:nativeCall error:fun == null" + args);
      return null;
    }
  }

  flutterCallFrequencyLimitCallList(args) {
    if (args) {
      args.map(function (callArgs) {
        this.nativeCall(callArgs);
      }.bind(this));
    }
  }

  flutterCallOnEventCallback(args) {
    return this.rootWidget.helper.onEventCallback(args);
  }

  flutterCallNavigatorPushWithName(args) {
    let widgetName = args["widgetName"];
    let widgetID = args["widgetID"];

    this.navigatorPushWithName(widgetName, widgetID, args);
  }

  flutterCallOnBuildEnd(args) {
    this.rootWidget.helper.onBuildEnd(args);
  }

  flutterCallOnDispose(args) {
    let widgetID = args["widgetID"];

    if (this.rootWidget && this.rootWidget.widgetID == widgetID) {
    }

    this.rootWidget.helper.onDispose(args);

    let mirrorObjIDList = args["mirrorObjIDList"];
    FlutterWidgetMirrorMgr.getInstance().removeMirrorObjects(mirrorObjIDList);
  }

  flutterCallOnMirrorObjInvoke(args) {
    var mirrorObjID = args["mirrorID"];
    var functionName = args["functionName"];
    var args = args["args"];
    var mirrorObj = FlutterWidgetMirrorMgr.getInstance().getMirrorObj(
      mirrorObjID
    );
    if (mirrorObj != null) {
      mirrorObj[functionName](args);
    }
  }
}

class MXJSWidgetTree {
  constructor(buildWidgetDataSeq) {
    this.buildWidgetDataSeq = buildWidgetDataSeq;
    this.childrenWidget = {}; //id 2 widget

    this.callbackID2fun = {};
    this.widgetTreeObjMap = null;
    this.ownerWidget = null;
  }

  //统一用全局的id生成器
  generateID() {
    return MXJSCallbackMgr.getInstance().generateID();
  }

  createCallbackID(callback) {
    let callbackID = this.ownerWidget.widgetID + "/" + this.generateID();
    this.callbackID2fun[callbackID] = callback;
    return callbackID;
  }

  invokeCallback(callbackID, ...args) {
    let callback = this.findCallback(callbackID);
    return callback(...args);
  }

  findCallback(callbackID) {
    return this.callbackID2fun[callbackID];
  }
}

function initMXJSWidgetData(obj) {
  //继承自MXJSBaseWidget 自定义控件。

  if (obj.widgetID == null || obj.widgetID == undefined || obj.widgetID == '') {
    obj.widgetID = MXJSWidgetMgr.getInstance().generateWidgetID();
  }

  obj.helper = new MXJSWidgetHelper(obj);

  //构建系列号，每build一次加1
  obj.buildWidgetDataSeq = "";

  // The Widget Pages that pushed this Widget ID
  // 把当前widget（this） push 出来的widget ID
  // 序列化到JSON里
  obj.navPushingWidgetID = "";

  //不添加进json的控制变量
  //创建自己的widget，为null自己是root
  obj.parentWidget = null;

  // The Widget Pages that pushed this Widget
  // 把当前widget（this） push 出来的widget
  obj.navPushingWidget = null;

  //The widget that was pushed by this widget
  //由自己this push的widget page
  obj.navPushedWidgets = {};
  //
  obj.buildContext = null;
  obj.buildingWidgetTree = null;
  obj.currentWidgetTree = null;
  obj.preWidgetTree = null;
  obj.buildWidgetDataSeqFeed = 0;
  obj.buildSeq2WTreeMap = {};

  ///性能分析模式 
  ///打开性能分析模式，widget.enableProfile = true
  ///可以重载onBuildEnd，使用getProfileText获得各个阶段耗时
  obj.enableProfile = false;
  obj.profileInfo = {};
}

class MXJSWidgetHelper {
  constructor(widget) {
    this.widget = widget;
  }

  setState(fun) {
    this.widget.state.setState(fun);
  }

  //util api
  //building

  static buildWidgetData(jsWidget) {

    MXJSLog.log("buildWidgetData ::" + jsWidget.widgetLogInfoStr());

    let widgetDataStr = JSON.stringify(jsWidget, function (key, value) {

      let newValue = value;

      if (value instanceof MXJSStatefulWidget || value instanceof MXJSStatelessWidget) {
        // 解决widget生成时不调用构造方法的问题
        if (value.helper == null) {
          value.className = value instanceof MXJSStatefulWidget ? "MXJSStatefulWidget" : "MXJSStatelessWidget";
          initMXJSWidgetData(value);
        }

        if (value != jsWidget) {
          value.buildContext = MXJSFlutterBuildContext.inheritBuildContext(value, jsWidget.buildContext);
          //TODO:FIXME addChildWidget逻辑，这里局部刷新，会有两份Widget数据，但功能正常
          //Widget 的子Widget 没有层级关系，平铺在jsWidget
          jsWidget.helper.addChildWidget(value);
        }

        //如果是MXJSWidget类需要调用一下build，返回build内容
        newValue = value.helper.buildWidgetTree();
      }


      // 遍历处理Symbol的key转成String放入Json中
      if (newValue && typeof newValue === 'object') {
        var objectSymbols = Object.getOwnPropertySymbols(newValue);
        if (objectSymbols.length > 0) {
          var replacement = {};

          var len = objectSymbols.length;
          for (var i = 0; i < len; ++i) {
            var key = objectSymbols[i].description;
            var value = newValue[objectSymbols[i]];
            replacement[key] = value;
          }

          return replacement;
        }
      }

      return newValue;
    });

    return widgetDataStr;
  }

  buildWidgetTree() {
    this.widget.buildWidgetDataSeq = String(
      ++this.widget.buildWidgetDataSeqFeed
    );

    let tempWidgetTree = new MXJSWidgetTree(
      this.widget.buildWidgetDataSeq
    );
    tempWidgetTree.ownerWidget = this.widget;

    this.widget.buildingWidgetTree = tempWidgetTree;
    MXJSLog.log("JSWidget buildWidgetTree ::" + this.widget.widgetLogInfoStr());

    let tempWidgetTreeObjMap;
    if (this.widget instanceof MXJSStatelessWidget) {
      tempWidgetTreeObjMap = this.widget.build(this.widget.buildContext);
    } else if (this.widget instanceof MXJSStatefulWidget) {
      //必须在Build的时候才创建State
      if (!this.widget.state) {
        this.widget.state = this.widget.createState();
        this.widget.state.widget = this.widget;
        this.widget.state.initState();
      }
      tempWidgetTreeObjMap = this.widget.state.build(this.widget.buildContext);
    }

    //如果Build的root wiget 是MXJSStatelessWidget，则直接展开，优化性能
    if (tempWidgetTreeObjMap instanceof MXJSStatelessWidget) {
      tempWidgetTreeObjMap = tempWidgetTreeObjMap.build(this.widget.buildContext);
    }

    //tempWidgetTree.widgetTreeObjMap = tempWidgetTreeObjMap; //不做diff不用保存，优化内存

    this.preBuildJson(tempWidgetTree, tempWidgetTreeObjMap);

    //加入缓存map
    this.widget.buildSeq2WTreeMap[tempWidgetTree.buildWidgetDataSeq] = tempWidgetTree;

    //json实际包含的字段
    let jsonMap = {
      key: this.widget.key,
      name: this.widget.name,
      className: this.widget.className,
      widgetID: this.widget.widgetID,
      buildWidgetDataSeq: this.widget.buildWidgetDataSeq,
      navPushingWidgetID: this.widget.navPushingWidgetID,
      widgetData: tempWidgetTreeObjMap,
      enableProfile: this.widget.enableProfile
    };

    return jsonMap;
  }

  preBuildJson(widgetTree, widgetTreeObjMap) {

    //MXJSLog.log("preBuildJson:" + flutterWidget);
    if (!(widgetTreeObjMap instanceof Object)) {
      return;
    }

    //MXJSStatefulWidget不处理
    if (widgetTreeObjMap instanceof MXJSStatefulWidget) {
      return;
    }

    if (widgetTreeObjMap instanceof FlutterWidget) {
      //ListView等类似需要提前处理build的FlutterWidget 有preBuild 函数
      widgetTreeObjMap.preBuild(this, this.widget.buildContext);
    }

    for (let p in widgetTreeObjMap) {

      let value = widgetTreeObjMap[p];
      //如果Build的 wiget tree 里有节点是MXJSStatelessWidget，则直接展开，优化性能
      if (value instanceof MXJSStatelessWidget) {
        value = value.build(this.widget.buildContext);
        widgetTreeObjMap[p] = value;
      }

      this.preBuildJson(widgetTree, value);
    }
  }

  //buildingCreateCallbackID 只允许building过程中调用，不是对外API
  buildingCreateCallbackID(callback) {
    //* MXFlutter beta 0.1.0开始，框架不在帮助上层代码绑定this，开发者需要自己绑定需要的对象 
    //callback = callback.bind(this.widget);
    return this.widget.buildingWidgetTree.createCallbackID(
      callback
    );
  }

  setupAsRootWidget() {

    this.widget.buildingWidgetTree = new MXJSWidgetTree("1");
    this.widget.currentWidgetTree = this.widget.buildingWidgetTree;

  }

  addChildWidget(jsWidget) {
    jsWidget.parentWidget = this.widget;
    this.widget.buildingWidgetTree.childrenWidget[jsWidget.widgetID] = jsWidget;
  }

  removeChildWidget(jsWidget) {
    if (
      this.widget.currentWidgetTree &&
      this.widget.currentWidgetTree.childrenWidget
    ) {
      delete this.widget.currentWidgetTree.childrenWidget[jsWidget.widgetID];
    }
  }

  //js->flutter
  callFlutterRebuild() {

    MXJSLog.log("callFlutterRebuild ::" + this.widget.widgetLogInfoStr());
    let startEncodeData = (new Date()).valueOf();
    let widgetData = MXJSWidgetHelper.buildWidgetData(this.widget);
    let startTransferData = (new Date()).valueOf();

    if (this.widget.enableProfile) {
      let profileInfo = {};
      profileInfo['startEncodeData'] = startEncodeData;
      profileInfo['startTransferData'] = startTransferData;
      profileInfo['transferDataLen'] = widgetData.length;
      this.widget.profileInfo = profileInfo;
    }


    //rebuild and confirm 配对
    this.confirmCurrentWidgetTree();
    //call flutter setState
    MXNativeJSFlutterAppProxy.callFlutterWidgetChannel("rebuild", widgetData);
  }

  //0.1.0 2020-4-2 修改为不经过dart侧buildend确认，当发送rebuild或等价构建UI调用后
  //直接确认CurrentTree，目的是可以聚合延迟发送buildend
  confirmCurrentWidgetTree() {
    this.widget.preWidgetTree = this.widget.currentWidgetTree;
    this.widget.currentWidgetTree = this.widget.buildingWidgetTree;
  }


  //flutter -> js
  onEventCallback(args) {
    let callID = args["callID"]; //   widgetID/callID 格式 ： "1313/3434"
    if (callID == null) {
      return;
    }
    let arr = callID.split("/");

    let widgetID = arr[0];

    let buildWidgetDataSeq = args["buildSeq"];
    let callArgs = args["args"];

    let jsWidget = this.findWidgetWithWidgetID(widgetID);

    if (jsWidget != null) {
      return jsWidget.helper.invokeCallback(buildWidgetDataSeq, callID, args["args"]);
    } else {
      MXJSLog.error(
        "onEventCallback error: jsWidget == null onEventCallback(args:" + args
      );
    }
  }

  findWidgetWithWidgetID(widgetID) {
    if (this.widget.widgetID == widgetID) {
      return this.widget;
    }

    //先在currentTree里找，一般这里能找到
    let widgetTree = this.widget.currentWidgetTree;

    if (widgetTree != null) {
      let w = widgetTree.childrenWidget[widgetID];
      if (w) {
        return w;
      }

      for (let k in widgetTree.childrenWidget) {
        let jsWidget = widgetTree.childrenWidget[k];
        w = jsWidget.helper.findWidgetWithWidgetID(widgetID);
        if (w) {
          return w;
        }
      }
    }

    //找不到就遍历treemap，为了去掉 buildend 回调确认WidgetTree的过程
    for (let seq in this.widget.buildSeq2WTreeMap) {

      if (this.widget.currentWidgetTree && this.widget.currentWidgetTree.buildWidgetDataSeq == seq) {
        continue;
      }

      let widgetTree = this.widget.buildSeq2WTreeMap[seq];
      if (widgetTree != null) {
        let w = widgetTree.childrenWidget[widgetID];
        if (w) {
          return w;
        }

        for (let k in widgetTree.childrenWidget) {
          let jsWidget = widgetTree.childrenWidget[k];
          w = jsWidget.helper.findWidgetWithWidgetID(widgetID);
          if (w) {
            return w;
          }
        }
      }
    }

    //查找被自己push的widgets
    for (let k in this.widget.navPushedWidgets) {
      let jsWidget = this.widget.navPushedWidgets[k];
      let w = jsWidget.helper.findWidgetWithWidgetID(widgetID);
      if (w) {
        return w;
      }
    }

    return null;
  }

  invokeCallback(buildWidgetDataSeq, callID, args) {

    MXJSLog.log("JSWidget invokeCallback ::" + this.widget.widgetLogInfoStr() + " buildWidgetDataSeq: " + buildWidgetDataSeq + " callID: " + callID);

    if (this.widget.currentWidgetTree && this.widget.currentWidgetTree.buildWidgetDataSeq != buildWidgetDataSeq) {
      MXJSLog.error(
        "MXJSWidget:invokeCallback:this.widget.currentWidgetTree.buildWidgetDataSeq(" + this.widget.currentWidgetTree.buildWidgetDataSeq + ")  != buildWidgetDataSeq(" + buildWidgetDataSeq + ") " +
        " callID: " +
        callID
      );

      if (this.widget.preWidgetTree && this.widget.preWidgetTree.buildWidgetDataSeq == buildWidgetDataSeq) {
        MXJSLog.error(
          "MXJSWidget:invokeCallback:this.widget.preWidgetTree.buildWidgetDataSeq(" + this.widget.preWidgetTree.buildWidgetDataSeq + ")  == buildWidgetDataSeq(" + buildWidgetDataSeq + ") " +
          " callID: " +
          callID
        );

      }

      if (this.widget.buildingWidgetTree && this.widget.buildingWidgetTree.buildWidgetDataSeq == buildWidgetDataSeq) {
        MXJSLog.error(
          "MXJSWidget:invokeCallback:this.widget.buildingWidgetTree.buildWidgetDataSeq(" + this.widget.buildingWidgetTree.buildWidgetDataSeq + ")  == buildWidgetDataSeq(" + buildWidgetDataSeq + ") " +
          " callID: " +
          callID
        );

      }

      return null;
    }

    if (this.widget.currentWidgetTree && this.widget.currentWidgetTree.findCallback(callID)) {
      return this.widget.currentWidgetTree.invokeCallback(callID, args);
    }
    else {
      //容错处理
      MXJSLog.error(
        "MXJSWidget:invokeCallback: 容错搜索所有BuildTree，this.widget.buildingWidgetTree.buildWidgetDataSeq(" + this.widget.buildingWidgetTree.buildWidgetDataSeq + ")  == buildWidgetDataSeq(" + buildWidgetDataSeq + ") " +
        " callID: " +
        callID
      );
      for (let seq in this.widget.buildSeq2WTreeMap) {
        let tree = this.widget.buildSeq2WTreeMap[seq];

        if (tree.findCallback(callID)) {
          return tree.invokeCallback(callID, args);
        }

      }
    }

  }


  onBuildEnd(args) {
    let widgetID = args["widgetID"];
    let buildWidgetDataSeq = args["buildSeq"];
    let jsWidget = this.findWidgetWithWidgetID(widgetID);

    if (jsWidget != null) {
      let profileInfo = args["profileInfo"];
      jsWidget.helper.onFlutterBuildEnd(buildWidgetDataSeq, profileInfo);
    } else {
      MXJSLog.error("onBuildEnd error: jsWidget == null widgetID: " + widgetID + " buildWidgetDataSeq: " + buildWidgetDataSeq);
    }
  }

  onFlutterBuildEnd(buildWidgetDataSeq, profileInfo) {

    let tree = this.widget.buildSeq2WTreeMap[buildWidgetDataSeq];

    if (tree != null) {
      this.widget.preWidgetTree = this.widget.currentWidgetTree;
      this.widget.currentWidgetTree = tree;

      MXJSLog.log("JSWidget onFlutterBuildEnd success::" + this.widget.widgetLogInfoStr() + " buildWidgetDataSeq: " + buildWidgetDataSeq);

      this.clearWidgetTree(buildWidgetDataSeq);
    } else {
      MXJSLog.error("JSWidget onFlutterBuildEnd fail buildSeq2WTreeMap.keys: [" + Object.keys(this.widget.buildSeq2WTreeMap).join("|") + "]::" + this.widget.widgetLogInfoStr() + " buildWidgetDataSeq: " + buildWidgetDataSeq);
    }

    this.widget.setProfileInfo(profileInfo);

    if (this.widget instanceof MXJSStatelessWidget) {
      this.widget.onBuildEnd();
    } else if (this.widget instanceof MXJSStatefulWidget) {
      this.widget.state.onBuildEnd();
    }
  }

  //比buildWidgetDataSeq小的tree 可以清理掉了
  clearWidgetTree(buildWidgetDataSeq) {

    let intCurSeq = parseInt(buildWidgetDataSeq);
    let clearSeqs = [];

    for (let seq in this.widget.buildSeq2WTreeMap) {
      let intSeq = parseInt(seq);

      //保留第一次的构建，兼容有些Flutter Widget有不更新Widget内容的bug
      if (intSeq <= 1) {
        continue;
      }

      if (intSeq < intCurSeq) {
        clearSeqs.push(seq);
      }
    }

    for (let i = 0; i < clearSeqs.length; ++i) {
      //MXJSLog.debug("JSWidget clearWidgetTree::" + this.widget.widgetLogInfoStr() + " delSeq: " + delSeq);
      delete this.widget.buildSeq2WTreeMap[clearSeqs[i]];
    }

  }

  onDispose(args) {
    let widgetID = args["widgetID"];

    let jsWidget = this.findWidgetWithWidgetID(widgetID);

    if (jsWidget != null) {
      jsWidget.helper.onFlutterDispose();

      if (jsWidget.parentWidget) {
        //TODO: FIXME listview 滑动，滑出之后再回来，就不响应了，先不删除，依赖顶层Push页面的pop来释放
        //jsWidget.parentWidget.helper.removeChildWidget(jsWidget);
      }

      if (jsWidget.navPushingWidget) {

        jsWidget.navPushingWidget.helper.removePushingWidget(jsWidget);
      }
    } else {
      MXJSLog.error("onDispose error: jsWidget == null widgetID " + widgetID);
    }
  }

  onFlutterDispose() {

    MXJSLog.log("JSWidget onFlutterDispose ::" + this.widget.widgetLogInfoStr());
    //调用子widget disposeWidget
    if (
      this.widget.currentWidgetTree &&
      this.widget.currentWidgetTree.childrenWidget
    ) {
      for (let k in this.widget.currentWidgetTree.childrenWidget) {
        let widget = this.widget.currentWidgetTree.childrenWidget[k];
        if (widget) {
          widget.helper.onFlutterDispose();
        }
        // this.widget.currentWidgetTree.childrenWidget[k].disposeWidget();
      }
    }

    if (this.widget instanceof MXJSStatefulWidget) {
      this.widget.state.dispose();
    }
  }

  //js->flutter
  //navigator route
  navigatorPush(jsWidget) {
    // 清空当前widget的navPushedWidgets数据
    for (let i in this.widget.navPushedWidgets) {
      var obj = this.widget.navPushedWidgets[i];
      obj.helper.onFlutterDispose();

      if (obj.parentWidget) {
        obj.parentWidget.helper.removeChildWidget(obj);
      }

      if (obj.navPushingWidget) {
        obj.navPushingWidget.helper.removePushingWidget(obj);
      }
    }

    let startEncodeData = (new Date()).valueOf();
    let widgetData = this.updatePushingWidgetsData(jsWidget);
    let startTransferData = (new Date()).valueOf();

    if (jsWidget.enableProfile) {
      let profileInfo = {};
      profileInfo['startEncodeData'] = startEncodeData;
      profileInfo['startTransferData'] = startTransferData;
      profileInfo['transferDataLen'] = widgetData.length;
      jsWidget.profileInfo = profileInfo;
    }

    //call flutter navigatorPush
    MXNativeJSFlutterAppProxy.callFlutterWidgetChannel("navigatorPush", widgetData);
  }

  navigatorPop() {

    // TODO:fixme找到最上层的top widget
    let topRootWidget = this.findTopRootWidget();
    let widgetID = topRootWidget.widgetID;
    MXNativeJSFlutterAppProxy.callFlutterWidgetChannel("navigatorPop", {
      widgetID
    });

    if (this.widget.navPushedWidgets) {
      delete this.widget.navPushedWidgets[widgetID];
    }
  }

  //留意：这个函数命名是不是应该是removePushedWidget
  removePushingWidget(jsWidget) {
    if (this.widget.navPushedWidgets) {
      delete this.widget.navPushedWidgets[jsWidget.widgetID];
    }
  }

  updatePushingWidgetsData(jsWidget) {

    MXJSLog.log("updatePushingWidgetsData WidgetName:" + jsWidget.widgetName);
    //那种根节点不是statewidget的页面 比如Theme
    var newJSWidget;
    if (jsWidget.className != "MXJSStatefulWidget" && jsWidget.className != "MXJSStatelessWidget") {
      // 特殊处理，用MXJSStatelessWidget包裹一层
      newJSWidget = new MXJSStatelessWidget("FakeStatelessWidget");
      newJSWidget.build = function (context) {
        return jsWidget;
      };
    } else {
      newJSWidget = jsWidget;
    }

    //设置push jsWidget的widget
    newJSWidget.navPushingWidget = this.widget;
    newJSWidget.buildContext = MXJSFlutterBuildContext.inheritBuildContext(newJSWidget, this.widget.buildContext);
    newJSWidget.navPushingWidgetID = this.widget.widgetID;
    this.widget.navPushedWidgets[newJSWidget.widgetID] = newJSWidget;
    let widgetData = MXJSWidgetHelper.buildWidgetData(newJSWidget);

    return widgetData;
  }

  findTopRootWidget() {
    let rootWidget = this.widget.parentWidget;
    if (rootWidget == null) {
      return this.widget;
    }

    return rootWidget.helper.findTopRootWidget();
  }
}

class MXJSBaseWidget extends core.Object {
  constructor(name, { key } = {}) {
    super();

    this.name = name;
    this.key = key;

    initMXJSWidgetData(this);
  }

  widgetLogInfoStr() {
    let log = "WidgetInfo: Name: " + this.widgetName + " Class: " + this.className + " WID: " + this.widgetID + " buildseq: " + this.buildWidgetDataSeq +
      " currentTreeSeq: " + this.getWidgetTreeBuildSeq(this.currentWidgetTree) + " buildingseq: " + this.getWidgetTreeBuildSeq(this.buildingWidgetTree) +
      " preTreeSeq: " + this.getWidgetTreeBuildSeq(this.preWidgetTree);
    return log;
  }

  getWidgetTreeBuildSeq(widgetTree) {

    if (widgetTree == null) {
      return "0";
    }

    return widgetTree.buildWidgetDataSeq;

  }

  onBuildEnd(args) { }

  ///性能分析模式 
  ///打开性能分析模式，widget.enableProfile = true
  ///可以重载onBuildEnd，使用getProfileText获得各个阶段耗时
  setProfileInfo(profileInfo) {

    if (this.enableProfile == true && profileInfo) {
      this.profileInfo["startDecodeData"] = profileInfo["startDecodeData"];
      this.profileInfo["endDecodeData"] = profileInfo["endDecodeData"];
      this.profileInfo["buildEnd"] = profileInfo["buildEnd"];
    }
  }

  getProfileText() {
    let profileInfo = this.profileInfo;
    let startEncodeData = profileInfo['startEncodeData'];
    let startTransferData = profileInfo['startTransferData'];
    let startDecodeData = profileInfo['startDecodeData'];
    let endDecodeData = profileInfo['endDecodeData'];
    let buildEnd = profileInfo['buildEnd'];
    let transferDataLen = profileInfo['transferDataLen'];

    let buildDataCost = startTransferData - startEncodeData;
    let transferCost = startDecodeData - startTransferData;
    let decodeDataCost = endDecodeData - startDecodeData;
    let paintCost = buildEnd - endDecodeData;

    let mxcost = endDecodeData - startEncodeData;
    let flutterBuild = endDecodeData - startEncodeData;

    let profileText = '总耗时: MXFlutterTotal: ' + mxcost + 'ms FlutterBuild: ' + paintCost + 'ms 详情:\n' +
      '[JS]buildJSWidgetTree2Json: ' + buildDataCost + "ms \n" +
      '[JS->Native->Dart]transfer(' + (transferDataLen * 2.0 / 1024.0).toFixed(2) + 'Kb): ' + transferCost + "ms\n" +
      '[Dart]DecodeJson: ' + decodeDataCost + "ms\n" +
      '[Dart]flutterBuild: ' + paintCost + "ms";
    return profileText;
  }
}

class MXJSStatefulWidget extends MXJSBaseWidget {
  constructor(name, { key } = {}) {
    super(name, { key: key });

    this.className = "MXJSStatefulWidget";
    initMXJSWidgetData(this);
  }

  //subclass override
  createState() { }
}

(MXJSStatefulWidget.new = function ({ key } = {}) {
  this.name = this.title;
  this.key = key;
  this.className = "MXJSStatefulWidget";

  initMXJSWidgetData(this);

}).prototype = MXJSStatefulWidget.prototype;
// MXJSStatefulWidget.new = MXJSStatefulWidget.constructor;

class MXJSWidgetState {
  constructor() {
    this.widget = null;
  }

  get context() {
    return this.widget.buildContext;
  }

  //subclass override
  initState() {
    MXJSLog.log("MXJSWidgetState initState ::" + this.widget.widgetLogInfoStr());
  }

  setState(fun) {
    MXJSLog.log("MXJSWidgetState setState ::" + this.widget.widgetLogInfoStr());
    if (fun) {
      fun();
    }
    //call-> Flutter
    this.widget.helper.callFlutterRebuild();
  }

  //subclass override
  build(buildContext) {
    return null;
  }

  //subclass overwite
  onBuildEnd(args) { }

  //subclass override
  dispose() { }
}

(MXJSWidgetState.new = function () { }).prototype = MXJSWidgetState.prototype;

//在JS层，要封装控件，如不需要改变UI内容，使用无状态的MXJSStatelessWidget
class MXJSStatelessWidget extends MXJSBaseWidget {
  constructor(name, { key } = {}) {
    super(name, { key: key });

    this.className = "MXJSStatelessWidget";

    initMXJSWidgetData(this);
  }

  //subclass override
  build(buildContext) {
    return null;
  }
}

(MXJSStatelessWidget.new = function ({ key } = {}) {
  this.name = this.title;
  this.key = key;
  this.className = "MXJSStatelessWidget";

  initMXJSWidgetData(this);
}).prototype = MXJSStatelessWidget.prototype;

//逻辑
class MediaQuery extends DartClass {
  constructor({
    key,
    data, //MediaQueryData
    child
  } = {}) {
    super();

    this.key = key;
    this.data = data; //MediaQueryData
    this.child = child;
  }

  static of(context) {
    return context.mediaQueryData;
  }
}

MediaQuery.new = function (arg) {
  return new MediaQuery(arg);
};

class MediaQueryData extends DartClass {
  constructor({
    size,
    devicePixelRatio,
    textScaleFactor,
    padding,
    viewInsets,
    alwaysUse24HourFormat,
    accessibleNavigation,
    invertColors,
    disableAnimations,
    boldText
  } = {}) {
    super();

    this.size = size;
    this.devicePixelRatio = devicePixelRatio;
    this.textScaleFactor = textScaleFactor;
    this.padding = padding;
    this.viewInsets = viewInsets;
    this.alwaysUse24HourFormat = alwaysUse24HourFormat;
    this.accessibleNavigation = accessibleNavigation;
    this.invertColors = invertColors;
    this.disableAnimations = disableAnimations;
    this.boldText = boldText;
  }

  static fromJson(mapObj) {
    if (mapObj == null || mapObj == undefined) {
      return null;
    }
    let obj = new MediaQueryData();

    for (var p in mapObj) {
      if (mapObj.hasOwnProperty(p)) {
        let v = mapObj[p];
        switch (p) {
          case "size":
            obj[p] = Size.fromJson(v);
            break;
          case "padding":
          case "viewInsets":
            obj[p] = EdgeInsets.fromJson(v);
            break;
          default:
            obj[p] = v;
        }
      }
    }

    return obj;
  }
}

MediaQueryData.new = function (arg) {
  return new MediaQueryData(arg);
};

class Theme extends DartClass {
  constructor({ key, data, isMaterialAppTheme, child } = {}) {
    super();

    this.key = key;
    this.data = data;
    this.isMaterialAppTheme = isMaterialAppTheme;
    this.child = child;
  }

  static of(context) {
    return context.themeData;
  }
}

Theme.new = function (arg) {
  return new Theme(arg);
};

class ThemeData extends DartClass {
  constructor({
    brightness,
    primarySwatch,
    primaryColor,
    primaryColorBrightness,
    primaryColorLight,
    primaryColorDark,
    accentColor,
    accentColorBrightness,
    canvasColor,
    scaffoldBackgroundColor,
    bottomAppBarColor,
    cardColor,
    dividerColor,
    focusColor,
    hoverColor,
    highlightColor,
    splashColor,
    splashFactory,
    selectedRowColor,
    unselectedWidgetColor,
    disabledColor,
    buttonColor,
    buttonTheme,
    toggleButtonsTheme,
    secondaryHeaderColor,
    textSelectionColor,
    cursorColor,
    textSelectionHandleColor,
    backgroundColor,
    dialogBackgroundColor,
    indicatorColor,
    hintColor,
    errorColor,
    toggleableActiveColor,
    fontFamily,
    textTheme,
    primaryTextTheme,
    accentTextTheme,
    inputDecorationTheme,
    iconTheme,
    primaryIconTheme,
    accentIconTheme,
    sliderTheme,
    tabBarTheme,
    tooltipTheme,
    cardTheme,
    chipTheme,
    platform,
    materialTapTargetSize,
    applyElevationOverlayColor,
    pageTransitionsTheme,
    appBarTheme,
    bottomAppBarTheme,
    colorScheme,
    dialogTheme,
    floatingActionButtonTheme,
    typography,
    cupertinoOverrideTheme,
    snackBarTheme,
    bottomSheetTheme,
    popupMenuTheme,
    bannerTheme,
    dividerTheme,
    buttonBarTheme,
  } = {}) {
    super();

    // TODO: 其他参数默认的取值
    this.brightness = brightness;
    var isDark = brightness == Brightness.dark;
    this.primarySwatch = primarySwatch != null ? primarySwatch : Colors.blue;
    this.primaryColor = primaryColor != null ? primaryColor : (isDark ? Colors.grey[900] : primarySwatch);
    this.primaryColorBrightness = primaryColorBrightness;
    this.primaryColorLight = primaryColorLight;
    this.primaryColorDark = primaryColorDark;
    this.accentColor = accentColor;
    this.accentColorBrightness = accentColorBrightness;
    this.canvasColor = canvasColor;
    this.scaffoldBackgroundColor = scaffoldBackgroundColor;
    this.bottomAppBarColor = bottomAppBarColor;
    this.cardColor = cardColor;
    this.dividerColor = dividerColor;
    this.focusColor = focusColor;
    this.hoverColor = hoverColor;
    this.highlightColor = highlightColor;
    this.splashColor = splashColor;
    this.splashFactory = splashFactory;
    this.selectedRowColor = selectedRowColor;
    this.unselectedWidgetColor = unselectedWidgetColor;
    this.disabledColor = disabledColor;
    this.buttonColor = buttonColor;
    this.toggleButtonsTheme = toggleButtonsTheme;
    this.secondaryHeaderColor = secondaryHeaderColor;
    this.textSelectionColor = textSelectionColor;
    this.cursorColor = cursorColor;
    this.textSelectionHandleColor = textSelectionHandleColor;
    this.backgroundColor = backgroundColor;
    this.dialogBackgroundColor = dialogBackgroundColor;
    this.indicatorColor = indicatorColor;
    this.hintColor = hintColor;
    this.errorColor = errorColor;
    this.toggleableActiveColor = toggleableActiveColor;
    this.fontFamily = fontFamily;
    this.textTheme = textTheme;
    this.primaryTextTheme = primaryTextTheme;
    this.accentTextTheme = accentTextTheme;
    this.inputDecorationTheme = inputDecorationTheme;
    this.iconTheme = iconTheme;
    this.primaryIconTheme = primaryIconTheme;
    this.accentIconTheme = accentIconTheme;
    this.sliderTheme = sliderTheme;
    this.tabBarTheme = tabBarTheme;
    this.tooltipTheme = tooltipTheme;
    this.cardTheme = cardTheme;
    this.chipTheme = chipTheme;
    this.platform = platform;
    this.materialTapTargetSize = materialTapTargetSize;
    this.applyElevationOverlayColor = applyElevationOverlayColor;
    this.pageTransitionsTheme = pageTransitionsTheme;
    this.appBarTheme = appBarTheme;
    this.bottomAppBarTheme = bottomAppBarTheme;
    this.colorScheme = colorScheme != null ? colorScheme : ColorScheme.fromSwatch({
      primarySwatch: primarySwatch,
      primaryColorDark: primaryColorDark,
      accentColor: accentColor,
      cardColor: cardColor,
      backgroundColor: backgroundColor,
      errorColor: errorColor,
      brightness: brightness
    });
    this.buttonTheme = buttonTheme != null ? buttonTheme : new ButtonThemeData({
      colorScheme: this.colorScheme,
      buttonColor: buttonColor,
      disabledColor: disabledColor,
      focusColor: focusColor,
      hoverColor: hoverColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
      materialTapTargetSize: materialTapTargetSize,
    });
    this.dialogTheme = dialogTheme;
    this.floatingActionButtonTheme = floatingActionButtonTheme;
    this.typography = typography;
    this.cupertinoOverrideTheme = cupertinoOverrideTheme;
    this.snackBarTheme = snackBarTheme;
    this.bottomSheetTheme = bottomSheetTheme;
    this.popupMenuTheme = popupMenuTheme;
    this.bannerTheme = bannerTheme;
    this.dividerTheme = dividerTheme;
    this.buttonBarTheme = buttonBarTheme;
  }

  copyWith({
    brightness,
    primaryColor,
    primaryColorBrightness,
    primaryColorLight,
    primaryColorDark,
    accentColor,
    accentColorBrightness,
    canvasColor,
    scaffoldBackgroundColor,
    bottomAppBarColor,
    cardColor,
    dividerColor,
    focusColor,
    hoverColor,
    highlightColor,
    splashColor,
    splashFactory,
    selectedRowColor,
    unselectedWidgetColor,
    disabledColor,
    buttonTheme,
    toggleButtonsTheme,
    buttonColor,
    secondaryHeaderColor,
    textSelectionColor,
    cursorColor,
    textSelectionHandleColor,
    backgroundColor,
    dialogBackgroundColor,
    indicatorColor,
    hintColor,
    errorColor,
    toggleableActiveColor,
    textTheme,
    primaryTextTheme,
    accentTextTheme,
    inputDecorationTheme,
    iconTheme,
    primaryIconTheme,
    accentIconTheme,
    sliderTheme,
    tabBarTheme,
    tooltipTheme,
    cardTheme,
    chipTheme,
    platform,
    materialTapTargetSize,
    applyElevationOverlayColor,
    pageTransitionsTheme,
    appBarTheme,
    bottomAppBarTheme,
    colorScheme,
    dialogTheme,
    floatingActionButtonTheme,
    typography,
    cupertinoOverrideTheme,
    snackBarTheme,
    bottomSheetTheme,
    popupMenuTheme,
    bannerTheme,
    dividerTheme,
    buttonBarTheme,
  } = {}) {
    let obj = new ThemeData({
      brightness: (brightness != null ? brightness : this.brightness),
      primarySwatch: this.primarySwatch,
      primaryColor: (primaryColor != null ? primaryColor : this.primaryColor),
      primaryColorBrightness: (primaryColorBrightness != null ? primaryColorBrightness : this.primaryColorBrightness),
      primaryColorLight: (primaryColorLight != null ? primaryColorLight : this.primaryColorLight),
      primaryColorDark: (primaryColorDark != null ? primaryColorDark : this.primaryColorDark),
      accentColor: (accentColor != null ? accentColor : this.accentColor),
      accentColorBrightness: (accentColorBrightness != null ? accentColorBrightness : this.accentColorBrightness),
      canvasColor: (canvasColor != null ? canvasColor : this.canvasColor),
      scaffoldBackgroundColor: (scaffoldBackgroundColor != null ? scaffoldBackgroundColor : this.scaffoldBackgroundColor),
      bottomAppBarColor: (bottomAppBarColor != null ? bottomAppBarColor : this.bottomAppBarColor),
      cardColor: (cardColor != null ? cardColor : this.cardColor),
      dividerColor: (dividerColor != null ? dividerColor : this.dividerColor),
      focusColor: (focusColor != null ? focusColor : this.focusColor),
      hoverColor: (hoverColor != null ? hoverColor : this.hoverColor),
      highlightColor: (highlightColor != null ? highlightColor : this.highlightColor),
      splashColor: (splashColor != null ? splashColor : this.splashColor),
      splashFactory: (splashFactory != null ? splashFactory : this.splashFactory),
      selectedRowColor: (selectedRowColor != null ? selectedRowColor : this.selectedRowColor),
      unselectedWidgetColor: (unselectedWidgetColor != null ? unselectedWidgetColor : this.unselectedWidgetColor),
      disabledColor: (disabledColor != null ? disabledColor : this.disabledColor),
      buttonColor: (buttonColor != null ? buttonColor : this.buttonColor),
      buttonTheme: (buttonTheme != null ? buttonTheme : this.buttonTheme),
      toggleButtonsTheme: (toggleButtonsTheme != null ? toggleButtonsTheme : this.toggleButtonsTheme),
      secondaryHeaderColor: (secondaryHeaderColor != null ? secondaryHeaderColor : this.secondaryHeaderColor),
      textSelectionColor: (textSelectionColor != null ? textSelectionColor : this.textSelectionColor),
      cursorColor: (cursorColor != null ? cursorColor : this.cursorColor),
      textSelectionHandleColor: (textSelectionHandleColor != null ? textSelectionHandleColor : this.textSelectionHandleColor),
      backgroundColor: (backgroundColor != null ? backgroundColor : this.backgroundColor),
      dialogBackgroundColor: (dialogBackgroundColor != null ? dialogBackgroundColor : this.dialogBackgroundColor),
      indicatorColor: (indicatorColor != null ? indicatorColor : this.indicatorColor),
      hintColor: (hintColor != null ? hintColor : this.hintColor),
      errorColor: (errorColor != null ? errorColor : this.errorColor),
      toggleableActiveColor: (toggleableActiveColor != null ? toggleableActiveColor : this.toggleableActiveColor),
      textTheme: (textTheme != null ? textTheme : this.textTheme),
      primaryTextTheme: (primaryTextTheme != null ? primaryTextTheme : this.primaryTextTheme),
      accentTextTheme: (accentTextTheme != null ? accentTextTheme : this.accentTextTheme),
      inputDecorationTheme: (inputDecorationTheme != null ? inputDecorationTheme : this.inputDecorationTheme),
      iconTheme: (iconTheme != null ? iconTheme : this.iconTheme),
      primaryIconTheme: (primaryIconTheme != null ? primaryIconTheme : this.primaryIconTheme),
      accentIconTheme: (accentIconTheme != null ? accentIconTheme : this.accentIconTheme),
      sliderTheme: (sliderTheme != null ? sliderTheme : this.sliderTheme),
      tabBarTheme: (tabBarTheme != null ? tabBarTheme : this.tabBarTheme),
      tooltipTheme: (tooltipTheme != null ? tooltipTheme : this.tooltipTheme),
      cardTheme: (cardTheme != null ? cardTheme : this.cardTheme),
      chipTheme: (chipTheme != null ? chipTheme : this.chipTheme),
      platform: (platform != null ? platform : this.platform),
      materialTapTargetSize: (materialTapTargetSize != null ? materialTapTargetSize : this.materialTapTargetSize),
      applyElevationOverlayColor: (applyElevationOverlayColor != null ? applyElevationOverlayColor : this.applyElevationOverlayColor),
      pageTransitionsTheme: (pageTransitionsTheme != null ? pageTransitionsTheme : this.pageTransitionsTheme),
      appBarTheme: (appBarTheme != null ? appBarTheme : this.appBarTheme),
      bottomAppBarTheme: (bottomAppBarTheme != null ? bottomAppBarTheme : this.bottomAppBarTheme),
      colorScheme: (colorScheme != null ? colorScheme : this.colorScheme),
      dialogTheme: (dialogTheme != null ? dialogTheme : this.dialogTheme),
      floatingActionButtonTheme: (floatingActionButtonTheme != null ? floatingActionButtonTheme : this.floatingActionButtonTheme),
      typography: (typography != null ? typography : this.typography),
      cupertinoOverrideTheme: (cupertinoOverrideTheme != null ? cupertinoOverrideTheme : this.cupertinoOverrideTheme),
      snackBarTheme: (snackBarTheme != null ? snackBarTheme : this.snackBarTheme),
      bottomSheetTheme: (bottomSheetTheme != null ? bottomSheetTheme : this.bottomSheetTheme),
      popupMenuTheme: (popupMenuTheme != null ? popupMenuTheme : this.popupMenuTheme),
      bannerTheme: (bannerTheme != null ? bannerTheme : this.bannerTheme),
      dividerTheme: (dividerTheme != null ? dividerTheme : this.dividerTheme),
      buttonBarTheme: (buttonBarTheme != null ? buttonBarTheme : this.buttonBarTheme),
    });
    return obj;
  }
}

ThemeData.new = function (arg) {
  return new ThemeData(arg);
};

ThemeData.light = function () {
  return new ThemeData({ brightness: Brightness.light });
};

ThemeData.dark = function () {
  return new ThemeData({ brightness: Brightness.dark });
};

//TODO
ThemeData.fromJson = function (mapObj) {
  if (mapObj == null || mapObj == undefined) {
    return null;
  }

  let obj = new ThemeData();

  for (var p in mapObj) {
    if (mapObj.hasOwnProperty(p)) {
      let v = mapObj[p];
      switch (p) {
        case "primaryColor":
        case "primaryColorLight":
        case "primaryColorDark":
        case "accentColor":
        case "canvasColor":
        case "scaffoldBackgroundColor":
        case "bottomAppBarColor":
        case "cardColor":
        case "dividerColor":
        case "highlightColor":
        case "splashColor":
        case "selectedRowColor":
        case "unselectedWidgetColor":
        case "disabledColor":
        case "buttonColor":
        case "secondaryHeaderColor":
        case "textSelectionColor":
        case "cursorColor":
        case "textSelectionHandleColor":
        case "backgroundColor":
        case "dialogBackgroundColor":
        case "indicatorColor":
        case "hintColor":
        case "errorColor":
        case "toggleableActiveColor":
          obj[p] = new Color(v);
          break;

        case "textTheme":
        case "primaryTextTheme":
        case "accentTextTheme":
          obj[p] = TextTheme.fromJson(v);
          break;

        default:
          obj[p] = v;
          break;
      }
    }
  }

  return obj;
};

class GlobalKey extends DartClass {
  constructor({ debugLabel } = {}) {
    super();

    this.debugLabel = debugLabel;
  }
}

GlobalKey.new = function (arg) {
  return new GlobalKey(arg);
};

module.exports = {
  runApp,
  invokeFlutterFunction,
  invokeCommonFlutterFunction,
  mxfJSBridgeInvokeJSCommonChannel,
  //class 定义
  MXFJSBridge,
  MXNativeJSFlutterAppProxy,
  MXJSLog,
  MXJSCallbackMgr,
  MXCreateCallbackID,
  MXInvokeCallback,
  MXJSFlutterApp,
  MXJSWidgetState,
  MediaQuery,
  MediaQueryData,
  Theme,
  ThemeData,
  MXJSStatelessWidget,
  MXJSStatefulWidget,
  GlobalKey
};
