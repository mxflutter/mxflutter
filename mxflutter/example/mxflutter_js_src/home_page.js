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
class MXJSWidgetHomePage extends MXJSStatelessWidget {
    constructor() {
        super("MXJSWidgetHomePage");
    }

    build(context) {

        let w = new Scaffold({
            appBar: new AppBar({
                title: new Text("MXFlutter Examples")
            }),
            body: new ListView({

                children: [
                    new ListTile({
                        leading: new Icon(new IconData(0xe06d, { fontFamily: 'MaterialIcons' })),
                        trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                        title: new Text('JS Page Demo'),
                        subtitle: new Text('直接使用JS开发'),
                        onTap: function () {

                            let demo = require("./js_dev_demo.js");

                            Navigator.push(context, new MaterialPageRoute({
                                builder: function (context) {
                                    return new demo.MyHomePage({ title: "JS Page Demo" });
                                }
                            }))
                        }
                    })

                ]
            })
        });

        return w;
    }

    sectionTitle(context, title) {
        return new SectionTitle(title);
    }
}

module.exports = { MXJSWidgetHomePage };
