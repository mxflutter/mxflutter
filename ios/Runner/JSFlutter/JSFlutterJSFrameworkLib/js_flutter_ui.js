//VSCode Run support=====================================================================================
//为便于在JS IDE如VSCode，webStorm里脱离APP环境执行JS，以快速验证JS代码正确性
//如果不在App环境，Native接口重定向到JS同名函数打印调用
//jsFlutterRequire 转调Node运行环境中的require
//只有JSFlutterJSFrameworkLib中的文件，才能用这个头
let jsFlutterRequire = typeof mxRequire != "undefined" ?mxRequire:require;
//VSCode Run support end ================================================================================

//js_flutter_ui.js 正式开始，😝

let frameworkExports = jsFlutterRequire("./js_flutter_framework.js");
let basicExports = jsFlutterRequire("./js_flutter_basic_types.js");
let materialExports = jsFlutterRequire("./js_flutter_material.js");
let layoutExports = jsFlutterRequire("./js_flutter_layout.js");

let textExports = jsFlutterRequire("./js_flutter_text.js");
let imageExports = jsFlutterRequire("./js_flutter_image.js");
let animationExports = jsFlutterRequire("./js_flutter_animation.js");


module.exports = {
    ...frameworkExports,
    ...basicExports,
    ...materialExports,
    ...layoutExports,
    ...textExports,
    ...imageExports,
    ...animationExports,};
