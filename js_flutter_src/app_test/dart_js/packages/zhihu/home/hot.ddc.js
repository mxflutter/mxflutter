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
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const icon = packages__flutter__src__widgets__actions.src__widgets__icon;
const single_child_scroll_view = packages__flutter__src__widgets__actions.src__widgets__single_child_scroll_view;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const box_decoration = packages__flutter__src__painting___network_image_web.src__painting__box_decoration;
const box_border = packages__flutter__src__painting___network_image_web.src__painting__box_border;
const borders = packages__flutter__src__painting___network_image_web.src__painting__borders;
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const text_style = packages__flutter__src__painting___network_image_web.src__painting__text_style;
const alignment = packages__flutter__src__painting___network_image_web.src__painting__alignment;
const decoration_image = packages__flutter__src__painting___network_image_web.src__painting__decoration_image;
const _network_image_web = packages__flutter__src__painting___network_image_web.src__painting___network_image_web;
const border_radius = packages__flutter__src__painting___network_image_web.src__painting__border_radius;
const packages__zhihu__global_config = require('packages/zhihu/global_config');
const global_config = packages__zhihu__global_config.global_config;
const packages__flutter__material = require('packages/flutter/material');
const colors = packages__flutter__material.src__material__colors;
const flat_button = packages__flutter__material.src__material__flat_button;
const page = packages__flutter__material.src__material__page;
const icons = packages__flutter__material.src__material__icons;
const packages__zhihu__home__question_page = require('packages/zhihu/home/question_page');
const question_page = packages__zhihu__home__question_page.home__question_page;
const packages__zhihu__home__question = require('packages/zhihu/home/question');
const question = packages__zhihu__home__question.home__question;
const hot = Object.create(dart.library);
const $compareTo = dartx.compareTo;
const $_get = dartx._get;
let BuildContextToQuestionPage = () => (BuildContextToQuestionPage = dart.constFn(dart.fnType(question_page.QuestionPage, [framework.BuildContext])))();
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C2() {
    return C2 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 8,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 8,
      [EdgeInsets_left]: 0
    });
  },
  get C35() {
    return C35 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 10,
      [EdgeInsets_right]: 4,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C45() {
    return C45 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 8,
      [EdgeInsets_right]: 4,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C68() {
    return C68 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 6,
      [Radius_x]: 6
    });
  },
  get C67() {
    return C67 = dart.const({
      __proto__: border_radius.BorderRadius.prototype,
      [BorderRadius_bottomRight]: C68 || CT.C68,
      [BorderRadius_bottomLeft]: C68 || CT.C68,
      [BorderRadius_topRight]: C68 || CT.C68,
      [BorderRadius_topLeft]: C68 || CT.C68
    });
  },
  get C95() {
    return C95 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 5,
      [EdgeInsets_left]: 0
    });
  }
});
hot.Hot = class Hot extends framework.StatefulWidget {
  createState() {
    return new hot.HotState.new();
  }
};
(hot.Hot.new = function(opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  hot.Hot.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = hot.Hot.prototype;
;
;
dart.setLibraryUri(hot.Hot, "package:zhihu/home/hot.dart");
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
const EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
const EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
const EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
const EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
let C2;
let C35;
let C45;
const Radius_y = dart.privateName(ui, "Radius.y");
const Radius_x = dart.privateName(ui, "Radius.x");
let C68;
const BorderRadius_bottomRight = dart.privateName(border_radius, "BorderRadius.bottomRight");
const BorderRadius_bottomLeft = dart.privateName(border_radius, "BorderRadius.bottomLeft");
const BorderRadius_topRight = dart.privateName(border_radius, "BorderRadius.topRight");
const BorderRadius_topLeft = dart.privateName(border_radius, "BorderRadius.topLeft");
let C67;
let C95;
hot.HotState = class HotState extends framework.State$(hot.Hot) {
  hotCard(question) {
    return new container.Container.new({decoration: new box_decoration.BoxDecoration.new({color: global_config.GlobalConfig.cardBackgroundColor, border: new box_border.BorderDirectional.new({bottom: new borders.BorderSide.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white12 : colors.Colors.black12, width: 1.0})})}), child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
          navigator.Navigator.of(this.context).push(dart.dynamic, new page.MaterialPageRoute.new({builder: dart.fn(context => new question_page.QuestionPage.new({$creationLocationd_0dea112b090073317d4: {}}), BuildContextToQuestionPage())}));
        }, VoidToNull()), child: new container.Container.new({padding: C2 || CT.C2, child: new basic.Row.new({children: JSArrayOfWidget().of([new basic.Expanded.new({flex: 1, child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({child: new text.Text.new(question.order, {style: new text_style.TextStyle.new({color: question.order[$compareTo]("03") <= 0 ? colors.Colors.red : colors.Colors.yellow, fontSize: 18.0}), $creationLocationd_0dea112b090073317d4: {}}), alignment: alignment.Alignment.topLeft, $creationLocationd_0dea112b090073317d4: {}}), question.rise != null ? new basic.Row.new({children: JSArrayOfWidget().of([new icon.Icon.new(icons.Icons.arrow_upward, {color: colors.Colors.red, size: 10.0, $creationLocationd_0dea112b090073317d4: {}}), new text.Text.new(question.rise, {style: new text_style.TextStyle.new({color: colors.Colors.red, fontSize: 10.0}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}) : new container.Container.new({$creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new basic.Expanded.new({flex: 6, child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({child: new text.Text.new(question.title, {style: new text_style.TextStyle.new({fontWeight: ui.FontWeight.bold, fontSize: 16.0, height: 1.1, color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white70 : colors.Colors.black}), $creationLocationd_0dea112b090073317d4: {}}), padding: C35 || CT.C35, alignment: alignment.Alignment.topLeft, $creationLocationd_0dea112b090073317d4: {}}), question.mark != null ? new container.Container.new({child: new text.Text.new(question.mark, {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}}), alignment: alignment.Alignment.topLeft, padding: C45 || CT.C45, $creationLocationd_0dea112b090073317d4: {}}) : new container.Container.new({$creationLocationd_0dea112b090073317d4: {}}), new container.Container.new({child: new text.Text.new(question.hotNum, {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor}), $creationLocationd_0dea112b090073317d4: {}}), alignment: alignment.Alignment.topLeft, $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new basic.Expanded.new({flex: 3, child: new basic.AspectRatio.new({aspectRatio: 3.0 / 2.0, child: new container.Container.new({foregroundDecoration: new box_decoration.BoxDecoration.new({image: new decoration_image.DecorationImage.new({image: new _network_image_web.NetworkImage.new(question.imgUrl), centerSlice: new ui.Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0)}), borderRadius: C67 || CT.C67}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}});
  }
  build(context) {
    return new single_child_scroll_view.SingleChildScrollView.new({child: new container.Container.new({margin: C95 || CT.C95, child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C95 || CT.C95, $creationLocationd_0dea112b090073317d4: {}}), this.hotCard(question.questionList[$_get](0)), this.hotCard(question.questionList[$_get](1)), this.hotCard(question.questionList[$_get](2)), this.hotCard(question.questionList[$_get](3)), this.hotCard(question.questionList[$_get](4))]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}});
  }
};
(hot.HotState.new = function() {
  hot.HotState.__proto__.new.call(this);
  ;
}).prototype = hot.HotState.prototype;
;
;
dart.setLibraryUri(hot.HotState, "package:zhihu/home/hot.dart");
// Exports:
exports.home__hot = hot;

//# sourceMappingURL=hot.ddc.js.map
