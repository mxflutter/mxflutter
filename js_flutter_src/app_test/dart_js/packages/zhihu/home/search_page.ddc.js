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
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
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
  get C27() {
    return C27 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 4,
      [Radius_x]: 4
    });
  },
  get C26() {
    return C26 = dart.const({
      __proto__: border_radius.BorderRadius.prototype,
      [BorderRadius_bottomRight]: C27 || CT.C27,
      [BorderRadius_bottomLeft]: C27 || CT.C27,
      [BorderRadius_topRight]: C27 || CT.C27,
      [BorderRadius_topLeft]: C27 || CT.C27
    });
  },
  get C39() {
    return C39 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 16,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 16,
      [EdgeInsets_left]: 16
    });
  },
  get C57() {
    return C57 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 16,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 16
    });
  },
  get C134() {
    return C134 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 12,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C160() {
    return C160 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 10,
      [EdgeInsets_right]: 16,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 16
    });
  },
  get C161() {
    return C161 = dart.const({
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
(search_page.SearchPage.new = function(opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  search_page.SearchPage.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = search_page.SearchPage.prototype;
;
;
dart.setLibraryUri(search_page.SearchPage, "package:zhihu/home/search_page.dart");
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
const Radius_y = dart.privateName(ui, "Radius.y");
const Radius_x = dart.privateName(ui, "Radius.x");
let C27;
const BorderRadius_bottomRight = dart.privateName(border_radius, "BorderRadius.bottomRight");
const BorderRadius_bottomLeft = dart.privateName(border_radius, "BorderRadius.bottomLeft");
const BorderRadius_topRight = dart.privateName(border_radius, "BorderRadius.topRight");
const BorderRadius_topLeft = dart.privateName(border_radius, "BorderRadius.topLeft");
let C26;
const EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
const EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
const EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
const EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
let C39;
let C57;
let C134;
let C160;
let C161;
search_page.SearchPageState = class SearchPageState extends framework.State$(search_page.SearchPage) {
  searchInput() {
    return new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new flat_button._FlatButtonWithIcon.new({onPressed: dart.fn(() => {
                navigator.Navigator.of(this.context).pop(core.Object);
              }, VoidToNull()), icon: new icon.Icon.new(icons.Icons.arrow_back, {color: global_config.GlobalConfig.fontColor, $creationLocationd_0dea112b090073317d4: {}}), label: new text.Text.new("", {$creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), width: 60.0, $creationLocationd_0dea112b090073317d4: {}}), new basic.Expanded.new({child: new text_field.TextField.new({autofocus: true, decoration: new input_decorator.InputDecoration.collapsed({hintText: "搜索比乎内容", hintStyle: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor})}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), decoration: new box_decoration.BoxDecoration.new({borderRadius: C26 || CT.C26, color: global_config.GlobalConfig.searchBackgroundColor}), $creationLocationd_0dea112b090073317d4: {}});
  }
  build(context) {
    return new app.MaterialApp.new({theme: global_config.GlobalConfig.themeData, home: new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: this.searchInput(), $creationLocationd_0dea112b090073317d4: {}}), body: new single_child_scroll_view.SingleChildScrollView.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({child: new text.Text.new("比乎热搜", {style: new text_style.TextStyle.new({fontWeight: ui.FontWeight.bold, fontSize: 16.0}), $creationLocationd_0dea112b090073317d4: {}}), margin: C39 || CT.C39, alignment: alignment.Alignment.topLeft, $creationLocationd_0dea112b090073317d4: {}}), new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new chip.Chip.new({label: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                        }, VoidToNull()), child: new text.Text.new("汽车关税下调", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), backgroundColor: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white10 : colors.Colors.black12, $creationLocationd_0dea112b090073317d4: {}}), margin: C57 || CT.C57, alignment: alignment.Alignment.topLeft, $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new chip.Chip.new({label: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                        }, VoidToNull()), child: new text.Text.new("李彦宏传闻辟谣", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), backgroundColor: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white10 : colors.Colors.black12, $creationLocationd_0dea112b090073317d4: {}}), margin: C57 || CT.C57, alignment: alignment.Alignment.topLeft, $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new chip.Chip.new({label: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                        }, VoidToNull()), child: new text.Text.new("小米8", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), backgroundColor: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white10 : colors.Colors.black12, $creationLocationd_0dea112b090073317d4: {}}), margin: C57 || CT.C57, alignment: alignment.Alignment.topLeft, $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new chip.Chip.new({label: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                        }, VoidToNull()), child: new text.Text.new("超时空同居", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), backgroundColor: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white10 : colors.Colors.black12, $creationLocationd_0dea112b090073317d4: {}}), margin: C57 || CT.C57, alignment: alignment.Alignment.topLeft, $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new text.Text.new("搜索历史", {style: new text_style.TextStyle.new({fontWeight: ui.FontWeight.bold, fontSize: 16.0}), $creationLocationd_0dea112b090073317d4: {}}), margin: C57 || CT.C57, alignment: alignment.Alignment.topLeft, $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new icon.Icon.new(icons.Icons.access_time, {color: global_config.GlobalConfig.fontColor, size: 16.0, $creationLocationd_0dea112b090073317d4: {}}), margin: C134 || CT.C134, $creationLocationd_0dea112b090073317d4: {}}), new basic.Expanded.new({child: new container.Container.new({child: new text.Text.new("业余兴趣", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new icon.Icon.new(icons.Icons.clear, {color: global_config.GlobalConfig.fontColor, size: 16.0, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), margin: C160 || CT.C160, padding: C161 || CT.C161, decoration: new box_decoration.BoxDecoration.new({border: new box_border.BorderDirectional.new({bottom: new borders.BorderSide.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white12 : colors.Colors.black12})})}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new icon.Icon.new(icons.Icons.access_time, {color: global_config.GlobalConfig.fontColor, size: 16.0, $creationLocationd_0dea112b090073317d4: {}}), margin: C134 || CT.C134, $creationLocationd_0dea112b090073317d4: {}}), new basic.Expanded.new({child: new container.Container.new({child: new text.Text.new("三体", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new icon.Icon.new(icons.Icons.clear, {color: global_config.GlobalConfig.fontColor, size: 16.0, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), margin: C160 || CT.C160, padding: C161 || CT.C161, decoration: new box_decoration.BoxDecoration.new({border: new box_border.BorderDirectional.new({bottom: new borders.BorderSide.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white12 : colors.Colors.black12})})}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new icon.Icon.new(icons.Icons.access_time, {color: global_config.GlobalConfig.fontColor, size: 16.0, $creationLocationd_0dea112b090073317d4: {}}), margin: C134 || CT.C134, $creationLocationd_0dea112b090073317d4: {}}), new basic.Expanded.new({child: new container.Container.new({child: new text.Text.new("人类未来", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new icon.Icon.new(icons.Icons.clear, {color: global_config.GlobalConfig.fontColor, size: 16.0, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), margin: C160 || CT.C160, padding: C161 || CT.C161, decoration: new box_decoration.BoxDecoration.new({border: new box_border.BorderDirectional.new({bottom: new borders.BorderSide.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white12 : colors.Colors.black12})})}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}});
  }
};
(search_page.SearchPageState.new = function() {
  search_page.SearchPageState.__proto__.new.call(this);
  ;
}).prototype = search_page.SearchPageState.prototype;
;
;
dart.setLibraryUri(search_page.SearchPageState, "package:zhihu/home/search_page.dart");
// Exports:
exports.home__search_page = search_page;

//# sourceMappingURL=search_page.ddc.js.map
