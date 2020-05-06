//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

let {
    runApp,
    MXJSFlutterApp,
    MXJSStatelessWidget,
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

//业务代码
class MXJSWidgetHomePage extends MXJSStatefulWidget {
    constructor() {
        super("MXJSWidgetHomePage");

        this.data = "biz data";
        this.count = 0;
    }

    createState() {
        return new MXJSWidgetHomePageState(this);
    }
}

class MXJSWidgetHomePageState extends MXJSWidgetState {

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
                        let { ExamplesPage } = require("./app_demo/examples/index.js");

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
                        let { JSMaterialPage } = require("./app_demo/material.js");
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

                        let { JSZhiHuPage } = require("./app_demo/zhihu/zhihu.js");

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

                        let list_view = require("./app_demo/listview_example.js");

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

                        let { PlatformExamplesPage } = require("./app_demo/platform/index.js");

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

                        let pesto = require("./app_demo/pesto.js");

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
                        let { JSContactPage } = require("./app_demo/contact.js");
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
                       let { JSAnimationPage } = require("./app_demo/animation.js");
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
        return new HomeSectionTitle(title);
    }
}

class HomeSectionTitle extends MXJSStatelessWidget {
  constructor(title,{key}={}){
    super("HomeSectionTitle",{key:key});
    this.title = title;
  }

  build(context){
    return new Container({
      padding: EdgeInsets.all(10.0),
      color: Theme.of(context).primaryColor,
      child: new Row({
        children: [
          new Icon(new IconData(0xe80e, { fontFamily: 'MaterialIcons' }), { size: 20, color: new Color(0xFFFFFFFF) }),
          new Padding({ padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0) }),
          new Text(this.title, {
            textAlign: TextAlign.start,
            style:new TextStyle({
              fontSize: 16,
              fontWeight: Theme.of(context).textTheme.title.fontWeight,
              color:Colors.white
            })
          })
        ]
      })
    });
  }
}

module.exports = { MXJSWidgetHomePage };
