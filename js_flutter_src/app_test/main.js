//VSCode Run support=====================================================================================
//为便于在JS IDE如VSCode，webStorm里脱离APP环境执行JS，以快速验证JS代码正确性
//用g_isNativeEnvironment检查是否在App环境，
//如果不在App环境，Native接口重定向到JS同名函数打印调用
//jsFlutterRequire 转调Node运行环境中的require
//真是为了JS菜鸟就是我 操碎了心
//如果不能运行，核对下js_ide_node_run_support.js文件中jsFlutterLibDir 相对路径
//新建文件拷贝这个头
var g_isNativeEnvironment = typeof JSAPI_require != "undefined" ? true : false;
function jsFlutterRequire(file) {
    if (!g_isNativeEnvironment) {
        console.log("[JS]-MXJSFlutter:: jsFlutterRequire", ...arguments);
        let { calcJSFrameworkFilePath } = require("./js_ide_node_run_support.js");
        return require(calcJSFrameworkFilePath(file));
    }
    return mxRequire(file);
}
//VSCode Run support end ================================================================================

//main.js 正式开始，😝


var {
    MXJSLog,
    runApp,
    MXJSFlutterApp,
} = jsFlutterRequire("js_flutter_framework.js");

var {
    JSWidgetHomePage,
} = jsFlutterRequire("./home_page.js");



class AppTest extends MXJSFlutterApp {
    constructor() {
        super("app_test", "initRouteName");
    }

    //子类重写
    //flutter->js 用于路由跳转
    //return MXJSWidget subclass
    createJSWidgetWithName(pageName) {
        let w = new JSWidgetHomePage;
        return w;
    }
}


function main(pageName) {

    MXJSLog.log("main:pageName" + pageName);

    let app = new AppTest;
    runApp(app);

    //先不要显示页面,等待dart调用，显示对应js页面
    //app.runWithPageName(pageName);

}

main("");



