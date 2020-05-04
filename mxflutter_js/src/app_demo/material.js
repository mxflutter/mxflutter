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
    Navigator
} = require("js_flutter.js");


let { JSBottomAPPBarDemo } = require("./material/bottom_app_bar_demo.js");
let { JSBottomNavigationDemo } = require("./material/bottom_navigation_demo.js");
let { JSEasyUIDemo } = require("./material/easy_ui_demo.js");
let { JSTabsDemo } = require("./material/tabs_demo.js");

class JSMaterialPage extends MXJSStatefulWidget {
    constructor() {
        super('JSMaterialPage');
    }

    createState() {
        return new JSMaterialPageState(this);
    }
}

class JSMaterialPageState extends MXJSWidgetState {
    build(context) {
        let w = new Scaffold({
            appBar: new AppBar({
                title: new Text("Material Demo")
            }),
            body: new ListView({
                children: [
                    new Padding({ padding: EdgeInsets.all(1.0) }),

                    new ListTile({
                        leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' }), { color: new Color(0xFFFF9800) }),
                        trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                        title: new Text('Bottom app bar'),
                        subtitle: new Text('Optional floating action button notch'),
                        onTap: function () {

                            Navigator.push(context, new MaterialPageRoute({
                                builder: function (context) {
                                    return new JSBottomAPPBarDemo;
                                }
                            }))
                        }
                    }),

                    // new ListTile({
                    //     leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' }), { color: new Color(0xFFFF9800) }),
                    //     trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    //     title: new Text('Bottom navigation——动画需完善才能出现'),
                    //     subtitle: new Text('Bottom navigation with cross-fading views'),
                    //     onTap: function () {

                    //         Navigator.push(context, new MaterialPageRoute({
                    //             builder: function (context) {
                    //                 return new JSBottomNavigationDemo;
                    //             }
                    //         }))

                    //     }
                    // }),

                    new ListTile({
                        leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' }), { color: new Color(0xFFFF9800) }),
                        trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                        title: new Text('Easy UI'),
                        subtitle: new Text('Easy UI usage'),
                        onTap: function () {

                            Navigator.push(context, new MaterialPageRoute({
                                builder: function (context) {
                                    return new JSEasyUIDemo;
                                }
                            }))
                        }
                    }),

                    new ListTile({
                        leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' }), { color: new Color(0xFFFF9800) }),
                        trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                        title: new Text('Tabs'),
                        subtitle: new Text('Tabs with independently scrollable views'),
                        onTap: function () {

                            Navigator.push(context, new MaterialPageRoute({
                                builder: function (context) {
                                    return new JSTabsDemo;
                                }
                            }))
                        }
                    })
                ]
            })
        });

        return w;
    }

    navigatorPush(jsWidget) {

    }
}

module.exports = { JSMaterialPage };
