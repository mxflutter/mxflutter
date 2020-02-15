//VSCode Run support=====================================================================================
//为便于在JS IDE如VSCode，webStorm里脱离APP环境执行JS，以快速验证JS代码正确性
//用g_isNativeEnvironment检查是否在App环境，
//如果不在App环境，Native接口重定向到JS同名函数打印调用
//jsFlutterRequire 转调Node运行环境中的require
//真是为了JS菜鸟就是我 操碎了心
//如果不能运行，核对下js_ide_node_run_support.js文件中jsFlutterLibDir 相对路径
//新建文件拷贝这个头
let g_isNativeEnvironment = typeof JSAPI_require != "undefined" ? true : false;
function jsFlutterRequire(file) {
  if (!g_isNativeEnvironment) {
    console.log("[JS]-MXJSFlutter:: jsFlutterRequire", ...arguments);
    let { calcJSFrameworkFilePath } = require("./js_ide_node_run_support.js");
    return require(calcJSFrameworkFilePath(file));
  }
  return mxRequire(file);
}
//VSCode Run support end ================================================================================

let {
  DartClass,
  FlutterWidget,
  FlutterCallArgs,
  Color,
} = jsFlutterRequire("./js_flutter_basic_types.js");

let {
  invokeFlutterFunction,
  invokeCommonFlutterFunction,
} = jsFlutterRequire("./js_flutter_framework.js");

let {
  Duration,
} = jsFlutterRequire("./js_flutter_animation.js");



class Placeholder extends FlutterWidget {
  constructor({
    key,
    color,
    strokeWidth,
    fallbackWidth,
    fallbackHeight,
  }={
    color: new Color(0xFF455A64),
    strokeWidth : 2.0,
    fallbackWidth : 400.0,
    fallbackHeight : 400.0,
  }){
    super();
    this.key = key;
    this.color = color;
    this.strokeWidth = strokeWidth;
    this.fallbackWidth = fallbackWidth;
    this.fallbackHeight = fallbackHeight;
  }
}

module.exports = {
  Placeholder,
};

