
var {
    MXJSLog,
    runApp,
    MXJSFlutterApp
} = require("js_flutter_framework.js");

var {
    JSWidgetHomePage
} = require("./home_page.js");

var currentJSApp = null

class AppTest extends MXJSFlutterApp {
    constructor() {
        super("app_test", "initRouteName");
    }

    //子类重写
    //flutter->js 用于路由跳转
    //return MXJSBaseWidget subclass
    createJSWidgetWithName(pageName) {
        let w = new JSWidgetHomePage();
        return w;
    }
}


function main(pageName) {

    MXJSLog.log("main:pageName" + pageName);

    let app = new AppTest();
    runApp(app);

    //先不要显示页面,等待dart调用，显示对应js页面
    //app.runWithPageName(pageName);

}

main("");

