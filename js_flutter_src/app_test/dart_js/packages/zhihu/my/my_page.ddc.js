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
const navigator = packages__flutter__src__widgets__actions.src__widgets__navigator;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const icon = packages__flutter__src__widgets__actions.src__widgets__icon;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const media_query = packages__flutter__src__widgets__actions.src__widgets__media_query;
const single_child_scroll_view = packages__flutter__src__widgets__actions.src__widgets__single_child_scroll_view;
const packages__flutter__material = require('packages/flutter/material');
const flat_button = packages__flutter__material.src__material__flat_button;
const page = packages__flutter__material.src__material__page;
const icons = packages__flutter__material.src__material__icons;
const colors = packages__flutter__material.src__material__colors;
const list_tile = packages__flutter__material.src__material__list_tile;
const circle_avatar = packages__flutter__material.src__material__circle_avatar;
const theme_data = packages__flutter__material.src__material__theme_data;
const app = packages__flutter__material.src__material__app;
const scaffold = packages__flutter__material.src__material__scaffold;
const app_bar = packages__flutter__material.src__material__app_bar;
const packages__zhihu__home__search_page = require('packages/zhihu/home/search_page');
const search_page = packages__zhihu__home__search_page.home__search_page;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const box_decoration = packages__flutter__src__painting___network_image_web.src__painting__box_decoration;
const border_radius = packages__flutter__src__painting___network_image_web.src__painting__border_radius;
const _network_image_web = packages__flutter__src__painting___network_image_web.src__painting___network_image_web;
const text_style = packages__flutter__src__painting___network_image_web.src__painting__text_style;
const box_border = packages__flutter__src__painting___network_image_web.src__painting__box_border;
const borders = packages__flutter__src__painting___network_image_web.src__painting__borders;
const basic_types = packages__flutter__src__painting___network_image_web.src__painting__basic_types;
const decoration_image = packages__flutter__src__painting___network_image_web.src__painting__decoration_image;
const alignment = packages__flutter__src__painting___network_image_web.src__painting__alignment;
const packages__zhihu__global_config = require('packages/zhihu/global_config');
const global_config = packages__zhihu__global_config.global_config;
const packages__flutter__src__rendering__animated_size = require('packages/flutter/src/rendering/animated_size');
const flex = packages__flutter__src__rendering__animated_size.src__rendering__flex;
const my_page = Object.create(dart.library);
let BuildContextToSearchPage = () => (BuildContextToSearchPage = dart.constFn(dart.fnType(search_page.SearchPage, [framework.BuildContext])))();
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C6() {
    return C6 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 26,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C40() {
    return C40 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 4,
      [Radius_x]: 4
    });
  },
  get C39() {
    return C39 = dart.const({
      __proto__: border_radius.BorderRadius.prototype,
      [BorderRadius_bottomRight]: C40 || CT.C40,
      [BorderRadius_bottomLeft]: C40 || CT.C40,
      [BorderRadius_topRight]: C40 || CT.C40,
      [BorderRadius_topLeft]: C40 || CT.C40
    });
  },
  get C45() {
    return C45 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 6,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 10,
      [EdgeInsets_left]: 0
    });
  },
  get C46() {
    return C46 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 8,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 12,
      [EdgeInsets_left]: 0
    });
  },
  get C47() {
    return C47 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 16,
      [EdgeInsets_right]: 16,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 16
    });
  },
  get C55() {
    return C55 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 2,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C63() {
    return C63 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 2,
      [EdgeInsets_left]: 0
    });
  },
  get C235() {
    return C235 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 6,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 6,
      [EdgeInsets_left]: 0
    });
  },
  get C236() {
    return C236 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 6,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C380() {
    return C380 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 16,
      [EdgeInsets_left]: 0
    });
  },
  get C646() {
    return C646 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 20,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 16
    });
  },
  get C659() {
    return C659 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 8
    });
  },
  get C689() {
    return C689 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 16
    });
  },
  get C690() {
    return C690 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 6,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C692() {
    return C692 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 6,
      [Radius_x]: 6
    });
  },
  get C691() {
    return C691 = dart.const({
      __proto__: border_radius.BorderRadius.prototype,
      [BorderRadius_bottomRight]: C692 || CT.C692,
      [BorderRadius_bottomLeft]: C692 || CT.C692,
      [BorderRadius_topRight]: C692 || CT.C692,
      [BorderRadius_topLeft]: C692 || CT.C692
    });
  },
  get C801() {
    return C801 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 10
    });
  },
  get C813() {
    return C813 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 6,
      [EdgeInsets_left]: 0
    });
  },
  get C833() {
    return C833 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 10,
      [EdgeInsets_right]: 10,
      [EdgeInsets_top]: 10,
      [EdgeInsets_left]: 10
    });
  }
});
my_page.MyPage = class MyPage extends framework.StatefulWidget {
  createState() {
    return new my_page._MyPageState.new();
  }
};
(my_page.MyPage.new = function(opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  my_page.MyPage.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = my_page.MyPage.prototype;
;
;
dart.setLibraryUri(my_page.MyPage, "package:zhihu/my/my_page.dart");
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
const EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
const EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
const EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
const EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
let C6;
const Radius_y = dart.privateName(ui, "Radius.y");
const Radius_x = dart.privateName(ui, "Radius.x");
let C40;
const BorderRadius_bottomRight = dart.privateName(border_radius, "BorderRadius.bottomRight");
const BorderRadius_bottomLeft = dart.privateName(border_radius, "BorderRadius.bottomLeft");
const BorderRadius_topRight = dart.privateName(border_radius, "BorderRadius.topRight");
const BorderRadius_topLeft = dart.privateName(border_radius, "BorderRadius.topLeft");
let C39;
let C45;
let C46;
let C47;
let C55;
let C63;
let C235;
let C236;
let C380;
let C646;
let C659;
let C689;
let C690;
let C692;
let C691;
let C801;
let C813;
let C833;
my_page._MyPageState = class _MyPageState extends framework.State$(my_page.MyPage) {
  barSearch() {
    return new container.Container.new({child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
          navigator.Navigator.of(this.context).push(dart.dynamic, new page.MaterialPageRoute.new({builder: dart.fn(context => new search_page.SearchPage.new({$creationLocationd_0dea112b090073317d4: {}}), BuildContextToSearchPage())}));
        }, VoidToNull()), child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new icon.Icon.new(icons.Icons.search, {size: 18.0, $creationLocationd_0dea112b090073317d4: {}}), margin: C6 || CT.C6, $creationLocationd_0dea112b090073317d4: {}}), new basic.Expanded.new({child: new container.Container.new({child: new text.Text.new("搜索知乎内容", {$creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                }, VoidToNull()), child: new icon.Icon.new(icons.Icons.settings_overscan, {size: 18.0, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), width: 40.0, $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), decoration: new box_decoration.BoxDecoration.new({borderRadius: C39 || CT.C39, color: global_config.GlobalConfig.searchBackgroundColor}), $creationLocationd_0dea112b090073317d4: {}});
  }
  myInfoCard() {
    return new container.Container.new({color: global_config.GlobalConfig.cardBackgroundColor, margin: C45 || CT.C45, padding: C46 || CT.C46, child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C47 || CT.C47, decoration: new box_decoration.BoxDecoration.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white10 : new ui.Color.new(4294309365), borderRadius: new border_radius.BorderRadius.all(new ui.Radius.circular(6.0))}), child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
              }, VoidToNull()), child: new container.Container.new({child: new list_tile.ListTile.new({leading: new container.Container.new({child: new circle_avatar.CircleAvatar.new({backgroundImage: new _network_image_web.NetworkImage.new("https://pic1.zhimg.com/v2-ec7ed574da66e1b495fcad2cc3d71cb9_xl.jpg"), radius: 20.0, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), title: new container.Container.new({margin: C55 || CT.C55, child: new text.Text.new("learner", {$creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), subtitle: new container.Container.new({margin: C63 || CT.C63, child: new text.Text.new("查看或编辑个人主页", {$creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new basic.Row.new({mainAxisAlignment: flex.MainAxisAlignment.center, children: JSArrayOfWidget().of([new container.Container.new({width: (dart.notNull(media_query.MediaQuery.of(this.context).size.width) - 6.0) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new container.Container.new({height: 50.0, child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({child: new text.Text.new("57", {style: new text_style.TextStyle.new({fontSize: 16.0, color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new text.Text.new("我的创作", {style: new text_style.TextStyle.new({fontSize: 12.0, color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({height: 14.0, width: 1.0, decoration: new box_decoration.BoxDecoration.new({border: new box_border.BorderDirectional.new({start: new borders.BorderSide.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white12 : colors.Colors.black12, width: 1.0})})}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({width: (dart.notNull(media_query.MediaQuery.of(this.context).size.width) - 6.0) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new container.Container.new({height: 50.0, child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({child: new text.Text.new("210", {style: new text_style.TextStyle.new({fontSize: 16.0, color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new text.Text.new("关注", {style: new text_style.TextStyle.new({fontSize: 12.0, color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({height: 14.0, width: 1.0, decoration: new box_decoration.BoxDecoration.new({border: new box_border.BorderDirectional.new({start: new borders.BorderSide.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white12 : colors.Colors.black12, width: 1.0})})}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({width: (dart.notNull(media_query.MediaQuery.of(this.context).size.width) - 6.0) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new container.Container.new({height: 50.0, child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({child: new text.Text.new("18", {style: new text_style.TextStyle.new({fontSize: 16.0, color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new text.Text.new("我的收藏", {style: new text_style.TextStyle.new({fontSize: 12.0, color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({height: 14.0, width: 1.0, decoration: new box_decoration.BoxDecoration.new({border: new box_border.BorderDirectional.new({start: new borders.BorderSide.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white12 : colors.Colors.black12, width: 1.0})})}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({width: (dart.notNull(media_query.MediaQuery.of(this.context).size.width) - 6.0) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new container.Container.new({height: 50.0, child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({child: new text.Text.new("33", {style: new text_style.TextStyle.new({fontSize: 16.0, color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new text.Text.new("最近浏览", {style: new text_style.TextStyle.new({fontSize: 12.0, color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}});
  }
  myServiceCard() {
    return new container.Container.new({color: global_config.GlobalConfig.cardBackgroundColor, margin: C235 || CT.C235, padding: C46 || CT.C46, child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({child: new basic.Row.new({mainAxisAlignment: flex.MainAxisAlignment.center, children: JSArrayOfWidget().of([new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C236 || CT.C236, child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(icons.Icons.book, {color: colors.Colors.white, $creationLocationd_0dea112b090073317d4: {}}), backgroundColor: colors.Colors.green, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new text.Text.new("我的书架", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C236 || CT.C236, child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(icons.Icons.flash_on, {color: colors.Colors.white, $creationLocationd_0dea112b090073317d4: {}}), backgroundColor: colors.Colors.blue, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new text.Text.new("我的 Live", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C236 || CT.C236, child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(icons.Icons.free_breakfast, {color: colors.Colors.white, $creationLocationd_0dea112b090073317d4: {}}), backgroundColor: new ui.Color.new(4289105746), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new text.Text.new("私家课", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C236 || CT.C236, child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(icons.Icons.attach_money, {color: colors.Colors.white, $creationLocationd_0dea112b090073317d4: {}}), backgroundColor: new ui.Color.new(4281686683), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new text.Text.new("付费咨询", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({margin: C380 || CT.C380, child: new basic.Row.new({mainAxisAlignment: flex.MainAxisAlignment.start, children: JSArrayOfWidget().of([new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C236 || CT.C236, child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(icons.Icons.shop, {color: colors.Colors.white, $creationLocationd_0dea112b090073317d4: {}}), backgroundColor: new ui.Color.new(4278750644), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new text.Text.new("已购", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C236 || CT.C236, child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(icons.Icons.radio, {color: colors.Colors.white, $creationLocationd_0dea112b090073317d4: {}}), backgroundColor: colors.Colors.blue, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new text.Text.new("余额礼卷", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C236 || CT.C236, child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(icons.Icons.wifi_tethering, {color: colors.Colors.white, $creationLocationd_0dea112b090073317d4: {}}), backgroundColor: new ui.Color.new(4278360639), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new text.Text.new("服务", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}});
  }
  settingCard() {
    return new container.Container.new({color: global_config.GlobalConfig.cardBackgroundColor, margin: C235 || CT.C235, padding: C46 || CT.C46, child: new basic.Row.new({mainAxisAlignment: flex.MainAxisAlignment.start, children: JSArrayOfWidget().of([new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
              }, VoidToNull()), child: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C236 || CT.C236, child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(icons.Icons.invert_colors, {color: colors.Colors.white, $creationLocationd_0dea112b090073317d4: {}}), backgroundColor: new ui.Color.new(4290283520), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new text.Text.new("社区建设", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
              }, VoidToNull()), child: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C236 || CT.C236, child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(icons.Icons.golf_course, {color: colors.Colors.white, $creationLocationd_0dea112b090073317d4: {}}), backgroundColor: new ui.Color.new(4284703085), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new text.Text.new("反馈", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                this.setState(dart.fn(() => {
                  if (dart.equals(global_config.GlobalConfig.dark, true)) {
                    global_config.GlobalConfig.themeData = theme_data.ThemeData.new({primaryColor: colors.Colors.white, scaffoldBackgroundColor: new ui.Color.new(4293651435)});
                    global_config.GlobalConfig.searchBackgroundColor = new ui.Color.new(4293651435);
                    global_config.GlobalConfig.cardBackgroundColor = colors.Colors.white;
                    global_config.GlobalConfig.fontColor = colors.Colors.black54;
                    global_config.GlobalConfig.dark = false;
                  } else {
                    global_config.GlobalConfig.themeData = theme_data.ThemeData.dark();
                    global_config.GlobalConfig.searchBackgroundColor = colors.Colors.white10;
                    global_config.GlobalConfig.cardBackgroundColor = new ui.Color.new(4280427042);
                    global_config.GlobalConfig.fontColor = colors.Colors.white30;
                    global_config.GlobalConfig.dark = true;
                  }
                }, VoidToNull()));
              }, VoidToNull()), child: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C236 || CT.C236, child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(dart.equals(global_config.GlobalConfig.dark, true) ? icons.Icons.wb_sunny : icons.Icons.brightness_2, {color: colors.Colors.white, $creationLocationd_0dea112b090073317d4: {}}), backgroundColor: new ui.Color.new(4290275853), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new text.Text.new(dart.equals(global_config.GlobalConfig.dark, true) ? "日间模式" : "夜间模式", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
              }, VoidToNull()), child: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C236 || CT.C236, child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(icons.Icons.perm_data_setting, {color: colors.Colors.white, $creationLocationd_0dea112b090073317d4: {}}), backgroundColor: new ui.Color.new(4284703337), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new text.Text.new("设置", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}});
  }
  videoCard() {
    return new container.Container.new({color: global_config.GlobalConfig.cardBackgroundColor, margin: C235 || CT.C235, padding: C46 || CT.C46, child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C646 || CT.C646, child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(icons.Icons.videocam, {color: colors.Colors.white, $creationLocationd_0dea112b090073317d4: {}}), backgroundColor: new ui.Color.new(4289947909), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new basic.Expanded.new({child: new container.Container.new({margin: C659 || CT.C659, child: new text.Text.new("视频创作", {style: new text_style.TextStyle.new({fontSize: 18.0}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new text.Text.new("拍一个", {style: new text_style.TextStyle.new({color: colors.Colors.blue}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({margin: C689 || CT.C689, child: new single_child_scroll_view.SingleChildScrollView.new({scrollDirection: basic_types.Axis.horizontal, child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 2.5, margin: C690 || CT.C690, child: new basic.AspectRatio.new({aspectRatio: 4.0 / 2.0, child: new container.Container.new({foregroundDecoration: new box_decoration.BoxDecoration.new({image: new decoration_image.DecorationImage.new({image: new _network_image_web.NetworkImage.new("https://pic2.zhimg.com/50/v2-5942a51e6b834f10074f8d50be5bbd4d_400x224.jpg"), centerSlice: new ui.Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0)}), borderRadius: C691 || CT.C691}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({margin: C690 || CT.C690, width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 2.5, child: new basic.AspectRatio.new({aspectRatio: 4.0 / 2.0, child: new container.Container.new({foregroundDecoration: new box_decoration.BoxDecoration.new({image: new decoration_image.DecorationImage.new({image: new _network_image_web.NetworkImage.new("https://pic3.zhimg.com/50/v2-7fc9a1572c6fc72a3dea0b73a9be36e7_400x224.jpg"), centerSlice: new ui.Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0)}), borderRadius: C691 || CT.C691}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({margin: C690 || CT.C690, width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 2.5, child: new basic.AspectRatio.new({aspectRatio: 4.0 / 2.0, child: new container.Container.new({foregroundDecoration: new box_decoration.BoxDecoration.new({image: new decoration_image.DecorationImage.new({image: new _network_image_web.NetworkImage.new("https://pic4.zhimg.com/50/v2-898f43a488b606061c877ac2a471e221_400x224.jpg"), centerSlice: new ui.Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0)}), borderRadius: C691 || CT.C691}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 2.5, child: new basic.AspectRatio.new({aspectRatio: 4.0 / 2.0, child: new container.Container.new({foregroundDecoration: new box_decoration.BoxDecoration.new({image: new decoration_image.DecorationImage.new({image: new _network_image_web.NetworkImage.new("https://pic1.zhimg.com/50/v2-0008057d1ad2bd813aea4fc247959e63_400x224.jpg"), centerSlice: new ui.Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0)}), borderRadius: C691 || CT.C691}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}});
  }
  ideaCard() {
    return new container.Container.new({color: global_config.GlobalConfig.cardBackgroundColor, margin: C235 || CT.C235, padding: C46 || CT.C46, child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C646 || CT.C646, child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(icons.Icons.all_inclusive, {color: colors.Colors.white, $creationLocationd_0dea112b090073317d4: {}}), backgroundColor: colors.Colors.blue, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new basic.Expanded.new({child: new container.Container.new({margin: C659 || CT.C659, child: new text.Text.new("想法", {style: new text_style.TextStyle.new({fontSize: 18.0}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new text.Text.new("去往想法首页", {style: new text_style.TextStyle.new({color: colors.Colors.blue}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({margin: C689 || CT.C689, child: new single_child_scroll_view.SingleChildScrollView.new({scrollDirection: basic_types.Axis.horizontal, child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C690 || CT.C690, decoration: new box_decoration.BoxDecoration.new({color: global_config.GlobalConfig.searchBackgroundColor, borderRadius: new border_radius.BorderRadius.all(new ui.Radius.circular(6.0))}), child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({padding: C801 || CT.C801, child: new basic.Column.new({children: JSArrayOfWidget().of([new basic.Align.new({alignment: alignment.Alignment.centerLeft, child: new container.Container.new({child: new text.Text.new("苹果 WWDC 2018 正在举行", {style: new text_style.TextStyle.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white70 : colors.Colors.black, fontSize: 16.0}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new basic.Align.new({alignment: alignment.Alignment.centerLeft, child: new container.Container.new({margin: C813 || CT.C813, child: new text.Text.new("软件更新意料之中，硬件之谜...", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({margin: C833 || CT.C833, width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 5, child: new basic.AspectRatio.new({aspectRatio: 1.0 / 1.0, child: new container.Container.new({foregroundDecoration: new box_decoration.BoxDecoration.new({image: new decoration_image.DecorationImage.new({image: new _network_image_web.NetworkImage.new("https://pic2.zhimg.com/50/v2-55039fa535f3fe06365c0fcdaa9e3847_400x224.jpg"), centerSlice: new ui.Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0)}), borderRadius: C691 || CT.C691}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({margin: C690 || CT.C690, decoration: new box_decoration.BoxDecoration.new({color: global_config.GlobalConfig.searchBackgroundColor, borderRadius: new border_radius.BorderRadius.all(new ui.Radius.circular(6.0))}), child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({padding: C801 || CT.C801, child: new basic.Column.new({children: JSArrayOfWidget().of([new basic.Align.new({alignment: alignment.Alignment.centerLeft, child: new container.Container.new({child: new text.Text.new("此刻你的桌子是什么样子？", {style: new text_style.TextStyle.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white70 : colors.Colors.black, fontSize: 16.0}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new basic.Align.new({alignment: alignment.Alignment.centerLeft, child: new container.Container.new({margin: C813 || CT.C813, child: new text.Text.new("晒一晒你的书桌/办公桌", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({margin: C833 || CT.C833, width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 5, child: new basic.AspectRatio.new({aspectRatio: 1.0 / 1.0, child: new container.Container.new({foregroundDecoration: new box_decoration.BoxDecoration.new({image: new decoration_image.DecorationImage.new({image: new _network_image_web.NetworkImage.new("https://pic3.zhimg.com/v2-b4551f702970ff37709cdd7fd884de5e_294x245|adx4.png"), centerSlice: new ui.Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0)}), borderRadius: C691 || CT.C691}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({margin: C690 || CT.C690, decoration: new box_decoration.BoxDecoration.new({color: global_config.GlobalConfig.searchBackgroundColor, borderRadius: new border_radius.BorderRadius.all(new ui.Radius.circular(6.0))}), child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({padding: C801 || CT.C801, child: new basic.Column.new({children: JSArrayOfWidget().of([new basic.Align.new({alignment: alignment.Alignment.centerLeft, child: new container.Container.new({child: new text.Text.new("关于高考你印象最深的是...", {style: new text_style.TextStyle.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white70 : colors.Colors.black, fontSize: 16.0}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new basic.Align.new({alignment: alignment.Alignment.centerLeft, child: new container.Container.new({margin: C813 || CT.C813, child: new text.Text.new("聊聊你的高三生活", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({margin: C833 || CT.C833, width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 5, child: new basic.AspectRatio.new({aspectRatio: 1.0 / 1.0, child: new container.Container.new({foregroundDecoration: new box_decoration.BoxDecoration.new({image: new decoration_image.DecorationImage.new({image: new _network_image_web.NetworkImage.new("https://pic2.zhimg.com/50/v2-ce2e01a047e4aba9bfabf8469cfd3e75_400x224.jpg"), centerSlice: new ui.Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0)}), borderRadius: C691 || CT.C691}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({margin: C690 || CT.C690, decoration: new box_decoration.BoxDecoration.new({color: global_config.GlobalConfig.searchBackgroundColor, borderRadius: new border_radius.BorderRadius.all(new ui.Radius.circular(6.0))}), child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({padding: C801 || CT.C801, child: new basic.Column.new({children: JSArrayOfWidget().of([new basic.Align.new({alignment: alignment.Alignment.centerLeft, child: new container.Container.new({child: new text.Text.new("夏天一定要吃的食物有哪些", {style: new text_style.TextStyle.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white70 : colors.Colors.black, fontSize: 16.0}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new basic.Align.new({alignment: alignment.Alignment.centerLeft, child: new container.Container.new({margin: C813 || CT.C813, child: new text.Text.new("最适合夏天吃的那种", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({margin: C833 || CT.C833, width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 5, child: new basic.AspectRatio.new({aspectRatio: 1.0 / 1.0, child: new container.Container.new({foregroundDecoration: new box_decoration.BoxDecoration.new({image: new decoration_image.DecorationImage.new({image: new _network_image_web.NetworkImage.new("https://pic1.zhimg.com/50/v2-bb3806c2ced60e5b7f38a0aa06b89511_400x224.jpg"), centerSlice: new ui.Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0)}), borderRadius: C691 || CT.C691}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}});
  }
  build(context) {
    return new app.MaterialApp.new({theme: global_config.GlobalConfig.themeData, home: new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: this.barSearch(), $creationLocationd_0dea112b090073317d4: {}}), body: new single_child_scroll_view.SingleChildScrollView.new({child: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([this.myInfoCard(), this.myServiceCard(), this.settingCard(), this.videoCard(), this.ideaCard()]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}});
  }
};
(my_page._MyPageState.new = function() {
  my_page._MyPageState.__proto__.new.call(this);
  ;
}).prototype = my_page._MyPageState.prototype;
;
;
dart.setLibraryUri(my_page._MyPageState, "package:zhihu/my/my_page.dart");
// Exports:
exports.my__my_page = my_page;

//# sourceMappingURL=my_page.ddc.js.map
