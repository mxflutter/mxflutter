//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

let {
    runApp,
    MXJSFlutterApp,
    MXJSWidget,
    Scaffold,
    Color,
    AppBar,
    Text,
    ListView,
    ListTile,
    Icon,
    IconData

} = require("js_flutter.js");

//let {JSPestoPage} = require("./pesto.js");


//业务代码

class JSStudiesPage extends MXJSWidget {
    constructor() {
        super("JSStudiesPage");

    }


    build(buildOwner) {

        let demoList = new ListView({

            children: [new ListTile({
                leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' }), { color: new Color(0xFFFF9800) }),
                trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                title: new Text('Pesto'),
                subtitle: new Text('Simple recipe browser'),
                onTap: function () {
                    //this.navigatorPush(new JSPestoPage);
                }
            }),

            new ListTile({
                leading: new Icon(new IconData(0xe06d, { fontFamily: 'MaterialIcons' })),
                trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                title: new Text('Shrine'),
                subtitle: new Text('Basic shopping app'),
                onTap: function () {

                }
            }),
            new ListTile({
                leading: new Icon(new IconData(0xe06d, { fontFamily: 'MaterialIcons' })),
                trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                title: new Text('Contact profile'),
                subtitle: new Text('Address book entry with a flexible appbar'),
                onTap: function () {

                }
            }),
            new ListTile({
                leading: new Icon(new IconData(0xe06d, { fontFamily: 'MaterialIcons' })),
                trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                title: new Text('Animation'),
                subtitle: new Text('Section organizer'),
                onTap: function () {

                }
            }),
            new ListTile({
                leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' })),
                trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                title: new Text('More Material'),
                subtitle: new Text('More Material UI Demo'),
                onTap: function () {

                }
            }),
            ]
        });

        let w = new Scaffold({
            appBar: new AppBar({
                title: new Text("Studies Demo")
            }),
            body: demoList
        });


        return w;
    }



}

module.exports = { JSStudiesPage };

//测试代码，修改Widget name
//在VSCode 直接运行测试JS代码正确性,在app无任何效果
IDERunFileTestWidget(JSStudiesPage);

//拷贝一份到目标文件
function IDERunFileTestWidget(TestPage) {
    if (g_isNativeEnvironment) {
        return;
    }
    class AppTest extends MXJSFlutterApp {
        constructor() {
            super("app_test", "initRouteName");
        }

        //子类重写
        //flutter->js 用于路由跳转
        //return MXJSWidget subclass
        createJSWidgetWithName(pageName) {
            let w = new TestPage;
            return w;
        }
    }

    let app = new AppTest;
    runApp(app);

    app.runWithPageName();
};
