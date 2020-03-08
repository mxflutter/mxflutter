
let {
    MXJSLog,
    runApp,
    MXJSFlutterApp
} = require("js_flutter_framework.js");

//JSAPP 全局变量
var currentJSApp = null

function main(args) {

    MXJSLog.log("main() start up ");

    let app = new MXJSFlutterApp();
    runApp(app);

}



