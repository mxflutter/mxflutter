'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const ui = dart_sdk.ui;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const container = packages__flutter__src__widgets__actions.src__widgets__container;
const navigator = packages__flutter__src__widgets__actions.src__widgets__navigator;
const icon = packages__flutter__src__widgets__actions.src__widgets__icon;
const single_child_scroll_view = packages__flutter__src__widgets__actions.src__widgets__single_child_scroll_view;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const text_style = packages__flutter__src__painting___network_image_web.src__painting__text_style;
const box_decoration = packages__flutter__src__painting___network_image_web.src__painting__box_decoration;
const decoration_image = packages__flutter__src__painting___network_image_web.src__painting__decoration_image;
const _network_image_web = packages__flutter__src__painting___network_image_web.src__painting___network_image_web;
const border_radius = packages__flutter__src__painting___network_image_web.src__painting__border_radius;
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const alignment = packages__flutter__src__painting___network_image_web.src__painting__alignment;
const box_border = packages__flutter__src__painting___network_image_web.src__painting__box_border;
const packages__zhihu__global_config = require('packages/zhihu/global_config');
const global_config = packages__zhihu__global_config.global_config;
const packages__flutter__material = require('packages/flutter/material');
const flat_button = packages__flutter__material.src__material__flat_button;
const page = packages__flutter__material.src__material__page;
const circle_avatar = packages__flutter__material.src__material__circle_avatar;
const colors = packages__flutter__material.src__material__colors;
const popup_menu = packages__flutter__material.src__material__popup_menu;
const icons = packages__flutter__material.src__material__icons;
const packages__zhihu__home__question_page = require('packages/zhihu/home/question_page');
const reply_page = packages__zhihu__home__question_page.home__reply_page;
const packages__zhihu__home__article = require('packages/zhihu/home/article');
const article = packages__zhihu__home__article.home__article;
const follow = Object.create(dart.library);
const $toString = dartx.toString;
const $_get = dartx._get;
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
let BuildContextToReplyPage = () => (BuildContextToReplyPage = dart.constFn(dart.fnType(reply_page.ReplyPage, [framework.BuildContext])))();
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let PopupMenuButtonOfString = () => (PopupMenuButtonOfString = dart.constFn(popup_menu.PopupMenuButton$(core.String)))();
let PopupMenuItemOfString = () => (PopupMenuItemOfString = dart.constFn(popup_menu.PopupMenuItem$(core.String)))();
let JSArrayOfPopupMenuItemOfString = () => (JSArrayOfPopupMenuItemOfString = dart.constFn(_interceptors.JSArray$(PopupMenuItemOfString())))();
let ListOfPopupMenuItemOfString = () => (ListOfPopupMenuItemOfString = dart.constFn(core.List$(PopupMenuItemOfString())))();
let BuildContextToListOfPopupMenuItemOfString = () => (BuildContextToListOfPopupMenuItemOfString = dart.constFn(dart.fnType(ListOfPopupMenuItemOfString(), [framework.BuildContext])))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C1() {
    return C1 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 6,
      [Radius_x]: 6
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
      [EdgeInsets_bottom]: 5,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 5,
      [EdgeInsets_left]: 0
    });
  },
  get C3() {
    return C3 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 10,
      [EdgeInsets_left]: 0
    });
  },
  get C4() {
    return C4 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C5() {
    return C5 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 8,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C6() {
    return C6 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 2,
      [Radius_x]: 2
    });
  },
  get C7() {
    return C7 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 2,
      [EdgeInsets_right]: 3,
      [EdgeInsets_top]: 2,
      [EdgeInsets_left]: 3
    });
  },
  get C8() {
    return C8 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 10,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C9() {
    return C9 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 5,
      [EdgeInsets_left]: 0
    });
  }
});
follow.Follow = class Follow extends framework.StatefulWidget {
  createState() {
    return new follow._FollowState.new();
  }
};
(follow.Follow.new = function() {
  follow.Follow.__proto__.new.call(this);
}).prototype = follow.Follow.prototype;
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
let C7;
let C8;
let C9;
follow._FollowState = class _FollowState extends framework.State$(follow.Follow) {
  wordsCard(article) {
    let markWidget = null;
    if (article.imgUrl == null) {
      markWidget = new text.Text.new(article.mark, {style: new text_style.TextStyle.new({height: 1.3, color: global_config.GlobalConfig.fontColor})});
    } else {
      markWidget = new basic.Row.new({children: JSArrayOfWidget().of([new basic.Expanded.new({flex: 2, child: new container.Container.new({child: new text.Text.new(article.mark, {style: new text_style.TextStyle.new({height: 1.3, color: global_config.GlobalConfig.fontColor})})})}), new basic.Expanded.new({flex: 1, child: new basic.AspectRatio.new({aspectRatio: 3.0 / 2.0, child: new container.Container.new({foregroundDecoration: new box_decoration.BoxDecoration.new({image: new decoration_image.DecorationImage.new({image: new _network_image_web.NetworkImage.new(article.imgUrl), centerSlice: new ui.Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0)}), borderRadius: C0 || CT.C0})})})})])});
    }
    return new container.Container.new({color: global_config.GlobalConfig.cardBackgroundColor, margin: C2 || CT.C2, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
          navigator.Navigator.of(this.context).push(dart.dynamic, new page.MaterialPageRoute.new({builder: dart.fn(context => new reply_page.ReplyPage.new(), BuildContextToReplyPage())}));
        }, VoidToNull()), child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new circle_avatar.CircleAvatar.new({backgroundImage: new _network_image_web.NetworkImage.new(article.headUrl), radius: 11.0})}), new text.Text.new("  " + dart.notNull(article.user) + " " + dart.notNull(article.action) + " · " + dart.notNull(article.time), {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor})})])}), padding: C3 || CT.C3}), new container.Container.new({child: new text.Text.new(article.title, {style: new text_style.TextStyle.new({fontWeight: ui.FontWeight.bold, fontSize: 16.0, height: 1.3, color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white70 : colors.Colors.black})}), margin: new edge_insets.EdgeInsets.only({top: 6.0, bottom: 2.0}), alignment: alignment.Alignment.topLeft}), new container.Container.new({child: markWidget, margin: new edge_insets.EdgeInsets.only({top: 6.0}), alignment: alignment.Alignment.topLeft}), new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new basic.Expanded.new({child: new text.Text.new(dart.toString(article.agreeNum) + " 赞同 · " + dart.toString(article.commentNum) + "评论", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor})})}), new (PopupMenuButtonOfString()).new({icon: new icon.Icon.new(icons.Icons.linear_scale, {color: global_config.GlobalConfig.fontColor}), itemBuilder: dart.fn(context => JSArrayOfPopupMenuItemOfString().of([new (PopupMenuItemOfString()).new({value: "选项一的值", child: new text.Text.new("屏蔽这个问题")}), new (PopupMenuItemOfString()).new({value: "选项二的值", child: new text.Text.new("取消关注 learner")}), new (PopupMenuItemOfString()).new({value: "选项二的值", child: new text.Text.new("举报")})]), BuildContextToListOfPopupMenuItemOfString())})])}), padding: C4 || CT.C4})])})})});
  }
  billboard() {
    return new container.Container.new({margin: C2 || CT.C2, color: global_config.GlobalConfig.cardBackgroundColor, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
        }, VoidToNull()), child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new circle_avatar.CircleAvatar.new({backgroundImage: new _network_image_web.NetworkImage.new("https://pic1.zhimg.com/50/v2-0c9de2012cc4c5e8b01657d96da35534_s.jpg"), radius: 11.0})}), new text.Text.new("  对啊网", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor})})])}), padding: C3 || CT.C3}), new container.Container.new({child: new text.Text.new("考过CPA，非名牌大学也能进名企", {style: new text_style.TextStyle.new({fontWeight: ui.FontWeight.bold, fontSize: 16.0, height: 1.3, color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white70 : colors.Colors.black})}), margin: new edge_insets.EdgeInsets.only({top: 6.0, bottom: 2.0}), alignment: alignment.Alignment.topLeft}), new container.Container.new({child: new basic.AspectRatio.new({aspectRatio: 3.0 / 1.0, child: new container.Container.new({foregroundDecoration: new box_decoration.BoxDecoration.new({image: new decoration_image.DecorationImage.new({image: new _network_image_web.NetworkImage.new("https://pic2.zhimg.com/50/v2-6416ef6d3181117a0177275286fac8f3_hd.jpg"), centerSlice: new ui.Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0)}), borderRadius: C0 || CT.C0})})}), margin: new edge_insets.EdgeInsets.only({top: 6.0, bottom: 14.0}), alignment: alignment.Alignment.topLeft}), new container.Container.new({child: new text.Text.new("还在羡慕别人的好工作？免费领取价值1980元的注册会计师课程，为自己充电！", {style: new text_style.TextStyle.new({height: 1.3, color: global_config.GlobalConfig.fontColor})}), padding: C5 || CT.C5}), new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new text.Text.new("广告", {style: new text_style.TextStyle.new({fontSize: 10.0, color: global_config.GlobalConfig.fontColor})}), decoration: new box_decoration.BoxDecoration.new({border: box_border.Border.all({color: global_config.GlobalConfig.fontColor}), borderRadius: new border_radius.BorderRadius.all(C6 || CT.C6)}), padding: C7 || CT.C7}), new basic.Expanded.new({child: new text.Text.new("  查看详情", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor})})}), new icon.Icon.new(icons.Icons.clear, {color: global_config.GlobalConfig.fontColor})])}), padding: C8 || CT.C8})])})})});
  }
  build(context) {
    return new single_child_scroll_view.SingleChildScrollView.new({child: new container.Container.new({margin: C9 || CT.C9, child: new basic.Column.new({children: JSArrayOfWidget().of([this.wordsCard(article.articleList[$_get](0)), this.wordsCard(article.articleList[$_get](1)), this.wordsCard(article.articleList[$_get](2)), this.billboard(), this.wordsCard(article.articleList[$_get](3))])})})});
  }
};
(follow._FollowState.new = function() {
  follow._FollowState.__proto__.new.call(this);
}).prototype = follow._FollowState.prototype;
// Exports:
exports.home__follow = follow;

//# sourceMappingURL=follow.ddc.js.map
