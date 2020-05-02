'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const container = packages__flutter__src__widgets__actions.src__widgets__container;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const navigator = packages__flutter__src__widgets__actions.src__widgets__navigator;
const icon = packages__flutter__src__widgets__actions.src__widgets__icon;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const single_child_scroll_view = packages__flutter__src__widgets__actions.src__widgets__single_child_scroll_view;
const packages__flutter__material = require('packages/flutter/material');
const app = packages__flutter__material.src__material__app;
const scaffold = packages__flutter__material.src__material__scaffold;
const app_bar = packages__flutter__material.src__material__app_bar;
const flat_button = packages__flutter__material.src__material__flat_button;
const icons = packages__flutter__material.src__material__icons;
const colors = packages__flutter__material.src__material__colors;
const text_field = packages__flutter__material.src__material__text_field;
const input_decorator = packages__flutter__material.src__material__input_decorator;
const packages__zhihu__global_config = require('packages/zhihu/global_config');
const global_config = packages__zhihu__global_config.global_config;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const text_style = packages__flutter__src__painting___network_image_web.src__painting__text_style;
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const ask_page = Object.create(dart.library);
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
const CT = Object.create(null);
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
});
ask_page.AskPage = class AskPage extends framework.StatefulWidget {
  createState() {
    return new ask_page.AskPageState.new();
  }
};
(ask_page.AskPage.new = function() {
  ask_page.AskPage.__proto__.new.call(this);
}).prototype = ask_page.AskPage.prototype;
const EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
const EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
const EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
const EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
let C0;
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
}).prototype = ask_page.AskPageState.prototype;
// Exports:
exports.home__ask_page = ask_page;

//# sourceMappingURL=ask_page.ddc.js.map
