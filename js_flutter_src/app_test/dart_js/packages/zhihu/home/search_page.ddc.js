'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const ui = dart_sdk.ui;
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
const flat_button = packages__flutter__material.src__material__flat_button;
const icons = packages__flutter__material.src__material__icons;
const text_field = packages__flutter__material.src__material__text_field;
const input_decorator = packages__flutter__material.src__material__input_decorator;
const app = packages__flutter__material.src__material__app;
const scaffold = packages__flutter__material.src__material__scaffold;
const app_bar = packages__flutter__material.src__material__app_bar;
const chip = packages__flutter__material.src__material__chip;
const colors = packages__flutter__material.src__material__colors;
const packages__zhihu__global_config = require('packages/zhihu/global_config');
const global_config = packages__zhihu__global_config.global_config;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const text_style = packages__flutter__src__painting___network_image_web.src__painting__text_style;
const box_decoration = packages__flutter__src__painting___network_image_web.src__painting__box_decoration;
const border_radius = packages__flutter__src__painting___network_image_web.src__painting__border_radius;
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const alignment = packages__flutter__src__painting___network_image_web.src__painting__alignment;
const box_border = packages__flutter__src__painting___network_image_web.src__painting__box_border;
const borders = packages__flutter__src__painting___network_image_web.src__painting__borders;
const search_page = Object.create(dart.library);
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C1() {
    return C1 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 4,
      [Radius_x]: 4
    });
  },
  get C0() {
    return C0 = dart.const({
      __proto__: border_radius.BorderRadius.prototype,
      [BorderRadius_bottomRight]: C1 || CT.C1,
      [BorderRadius_bottomLeft]: C1 || CT.C1,
      [BorderRadius_topRight]: C1 || CT.C1,
      [BorderRadius_topLeft]: C1 || CT.C1
    });
  },
  get C2() {
    return C2 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 16,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 16,
      [EdgeInsets_left]: 16
    });
  },
  get C3() {
    return C3 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 16,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 16
    });
  },
  get C4() {
    return C4 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 12,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C5() {
    return C5 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 10,
      [EdgeInsets_right]: 16,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 16
    });
  },
  get C6() {
    return C6 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 10,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  }
});
search_page.SearchPage = class SearchPage extends framework.StatefulWidget {
  createState() {
    return new search_page.SearchPageState.new();
  }
};
(search_page.SearchPage.new = function() {
  search_page.SearchPage.__proto__.new.call(this);
}).prototype = search_page.SearchPage.prototype;
const Radius_y = dart.privateName(ui, "Radius.y");
const Radius_x = dart.privateName(ui, "Radius.x");
let C1;
const BorderRadius_bottomRight = dart.privateName(border_radius, "BorderRadius.bottomRight");
const BorderRadius_bottomLeft = dart.privateName(border_radius, "BorderRadius.bottomLeft");
const BorderRadius_topRight = dart.privateName(border_radius, "BorderRadius.topRight");
const BorderRadius_topLeft = dart.privateName(border_radius, "BorderRadius.topLeft");
let C0;
const EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
const EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
const EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
const EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
let C2;
let C3;
let C4;
let C5;
let C6;
search_page.SearchPageState = class SearchPageState extends framework.State$(search_page.SearchPage) {
  searchInput() {
    return new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new flat_button._FlatButtonWithIcon.new({onPressed: dart.fn(() => {
                navigator.Navigator.of(this.context).pop(core.Object);
              }, VoidToNull()), icon: new icon.Icon.new(icons.Icons.arrow_back, {color: global_config.GlobalConfig.fontColor}), label: new text.Text.new("")}), width: 60.0}), new basic.Expanded.new({child: new text_field.TextField.new({autofocus: true, decoration: new input_decorator.InputDecoration.collapsed({hintText: "搜索比乎内容", hintStyle: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor})})})})])}), decoration: new box_decoration.BoxDecoration.new({borderRadius: C0 || CT.C0, color: global_config.GlobalConfig.searchBackgroundColor})});
  }
  build(context) {
    return new app.MaterialApp.new({theme: global_config.GlobalConfig.themeData, home: new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: this.searchInput()}), body: new single_child_scroll_view.SingleChildScrollView.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({child: new text.Text.new("比乎热搜", {style: new text_style.TextStyle.new({fontWeight: ui.FontWeight.bold, fontSize: 16.0})}), margin: C2 || CT.C2, alignment: alignment.Alignment.topLeft}), new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new chip.Chip.new({label: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                        }, VoidToNull()), child: new text.Text.new("汽车关税下调", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor})})}), backgroundColor: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white10 : colors.Colors.black12}), margin: C3 || CT.C3, alignment: alignment.Alignment.topLeft}), new container.Container.new({child: new chip.Chip.new({label: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                        }, VoidToNull()), child: new text.Text.new("李彦宏传闻辟谣", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor})})}), backgroundColor: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white10 : colors.Colors.black12}), margin: C3 || CT.C3, alignment: alignment.Alignment.topLeft})])}), new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new chip.Chip.new({label: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                        }, VoidToNull()), child: new text.Text.new("小米8", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor})})}), backgroundColor: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white10 : colors.Colors.black12}), margin: C3 || CT.C3, alignment: alignment.Alignment.topLeft}), new container.Container.new({child: new chip.Chip.new({label: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                        }, VoidToNull()), child: new text.Text.new("超时空同居", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor})})}), backgroundColor: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white10 : colors.Colors.black12}), margin: C3 || CT.C3, alignment: alignment.Alignment.topLeft})])}), new container.Container.new({child: new text.Text.new("搜索历史", {style: new text_style.TextStyle.new({fontWeight: ui.FontWeight.bold, fontSize: 16.0})}), margin: C3 || CT.C3, alignment: alignment.Alignment.topLeft}), new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new icon.Icon.new(icons.Icons.access_time, {color: global_config.GlobalConfig.fontColor, size: 16.0}), margin: C4 || CT.C4}), new basic.Expanded.new({child: new container.Container.new({child: new text.Text.new("业余兴趣", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0})})})}), new container.Container.new({child: new icon.Icon.new(icons.Icons.clear, {color: global_config.GlobalConfig.fontColor, size: 16.0})})])}), margin: C5 || CT.C5, padding: C6 || CT.C6, decoration: new box_decoration.BoxDecoration.new({border: new box_border.BorderDirectional.new({bottom: new borders.BorderSide.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white12 : colors.Colors.black12})})})}), new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new icon.Icon.new(icons.Icons.access_time, {color: global_config.GlobalConfig.fontColor, size: 16.0}), margin: C4 || CT.C4}), new basic.Expanded.new({child: new container.Container.new({child: new text.Text.new("三体", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0})})})}), new container.Container.new({child: new icon.Icon.new(icons.Icons.clear, {color: global_config.GlobalConfig.fontColor, size: 16.0})})])}), margin: C5 || CT.C5, padding: C6 || CT.C6, decoration: new box_decoration.BoxDecoration.new({border: new box_border.BorderDirectional.new({bottom: new borders.BorderSide.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white12 : colors.Colors.black12})})})}), new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new icon.Icon.new(icons.Icons.access_time, {color: global_config.GlobalConfig.fontColor, size: 16.0}), margin: C4 || CT.C4}), new basic.Expanded.new({child: new container.Container.new({child: new text.Text.new("人类未来", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0})})})}), new container.Container.new({child: new icon.Icon.new(icons.Icons.clear, {color: global_config.GlobalConfig.fontColor, size: 16.0})})])}), margin: C5 || CT.C5, padding: C6 || CT.C6, decoration: new box_decoration.BoxDecoration.new({border: new box_border.BorderDirectional.new({bottom: new borders.BorderSide.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white12 : colors.Colors.black12})})})})])})})})});
  }
};
(search_page.SearchPageState.new = function() {
  search_page.SearchPageState.__proto__.new.call(this);
}).prototype = search_page.SearchPageState.prototype;
// Exports:
exports.home__search_page = search_page;

//# sourceMappingURL=search_page.ddc.js.map
