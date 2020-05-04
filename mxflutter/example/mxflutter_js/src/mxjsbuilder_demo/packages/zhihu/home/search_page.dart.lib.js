'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const ui = dart_sdk.ui;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__widget_span$46dart = require('packages/flutter/src/widgets/widget_span.dart');
const framework = packages__flutter__src__widgets__widget_span$46dart.src__widgets__framework;
const container = packages__flutter__src__widgets__widget_span$46dart.src__widgets__container;
const basic = packages__flutter__src__widgets__widget_span$46dart.src__widgets__basic;
const navigator = packages__flutter__src__widgets__widget_span$46dart.src__widgets__navigator;
const text = packages__flutter__src__widgets__widget_span$46dart.src__widgets__text;
const packages__flutter__src__material__icon_button$46dart = require('packages/flutter/src/material/icon_button.dart');
const flat_button = packages__flutter__src__material__icon_button$46dart.src__material__flat_button;
const input_decorator = packages__flutter__src__material__icon_button$46dart.src__material__input_decorator;
const scaffold = packages__flutter__src__material__icon_button$46dart.src__material__scaffold;
const app_bar = packages__flutter__src__material__icon_button$46dart.src__material__app_bar;
const packages__flutter__src__widgets__icon$46dart = require('packages/flutter/src/widgets/icon.dart');
const icon = packages__flutter__src__widgets__icon$46dart.src__widgets__icon;
const packages__flutter__src__material__icons$46dart = require('packages/flutter/src/material/icons.dart');
const icons = packages__flutter__src__material__icons$46dart.src__material__icons;
const packages__zhihu__global_config$46dart = require('packages/zhihu/global_config.dart');
const global_config = packages__zhihu__global_config$46dart.global_config;
const packages__flutter__src__material__text_field$46dart = require('packages/flutter/src/material/text_field.dart');
const text_field = packages__flutter__src__material__text_field$46dart.src__material__text_field;
const packages__flutter__src__painting__strut_style$46dart = require('packages/flutter/src/painting/strut_style.dart');
const text_style = packages__flutter__src__painting__strut_style$46dart.src__painting__text_style;
const packages__flutter__src__painting__box_decoration$46dart = require('packages/flutter/src/painting/box_decoration.dart');
const box_decoration = packages__flutter__src__painting__box_decoration$46dart.src__painting__box_decoration;
const packages__flutter__src__painting__border_radius$46dart = require('packages/flutter/src/painting/border_radius.dart');
const border_radius = packages__flutter__src__painting__border_radius$46dart.src__painting__border_radius;
const packages__flutter__src__material__app$46dart = require('packages/flutter/src/material/app.dart');
const app = packages__flutter__src__material__app$46dart.src__material__app;
const packages__flutter__src__widgets__single_child_scroll_view$46dart = require('packages/flutter/src/widgets/single_child_scroll_view.dart');
const single_child_scroll_view = packages__flutter__src__widgets__single_child_scroll_view$46dart.src__widgets__single_child_scroll_view;
const packages__flutter__src__painting__edge_insets$46dart = require('packages/flutter/src/painting/edge_insets.dart');
const edge_insets = packages__flutter__src__painting__edge_insets$46dart.src__painting__edge_insets;
const packages__flutter__src__painting__alignment$46dart = require('packages/flutter/src/painting/alignment.dart');
const alignment = packages__flutter__src__painting__alignment$46dart.src__painting__alignment;
const packages__flutter__src__material__chip$46dart = require('packages/flutter/src/material/chip.dart');
const chip = packages__flutter__src__material__chip$46dart.src__material__chip;
const packages__flutter__src__material__colors$46dart = require('packages/flutter/src/material/colors.dart');
const colors = packages__flutter__src__material__colors$46dart.src__material__colors;
const packages__flutter__src__painting__box_border$46dart = require('packages/flutter/src/painting/box_border.dart');
const box_border = packages__flutter__src__painting__box_border$46dart.src__painting__box_border;
const packages__flutter__src__painting__borders$46dart = require('packages/flutter/src/painting/borders.dart');
const borders = packages__flutter__src__painting__borders$46dart.src__painting__borders;
var search_page = Object.create(dart.library);
var VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
var JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
const CT = Object.create(null);
var L0 = "package:zhihu/home/search_page.dart";
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
}, false);
search_page.SearchPage = class SearchPage extends framework.StatefulWidget {
  createState() {
    return new search_page.SearchPageState.new();
  }
};
(search_page.SearchPage.new = function() {
  search_page.SearchPage.__proto__.new.call(this);
  ;
}).prototype = search_page.SearchPage.prototype;
dart.addTypeTests(search_page.SearchPage);
dart.addTypeCaches(search_page.SearchPage);
dart.setMethodSignature(search_page.SearchPage, () => ({
  __proto__: dart.getMethods(search_page.SearchPage.__proto__),
  createState: dart.fnType(search_page.SearchPageState, [])
}));
dart.setLibraryUri(search_page.SearchPage, L0);
var Radius_y = dart.privateName(ui, "Radius.y");
var Radius_x = dart.privateName(ui, "Radius.x");
var C1;
var BorderRadius_bottomRight = dart.privateName(border_radius, "BorderRadius.bottomRight");
var BorderRadius_bottomLeft = dart.privateName(border_radius, "BorderRadius.bottomLeft");
var BorderRadius_topRight = dart.privateName(border_radius, "BorderRadius.topRight");
var BorderRadius_topLeft = dart.privateName(border_radius, "BorderRadius.topLeft");
var C0;
var EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
var EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
var EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
var EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
var C2;
var C3;
var C4;
var C5;
var C6;
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
  ;
}).prototype = search_page.SearchPageState.prototype;
dart.addTypeTests(search_page.SearchPageState);
dart.addTypeCaches(search_page.SearchPageState);
dart.setMethodSignature(search_page.SearchPageState, () => ({
  __proto__: dart.getMethods(search_page.SearchPageState.__proto__),
  searchInput: dart.fnType(framework.Widget, []),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(search_page.SearchPageState, L0);
// Exports:
exports.home__search_page = search_page;

//# sourceMappingURL=search_page.dart.lib.js.map
