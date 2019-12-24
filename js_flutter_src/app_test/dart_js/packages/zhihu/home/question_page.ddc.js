'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const ui = dart_sdk.ui;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const single_child_scroll_view = packages__flutter__src__widgets__actions.src__widgets__single_child_scroll_view;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const container = packages__flutter__src__widgets__actions.src__widgets__container;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const icon = packages__flutter__src__widgets__actions.src__widgets__icon;
const navigator = packages__flutter__src__widgets__actions.src__widgets__navigator;
const packages__flutter__material = require('packages/flutter/material');
const app = packages__flutter__material.src__material__app;
const scaffold = packages__flutter__material.src__material__scaffold;
const app_bar = packages__flutter__material.src__material__app_bar;
const flat_button = packages__flutter__material.src__material__flat_button;
const colors = packages__flutter__material.src__material__colors;
const icons = packages__flutter__material.src__material__icons;
const button_theme = packages__flutter__material.src__material__button_theme;
const popup_menu = packages__flutter__material.src__material__popup_menu;
const page = packages__flutter__material.src__material__page;
const circle_avatar = packages__flutter__material.src__material__circle_avatar;
const text_field = packages__flutter__material.src__material__text_field;
const input_decorator = packages__flutter__material.src__material__input_decorator;
const icon_button = packages__flutter__material.src__material__icon_button;
const list_tile = packages__flutter__material.src__material__list_tile;
const raised_button = packages__flutter__material.src__material__raised_button;
const bottom_app_bar = packages__flutter__material.src__material__bottom_app_bar;
const packages__zhihu__global_config = require('packages/zhihu/global_config');
const global_config = packages__zhihu__global_config.global_config;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const text_style = packages__flutter__src__painting___network_image_web.src__painting__text_style;
const alignment = packages__flutter__src__painting___network_image_web.src__painting__alignment;
const box_decoration = packages__flutter__src__painting___network_image_web.src__painting__box_decoration;
const box_border = packages__flutter__src__painting___network_image_web.src__painting__box_border;
const borders = packages__flutter__src__painting___network_image_web.src__painting__borders;
const _network_image_web = packages__flutter__src__painting___network_image_web.src__painting___network_image_web;
const border_radius = packages__flutter__src__painting___network_image_web.src__painting__border_radius;
const packages__flutter__src__rendering__animated_size = require('packages/flutter/src/rendering/animated_size');
const flex = packages__flutter__src__rendering__animated_size.src__rendering__flex;
const question_page = Object.create(dart.library);
const reply_page = Object.create(dart.library);
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
let PopupMenuButtonOfString = () => (PopupMenuButtonOfString = dart.constFn(popup_menu.PopupMenuButton$(core.String)))();
let PopupMenuItemOfString = () => (PopupMenuItemOfString = dart.constFn(popup_menu.PopupMenuItem$(core.String)))();
let JSArrayOfPopupMenuItemOfString = () => (JSArrayOfPopupMenuItemOfString = dart.constFn(_interceptors.JSArray$(PopupMenuItemOfString())))();
let ListOfPopupMenuItemOfString = () => (ListOfPopupMenuItemOfString = dart.constFn(core.List$(PopupMenuItemOfString())))();
let BuildContextToListOfPopupMenuItemOfString = () => (BuildContextToListOfPopupMenuItemOfString = dart.constFn(dart.fnType(ListOfPopupMenuItemOfString(), [framework.BuildContext])))();
let BuildContextToReplyPage = () => (BuildContextToReplyPage = dart.constFn(dart.fnType(reply_page.ReplyPage, [framework.BuildContext])))();
let BuildContextToQuestionPage = () => (BuildContextToQuestionPage = dart.constFn(dart.fnType(question_page.QuestionPage, [framework.BuildContext])))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C11() {
    return C11 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 8,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C65() {
    return C65 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 8,
      [EdgeInsets_right]: 16,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 16
    });
  },
  get C118() {
    return C118 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 4,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 4,
      [EdgeInsets_left]: 0
    });
  },
  get C123() {
    return C123 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 16
    });
  },
  get C188() {
    return C188 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 5,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C205() {
    return C205 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 10,
      [EdgeInsets_left]: 0
    });
  },
  get C229() {
    return C229 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 10,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C286() {
    return C286 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C313() {
    return C313 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 4,
      [Radius_x]: 4
    });
  },
  get C312() {
    return C312 = dart.const({
      __proto__: border_radius.BorderRadius.prototype,
      [BorderRadius_bottomRight]: C313 || CT.C313,
      [BorderRadius_bottomLeft]: C313 || CT.C313,
      [BorderRadius_topRight]: C313 || CT.C313,
      [BorderRadius_topLeft]: C313 || CT.C313
    });
  },
  get C327() {
    return C327 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 16,
      [EdgeInsets_right]: 16,
      [EdgeInsets_top]: 16,
      [EdgeInsets_left]: 16
    });
  },
  get C460() {
    return C460 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 2,
      [Radius_x]: 2
    });
  },
  get C459() {
    return C459 = dart.const({
      __proto__: border_radius.BorderRadius.prototype,
      [BorderRadius_bottomRight]: C460 || CT.C460,
      [BorderRadius_bottomLeft]: C460 || CT.C460,
      [BorderRadius_topRight]: C460 || CT.C460,
      [BorderRadius_topLeft]: C460 || CT.C460
    });
  }
});
question_page.QuestionPage = class QuestionPage extends framework.StatefulWidget {
  createState() {
    return new question_page.QuestionPageState.new();
  }
};
(question_page.QuestionPage.new = function(opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  question_page.QuestionPage.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = question_page.QuestionPage.prototype;
;
;
dart.setLibraryUri(question_page.QuestionPage, "package:zhihu/home/question_page.dart");
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
const EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
const EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
const EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
const EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
let C11;
let C65;
let C118;
let C123;
let C188;
let C205;
let C229;
question_page.QuestionPageState = class QuestionPageState extends framework.State$(question_page.QuestionPage) {
  build(context) {
    return new app.MaterialApp.new({theme: global_config.GlobalConfig.themeData, home: new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: reply_page.Common.searchInput(context), $creationLocationd_0dea112b090073317d4: {}}), body: new single_child_scroll_view.SingleChildScrollView.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                        }, VoidToNull()), child: new text.Text.new("物理学", {$creationLocationd_0dea112b090073317d4: {}}), color: global_config.GlobalConfig.searchBackgroundColor, $creationLocationd_0dea112b090073317d4: {}}), height: 30.0, margin: C11 || CT.C11, $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                        }, VoidToNull()), child: new text.Text.new("三体(书籍)", {$creationLocationd_0dea112b090073317d4: {}}), color: global_config.GlobalConfig.searchBackgroundColor, $creationLocationd_0dea112b090073317d4: {}}), height: 30.0, margin: C11 || CT.C11, $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                        }, VoidToNull()), child: new text.Text.new("脑洞(网络用语)", {$creationLocationd_0dea112b090073317d4: {}}), color: global_config.GlobalConfig.searchBackgroundColor, $creationLocationd_0dea112b090073317d4: {}}), height: 30.0, $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), padding: new edge_insets.EdgeInsets.only({left: 16.0, top: 8.0, bottom: 8.0, right: 16.0}), color: global_config.GlobalConfig.cardBackgroundColor, $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new text.Text.new("《三体》里的水滴有可能被制造出来吗?", {style: new text_style.TextStyle.new({fontWeight: ui.FontWeight.bold, fontSize: 18.0, height: 1.3, color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white70 : colors.Colors.black}), $creationLocationd_0dea112b090073317d4: {}}), padding: new edge_insets.EdgeInsets.only({left: 16.0, bottom: 8.0, right: 16.0}), alignment: alignment.Alignment.topLeft, color: global_config.GlobalConfig.cardBackgroundColor, $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new text.Text.new("如果，仅考虑其延长强相互作用力的特性，而不考虑其直角转弯的特性，那么水滴能被制造出来吗？换句话说，强相互作用力能够以影响微观物理量的方式延长吗？", {style: new text_style.TextStyle.new({height: 1.4, fontSize: 16.0, color: global_config.GlobalConfig.fontColor}), textAlign: ui.TextAlign.start, $creationLocationd_0dea112b090073317d4: {}}), padding: C65 || CT.C65, decoration: new box_decoration.BoxDecoration.new({border: new box_border.BorderDirectional.new({bottom: new borders.BorderSide.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white12 : colors.Colors.black12})}), color: global_config.GlobalConfig.cardBackgroundColor}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new basic.Expanded.new({flex: 1, child: new container.Container.new({child: new flat_button._FlatButtonWithIcon.new({onPressed: dart.fn(() => {
                          }, VoidToNull()), icon: new icon.Icon.new(icons.Icons.group_add, {$creationLocationd_0dea112b090073317d4: {}}), label: new text.Text.new("邀请回答", {$creationLocationd_0dea112b090073317d4: {}}), textTheme: button_theme.ButtonTextTheme.accent, $creationLocationd_0dea112b090073317d4: {}}), decoration: new box_decoration.BoxDecoration.new({border: new box_border.BorderDirectional.new({end: new borders.BorderSide.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white12 : colors.Colors.black12})})}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new basic.Expanded.new({flex: 1, child: new container.Container.new({child: new flat_button._FlatButtonWithIcon.new({onPressed: dart.fn(() => {
                          }, VoidToNull()), icon: new icon.Icon.new(icons.Icons.brush, {$creationLocationd_0dea112b090073317d4: {}}), label: new text.Text.new("写回答", {$creationLocationd_0dea112b090073317d4: {}}), textTheme: button_theme.ButtonTextTheme.accent, $creationLocationd_0dea112b090073317d4: {}}), decoration: new box_decoration.BoxDecoration.new({border: new box_border.BorderDirectional.new({end: new borders.BorderSide.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white12 : colors.Colors.black12})})}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), decoration: new box_decoration.BoxDecoration.new({color: global_config.GlobalConfig.cardBackgroundColor}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({margin: C118 || CT.C118, child: new basic.Row.new({children: JSArrayOfWidget().of([new basic.Expanded.new({child: new container.Container.new({child: new text.Text.new("173个回答", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}}), margin: C123 || CT.C123, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new basic.Expanded.new({child: new container.Container.new({child: new (PopupMenuButtonOfString()).new({itemBuilder: dart.fn(context => JSArrayOfPopupMenuItemOfString().of([new (PopupMenuItemOfString()).new({value: "质量", child: new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new text.Text.new("按质量排序", {$creationLocationd_0dea112b090073317d4: {}}), new icon.Icon.new(icons.Icons.check, {color: colors.Colors.blue, $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new (PopupMenuItemOfString()).new({value: "时间", child: new text.Text.new("按时间排序", {$creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), BuildContextToListOfPopupMenuItemOfString()), child: new container.Container.new({child: new basic.Row.new({mainAxisAlignment: flex.MainAxisAlignment.end, children: JSArrayOfWidget().of([new text.Text.new("按质量排序", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}}), new icon.Icon.new(icons.Icons.keyboard_arrow_down, {color: global_config.GlobalConfig.fontColor, $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), alignment: alignment.Alignment.centerRight, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({color: global_config.GlobalConfig.cardBackgroundColor, margin: C188 || CT.C188, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    navigator.Navigator.of(context).push(dart.dynamic, new page.MaterialPageRoute.new({builder: dart.fn(context => new reply_page.ReplyPage.new({$creationLocationd_0dea112b090073317d4: {}}), BuildContextToReplyPage())}));
                  }, VoidToNull()), child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new circle_avatar.CircleAvatar.new({backgroundImage: new _network_image_web.NetworkImage.new("https://pic3.zhimg.com/fc4c1cb34c2901a1a8c05488bbd76fa2_xs.jpg"), radius: 11.0, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new text.Text.new(" 游牧由", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), padding: C205 || CT.C205, $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new text.Text.new("第一，几年前我跟一个985211级别大学的物理类学科教授聊过这个问题。他很严肃的表示，使用强互作用力为工具在原子角度加工出这种水平的材料，对人类目前的物理...", {style: new text_style.TextStyle.new({height: 1.3, color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}}), margin: new edge_insets.EdgeInsets.only({top: 6.0, bottom: 14.0}), alignment: alignment.Alignment.topLeft, $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new basic.Expanded.new({child: new text.Text.new("1K 赞同 · 262 评论 · 10 天前", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), padding: C229 || CT.C229, $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}});
  }
};
(question_page.QuestionPageState.new = function() {
  question_page.QuestionPageState.__proto__.new.call(this);
  ;
}).prototype = question_page.QuestionPageState.prototype;
;
;
dart.setLibraryUri(question_page.QuestionPageState, "package:zhihu/home/question_page.dart");
let C286;
const Radius_y = dart.privateName(ui, "Radius.y");
const Radius_x = dart.privateName(ui, "Radius.x");
let C313;
const BorderRadius_bottomRight = dart.privateName(border_radius, "BorderRadius.bottomRight");
const BorderRadius_bottomLeft = dart.privateName(border_radius, "BorderRadius.bottomLeft");
const BorderRadius_topRight = dart.privateName(border_radius, "BorderRadius.topRight");
const BorderRadius_topLeft = dart.privateName(border_radius, "BorderRadius.topLeft");
let C312;
reply_page.Common = class Common extends core.Object {
  static searchInput(context) {
    return new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new flat_button._FlatButtonWithIcon.new({onPressed: dart.fn(() => {
                navigator.Navigator.of(context).pop(core.Object);
              }, VoidToNull()), icon: new icon.Icon.new(icons.Icons.arrow_back, {color: global_config.GlobalConfig.fontColor, $creationLocationd_0dea112b090073317d4: {}}), label: new text.Text.new("", {$creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), width: 60.0, $creationLocationd_0dea112b090073317d4: {}}), new basic.Expanded.new({child: new text_field.TextField.new({decoration: new input_decorator.InputDecoration.collapsed({hintText: "搜索比乎内容", hintStyle: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor})}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new icon_button.IconButton.new({icon: new icon.Icon.new(icons.Icons.share, {color: global_config.GlobalConfig.fontColor, $creationLocationd_0dea112b090073317d4: {}}), onPressed: dart.fn(() => {
              }, VoidToNull()), padding: C286 || CT.C286, iconSize: 18.0, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new icon_button.IconButton.new({icon: new icon.Icon.new(icons.Icons.list, {color: global_config.GlobalConfig.fontColor, $creationLocationd_0dea112b090073317d4: {}}), onPressed: dart.fn(() => {
              }, VoidToNull()), padding: C286 || CT.C286, iconSize: 18.0, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), decoration: new box_decoration.BoxDecoration.new({borderRadius: C312 || CT.C312, color: global_config.GlobalConfig.searchBackgroundColor}), height: 36.0, $creationLocationd_0dea112b090073317d4: {}});
  }
};
(reply_page.Common.new = function() {
  ;
}).prototype = reply_page.Common.prototype;
;
dart.setLibraryUri(reply_page.Common, "package:zhihu/home/reply_page.dart");
reply_page.ReplyPage = class ReplyPage extends framework.StatefulWidget {
  createState() {
    return new reply_page.ReplyPageState.new();
  }
};
(reply_page.ReplyPage.new = function(opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  reply_page.ReplyPage.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = reply_page.ReplyPage.prototype;
;
;
dart.setLibraryUri(reply_page.ReplyPage, "package:zhihu/home/reply_page.dart");
let C327;
let C460;
let C459;
reply_page.ReplyPageState = class ReplyPageState extends framework.State$(reply_page.ReplyPage) {
  build(context) {
    return new app.MaterialApp.new({theme: global_config.GlobalConfig.themeData, home: new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: reply_page.Common.searchInput(context), $creationLocationd_0dea112b090073317d4: {}}), body: new single_child_scroll_view.SingleChildScrollView.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    navigator.Navigator.of(context).push(dart.dynamic, new page.MaterialPageRoute.new({builder: dart.fn(context => new question_page.QuestionPage.new({$creationLocationd_0dea112b090073317d4: {}}), BuildContextToQuestionPage())}));
                  }, VoidToNull()), child: new container.Container.new({child: new text.Text.new("你认为《三体》中最牛的文明是？", {style: new text_style.TextStyle.new({fontWeight: ui.FontWeight.bold, fontSize: 18.0, height: 1.3, color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white70 : colors.Colors.black}), $creationLocationd_0dea112b090073317d4: {}}), padding: C327 || CT.C327, alignment: alignment.Alignment.topLeft, $creationLocationd_0dea112b090073317d4: {}}), color: global_config.GlobalConfig.cardBackgroundColor, $creationLocationd_0dea112b090073317d4: {}}), decoration: new box_decoration.BoxDecoration.new({border: new box_border.BorderDirectional.new({bottom: new borders.BorderSide.new({color: colors.Colors.white10})})}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new basic.Expanded.new({flex: 1, child: new container.Container.new({child: new flat_button._FlatButtonWithIcon.new({onPressed: dart.fn(() => {
                          }, VoidToNull()), icon: new icon.Icon.new(icons.Icons.brush, {$creationLocationd_0dea112b090073317d4: {}}), label: new text.Text.new("写回答", {$creationLocationd_0dea112b090073317d4: {}}), textTheme: button_theme.ButtonTextTheme.accent, $creationLocationd_0dea112b090073317d4: {}}), decoration: new box_decoration.BoxDecoration.new({border: new box_border.BorderDirectional.new({end: new borders.BorderSide.new({color: colors.Colors.white10})})}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new basic.Expanded.new({flex: 1, child: new container.Container.new({child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                            navigator.Navigator.of(context).push(dart.dynamic, new page.MaterialPageRoute.new({builder: dart.fn(context => new question_page.QuestionPage.new({$creationLocationd_0dea112b090073317d4: {}}), BuildContextToQuestionPage())}));
                          }, VoidToNull()), child: new text.Text.new("查看全部10000个回答 > ", {$creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), decoration: new box_decoration.BoxDecoration.new({color: global_config.GlobalConfig.cardBackgroundColor}), margin: new edge_insets.EdgeInsets.only({bottom: 10.0}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new list_tile.ListTile.new({leading: new circle_avatar.CircleAvatar.new({backgroundImage: new _network_image_web.NetworkImage.new("https://pic3.zhimg.com/v2-cd467bb9bb31d0384f065cf0bd677930_xl.jpg"), radius: 20.0, $creationLocationd_0dea112b090073317d4: {}}), title: new text.Text.new("Flutter", {$creationLocationd_0dea112b090073317d4: {}}), subtitle: new text.Text.new("人生如逆旅，我亦是行人", {$creationLocationd_0dea112b090073317d4: {}}), trailing: new raised_button._RaisedButtonWithIcon.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), icon: new icon.Icon.new(icons.Icons.add, {color: colors.Colors.white, $creationLocationd_0dea112b090073317d4: {}}), label: new text.Text.new("关注", {style: new text_style.TextStyle.new({color: colors.Colors.white}), $creationLocationd_0dea112b090073317d4: {}}), color: colors.Colors.blue, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), decoration: new box_decoration.BoxDecoration.new({color: global_config.GlobalConfig.cardBackgroundColor, border: new box_border.BorderDirectional.new({bottom: new borders.BorderSide.new({color: colors.Colors.white10})})}), $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new text.Text.new("回归运动\n\n三体定义的黑暗森林的宇宙格局，就是文明相互攻击和毁灭，越高级的，越明白藏好自己做好清理，绝不做探测对方文明的愚蠢行为。\n\n然而归还运动跳出了这个黑暗森林法则，不玩黑暗森林打击，不但探测别的宇宙文明，而且还深入了解对方文明，而且是全宇宙的所有文明。\n\n这是一种多么自信的科技实力呀，才能跳出黑暗森林的生存法则呀", {style: new text_style.TextStyle.new({height: 1.4, fontSize: 16.0, color: global_config.GlobalConfig.fontColor}), textAlign: ui.TextAlign.start, $creationLocationd_0dea112b090073317d4: {}}), margin: C327 || CT.C327, $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), bottomNavigationBar: new bottom_app_bar.BottomAppBar.new({child: new container.Container.new({height: 50.0, child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new flat_button._FlatButtonWithIcon.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), label: new text.Text.new("赞同 10 K", {$creationLocationd_0dea112b090073317d4: {}}), color: global_config.GlobalConfig.searchBackgroundColor, icon: new icon.Icon.new(icons.Icons.arrow_drop_up, {$creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), margin: new edge_insets.EdgeInsets.only({left: 16.0}), height: 30.0, $creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new icon_button.IconButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), icon: new icon.Icon.new(icons.Icons.arrow_drop_down, {$creationLocationd_0dea112b090073317d4: {}}), padding: C286 || CT.C286, $creationLocationd_0dea112b090073317d4: {}}), margin: new edge_insets.EdgeInsets.only({left: 8.0}), height: 30.0, decoration: new box_decoration.BoxDecoration.new({borderRadius: C459 || CT.C459, color: global_config.GlobalConfig.searchBackgroundColor}), $creationLocationd_0dea112b090073317d4: {}}), new basic.Expanded.new({child: new basic.Row.new({mainAxisAlignment: flex.MainAxisAlignment.center, children: JSArrayOfWidget().of([new icon_button.IconButton.new({onPressed: dart.fn(() => {
                          core.print("icon");
                        }, VoidToNull()), icon: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new icon.Icon.new(icons.Icons.favorite, {size: 18.0, color: global_config.GlobalConfig.fontColor, $creationLocationd_0dea112b090073317d4: {}}), new text.Text.new("感谢", {style: new text_style.TextStyle.new({fontSize: 10.0, color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), margin: C286 || CT.C286, height: 30.0, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new icon_button.IconButton.new({onPressed: dart.fn(() => {
                          core.print("icon");
                        }, VoidToNull()), icon: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new icon.Icon.new(icons.Icons.star, {size: 18.0, color: global_config.GlobalConfig.fontColor, $creationLocationd_0dea112b090073317d4: {}}), new text.Text.new("收藏", {style: new text_style.TextStyle.new({fontSize: 10.0, color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), margin: C286 || CT.C286, height: 30.0, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new icon_button.IconButton.new({onPressed: dart.fn(() => {
                          core.print("icon");
                        }, VoidToNull()), icon: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new icon.Icon.new(icons.Icons.mode_comment, {size: 18.0, color: global_config.GlobalConfig.fontColor, $creationLocationd_0dea112b090073317d4: {}}), new text.Text.new("345", {style: new text_style.TextStyle.new({fontSize: 10.0, color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), margin: C286 || CT.C286, height: 30.0, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), color: global_config.GlobalConfig.cardBackgroundColor, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}});
  }
};
(reply_page.ReplyPageState.new = function() {
  reply_page.ReplyPageState.__proto__.new.call(this);
  ;
}).prototype = reply_page.ReplyPageState.prototype;
;
;
dart.setLibraryUri(reply_page.ReplyPageState, "package:zhihu/home/reply_page.dart");
// Exports:
exports.home__question_page = question_page;
exports.home__reply_page = reply_page;

//# sourceMappingURL=question_page.ddc.js.map
