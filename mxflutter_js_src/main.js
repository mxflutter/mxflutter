//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

let {
    MXJSLog,
    runApp,
    MXJSFlutterApp
} = require("js_flutter_framework.js");


//从MXJSFlutterApp继承自己的App类
class MyApp extends MXJSFlutterApp {

    ///子类重写,当Flutter通过
    ///MXJSFlutter.getInstance().navigatorPushWithName("JSWidgetHomePage", ...);push页面时，
    ///在这里根据widgetName 创建你自己的Widget
    ///@overrite
    createJSWidgetWithName(widgetName) {

        switch (widgetName) {
            case "MXJSWidgetHomePage": {
                let homeWidget = require("home_page.js");
                let widget = new homeWidget.MXJSWidgetHomePage(widgetName);
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


function main(releaseMode) {

    if(releaseMode === "release"){
        MXJSLog.setLogLev(MXJSLog.LogLevError);
    }

    MXJSLog.log("main() start up ");

    let app = new MyApp;
    runApp(app);

}



