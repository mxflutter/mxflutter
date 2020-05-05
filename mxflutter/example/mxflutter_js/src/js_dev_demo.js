//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

let {
    MXJSStatelessWidget,
    MXJSStatefulWidget,
    MXJSWidgetState,
    MaterialApp,
    Scaffold,
    ThemeData,
    Colors,
    AppBar,
    Text,
    Center,
    Icon,
    Column,
    FloatingActionButton,
    Icons
} = require("js_flutter.js");


class MyPage extends MXJSStatelessWidget {

    //@override
    build(context) {
        return new MaterialApp({
            title: 'Flutter Demo',
            theme: new ThemeData({

                primarySwatch: Colors.blue
            }),
            home: new MyHomePage( 'MXFlutter JS Demo' ),
        });
    }
}

class MyHomePage extends MXJSStatefulWidget {
    constructor(title,{ key } = {}) {
        super(title,{ key});
        this.title = title;
    }

    //@override
    createState() {
        return new _MyHomePageState();
    }
}

class _MyHomePageState extends MXJSWidgetState {

    constructor() {
        super();
        this._counter = 0;
    }

    _incrementCounter() {
        this.setState(function () {
            this._counter++;
        }.bind(this));
    }

    ///@override
    build(context) {
        return new Scaffold({
            appBar: new AppBar({
                title: new Text(this.widget.title),
            }),
            body: new Center({
                child: new Column({
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        new Text(
                            'You have pushed the button this many times:',
                        ),
                        new Text(
                             String(this._counter),
                        ),
                    ],
                }),
            }),
            floatingActionButton: new FloatingActionButton({
                onPressed: this._incrementCounter.bind(this),
                tooltip: 'Increment',
                child: new Icon(Icons.add),
            }), // This trailing comma makes auto-formatting nicer for build methods.
        });
    }
}

exports.MyPage = MyPage;
