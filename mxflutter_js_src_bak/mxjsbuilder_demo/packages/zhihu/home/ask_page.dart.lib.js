'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__widget_span$46dart = require('packages/flutter/src/widgets/widget_span.dart');
const framework = packages__flutter__src__widgets__widget_span$46dart.src__widgets__framework;
const container = packages__flutter__src__widgets__widget_span$46dart.src__widgets__container;
const basic = packages__flutter__src__widgets__widget_span$46dart.src__widgets__basic;
const navigator = packages__flutter__src__widgets__widget_span$46dart.src__widgets__navigator;
const text = packages__flutter__src__widgets__widget_span$46dart.src__widgets__text;
const packages__flutter__src__material__app$46dart = require('packages/flutter/src/material/app.dart');
const app = packages__flutter__src__material__app$46dart.src__material__app;
const packages__zhihu__global_config$46dart = require('packages/zhihu/global_config.dart');
const global_config = packages__zhihu__global_config$46dart.global_config;
const packages__flutter__src__material__icon_button$46dart = require('packages/flutter/src/material/icon_button.dart');
const scaffold = packages__flutter__src__material__icon_button$46dart.src__material__scaffold;
const app_bar = packages__flutter__src__material__icon_button$46dart.src__material__app_bar;
const flat_button = packages__flutter__src__material__icon_button$46dart.src__material__flat_button;
const input_decorator = packages__flutter__src__material__icon_button$46dart.src__material__input_decorator;
const packages__flutter__src__widgets__icon$46dart = require('packages/flutter/src/widgets/icon.dart');
const icon = packages__flutter__src__widgets__icon$46dart.src__widgets__icon;
const packages__flutter__src__material__icons$46dart = require('packages/flutter/src/material/icons.dart');
const icons = packages__flutter__src__material__icons$46dart.src__material__icons;
const packages__flutter__src__material__colors$46dart = require('packages/flutter/src/material/colors.dart');
const colors = packages__flutter__src__material__colors$46dart.src__material__colors;
const packages__flutter__src__painting__strut_style$46dart = require('packages/flutter/src/painting/strut_style.dart');
const text_style = packages__flutter__src__painting__strut_style$46dart.src__painting__text_style;
const packages__flutter__src__widgets__single_child_scroll_view$46dart = require('packages/flutter/src/widgets/single_child_scroll_view.dart');
const single_child_scroll_view = packages__flutter__src__widgets__single_child_scroll_view$46dart.src__widgets__single_child_scroll_view;
const packages__flutter__src__material__text_field$46dart = require('packages/flutter/src/material/text_field.dart');
const text_field = packages__flutter__src__material__text_field$46dart.src__material__text_field;
const packages__flutter__src__painting__edge_insets$46dart = require('packages/flutter/src/painting/edge_insets.dart');
const edge_insets = packages__flutter__src__painting__edge_insets$46dart.src__painting__edge_insets;
var ask_page = Object.create(dart.library);
var VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
var JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
const CT = Object.create(null);
var L0 = "package:zhihu/home/ask_page.dart";
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 16,
      [EdgeInsets_right]: 16,
      [EdgeInsets_top]: 16,
      [EdgeInsets_left]: 16
    });
  }
}, false);
ask_page.AskPage = class AskPage extends framework.StatefulWidget {
  createState() {
    return new ask_page.AskPageState.new();
  }
};
(ask_page.AskPage.new = function() {
  ask_page.AskPage.__proto__.new.call(this);
  ;
}).prototype = ask_page.AskPage.prototype;
dart.addTypeTests(ask_page.AskPage);
dart.addTypeCaches(ask_page.AskPage);
dart.setMethodSignature(ask_page.AskPage, () => ({
  __proto__: dart.getMethods(ask_page.AskPage.__proto__),
  createState: dart.fnType(ask_page.AskPageState, [])
}));
dart.setLibraryUri(ask_page.AskPage, L0);
var EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
var EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
var EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
var EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
var C0;
ask_page.AskPageState = class AskPageState extends framework.State$(ask_page.AskPage) {
  build(context) {
    return new app.MaterialApp.new({theme: global_config.GlobalConfig.themeData, home: new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new flat_button._FlatButtonWithIcon.new({onPressed: dart.fn(() => {
                    navigator.Navigator.of(context).pop(core.Object);
                  }, VoidToNull()), icon: new icon.Icon.new(icons.Icons.clear, {color: colors.Colors.white70}), label: new text.Text.new("")}), new basic.Expanded.new({child: new container.Container.new({child: new text.Text.new("提问")})}), new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                  }, VoidToNull()), child: new text.Text.new("下一步", {style: new text_style.TextStyle.new({color: colors.Colors.white12})})})])})})}), body: new single_child_scroll_view.SingleChildScrollView.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({child: new text_field.TextField.new({decoration: new input_decorator.InputDecoration.new({hintText: "请输入标题", hintStyle: new text_style.TextStyle.new({color: colors.Colors.white70})})}), margin: C0 || CT.C0})])})})})});
  }
};
(ask_page.AskPageState.new = function() {
  ask_page.AskPageState.__proto__.new.call(this);
  ;
}).prototype = ask_page.AskPageState.prototype;
dart.addTypeTests(ask_page.AskPageState);
dart.addTypeCaches(ask_page.AskPageState);
dart.setMethodSignature(ask_page.AskPageState, () => ({
  __proto__: dart.getMethods(ask_page.AskPageState.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(ask_page.AskPageState, L0);
// Exports:
exports.home__ask_page = ask_page;

//# sourceMappingURL=ask_page.dart.lib.js.map
