//VSCode Run support=====================================================================================
//为便于在JS IDE如VSCode，webStorm里脱离APP环境执行JS，以快速验证JS代码正确性
//用g_isNativeEnvironment检查是否在App环境，
//如果不在App环境，Native接口重定向到JS同名函数打印调用
//jsFlutterRequire 转调Node运行环境中的require
//如果不能运行，核对下js_ide_node_run_support.js文件中jsFlutterLibDir 相对路径
function calcJSFrameworkFilePath(filePath) {

    //如果在IDE里不能运行，核对下这个相对路径
    let jsFlutterLibDir = "./../../../ios/Runner/JSFlutter/JSFlutterJSFrameworkLib/";
    let libFileSet = new Set([
        "js_flutter_framework.js",
        "js_flutter_ui.js",
        "js_flutter_basic_types.js",
        "js_flutter_material.js",
        "js_flutter_animation.js",
    ]);

    if (libFileSet.has(filePath)) {
        filePath = jsFlutterLibDir + filePath;
    }

    return filePath;
}

module.exports = {calcJSFrameworkFilePath};