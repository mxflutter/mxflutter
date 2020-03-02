
var {
    MXJSLog,
    runApp,
    MXJSFlutterApp
} = require("js_flutter_framework.js");

var currentJSApp = null

function main(pageName) {

    MXJSLog.log("main:pageName" + pageName);

    let app = new MXJSFlutterApp();
    runApp(app);

    //先不要显示页面,等待dart调用，显示对应js页面
    //app.runWithPageName(pageName);
}

main("");

