'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const ui = dart_sdk.ui;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__widget_span$46dart = require('packages/flutter/src/widgets/widget_span.dart');
const framework = packages__flutter__src__widgets__widget_span$46dart.src__widgets__framework;
const basic = packages__flutter__src__widgets__widget_span$46dart.src__widgets__basic;
const container = packages__flutter__src__widgets__widget_span$46dart.src__widgets__container;
const text = packages__flutter__src__widgets__widget_span$46dart.src__widgets__text;
const navigator = packages__flutter__src__widgets__widget_span$46dart.src__widgets__navigator;
const packages__flutter__src__material__app$46dart = require('packages/flutter/src/material/app.dart');
const app = packages__flutter__src__material__app$46dart.src__material__app;
const packages__zhihu__global_config$46dart = require('packages/zhihu/global_config.dart');
const global_config = packages__zhihu__global_config$46dart.global_config;
const packages__flutter__src__material__icon_button$46dart = require('packages/flutter/src/material/icon_button.dart');
const scaffold = packages__flutter__src__material__icon_button$46dart.src__material__scaffold;
const app_bar = packages__flutter__src__material__icon_button$46dart.src__material__app_bar;
const flat_button = packages__flutter__src__material__icon_button$46dart.src__material__flat_button;
const button_theme = packages__flutter__src__material__icon_button$46dart.src__material__button_theme;
const input_decorator = packages__flutter__src__material__icon_button$46dart.src__material__input_decorator;
const icon_button = packages__flutter__src__material__icon_button$46dart.src__material__icon_button;
const list_tile = packages__flutter__src__material__icon_button$46dart.src__material__list_tile;
const raised_button = packages__flutter__src__material__icon_button$46dart.src__material__raised_button;
const packages__flutter__src__widgets__single_child_scroll_view$46dart = require('packages/flutter/src/widgets/single_child_scroll_view.dart');
const single_child_scroll_view = packages__flutter__src__widgets__single_child_scroll_view$46dart.src__widgets__single_child_scroll_view;
const packages__flutter__src__painting__edge_insets$46dart = require('packages/flutter/src/painting/edge_insets.dart');
const edge_insets = packages__flutter__src__painting__edge_insets$46dart.src__painting__edge_insets;
const packages__flutter__src__painting__strut_style$46dart = require('packages/flutter/src/painting/strut_style.dart');
const text_style = packages__flutter__src__painting__strut_style$46dart.src__painting__text_style;
const packages__flutter__src__material__colors$46dart = require('packages/flutter/src/material/colors.dart');
const colors = packages__flutter__src__material__colors$46dart.src__material__colors;
const packages__flutter__src__painting__alignment$46dart = require('packages/flutter/src/painting/alignment.dart');
const alignment = packages__flutter__src__painting__alignment$46dart.src__painting__alignment;
const packages__flutter__src__painting__box_decoration$46dart = require('packages/flutter/src/painting/box_decoration.dart');
const box_decoration = packages__flutter__src__painting__box_decoration$46dart.src__painting__box_decoration;
const packages__flutter__src__painting__box_border$46dart = require('packages/flutter/src/painting/box_border.dart');
const box_border = packages__flutter__src__painting__box_border$46dart.src__painting__box_border;
const packages__flutter__src__painting__borders$46dart = require('packages/flutter/src/painting/borders.dart');
const borders = packages__flutter__src__painting__borders$46dart.src__painting__borders;
const packages__flutter__src__widgets__icon$46dart = require('packages/flutter/src/widgets/icon.dart');
const icon = packages__flutter__src__widgets__icon$46dart.src__widgets__icon;
const packages__flutter__src__material__icons$46dart = require('packages/flutter/src/material/icons.dart');
const icons = packages__flutter__src__material__icons$46dart.src__material__icons;
const packages__flutter__src__material__popup_menu$46dart = require('packages/flutter/src/material/popup_menu.dart');
const popup_menu = packages__flutter__src__material__popup_menu$46dart.src__material__popup_menu;
const packages__flutter__src__rendering__flex$46dart = require('packages/flutter/src/rendering/flex.dart');
const flex = packages__flutter__src__rendering__flex$46dart.src__rendering__flex;
const packages__flutter__src__material__page$46dart = require('packages/flutter/src/material/page.dart');
const page = packages__flutter__src__material__page$46dart.src__material__page;
const packages__flutter__src__material__circle_avatar$46dart = require('packages/flutter/src/material/circle_avatar.dart');
const circle_avatar = packages__flutter__src__material__circle_avatar$46dart.src__material__circle_avatar;
const packages__flutter__src__painting___network_image_web$46dart = require('packages/flutter/src/painting/_network_image_web.dart');
const _network_image_web = packages__flutter__src__painting___network_image_web$46dart.src__painting___network_image_web;
const packages__flutter__src__material__text_field$46dart = require('packages/flutter/src/material/text_field.dart');
const text_field = packages__flutter__src__material__text_field$46dart.src__material__text_field;
const packages__flutter__src__painting__border_radius$46dart = require('packages/flutter/src/painting/border_radius.dart');
const border_radius = packages__flutter__src__painting__border_radius$46dart.src__painting__border_radius;
const packages__flutter__src__material__bottom_app_bar$46dart = require('packages/flutter/src/material/bottom_app_bar.dart');
const bottom_app_bar = packages__flutter__src__material__bottom_app_bar$46dart.src__material__bottom_app_bar;
var question_page = Object.create(dart.library);
var reply_page = Object.create(dart.library);
var VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
var JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
var PopupMenuButtonOfString = () => (PopupMenuButtonOfString = dart.constFn(popup_menu.PopupMenuButton$(core.String)))();
var PopupMenuItemOfString = () => (PopupMenuItemOfString = dart.constFn(popup_menu.PopupMenuItem$(core.String)))();
var JSArrayOfPopupMenuItemOfString = () => (JSArrayOfPopupMenuItemOfString = dart.constFn(_interceptors.JSArray$(PopupMenuItemOfString())))();
var ListOfPopupMenuItemOfString = () => (ListOfPopupMenuItemOfString = dart.constFn(core.List$(PopupMenuItemOfString())))();
var BuildContextToListOfPopupMenuItemOfString = () => (BuildContextToListOfPopupMenuItemOfString = dart.constFn(dart.fnType(ListOfPopupMenuItemOfString(), [framework.BuildContext])))();
var BuildContextToReplyPage = () => (BuildContextToReplyPage = dart.constFn(dart.fnType(reply_page.ReplyPage, [framework.BuildContext])))();
var BuildContextToQuestionPage = () => (BuildContextToQuestionPage = dart.constFn(dart.fnType(question_page.QuestionPage, [framework.BuildContext])))();
const CT = Object.create(null);
var L1 = "package:zhihu/home/reply_page.dart";
var L0 = "package:zhihu/home/question_page.dart";
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 8,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C1() {
    return C1 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 8,
      [EdgeInsets_right]: 16,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 16
    });
  },
  get C2() {
    return C2 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 4,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 4,
      [EdgeInsets_left]: 0
    });
  },
  get C3() {
    return C3 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 16
    });
  },
  get C4() {
    return C4 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 5,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C5() {
    return C5 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 10,
      [EdgeInsets_left]: 0
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
  },
  get C7() {
    return C7 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C9() {
    return C9 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 4,
      [Radius_x]: 4
    });
  },
  get C8() {
    return C8 = dart.const({
      __proto__: border_radius.BorderRadius.prototype,
      [BorderRadius_bottomRight]: C9 || CT.C9,
      [BorderRadius_bottomLeft]: C9 || CT.C9,
      [BorderRadius_topRight]: C9 || CT.C9,
      [BorderRadius_topLeft]: C9 || CT.C9
    });
  },
  get C10() {
    return C10 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 16,
      [EdgeInsets_right]: 16,
      [EdgeInsets_top]: 16,
      [EdgeInsets_left]: 16
    });
  },
  get C12() {
    return C12 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 2,
      [Radius_x]: 2
    });
  },
  get C11() {
    return C11 = dart.const({
      __proto__: border_radius.BorderRadius.prototype,
      [BorderRadius_bottomRight]: C12 || CT.C12,
      [BorderRadius_bottomLeft]: C12 || CT.C12,
      [BorderRadius_topRight]: C12 || CT.C12,
      [BorderRadius_topLeft]: C12 || CT.C12
    });
  }
}, false);
question_page.QuestionPage = class QuestionPage extends framework.StatefulWidget {
  createState() {
    return new question_page.QuestionPageState.new();
  }
};
(question_page.QuestionPage.new = function() {
  question_page.QuestionPage.__proto__.new.call(this);
  ;
}).prototype = question_page.QuestionPage.prototype;
dart.addTypeTests(question_page.QuestionPage);
dart.addTypeCaches(question_page.QuestionPage);
dart.setMethodSignature(question_page.QuestionPage, () => ({
  __proto__: dart.getMethods(question_page.QuestionPage.__proto__),
  createState: dart.fnType(question_page.QuestionPageState, [])
}));
dart.setLibraryUri(question_page.QuestionPage, L0);
var EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
var EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
var EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
var EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
var C0;
var C1;
var C2;
var C3;
var C4;
var C5;
var C6;
question_page.QuestionPageState = class QuestionPageState extends framework.State$(question_page.QuestionPage) {
  build(context) {
    return new app.MaterialApp.new({theme: global_config.GlobalConfig.themeData, home: new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: reply_page.Common.searchInput(context)}), body: new single_child_scroll_view.SingleChildScrollView.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                        }, VoidToNull()), child: new text.Text.new("物理学"), color: global_config.GlobalConfig.searchBackgroundColor}), height: 30.0, margin: C0 || CT.C0}), new container.Container.new({child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                        }, VoidToNull()), child: new text.Text.new("三体(书籍)"), color: global_config.GlobalConfig.searchBackgroundColor}), height: 30.0, margin: C0 || CT.C0}), new container.Container.new({child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                        }, VoidToNull()), child: new text.Text.new("脑洞(网络用语)"), color: global_config.GlobalConfig.searchBackgroundColor}), height: 30.0})])}), padding: new edge_insets.EdgeInsets.only({left: 16.0, top: 8.0, bottom: 8.0, right: 16.0}), color: global_config.GlobalConfig.cardBackgroundColor}), new container.Container.new({child: new text.Text.new("《三体》里的水滴有可能被制造出来吗?", {style: new text_style.TextStyle.new({fontWeight: ui.FontWeight.bold, fontSize: 18.0, height: 1.3, color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white70 : colors.Colors.black})}), padding: new edge_insets.EdgeInsets.only({left: 16.0, bottom: 8.0, right: 16.0}), alignment: alignment.Alignment.topLeft, color: global_config.GlobalConfig.cardBackgroundColor}), new container.Container.new({child: new text.Text.new("如果，仅考虑其延长强相互作用力的特性，而不考虑其直角转弯的特性，那么水滴能被制造出来吗？换句话说，强相互作用力能够以影响微观物理量的方式延长吗？", {style: new text_style.TextStyle.new({height: 1.4, fontSize: 16.0, color: global_config.GlobalConfig.fontColor}), textAlign: ui.TextAlign.start}), padding: C1 || CT.C1, decoration: new box_decoration.BoxDecoration.new({border: new box_border.BorderDirectional.new({bottom: new borders.BorderSide.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white12 : colors.Colors.black12})}), color: global_config.GlobalConfig.cardBackgroundColor})}), new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new basic.Expanded.new({flex: 1, child: new container.Container.new({child: new flat_button._FlatButtonWithIcon.new({onPressed: dart.fn(() => {
                          }, VoidToNull()), icon: new icon.Icon.new(icons.Icons.group_add), label: new text.Text.new("邀请回答"), textTheme: button_theme.ButtonTextTheme.accent}), decoration: new box_decoration.BoxDecoration.new({border: new box_border.BorderDirectional.new({end: new borders.BorderSide.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white12 : colors.Colors.black12})})})})}), new basic.Expanded.new({flex: 1, child: new container.Container.new({child: new flat_button._FlatButtonWithIcon.new({onPressed: dart.fn(() => {
                          }, VoidToNull()), icon: new icon.Icon.new(icons.Icons.brush), label: new text.Text.new("写回答"), textTheme: button_theme.ButtonTextTheme.accent}), decoration: new box_decoration.BoxDecoration.new({border: new box_border.BorderDirectional.new({end: new borders.BorderSide.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white12 : colors.Colors.black12})})})})})])}), decoration: new box_decoration.BoxDecoration.new({color: global_config.GlobalConfig.cardBackgroundColor})}), new container.Container.new({margin: C2 || CT.C2, child: new basic.Row.new({children: JSArrayOfWidget().of([new basic.Expanded.new({child: new container.Container.new({child: new text.Text.new("173个回答", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor})}), margin: C3 || CT.C3})}), new basic.Expanded.new({child: new container.Container.new({child: new (PopupMenuButtonOfString()).new({itemBuilder: dart.fn(context => JSArrayOfPopupMenuItemOfString().of([new (PopupMenuItemOfString()).new({value: "质量", child: new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new text.Text.new("按质量排序"), new icon.Icon.new(icons.Icons.check, {color: colors.Colors.blue})])})})}), new (PopupMenuItemOfString()).new({value: "时间", child: new text.Text.new("按时间排序")})]), BuildContextToListOfPopupMenuItemOfString()), child: new container.Container.new({child: new basic.Row.new({mainAxisAlignment: flex.MainAxisAlignment.end, children: JSArrayOfWidget().of([new text.Text.new("按质量排序", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor})}), new icon.Icon.new(icons.Icons.keyboard_arrow_down, {color: global_config.GlobalConfig.fontColor})])})})}), alignment: alignment.Alignment.centerRight})})])})}), new container.Container.new({color: global_config.GlobalConfig.cardBackgroundColor, margin: C4 || CT.C4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    navigator.Navigator.of(context).push(dart.dynamic, new page.MaterialPageRoute.new({builder: dart.fn(context => new reply_page.ReplyPage.new(), BuildContextToReplyPage())}));
                  }, VoidToNull()), child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new circle_avatar.CircleAvatar.new({backgroundImage: new _network_image_web.NetworkImage.new("https://pic3.zhimg.com/fc4c1cb34c2901a1a8c05488bbd76fa2_xs.jpg"), radius: 11.0})}), new text.Text.new(" 游牧由", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor})})])}), padding: C5 || CT.C5}), new container.Container.new({child: new text.Text.new("第一，几年前我跟一个985211级别大学的物理类学科教授聊过这个问题。他很严肃的表示，使用强互作用力为工具在原子角度加工出这种水平的材料，对人类目前的物理...", {style: new text_style.TextStyle.new({height: 1.3, color: global_config.GlobalConfig.fontColor})}), margin: new edge_insets.EdgeInsets.only({top: 6.0, bottom: 14.0}), alignment: alignment.Alignment.topLeft}), new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new basic.Expanded.new({child: new text.Text.new("1K 赞同 · 262 评论 · 10 天前", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor})})})])}), padding: C6 || CT.C6})])})})})])})})})});
  }
};
(question_page.QuestionPageState.new = function() {
  question_page.QuestionPageState.__proto__.new.call(this);
  ;
}).prototype = question_page.QuestionPageState.prototype;
dart.addTypeTests(question_page.QuestionPageState);
dart.addTypeCaches(question_page.QuestionPageState);
dart.setMethodSignature(question_page.QuestionPageState, () => ({
  __proto__: dart.getMethods(question_page.QuestionPageState.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(question_page.QuestionPageState, L0);
var C7;
var Radius_y = dart.privateName(ui, "Radius.y");
var Radius_x = dart.privateName(ui, "Radius.x");
var C9;
var BorderRadius_bottomRight = dart.privateName(border_radius, "BorderRadius.bottomRight");
var BorderRadius_bottomLeft = dart.privateName(border_radius, "BorderRadius.bottomLeft");
var BorderRadius_topRight = dart.privateName(border_radius, "BorderRadius.topRight");
var BorderRadius_topLeft = dart.privateName(border_radius, "BorderRadius.topLeft");
var C8;
reply_page.Common = class Common extends core.Object {
  static searchInput(context) {
    return new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new flat_button._FlatButtonWithIcon.new({onPressed: dart.fn(() => {
                navigator.Navigator.of(context).pop(core.Object);
              }, VoidToNull()), icon: new icon.Icon.new(icons.Icons.arrow_back, {color: global_config.GlobalConfig.fontColor}), label: new text.Text.new("")}), width: 60.0}), new basic.Expanded.new({child: new text_field.TextField.new({decoration: new input_decorator.InputDecoration.collapsed({hintText: "搜索比乎内容", hintStyle: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor})})})}), new container.Container.new({child: new icon_button.IconButton.new({icon: new icon.Icon.new(icons.Icons.share, {color: global_config.GlobalConfig.fontColor}), onPressed: dart.fn(() => {
              }, VoidToNull()), padding: C7 || CT.C7, iconSize: 18.0})}), new container.Container.new({child: new icon_button.IconButton.new({icon: new icon.Icon.new(icons.Icons.list, {color: global_config.GlobalConfig.fontColor}), onPressed: dart.fn(() => {
              }, VoidToNull()), padding: C7 || CT.C7, iconSize: 18.0})})])}), decoration: new box_decoration.BoxDecoration.new({borderRadius: C8 || CT.C8, color: global_config.GlobalConfig.searchBackgroundColor}), height: 36.0});
  }
};
(reply_page.Common.new = function() {
  ;
}).prototype = reply_page.Common.prototype;
dart.addTypeTests(reply_page.Common);
dart.addTypeCaches(reply_page.Common);
dart.setLibraryUri(reply_page.Common, L1);
reply_page.ReplyPage = class ReplyPage extends framework.StatefulWidget {
  createState() {
    return new reply_page.ReplyPageState.new();
  }
};
(reply_page.ReplyPage.new = function() {
  reply_page.ReplyPage.__proto__.new.call(this);
  ;
}).prototype = reply_page.ReplyPage.prototype;
dart.addTypeTests(reply_page.ReplyPage);
dart.addTypeCaches(reply_page.ReplyPage);
dart.setMethodSignature(reply_page.ReplyPage, () => ({
  __proto__: dart.getMethods(reply_page.ReplyPage.__proto__),
  createState: dart.fnType(reply_page.ReplyPageState, [])
}));
dart.setLibraryUri(reply_page.ReplyPage, L1);
var C10;
var C12;
var C11;
reply_page.ReplyPageState = class ReplyPageState extends framework.State$(reply_page.ReplyPage) {
  build(context) {
    return new app.MaterialApp.new({theme: global_config.GlobalConfig.themeData, home: new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: reply_page.Common.searchInput(context)}), body: new single_child_scroll_view.SingleChildScrollView.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    navigator.Navigator.of(context).push(dart.dynamic, new page.MaterialPageRoute.new({builder: dart.fn(context => new question_page.QuestionPage.new(), BuildContextToQuestionPage())}));
                  }, VoidToNull()), child: new container.Container.new({child: new text.Text.new("你认为《三体》中最牛的文明是？", {style: new text_style.TextStyle.new({fontWeight: ui.FontWeight.bold, fontSize: 18.0, height: 1.3, color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white70 : colors.Colors.black})}), padding: C10 || CT.C10, alignment: alignment.Alignment.topLeft}), color: global_config.GlobalConfig.cardBackgroundColor}), decoration: new box_decoration.BoxDecoration.new({border: new box_border.BorderDirectional.new({bottom: new borders.BorderSide.new({color: colors.Colors.white10})})})}), new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new basic.Expanded.new({flex: 1, child: new container.Container.new({child: new flat_button._FlatButtonWithIcon.new({onPressed: dart.fn(() => {
                          }, VoidToNull()), icon: new icon.Icon.new(icons.Icons.brush), label: new text.Text.new("写回答"), textTheme: button_theme.ButtonTextTheme.accent}), decoration: new box_decoration.BoxDecoration.new({border: new box_border.BorderDirectional.new({end: new borders.BorderSide.new({color: colors.Colors.white10})})})})}), new basic.Expanded.new({flex: 1, child: new container.Container.new({child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                            navigator.Navigator.of(context).push(dart.dynamic, new page.MaterialPageRoute.new({builder: dart.fn(context => new question_page.QuestionPage.new(), BuildContextToQuestionPage())}));
                          }, VoidToNull()), child: new text.Text.new("查看全部10000个回答 > ")})})})])}), decoration: new box_decoration.BoxDecoration.new({color: global_config.GlobalConfig.cardBackgroundColor}), margin: new edge_insets.EdgeInsets.only({bottom: 10.0})}), new container.Container.new({child: new list_tile.ListTile.new({leading: new circle_avatar.CircleAvatar.new({backgroundImage: new _network_image_web.NetworkImage.new("https://pic3.zhimg.com/v2-cd467bb9bb31d0384f065cf0bd677930_xl.jpg"), radius: 20.0}), title: new text.Text.new("Flutter"), subtitle: new text.Text.new("人生如逆旅，我亦是行人"), trailing: new raised_button._RaisedButtonWithIcon.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), icon: new icon.Icon.new(icons.Icons.add, {color: colors.Colors.white}), label: new text.Text.new("关注", {style: new text_style.TextStyle.new({color: colors.Colors.white})}), color: colors.Colors.blue})}), decoration: new box_decoration.BoxDecoration.new({color: global_config.GlobalConfig.cardBackgroundColor, border: new box_border.BorderDirectional.new({bottom: new borders.BorderSide.new({color: colors.Colors.white10})})})}), new container.Container.new({child: new text.Text.new("回归运动\n\n三体定义的黑暗森林的宇宙格局，就是文明相互攻击和毁灭，越高级的，越明白藏好自己做好清理，绝不做探测对方文明的愚蠢行为。\n\n然而归还运动跳出了这个黑暗森林法则，不玩黑暗森林打击，不但探测别的宇宙文明，而且还深入了解对方文明，而且是全宇宙的所有文明。\n\n这是一种多么自信的科技实力呀，才能跳出黑暗森林的生存法则呀", {style: new text_style.TextStyle.new({height: 1.4, fontSize: 16.0, color: global_config.GlobalConfig.fontColor}), textAlign: ui.TextAlign.start}), margin: C10 || CT.C10})])})}), bottomNavigationBar: new bottom_app_bar.BottomAppBar.new({child: new container.Container.new({height: 50.0, child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new flat_button._FlatButtonWithIcon.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), label: new text.Text.new("赞同 10 K"), color: global_config.GlobalConfig.searchBackgroundColor, icon: new icon.Icon.new(icons.Icons.arrow_drop_up)}), margin: new edge_insets.EdgeInsets.only({left: 16.0}), height: 30.0}), new container.Container.new({child: new icon_button.IconButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), icon: new icon.Icon.new(icons.Icons.arrow_drop_down), padding: C7 || CT.C7}), margin: new edge_insets.EdgeInsets.only({left: 8.0}), height: 30.0, decoration: new box_decoration.BoxDecoration.new({borderRadius: C11 || CT.C11, color: global_config.GlobalConfig.searchBackgroundColor})}), new basic.Expanded.new({child: new basic.Row.new({mainAxisAlignment: flex.MainAxisAlignment.center, children: JSArrayOfWidget().of([new icon_button.IconButton.new({onPressed: dart.fn(() => {
                          core.print("icon");
                        }, VoidToNull()), icon: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new icon.Icon.new(icons.Icons.favorite, {size: 18.0, color: global_config.GlobalConfig.fontColor}), new text.Text.new("感谢", {style: new text_style.TextStyle.new({fontSize: 10.0, color: global_config.GlobalConfig.fontColor})})])}), margin: C7 || CT.C7, height: 30.0})}), new icon_button.IconButton.new({onPressed: dart.fn(() => {
                          core.print("icon");
                        }, VoidToNull()), icon: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new icon.Icon.new(icons.Icons.star, {size: 18.0, color: global_config.GlobalConfig.fontColor}), new text.Text.new("收藏", {style: new text_style.TextStyle.new({fontSize: 10.0, color: global_config.GlobalConfig.fontColor})})])}), margin: C7 || CT.C7, height: 30.0})}), new icon_button.IconButton.new({onPressed: dart.fn(() => {
                          core.print("icon");
                        }, VoidToNull()), icon: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new icon.Icon.new(icons.Icons.mode_comment, {size: 18.0, color: global_config.GlobalConfig.fontColor}), new text.Text.new("345", {style: new text_style.TextStyle.new({fontSize: 10.0, color: global_config.GlobalConfig.fontColor})})])}), margin: C7 || CT.C7, height: 30.0})})])})})])}), color: global_config.GlobalConfig.cardBackgroundColor})})})});
  }
};
(reply_page.ReplyPageState.new = function() {
  reply_page.ReplyPageState.__proto__.new.call(this);
  ;
}).prototype = reply_page.ReplyPageState.prototype;
dart.addTypeTests(reply_page.ReplyPageState);
dart.addTypeCaches(reply_page.ReplyPageState);
dart.setMethodSignature(reply_page.ReplyPageState, () => ({
  __proto__: dart.getMethods(reply_page.ReplyPageState.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(reply_page.ReplyPageState, L1);
// Exports:
exports.home__question_page = question_page;
exports.home__reply_page = reply_page;

//# sourceMappingURL=question_page.dart.lib.js.map
