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
const packages__zhihu__global_config = require('packages/zhihu/global_config');
const global_config = packages__zhihu__global_config.global_config;
const packages__flutter__material = require('packages/flutter/material');
const flat_button = packages__flutter__material.src__material__flat_button;
const page = packages__flutter__material.src__material__page;
const colors = packages__flutter__material.src__material__colors;
const icons = packages__flutter__material.src__material__icons;
const packages__zhihu__home__question_page = require('packages/zhihu/home/question_page');
const reply_page = packages__zhihu__home__question_page.home__reply_page;
const packages__zhihu__home__article = require('packages/zhihu/home/article');
const article = packages__zhihu__home__article.home__article;
const recommend = Object.create(dart.library);
const $toString = dartx.toString;
const $_get = dartx._get;
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
let BuildContextToReplyPage = () => (BuildContextToReplyPage = dart.constFn(dart.fnType(reply_page.ReplyPage, [framework.BuildContext])))();
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
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
      [EdgeInsets_bottom]: 10,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C4() {
    return C4 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 5,
      [EdgeInsets_left]: 0
    });
  }
});
recommend.Recommend = class Recommend extends framework.StatefulWidget {
  createState() {
    return new recommend.RecommendState.new();
  }
};
(recommend.Recommend.new = function() {
  recommend.Recommend.__proto__.new.call(this);
}).prototype = recommend.Recommend.prototype;
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
recommend.RecommendState = class RecommendState extends framework.State$(recommend.Recommend) {
  commonCard(article) {
    let markWidget = null;
    if (article.imgUrl == null) {
      markWidget = new text.Text.new(dart.notNull(article.user) + " :  " + dart.notNull(article.mark), {style: new text_style.TextStyle.new({height: 1.3, color: global_config.GlobalConfig.fontColor})});
    } else {
      markWidget = new basic.Row.new({children: JSArrayOfWidget().of([new basic.Expanded.new({flex: 2, child: new container.Container.new({child: new text.Text.new(dart.notNull(article.user) + " :  " + dart.notNull(article.mark), {style: new text_style.TextStyle.new({height: 1.3, color: global_config.GlobalConfig.fontColor})})})}), new basic.Expanded.new({flex: 1, child: new basic.AspectRatio.new({aspectRatio: 3.0 / 2.0, child: new container.Container.new({foregroundDecoration: new box_decoration.BoxDecoration.new({image: new decoration_image.DecorationImage.new({image: new _network_image_web.NetworkImage.new(article.imgUrl), centerSlice: new ui.Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0)}), borderRadius: C0 || CT.C0})})})})])});
    }
    return new container.Container.new({color: global_config.GlobalConfig.cardBackgroundColor, margin: C2 || CT.C2, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
          navigator.Navigator.of(this.context).push(dart.dynamic, new page.MaterialPageRoute.new({builder: dart.fn(context => new reply_page.ReplyPage.new(), BuildContextToReplyPage())}));
        }, VoidToNull()), child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({child: new text.Text.new(article.title, {style: new text_style.TextStyle.new({fontWeight: ui.FontWeight.bold, fontSize: 16.0, height: 1.3, color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white70 : colors.Colors.black})}), margin: new edge_insets.EdgeInsets.only({top: 6.0, bottom: 2.0}), alignment: alignment.Alignment.topLeft}), new container.Container.new({child: markWidget, margin: new edge_insets.EdgeInsets.only({top: 6.0, bottom: 14.0}), alignment: alignment.Alignment.topLeft}), new container.Container.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new basic.Expanded.new({child: new text.Text.new(dart.toString(article.agreeNum) + " 赞同 · " + dart.toString(article.commentNum) + "评论", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor})})}), new icon.Icon.new(icons.Icons.linear_scale, {color: global_config.GlobalConfig.fontColor})])}), padding: C3 || CT.C3})])})})});
  }
  build(context) {
    return new single_child_scroll_view.SingleChildScrollView.new({child: new container.Container.new({margin: C4 || CT.C4, child: new basic.Column.new({children: JSArrayOfWidget().of([this.commonCard(article.articleList[$_get](0)), this.commonCard(article.articleList[$_get](1))])})})});
  }
};
(recommend.RecommendState.new = function() {
  recommend.RecommendState.__proto__.new.call(this);
}).prototype = recommend.RecommendState.prototype;
// Exports:
exports.home__recommend = recommend;

//# sourceMappingURL=recommend.ddc.js.map
