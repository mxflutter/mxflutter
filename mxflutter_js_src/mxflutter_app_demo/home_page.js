//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

let {
    runApp,
    MXJSFlutterApp,
    MXJSStatefulWidget,
    MXJSWidgetState,
    Scaffold,
    Container,
    Color,
    Colors,
    AppBar,
    Text,
    ListView,
    ListTile,
    Icon,
    IconData,
    EdgeInsets,
    TextAlign,
    TextStyle,
    Row,
    Padding,
    Theme,
    Navigator,
    MaterialPageRoute,
    Scrollbar,
    MXJSLog,
} = require("js_flutter.js");

const { SectionTitle } = require("./component/section_title.js");

let { JSContactPage } = require("./contact.js");
let { JSAnimationPage } = require("./animation.js");
let { JSMaterialPage } = require("./material.js");


//let { ExamplesPage } = require("./examples/index.js");
let { JSCupertinoPage } = require("./cupertino.js");

const dart_sdk = require("dart_sdk");
const dart = dart_sdk.dart;
const async = dart_sdk.async;


//业务代码
class JSWidgetHomePage extends MXJSStatefulWidget {
    constructor() {
        super("JSWidgetHomePage");

        this.data = "biz data";
        this.count = 0;
    }

    createState() {
        return new JSWidgetHomePageState(this);
    }
}

class JSWidgetHomePageState extends MXJSWidgetState {

    build(context) {

        let demoList = new ListView({

            children: [

                this.sectionTitle(context, "App Demo"),
                new ListTile({
                    leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' }), { color: Theme.of(context).primaryColor }),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('Examples'),
                    subtitle: new Text('All examples'),
                    onTap: function () {

                        //点击时懒加载页面
                        let { ExamplesPage } = require("./examples/index.js");

                        Navigator.push(context, new MaterialPageRoute({
                            builder: function (context) {
                                return new ExamplesPage;
                            }
                        }))


                    }
                }),
                new ListTile({
                    leading: new Icon(new IconData(0xe06d, { fontFamily: 'MaterialIcons' })),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('Material'),
                    subtitle: new Text('Material UI Demo'),
                    onTap: function () {
                        Navigator.push(context, new MaterialPageRoute({
                            builder: function (context) {
                                return new JSMaterialPage;
                            }
                        }))
                    }
                }),
                new ListTile({
                    leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' }), { color: Theme.of(context).primaryColor }),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('ZhiHu'),
                    subtitle: new Text('ZhiHu high copy'),
                    onTap: function () {

                        let { JSZhiHuPage } = require("./zhihu/zhihu.js");

                        Navigator.push(context, new MaterialPageRoute({
                            builder: function (context) {
                                return new JSZhiHuPage;
                            }
                        }))
                    }
                }),

                new ListTile({
                    leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' }), { color: Theme.of(context).primaryColor }),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('网易新闻 ListViewDemo'),
                    subtitle: new Text('ListView ,Message Channel, Pull to refresh'),

                    onTap: function () {

                        let list_view = require("./listview_example.js");

                        Navigator.push(context, new MaterialPageRoute({
                            builder: function (context) {
                                return new list_view.ListViewDemo;
                            }
                        }))
                    }
                }),

                new ListTile({
                    leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' }), { color: Theme.of(context).primaryColor }),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('PlatformAPIExamples'),
                    subtitle: new Text('Network/Dio/MessageChannel'),

                    onTap: function () {

                        let { PlatformExamplesPage } = require("./platform/index.js");

                        Navigator.push(context, new MaterialPageRoute({
                            builder: function (context) {
                                return new PlatformExamplesPage;
                            }
                        }))
                    }
                }),

                new ListTile({
                    leading: new Icon(new IconData(0xe06d, { fontFamily: 'MaterialIcons' })),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('Pesto'),
                    subtitle: new Text('Simple recipe browser'),

                    onTap: function () {

                        let pesto = require("./pesto.js");

                        Navigator.push(context, new MaterialPageRoute({
                            builder: function (context) {
                                return new pesto.JSPestoPage;
                            }
                        }))
                    }
                }),
                new ListTile({
                    leading: new Icon(new IconData(0xe0d0, { fontFamily: 'MaterialIcons' }), { color: Theme.of(context).primaryColor }),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('Contact profile'),
                    subtitle: new Text('Address book entry with a flexible appbar'),

                    onTap: function () {
                        Navigator.push(context, new MaterialPageRoute({
                            builder: function (context) {
                                return new JSContactPage;
                            }
                        }))
                    }
                }),
                new ListTile({
                    leading: new Icon(new IconData(0xe06d, { fontFamily: 'MaterialIcons' })),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('Animation'),
                    subtitle: new Text('Section organizer'),
                    onTap: function () {
                        Navigator.push(context, new MaterialPageRoute({
                            builder: function (context) {
                                return new JSAnimationPage;
                            }
                        }))
                    }
                }),
                this.sectionTitle(context, "性能测试"),
                new ListTile({
                    leading: new Icon(new IconData(0xe06d, { fontFamily: 'MaterialIcons' })),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('Profile'),
                    subtitle: new Text('性能测试 performance profiling'),
                    onTap: function () {
                      

                        let { ProfileExamplesPage } = require("./profile/index.js");

                        Navigator.push(context, new MaterialPageRoute({
                            builder: function (context) {
                                return new ProfileExamplesPage;
                            }
                        }))
                    }
                })
                
              
            ]
        });

        let w = new Scaffold({
            appBar: new AppBar({
                title: new Text("MXFlutter Examples")
            }),
            body: demoList
        });


        return w;
    }

    sectionTitle(context, title) {
        return new SectionTitle(title);
    }
}

module.exports = { JSWidgetHomePage };
