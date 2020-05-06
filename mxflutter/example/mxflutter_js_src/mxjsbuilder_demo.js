'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__material__app$46dart = require('packages/flutter/src/material/app.dart');
const app = packages__flutter__src__material__app$46dart.src__material__app;
const packages__flutter__src__material__icon_button$46dart = require('packages/flutter/src/material/icon_button.dart');
const theme_data = packages__flutter__src__material__icon_button$46dart.src__material__theme_data;
const scaffold = packages__flutter__src__material__icon_button$46dart.src__material__scaffold;
const app_bar = packages__flutter__src__material__icon_button$46dart.src__material__app_bar;
const theme = packages__flutter__src__material__icon_button$46dart.src__material__theme;
const floating_action_button = packages__flutter__src__material__icon_button$46dart.src__material__floating_action_button;
const packages__flutter__src__material__colors$46dart = require('packages/flutter/src/material/colors.dart');
const colors = packages__flutter__src__material__colors$46dart.src__material__colors;
const packages__flutter__src__widgets__widget_span$46dart = require('packages/flutter/src/widgets/widget_span.dart');
const framework = packages__flutter__src__widgets__widget_span$46dart.src__widgets__framework;
const text = packages__flutter__src__widgets__widget_span$46dart.src__widgets__text;
const basic = packages__flutter__src__widgets__widget_span$46dart.src__widgets__basic;
const binding = packages__flutter__src__widgets__widget_span$46dart.src__widgets__binding;
const packages__flutter__src__rendering__flex$46dart = require('packages/flutter/src/rendering/flex.dart');
const flex = packages__flutter__src__rendering__flex$46dart.src__rendering__flex;
const packages__flutter__src__widgets__icon$46dart = require('packages/flutter/src/widgets/icon.dart');
const icon = packages__flutter__src__widgets__icon$46dart.src__widgets__icon;
const packages__flutter__src__material__icons$46dart = require('packages/flutter/src/material/icons.dart');
const icons = packages__flutter__src__material__icons$46dart.src__material__icons;
var main = Object.create(dart.library);
var VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
var JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
const CT = Object.create(null);
var L0 = "package:jsbuild_test/main.dart";
main.MyApp = class MyApp extends framework.StatelessWidget {
  build(context) {
    return new app.MaterialApp.new({title: "Flutter Demo", theme: theme_data.ThemeData.new({primarySwatch: colors.Colors.blue, visualDensity: theme_data.VisualDensity.adaptivePlatformDensity}), home: new main.MyHomePage.new({title: "MXJSBuilder JS Page Demo"})});
  }
};
(main.MyApp.new = function() {
  main.MyApp.__proto__.new.call(this);
  ;
}).prototype = main.MyApp.prototype;

dart.setLibraryUri(main.MyApp, L0);
var title$ = dart.privateName(main, "MyHomePage.title");
main.MyHomePage = class MyHomePage extends framework.StatefulWidget {
  get title() {
    return this[title$];
  }
  set title(value) {
    super.title = value;
  }
  createState() {
    return new main._MyHomePageState.new();
  }
};
(main.MyHomePage.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let title = opts && 'title' in opts ? opts.title : null;
  this[title$] = title;
  main.MyHomePage.__proto__.new.call(this, {key: key});
  ;
}).prototype = main.MyHomePage.prototype;

var _counter = dart.privateName(main, "_counter");
var _incrementCounter = dart.privateName(main, "_incrementCounter");
main._MyHomePageState = class _MyHomePageState extends framework.State$(main.MyHomePage) {
  [_incrementCounter]() {
    this.setState(dart.fn(() => {
      this[_counter] = dart.notNull(this[_counter]) + 1;
    }, VoidToNull()));
  }
  build(context) {
    return new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: new text.Text.new(this.widget.title)}), body: new basic.Center.new({child: new basic.Column.new({mainAxisAlignment: flex.MainAxisAlignment.center, children: JSArrayOfWidget().of([new text.Text.new("This example is compiled using mxjsbuilder."), new text.Text.new("You have pushed the button this many times:"), new text.Text.new(dart.str(this[_counter]), {style: theme.Theme.of(context).textTheme.headline4})])})}), floatingActionButton: new floating_action_button.FloatingActionButton.new({onPressed: dart.bind(this, _incrementCounter), tooltip: "Increment", child: new icon.Icon.new(icons.Icons.add)})});
  }
};
(main._MyHomePageState.new = function() {
  this[_counter] = 0;
  main._MyHomePageState.__proto__.new.call(this);
  ;
}).prototype = main._MyHomePageState.prototype;


// Exports:
exports.main = main;

//# sourceMappingURL=main.dart.lib.js.map
