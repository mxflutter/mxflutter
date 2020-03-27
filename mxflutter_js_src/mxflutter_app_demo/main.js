
let {
    MXJSLog,
    runApp,
    MXJSFlutterApp
} = require("js_flutter_framework.js");

//JSAPP 全局变量
var currentJSApp = null


//从MXJSFlutterApp继承自己的App类
class MyApp extends MXJSFlutterApp {

    ///子类重写,当Flutter通过
    ///MXJSFlutter.getInstance().navigatorPushWithName("JSWidgetHomePage", ...);push页面时，
    ///在这里根据widgetName 创建你自己的Widget
    ///@overrite
    createJSWidgetWithName(widgetName) {

        switch (widgetName) {
            case "JSWidgetHomePage": {
                let homeWidget = require("home_page.js");
                let widget = new homeWidget.JSWidgetHomePage(widgetName);
                return widget;
            }
            case "XXXYouPage": {
                let homeWidget = require("home_page.js");
                let widget = new homeWidget.JSWidgetHomePage(widgetName);
                return widget;
            }
        }


    }
}


function main(args) {

    MXJSLog.log("main() start up ");

    let app = new MyApp;
    runApp(app);

}



