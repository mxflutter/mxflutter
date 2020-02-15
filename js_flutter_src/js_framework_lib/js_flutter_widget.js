//VSCode Run support=====================================================================================
//为便于在JS IDE如VSCode，webStorm里脱离APP环境执行JS，以快速验证JS代码正确性
//如果不在App环境，Native接口重定向到JS同名函数打印调用
//jsFlutterRequire 转调Node运行环境中的require
//只有js_framework_lib中的文件，才能用这个头
let jsFlutterRequire = typeof mxRequire != "undefined" ? mxRequire : require;
//VSCode Run support end ================================================================================

//js_flutter_material.js 正式开始，😝
const { Placeholder } = jsFlutterRequire("./widgets/js_flutter_placeholder.js");


module.exports = {
  Placeholder,
};
