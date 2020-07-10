//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

let {
    MXJSWidgetState,
    MXJSStatefulWidget,
    Scaffold,
    Color,
    AppBar,
    Text,
    ListView,
    ListTile,
    Icon,
    IconData,
    EdgeInsets,
    Padding,
    MaterialPageRoute,
    Navigator,
    Scrollbar,
    MXJSLog,
    Duration,
    RouteSettings,
    CupertinoPageRoute,
    PageRouteBuilder,
    SlideTransition,
    FadeTransition,
} = require("js_flutter.js");
let {
    JSPageRouteDemoPage
} = require("./page_route/page_route_demo.js");

class JSPageRoutePage extends MXJSStatefulWidget {
    constructor() {
        super('JSPageRoutePage');
    }

    createState() {
        return new JSPageRoutePageState(this);
    }
}

class JSPageRoutePageState extends MXJSWidgetState {
    build(context) {
        let w = new Scaffold({
            appBar: new AppBar({
                title: new Text("Material Demo")
            }),
            body: new ListView({
                children: [
                    new Padding({
                        padding: EdgeInsets.all(1.0)
                    }),
                    new ListTile({
                        leading: new Icon(new IconData(0xe39d, {
                            fontFamily: 'MaterialIcons'
                        }), {
                            color: new Color(0xFFFF9800)
                        }),
                        trailing: new Icon(new IconData(0xe5df, {
                            fontFamily: 'MaterialIcons',
                            matchTextDirection: true
                        })),
                        title: new Text('MaterialPageRoute'),
                        subtitle: new Text('with RouteSettings'),
                        onTap: function () {
                            Navigator.push(context, new MaterialPageRoute({
                                builder: function (context) {
                                    return new JSPageRouteDemoPage;
                                },
                                maintainState: false,
                                fullscreenDialog: false,
                                settings: new RouteSettings({
                                    name: "page_route_material",
                                    args: {
                                        "from": "page_route"
                                    }
                                }),
                            }))
                        }
                    }),
                    new ListTile({
                        leading: new Icon(new IconData(0xe39d, {
                            fontFamily: 'MaterialIcons'
                        }), {
                            color: new Color(0xFFFF9800)
                        }),
                        trailing: new Icon(new IconData(0xe5df, {
                            fontFamily: 'MaterialIcons',
                            matchTextDirection: true
                        })),
                        title: new Text('CupertinoPageRoute'),
                        subtitle: new Text('with RouteSettings'),
                        onTap: function () {
                            Navigator.push(context, new CupertinoPageRoute({
                                builder: function (context) {
                                    return new JSPageRouteDemoPage;
                                },
                                maintainState:false,
                                fullscreenDialog:false,
                                settings: new RouteSettings({
                                    name: "page_route_cupertino",
                                    args: {
                                        "from": "page_route"
                                    }
                                }),
                                title:"I'm a title",
                            }))
                        }
                    }),
                    new ListTile({
                        leading: new Icon(new IconData(0xe39d, {
                            fontFamily: 'MaterialIcons'
                        }), {
                            color: new Color(0xFFFF9800)
                        }),
                        trailing: new Icon(new IconData(0xe5df, {
                            fontFamily: 'MaterialIcons',
                            matchTextDirection: true
                        })),
                        title: new Text('PageRouteBuilder'),
                        subtitle: new Text('with pageBuilder && transitionsBuilder && RouteSettings'),
                        onTap: function () {
                               Navigator.push(context, new PageRouteBuilder({
                                   pageBuilder: function (context, animation, secondaryAnimation) {
                                    // return new FadeTransition({
                                    //     opacity: animation,
                                    //     child: new JSPageRouteDemoPage,
                                    // })
                                      return  new JSPageRouteDemoPage;
                                   },
                                   maintainState: false,
                                   settings: new RouteSettings({
                                       name: "page_route_builder",
                                       args: {
                                           "from": "page_route"
                                       }
                                   }),
                                   transitionDuration: new Duration({
                                       milliseconds: 2000
                                   }),
                                   transitionsBuilder: function (context, animation, secondaryAnimation, child) {
                                    return new FadeTransition({
                                        opacity: animation,
                                        child: child,
                                    })
                                   },
                               }))
                        }
                    }),
                ]
            })
        });

        return w;
    }

    navigatorPush(jsWidget) {

    }
}

module.exports = {
    JSPageRoutePage
};