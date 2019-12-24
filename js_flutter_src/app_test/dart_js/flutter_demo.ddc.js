'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__material = require('packages/flutter/material');
const app = packages__flutter__material.src__material__app;
const theme_data = packages__flutter__material.src__material__theme_data;
const colors = packages__flutter__material.src__material__colors;
const scaffold = packages__flutter__material.src__material__scaffold;
const app_bar = packages__flutter__material.src__material__app_bar;
const theme = packages__flutter__material.src__material__theme;
const floating_action_button = packages__flutter__material.src__material__floating_action_button;
const icons = packages__flutter__material.src__material__icons;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const icon = packages__flutter__src__widgets__actions.src__widgets__icon;
const binding = packages__flutter__src__widgets__actions.src__widgets__binding;
const packages__flutter__src__rendering__animated_size = require('packages/flutter/src/rendering/animated_size');
const flex = packages__flutter__src__rendering__animated_size.src__rendering__flex;
const main = Object.create(dart.library);
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
const CT = Object.create(null);
main.MyApp = class MyApp extends framework.StatelessWidget {
  build(context) {
    return new app.MaterialApp.new({title: "Flutter Demo", theme: theme_data.ThemeData.new({primarySwatch: colors.Colors.blue}), home: new main.MyHomePage.new({title: "Flutter Demo Home Page", $creationLocationd_0dea112b090073317d4: ""}), $creationLocationd_0dea112b090073317d4: ""});
  }
};
(main.MyApp.new = function(opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  main.MyApp.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = main.MyApp.prototype;
const title$ = dart.privateName(main, "MyHomePage.title");
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
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[title$] = title;
  main.MyHomePage.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = main.MyHomePage.prototype;
const _counter = dart.privateName(main, "_counter");
const _incrementCounter = dart.privateName(main, "_incrementCounter");
main._MyHomePageState = class _MyHomePageState extends framework.State$(main.MyHomePage) {
  [_incrementCounter]() {
    this.setState(dart.fn(() => {
      this[_counter] = dart.notNull(this[_counter]) + 1;
    }, VoidToNull()));
  }
  build(context) {
    return new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: new text.Text.new("测试标题", {$creationLocationd_0dea112b090073317d4: ""}), $creationLocationd_0dea112b090073317d4: ""}), body: new basic.Center.new({child: new basic.Column.new({mainAxisAlignment: flex.MainAxisAlignment.center, children: JSArrayOfWidget().of([new text.Text.new("You have pushed the button this many times:", {$creationLocationd_0dea112b090073317d4: ""}), new text.Text.new(dart.str(this[_counter]), {style: theme.Theme.of(context).textTheme.display1, $creationLocationd_0dea112b090073317d4: ""})]), $creationLocationd_0dea112b090073317d4: ""}), $creationLocationd_0dea112b090073317d4: ""}), floatingActionButton: new floating_action_button.FloatingActionButton.new({onPressed: dart.bind(this, _incrementCounter), tooltip: "Increment", child: new icon.Icon.new(icons.Icons.add, {$creationLocationd_0dea112b090073317d4: ""}), $creationLocationd_0dea112b090073317d4: ""}), $creationLocationd_0dea112b090073317d4: ""});
  }
};
(main._MyHomePageState.new = function() {
  this[_counter] = 0;
  main._MyHomePageState.__proto__.new.call(this);
  ;
}).prototype = main._MyHomePageState.prototype;
main.main = function main$() {
  return binding.runApp(new main.MyApp.new({$creationLocationd_0dea112b090073317d4: ""}));
};
// Exports:
exports.main = main;

//# sourceMappingURL=main.ddc.js.map
