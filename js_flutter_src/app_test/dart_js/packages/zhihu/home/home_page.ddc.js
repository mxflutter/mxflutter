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
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const icon = packages__flutter__src__widgets__actions.src__widgets__icon;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const packages__flutter__material = require('packages/flutter/material');
const flat_button = packages__flutter__material.src__material__flat_button;
const page = packages__flutter__material.src__material__page;
const icons = packages__flutter__material.src__material__icons;
const tab_controller = packages__flutter__material.src__material__tab_controller;
const scaffold = packages__flutter__material.src__material__scaffold;
const app_bar = packages__flutter__material.src__material__app_bar;
const tabs = packages__flutter__material.src__material__tabs;
const colors = packages__flutter__material.src__material__colors;
const packages__zhihu__home__search_page = require('packages/zhihu/home/search_page');
const search_page = packages__zhihu__home__search_page.home__search_page;
const packages__zhihu__global_config = require('packages/zhihu/global_config');
const global_config = packages__zhihu__global_config.global_config;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const text_style = packages__flutter__src__painting___network_image_web.src__painting__text_style;
const box_decoration = packages__flutter__src__painting___network_image_web.src__painting__box_decoration;
const box_border = packages__flutter__src__painting___network_image_web.src__painting__box_border;
const borders = packages__flutter__src__painting___network_image_web.src__painting__borders;
const border_radius = packages__flutter__src__painting___network_image_web.src__painting__border_radius;
const packages__zhihu__home__ask_page = require('packages/zhihu/home/ask_page');
const ask_page = packages__zhihu__home__ask_page.home__ask_page;
const packages__zhihu__home__follow = require('packages/zhihu/home/follow');
const follow = packages__zhihu__home__follow.home__follow;
const packages__zhihu__home__recommend = require('packages/zhihu/home/recommend');
const recommend = packages__zhihu__home__recommend.home__recommend;
const packages__zhihu__home__hot = require('packages/zhihu/home/hot');
const hot = packages__zhihu__home__hot.home__hot;
const home_page = Object.create(dart.library);
let BuildContextToSearchPage = () => (BuildContextToSearchPage = dart.constFn(dart.fnType(search_page.SearchPage, [framework.BuildContext])))();
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let BuildContextToAskPage = () => (BuildContextToAskPage = dart.constFn(dart.fnType(ask_page.AskPage, [framework.BuildContext])))();
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C46() {
    return C46 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 4,
      [Radius_x]: 4
    });
  },
  get C45() {
    return C45 = dart.const({
      __proto__: border_radius.BorderRadius.prototype,
      [BorderRadius_bottomRight]: C46 || CT.C46,
      [BorderRadius_bottomLeft]: C46 || CT.C46,
      [BorderRadius_topRight]: C46 || CT.C46,
      [BorderRadius_topLeft]: C46 || CT.C46
    });
  }
});
home_page.HomePage = class HomePage extends framework.StatefulWidget {
  createState() {
    return new home_page._HomePageState.new();
  }
};
(home_page.HomePage.new = function(opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  home_page.HomePage.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = home_page.HomePage.prototype;
;
;
dart.setLibraryUri(home_page.HomePage, "package:zhihu/home/home_page.dart");
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
const Radius_y = dart.privateName(ui, "Radius.y");
const Radius_x = dart.privateName(ui, "Radius.x");
let C46;
const BorderRadius_bottomRight = dart.privateName(border_radius, "BorderRadius.bottomRight");
const BorderRadius_bottomLeft = dart.privateName(border_radius, "BorderRadius.bottomLeft");
const BorderRadius_topRight = dart.privateName(border_radius, "BorderRadius.topRight");
const BorderRadius_topLeft = dart.privateName(border_radius, "BorderRadius.topLeft");
let C45;
home_page._HomePageState = class _HomePageState extends framework.State$(home_page.HomePage) {
  barSearch() {
    return new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new basic.Expanded.new({child: new flat_button._FlatButtonWithIcon.new({onPressed: dart.fn(() => {
                navigator.Navigator.of(this.context).push(dart.dynamic, new page.MaterialPageRoute.new({builder: dart.fn(context => new search_page.SearchPage.new({$creationLocationd_0dea112b090073317d4: {}}), BuildContextToSearchPage())}));
              }, VoidToNull()), icon: new icon.Icon.new(icons.Icons.search, {color: global_config.GlobalConfig.fontColor, size: 16.0, $creationLocationd_0dea112b090073317d4: {}}), label: new text.Text.new("坚果R1摄像头损坏", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({decoration: new box_decoration.BoxDecoration.new({border: new box_border.BorderDirectional.new({start: new borders.BorderSide.new({color: global_config.GlobalConfig.fontColor, width: 1.0})})}), height: 14.0, width: 1.0, $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new flat_button._FlatButtonWithIcon.new({onPressed: dart.fn(() => {
                navigator.Navigator.of(this.context).push(dart.dynamic, new page.MaterialPageRoute.new({builder: dart.fn(context => new ask_page.AskPage.new({$creationLocationd_0dea112b090073317d4: {}}), BuildContextToAskPage())}));
              }, VoidToNull()), icon: new icon.Icon.new(icons.Icons.border_color, {color: global_config.GlobalConfig.fontColor, size: 14.0, $creationLocationd_0dea112b090073317d4: {}}), label: new text.Text.new("提问", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), decoration: new box_decoration.BoxDecoration.new({borderRadius: C45 || CT.C45, color: global_config.GlobalConfig.searchBackgroundColor}), $creationLocationd_0dea112b090073317d4: {}});
  }
  build(context) {
    return new tab_controller.DefaultTabController.new({length: 3, child: new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: this.barSearch(), bottom: new tabs.TabBar.new({labelColor: dart.equals(global_config.GlobalConfig.dark, true) ? new ui.Color.new(4284743129) : colors.Colors.blue, unselectedLabelColor: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white : colors.Colors.black, tabs: JSArrayOfWidget().of([new tabs.Tab.new({text: "关注", $creationLocationd_0dea112b090073317d4: {}}), new tabs.Tab.new({text: "推荐", $creationLocationd_0dea112b090073317d4: {}}), new tabs.Tab.new({text: "热榜", $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), body: new tabs.TabBarView.new({children: JSArrayOfWidget().of([new follow.Follow.new({$creationLocationd_0dea112b090073317d4: {}}), new recommend.Recommend.new({$creationLocationd_0dea112b090073317d4: {}}), new hot.Hot.new({$creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}});
  }
};
(home_page._HomePageState.new = function() {
  home_page._HomePageState.__proto__.new.call(this);
  ;
}).prototype = home_page._HomePageState.prototype;
;
;
dart.setLibraryUri(home_page._HomePageState, "package:zhihu/home/home_page.dart");
// Exports:
exports.home__home_page = home_page;

//# sourceMappingURL=home_page.ddc.js.map
