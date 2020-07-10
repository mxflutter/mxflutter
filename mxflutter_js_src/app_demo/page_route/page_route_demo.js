//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

let {
  MXJSLog,
  runApp,
  MXJSFlutterApp,
  MXJSWidgetState,
  MXJSStatefulWidget,
  MXJSStatelessWidget,
  Scaffold,
  Container,
  Center,
  AppBar,
  Text,
  Icon,
  IconData,
  FloatingActionButton,
  Image,
  Animation,
  Tween,
  AnimationController,
  AnimatedBuilder,
  Duration,
  AnimationStatus,
  ModalRoute,
  Column,
  MainAxisAlignment,
  CrossAxisAlignment,
} = require("js_flutter.js");


//业务代码

class JSPageRouteDemoPage extends MXJSStatefulWidget {
  constructor() {
    super('JSPageRouteDemoPage');
  }

  createState() {
    return new JSPageRouteDemoState(this);
  }
}

class JSPageRouteDemoState extends MXJSWidgetState {
  constructor() {
    super();
    this.count = 0;
  }

  build(context) {
    let name = ModalRoute.of(context).settings.name;
    let from = ModalRoute.of(context).settings.args['from'];
    let w = new Scaffold({
      appBar: new AppBar({
        title: new Text("PageRoute Demo")
      }),
      floatingActionButton: new FloatingActionButton({
        child: new Icon(new IconData(0xe145, {
          fontFamily: 'MaterialIcons',
          semanticLabel: 'Action'
        })),
        onPressed: function () {
          this.setState(function () {
            this.count += 30;
          }.bind(this));
        }.bind(this)
      }),
      body: new Center({
        child: new Text("settings.name:" + name + "\nsettings.args[\'from\']:" + from + "\ncount:" + this.count),
      }),
    });
    return w;
  }
}
module.exports = {
  JSPageRouteDemoPage
};