//VSCode Run support=====================================================================================
//为便于在JS IDE如VSCode，webStorm里脱离APP环境执行JS，以快速验证JS代码正确性
//如果不在App环境，Native接口重定向到JS同名函数打印调用
//jsFlutterRequire 转调Node运行环境中的require
//只有JSFlutterJSFrameworkLib中的文件，才能用这个头
let jsFlutterRequire = typeof mxRequire != "undefined" ? mxRequire : require;
//VSCode Run support end ================================================================================

//js_flutter_framework.js
//便于在JS IDE里脱离APP环境执行，快速验证JS代码正确性
let g_isNativeEnvironment = typeof JSAPI_require != "undefined" ? true : false;

let {
    DartClass,
    FlutterWidget,
    Size,
    Color,
    EdgeInsets,
    FlutterWidgetMirrorMgr,
    IconThemeData,
} = jsFlutterRequire("./js_flutter_basic_types.js");

let {
    TextTheme,
} = jsFlutterRequire("./js_flutter_text.js");

//全局变量
var g_jsFlutterApp = null;

//全局函数
function runApp(app) {
    g_jsFlutterApp = app;
    MXNativeJSFlutterAppProxy.callNativeSetCurrentJSApp(g_jsFlutterApp);
}

//Native 接口封装
class MXNativeJSFlutterAppProxy {

    static callNativeSetCurrentJSApp(app) {
        if (!g_isNativeEnvironment) {
            //debugout
            MXJSLog.log("callNativeSetCurrentJSApp(app");
            return;
        }

        MXNativeJSFlutterApp.setCurrentJSApp(...arguments);
    }


    static callFlutterReloadApp(app, widgetData) {
        if (!g_isNativeEnvironment) {
            //debugout
            MXJSLog.log("callFlutterReloadApp(app", widgetData, ")");
            return;
        }

        MXNativeJSFlutterApp.callFlutterReloadApp(...arguments);
    }

    static callFlutterWidgetChannel(method, args) {

        if (!g_isNativeEnvironment) {
            //debugout
            MXJSLog.log("callFlutterWidgetChannel", ...arguments);
            return;
        }

        MXNativeJSFlutterApp.callFlutterWidgetChannel(...arguments);
    }


}

function invokeFlutterFunction(flutterCallArgs){
    arguments = JSON.stringify(flutterCallArgs);
    MXNativeJSFlutterAppProxy.callFlutterWidgetChannel("invoke", arguments);
}

//JSFlutter JS Runtime
class MXJSLog {
    static log() {

        console.log("MXJSFlutter:[JS]-:");
        console.log(...arguments);

        if (g_isNativeEnvironment) {
            JSAPI_log("MXJSFlutter:[JS]-" + arguments[0]);
        }

    }

    static error() {

        console.log("MXJSFlutter:[JS]-[Error]:");
        console.log(...arguments);

        if (g_isNativeEnvironment) {
            JSAPI_log("MXJSFlutter:[JS]-[Error]:" + arguments[0]);
        }

    }

}

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
        this.widgetIDFeed = 0;
        this.widgetID2WidgetMap = {};
    }


    static getInstance() {
        if (!this.instance) {
            this.instance = new MXJSWidgetMgr();
        }

        return this.instance;
    }

    generateWidgetID() {
        let wID = ++this.widgetIDFeed;
        return String(wID);
    }

    registerWidget(widget) {
        this.widgetID2WidgetMap[widget.widgetID] = widget;
    }

    remove(widgetID) {

    }

    findWidget(widgetID) {
        return this.widgetID2WidgetMap[wigetID];
    }

}

//MXJSFlutterBuildContext 和flutter BuildContext 保持一致的编程方式
class MXJSFlutterBuildContext {
    constructor(rootWidget) {
        this.rootWidget = rootWidget;
        this.rootWidget.buildContext = this;

        this.inheritedInfo = {};
        this.mediaQueryData = null;
        this.themeData = null;
        this.iconThemeData = null;
    }

    buildRootWidget() {
        return MXJSWidget.buildWidgetData(this.rootWidget);
    }

    //js->flutter
    callFlutterRebuild(widget) {

        let widgetData = MXJSWidget.buildWidgetData(widget);
        //call flutter setState
        MXNativeJSFlutterAppProxy.callFlutterWidgetChannel("rebuild", { widgetData })
    }

    setInheritedInfo(args) {
        this.inheritedInfo = args;

        this.mediaQueryData = MediaQueryData.fromJson(args["mediaQueryData"]);
        this.themeData = ThemeData.fromJson(args["themeData"]);
        this.iconThemeData = IconThemeData.fromJson(args["iconThemeData"]);
    }



}

//JSFlutterApp 基类，用于和Native交互
class MXJSFlutterApp {
    constructor(name, initialRoute) {
        this.name = name;
        this.initialRoute = initialRoute;
        this.rootWidget = null;
        this.rootBuildContext = null;
        this.disposeBuildContextList = [];
    }

    run() {
        runWithPageName(this.initialRoute);
    }

    //子类重写
    //flutter->js 用于app直接显示
    runWithPageName(pageName) {
        let w = this.createJSWidgetWithName(pageName);
        this.runApp(w);
    }

    navigatorPushWithPageName(pageName, args) {
        let w = this.createJSWidgetWithName(pageName);

        this.navigatorPush(w, args);
    }

    //子类重写,根据widget名创建widget
    //flutter->js 用于路由跳转
    createJSWidgetWithName(pageName) {


    }

    //基础
    //创建MXJSWidget，调用build 创建jsonWidgetTree，调用Flutter runApp 重新加载Flutter根页面
    runApp(widget) {
        this.rootWidget = widget;

        this.disposeBuildContext(this.rootBuildContext);
        this.rootBuildContext = new MXJSFlutterBuildContext(this.rootWidget);

        let app = this;
        let widgetData = this.rootBuildContext.buildRootWidget();

        MXNativeJSFlutterAppProxy.callFlutterReloadApp(app, widgetData);
    }

    //基础
    //当Flutter层 PageRoute(builder: (context) =>  被调用时，创建MXJSWidget，build后调用rebuild界面
    navigatorPush(widget, args) {
        this.rootWidget = widget;
        this.disposeBuildContext(this.rootBuildContext);
        this.rootBuildContext = new MXJSFlutterBuildContext(this.rootWidget);
        this.rootBuildContext.setInheritedInfo(args);
        this.rootBuildContext.callFlutterRebuild(this.rootWidget);
    }

    disposeBuildContext(buildContext) {
        //this.disposeBuildContextList.add(buildContext);
    }

    //flutter->js channel
    nativeCall(args) {

        MXJSLog.log("MXJSFlutterApp:nativeCall" + args);

        let method = args["method"];
        let callArgs = args["arguments"];

        let fun = this[method];

        if (fun != null) {
            fun.call(this, callArgs);
        }
        else {
            MXJSLog.log("MXJSFlutterApp:nativeCall error:fun == null" + args);
        }
    }

    flutterCallOnEventCallback(args) {
        this.rootWidget.onEventCallback(args);
    }

    flutterCallNavigatorPushWithPageName(args) {
        let pageName = args["pageName"];

        this.navigatorPushWithPageName(pageName, args);
    }

    flutterCallOnInitState(args) {
        this.rootWidget.onInitState(args);
    }

    flutterCallOnBuildEnd(args) {
        this.rootWidget.onBuildEnd(args);
    }

    flutterCallOnDispose(args) {
        let widgetID = args["widgetID"];

        if (this.rootWidget && this.rootWidget.widgetID == widgetID) {

        }

        this.rootWidget.onDispose(args);

        let mirrorObjIDList = args["mirrorObjIDList"];
        FlutterWidgetMirrorMgr.getInstance().removeMirrorObjects(mirrorObjIDList);
    }

    flutterCallOnMirrorObjInvoke(args){
        var mirrorObjID = args["mirrorID"];
        var functionName = args["functionName"];
        var args = args["args"];
        var mirrorObj = FlutterWidgetMirrorMgr.getInstance().getMirrorObj(mirrorObjID);
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

    }

    //统一用全局的id生成器
    generateID() {
        return MXJSCallbackMgr.getInstance().generateID();
    }

    createCallbackID(widgetID,callback) {
        let callbackID = widgetID + '/' + this.generateID();
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

}

//JSWidget 基类，负责JSWidget build 过程
class MXJSWidget {
    constructor(name, {key} = {}) {
        this.key = key;
        this.name = name;
        //继承自MXJSWidget 自定义控件，使用Flutter dart层的MXJSWidget 来承载。
        this.className = "MXJSWidget";
        this.widgetID = MXJSWidgetMgr.getInstance().generateWidgetID();

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
        //
        this.buildContext = null;
        this.currentWidgetTree = null;
        this.buildingWidgetTree = null;
        this.preWidgetTree = null;
        this.buildWidgetDataSeqFeed = 0;
    }

    //子类重载
    initState() {}

    setState(fun) {

        if (fun) {
            fun = fun.bind(this);
            fun();
        }
        
        //call-> Flutter 
        this.buildContext.callFlutterRebuild(this);
    }


    //子类重载 
    build(buildContext) {

        return null;
    }

    //子类重载 
    dispose() { }

    //util api
    //building

    static buildWidgetData(rootWidget) {

        let widgetDataStr = JSON.stringify(rootWidget, function (key, value) {

            if (value instanceof MXJSWidget) {

                if (rootWidget != value) {
                    //Widget 的子Widget 没有层级关系，平铺在rootWidget
                    rootWidget.addChildWidget(value);
                }

                //如果是MXJSWidget类需要调用一下build，返回build内容
                return value.buildWidgetTree();
            }

            return value;
        });
        return widgetDataStr;
    }


    buildWidgetTree() {
        this.buildWidgetDataSeq = String(++this.buildWidgetDataSeqFeed);
        this.buildingWidgetTree = new MXJSWidgetTree(this.buildWidgetDataSeq);

        MXJSLog.log("JSWidget buildWidgetTree: buildseq:" + this.buildWidgetDataSeq);
        let tempTree = this.build(this.buildContext);
        this.preBuildJson(tempTree);
        this.buildingWidgetTree.widgetTreeObjMap = tempTree;
        //
        //生成Json用
        this.widgetData = this.buildingWidgetTree.widgetTreeObjMap;

        //json实际包含的字段
        let jsonMap = {
            key: this.key,
            name: this.name,
            className: this.className,
            widgetID: this.widgetID,
            buildWidgetDataSeq: this.buildWidgetDataSeq,
            navPushingWidgetID: this.navPushingWidgetID,
            widgetData: this.widgetData,
        };

        return jsonMap;
    }

    preBuildJson(flutterWidget) {

        if (flutterWidget instanceof MXJSStatelessWidget) {
            MXJSLog.error("preBuildJson 顶层不能为MXJSStatelessWidget" + flutterWidget);
        }

        //MXJSLog.log("preBuildJson:" + flutterWidget);
        if (flutterWidget instanceof Object) {

            if (flutterWidget instanceof FlutterWidget) {
                flutterWidget.preBuild(this, this.buildContext);
            }

            // 如果是context，直接返回
            if (flutterWidget instanceof MXJSFlutterBuildContext) {
                return;
            }

            for (let p in flutterWidget) {

                //MXJSStatelessWidge 摊平
                let v = flutterWidget[p];

                if (v instanceof MXJSStatelessWidget) {
                    flutterWidget[p] = v.build(this.buildContext);
                }

                this.preBuildJson(flutterWidget[p]);
            }
        }
    }


    createCallbackID(callback) {
        callback = callback.bind(this);
        return this.buildingWidgetTree.createCallbackID(this.widgetID,callback);
    }

    //所有widget用root来管理，来消息时，从rootwidget开始查找
    addChildWidget(jsWidget) {
        jsWidget.rootWidget = this;
        jsWidget.buildContext = this.buildContext;
        this.buildingWidgetTree.childrenWidget[jsWidget.widgetID] = jsWidget;
    }

    removeChildWidget(jsWidget) {
        if (this.currentWidgetTree && this.currentWidgetTree.childrenWidget) {
            delete this.currentWidgetTree.childrenWidget[jsWidget.widgetID];
        }
    }

    //flutter -> js
    onEventCallback(args) {

        let callID = args["callID"];  //   widgetID/callID 格式 ： "1313/3434" 
        if (callID == null) {
            return;
        }
        let arr = callID.split('/');

        let widgetID = arr[0];
    
        let buildWidgetDataSeq = args["buildSeq"];
        let callArgs = args["args"];

        let jsWidget = this.findWidgetWithName(widgetID);

        if (jsWidget != null) {
            jsWidget.invokeCallback(buildWidgetDataSeq, callID, args["args"]);
        }
        else {
            MXJSLog.error("onEventCallback error: jsWidget == null onEventCallback(args:" + args);
        }

    }

    findWidgetWithName(widgetID) {

        if (this.widgetID == widgetID) {
            return this;
        }

        let widgetTree = this.currentWidgetTree;
        if (widgetTree != null) {
            let w = widgetTree.childrenWidget[widgetID];
            if (w) {
                return w;
            }
    
            for (let k in widgetTree.childrenWidget) {
                let jsWidget = widgetTree.childrenWidget[k];
                w = jsWidget.findWidgetWithName(widgetID);
                if (w) {
                    return w;
                }
            }
        }

        //查找被自己push的widgets
        for (let k in this.navPushedWidgets) {
            let jsWidget = this.navPushedWidgets[k];
            let w = jsWidget.findWidgetWithName(widgetID);
            if (w) {
                return w;
            }
        }

        return null;
    }

    invokeCallback(buildWidgetDataSeq, callID, args) {

        if (this.currentWidgetTree.buildWidgetDataSeq != buildWidgetDataSeq) {
            MXJSLog.error("MXJSWidget:invokeCallback:this.currentWidgetTree.buildWidgetDataSeq != buildWidgetDataSeq :buildSeq:" + buildWidgetDataSeq +
                "callID:" + callID);

            if (this.preWidgetTree.buildWidgetDataSeq != buildWidgetDataSeq) {

                MXJSLog.error("MXJSWidget:invokeCallback:this.preWidgetTree.buildWidgetDataSeq != buildWidgetDataSeq :buildSeq:" + buildWidgetDataSeq +
                    "callID:" + callID);
            }
            else {
                MXJSLog.error("MXJSWidget:invokeCallback:this.preWidgetTree.buildWidgetDataSeq == buildWidgetDataSeq :buildSeq:" + buildWidgetDataSeq +
                    "callID:" + callID);
            }

            return;
        }

        this.currentWidgetTree.invokeCallback(callID, args);
    }

    onInitState(args) {
        let widgetID = args["widgetID"];
        let buildWidgetDataSeq = args["buildSeq"];
        let jsWidget = this.findWidgetWithName(widgetID);

        if (jsWidget != null) {
            jsWidget.onFlutterInitState(buildWidgetDataSeq);
        }
        else {
            MXJSLog.error("onInitState error: jsWidget == null widgetID " + widgetID);
            return;
        }

        this.initState();
    }

    onFlutterInitState(buildWidgetDataSeq) {
        MXJSLog.log("onFlutterInitState:buildWidgetDataSeq" + buildWidgetDataSeq);

        if (buildWidgetDataSeq == this.buildingWidgetTree.buildWidgetDataSeq) {
            this.preWidgetTree = this.currentWidgetTree;
            this.currentWidgetTree = this.buildingWidgetTree;
        } else {
            MXJSLog.error("onFlutterInitState:buildWidgetDataSeq" + buildWidgetDataSeq);
        }
    }

    onBuildEnd(args) {
        let widgetID = args["widgetID"];
        let buildWidgetDataSeq = args["buildSeq"];
        let jsWidget = this.findWidgetWithName(widgetID);

        if (jsWidget != null) {
            jsWidget.onFlutterBuildEnd(buildWidgetDataSeq);
        }
        else {
            // MXJSLog.error("onBuildEnd error: jsWidget == null widgetID " + widgetID);

            // 如果已从parentWidget移除了，再重新rebuild一下rootWidget
            let rootWidgetID = args["rootWidgetID"];
            let rootJsWidget = this.findWidgetWithName(rootWidgetID);
            if (rootJsWidget != null) {
                rootJsWidget.buildContext.callFlutterRebuild(rootJsWidget);
            }
        }
    }

    onFlutterBuildEnd(buildWidgetDataSeq) {
        MXJSLog.log("OnFlutterBuildEnd:buildWidgetDataSeq" + buildWidgetDataSeq);

        if (buildWidgetDataSeq == this.buildingWidgetTree.buildWidgetDataSeq) {
            this.preWidgetTree = this.currentWidgetTree;
            this.currentWidgetTree = this.buildingWidgetTree;
        } else {
            MXJSLog.error("OnFlutterBuildEnd:buildWidgetDataSeq" + buildWidgetDataSeq);
        }
    }

    onDispose(args) {
        let widgetID = args["widgetID"];

        let jsWidget = this.findWidgetWithName(widgetID);

        if (jsWidget != null) {

            jsWidget.onFlutterDispose();

            if (jsWidget.rootWidget) {
                jsWidget.rootWidget.removeChildWidget(jsWidget);
            }

            if (jsWidget.navPushingWidget) {
                jsWidget.navPushingWidget.removePushingWidget(jsWidget);
            }

        }
        else {
            MXJSLog.error("onDispose error: jsWidget == null widgetID " + widgetID);
        }
    }

    onFlutterDispose() {

        MXJSLog.log("onFlutterDispose: widgetID:" + this.widgetID);
        //调用子widget disposeWidget
        if (this.currentWidgetTree && this.currentWidgetTree.childrenWidget) {
            for (let k in this.currentWidgetTree.childrenWidget) {
                let widget = this.currentWidgetTree.childrenWidget[k];
                if (widget) {
                    widget.dispose();
                }
                // this.currentWidgetTree.childrenWidget[k].disposeWidget();
            }
        }

        this.dispose();
    }


    //js->flutter
    //navigator route 
    navigatorPush(jsWidget) {
        this.updatePushingWidgetsData(jsWidget);
        let widgetData = jsWidget.widgetData;

        //call flutter setState
        MXNativeJSFlutterAppProxy.callFlutterWidgetChannel("navigatorPush", { widgetData });
    }

    navigatorPop() {
        // 找到最上层的top widget
        let topRootWidget = this.findTopRootWidget();
        let widgetID = topRootWidget.widgetID;
        MXNativeJSFlutterAppProxy.callFlutterWidgetChannel("navigatorPop", { widgetID });
    }

    removePushingWidget(jsWidget){
        if (this.navPushedWidgets) {
            delete this.navPushedWidgets[jsWidget.widgetID];
        }
    }

    updatePushingWidgetsData(jsWidget) {
        //设置push jsWidget的widget
        jsWidget.navPushingWidget = this;
        jsWidget.buildContext = this.buildContext;

        jsWidget.navPushingWidgetID = this.widgetID;

        this.navPushedWidgets[jsWidget.widgetID] = jsWidget;

        jsWidget.widgetData = MXJSWidget.buildWidgetData(jsWidget);
    }

    findTopRootWidget() {
        let rootWidget = this.rootWidget;
        if (rootWidget == null) {
            return this;
        }
        
        return rootWidget.findTopRootWidget(rootWidget);
    }
}

//在JS层，要封装控件，如不需要改变UI内容，使用无状态的MXJSStatelessWidget
//在JS Build JSON 阶段会预先展开为Build返回的内容
//在flutter层没有与之相对应的Widget，避免了MXJSWidget 为支持状态变化背后如事件，刷新等一系列的支持类。节省内存和执行效率。
class MXJSStatelessWidget {

    constructor(name) {
        this.name = name;
        this.className = "MXJSStatelessWidget";
    }

    //子类重载 
    build(buildContext) {

        return null;
    }
}

//逻辑
class MediaQuery extends DartClass {
    constructor({
        key,
        data, //MediaQueryData
        child,
    } = {}) {
        super();

        this.key = key;
        this.data = data; //MediaQueryData
        this.child = child;
    }

    static of(context) {

        // if(!g_isNativeEnvironment){
        //     return new MediaQueryData();
        // }
        return context.mediaQueryData;

    }

}

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
        boldText,
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
                let v = mapObj[p];;
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


class Theme extends DartClass {
    constructor ({
        key,
        data,
        isMaterialAppTheme,
        child,
    } = {}) {
        super();

        this.key = key;
        this.data = data;
        this.isMaterialAppTheme = isMaterialAppTheme;
        this.child = child;
    }

    static of(context) {

        // if(!g_isNativeEnvironment){
        //     return new ThemeData();
        // }
        return context.themeData;

    }
}


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
        highlightColor,
        splashColor,
        splashFactory,
        selectedRowColor,
        unselectedWidgetColor,
        disabledColor,
        buttonColor,
        buttonTheme,
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
        chipTheme,
        platform,
        materialTapTargetSize,
        pageTransitionsTheme,
        colorScheme,
        dialogTheme,
        typography,
    } = {}) {
        super();

        this.brightness = brightness;
        this.primarySwatch = primarySwatch;
        this.primaryColor = primaryColor;
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
        this.highlightColor = highlightColor;
        this.splashColor = splashColor;
        this.splashFactory = splashFactory;
        this.selectedRowColor = selectedRowColor;
        this.unselectedWidgetColor = unselectedWidgetColor;
        this.disabledColor = disabledColor;
        this.buttonColor = buttonColor;
        this.buttonTheme = buttonTheme;
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
        this.chipTheme = chipTheme;
        this.platform = platform;
        this.materialTapTargetSize = materialTapTargetSize;
        this.pageTransitionsTheme = pageTransitionsTheme;
        this.colorScheme = colorScheme;
        this.dialogTheme = dialogTheme;
        this.typography = typography;
    }

    //TODO
    static fromJson(mapObj) {

        if (mapObj == null || mapObj == undefined) {
            return null;
        }

        let obj = new ThemeData();

        for (var p in mapObj) {
            if (mapObj.hasOwnProperty(p)) {
                let v = mapObj[p];;
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

    }
}


module.exports = {
    //全局
    g_jsFlutterApp,
    runApp,
    invokeFlutterFunction,
    //class 定义
    MXNativeJSFlutterAppProxy,
    MXJSLog,
    MXJSCallbackMgr,
    MXCreateCallbackID,
    MXInvokeCallback,
    MXJSFlutterApp,
    MXJSWidget,
    MediaQuery,
    MediaQueryData,
    Theme,
    ThemeData,
    MXJSStatelessWidget,


};