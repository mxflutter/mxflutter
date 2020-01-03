'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const ui = dart_sdk.ui;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const container = packages__flutter__src__widgets__actions.src__widgets__container;
const image = packages__flutter__src__widgets__actions.src__widgets__image;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const gesture_detector = packages__flutter__src__widgets__actions.src__widgets__gesture_detector;
const packages__vv_flutter__biz__my_history__model__vv_my_history_model = require('packages/vv_flutter/biz/my_history/model/vv_my_history_model');
const vv_my_history_model = packages__vv_flutter__biz__my_history__model__vv_my_history_model.biz__my_history__model__vv_my_history_model;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const border_radius = packages__flutter__src__painting___network_image_web.src__painting__border_radius;
const box_fit = packages__flutter__src__painting___network_image_web.src__painting__box_fit;
const box_decoration = packages__flutter__src__painting___network_image_web.src__painting__box_decoration;
const text_style = packages__flutter__src__painting___network_image_web.src__painting__text_style;
const packages__cached_network_image__cached_network_image = require('packages/cached_network_image/cached_network_image');
const cached_image_widget = packages__cached_network_image__cached_network_image.src__cached_image_widget;
const packages__flutter__material = require('packages/flutter/material');
const colors = packages__flutter__material.src__material__colors;
const packages__flutter__src__rendering__animated_size = require('packages/flutter/src/rendering/animated_size');
const paragraph = packages__flutter__src__rendering__animated_size.src__rendering__paragraph;
const flex = packages__flutter__src__rendering__animated_size.src__rendering__flex;
const proxy_box = packages__flutter__src__rendering__animated_size.src__rendering__proxy_box;
const vv_my_history_page_cell = Object.create(dart.library);
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let BuildContextAndStringToContainer = () => (BuildContextAndStringToContainer = dart.constFn(dart.fnType(container.Container, [framework.BuildContext, core.String])))();
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 5,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  }
});
const model$ = dart.privateName(vv_my_history_page_cell, "VVMyHistoryPageCell.model");
const isEditMode$ = dart.privateName(vv_my_history_page_cell, "VVMyHistoryPageCell.isEditMode");
const isSelected$ = dart.privateName(vv_my_history_page_cell, "VVMyHistoryPageCell.isSelected");
vv_my_history_page_cell.VVMyHistoryPageCell = class VVMyHistoryPageCell extends framework.StatefulWidget {
  get model() {
    return this[model$];
  }
  set model(value) {
    this[model$] = value;
  }
  get isEditMode() {
    return this[isEditMode$];
  }
  set isEditMode(value) {
    this[isEditMode$] = value;
  }
  get isSelected() {
    return this[isSelected$];
  }
  set isSelected(value) {
    this[isSelected$] = value;
  }
  createState() {
    return new vv_my_history_page_cell._VVMyHistoryPageCellState.new();
  }
};
(vv_my_history_page_cell.VVMyHistoryPageCell.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let model = opts && 'model' in opts ? opts.model : null;
  let isEditMode = opts && 'isEditMode' in opts ? opts.isEditMode : null;
  let isSelected = opts && 'isSelected' in opts ? opts.isSelected : null;
  this[model$] = model;
  this[isEditMode$] = isEditMode;
  this[isSelected$] = isSelected;
  vv_my_history_page_cell.VVMyHistoryPageCell.__proto__.new.call(this, {key: key});
}).prototype = vv_my_history_page_cell.VVMyHistoryPageCell.prototype;
const _getEditModeIcon = dart.privateName(vv_my_history_page_cell, "_getEditModeIcon");
const EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
const EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
const EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
const EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
let C0;
vv_my_history_page_cell._VVMyHistoryPageCellState = class _VVMyHistoryPageCellState extends framework.State$(vv_my_history_page_cell.VVMyHistoryPageCell) {
  [_getEditModeIcon]() {
    let imagePath = "assets/images/myfavoritecell_uncheck@2x.png";
    this.setState(dart.fn(() => {
      if (dart.test(this.widget.isSelected)) {
        imagePath = "assets/images/myfavoritecell_checked@2x.png";
      }
    }, VoidToNull()));
    if (dart.test(this.widget.isEditMode)) {
      return new container.Container.new({padding: new edge_insets.EdgeInsets.only({right: 16.0}), child: new image.Image.asset(imagePath, {width: 24.0, height: 24.0})});
    } else {
      return new container.Container.new();
    }
  }
  build(context) {
    let coverImage = new basic.ClipRRect.new({borderRadius: new border_radius.BorderRadius.circular(4.0), child: new cached_image_widget.CachedNetworkImage.new({placeholder: dart.fn((context, url) => new container.Container.new({color: new ui.Color.fromRGBO(229, 229, 229, 1.0), width: 124.0, height: 69.0}), BuildContextAndStringToContainer()), fadeInDuration: new core.Duration.new({milliseconds: 100}), fadeOutDuration: new core.Duration.new({milliseconds: 100}), imageUrl: this.widget.model.coverImageUrl, width: 124.0, height: 69.0, fit: box_fit.BoxFit.fill})});
    this.videoTimeLabel = new container.Container.new({decoration: new box_decoration.BoxDecoration.new({color: new ui.Color.fromRGBO(0, 0, 0, 0.4), borderRadius: new border_radius.BorderRadius.circular(2.0)}), padding: C0 || CT.C0, child: new basic.Row.new({children: JSArrayOfWidget().of([new image.Image.asset("assets/images/history_play_icon@2x.png", {width: 18.0, height: 18.0, fit: box_fit.BoxFit.fill}), new text.Text.new(this.widget.model.duration, {style: new text_style.TextStyle.new({fontSize: 10.0, fontWeight: ui.FontWeight.bold, color: colors.Colors.white})})])})});
    let title = new text.Text.new(this.widget.model.title, {maxLines: 2, overflow: paragraph.TextOverflow.ellipsis, style: new text_style.TextStyle.new({fontSize: 14.0, color: colors.Colors.black})});
    let subTitle = new text.Text.new(this.widget.model.sectionTitle, {maxLines: 2, overflow: paragraph.TextOverflow.ellipsis, style: new text_style.TextStyle.new({fontSize: 12.0, color: new ui.Color.fromRGBO(119, 119, 119, 1.0)})});
    let cell = new container.Container.new({height: 81.0, width: 1 / 0, padding: new edge_insets.EdgeInsets.only({left: 16.0}), child: new basic.Row.new({children: JSArrayOfWidget().of([framework.Widget._check(this[_getEditModeIcon]()), new basic.Stack.new({children: JSArrayOfWidget().of([coverImage, new basic.Positioned.new({bottom: 4.0, right: 4.0, child: framework.Widget._check(this.videoTimeLabel)})])}), new basic.Expanded.new({child: new container.Container.new({padding: new edge_insets.EdgeInsets.only({left: 10.0, right: 16.0}), child: new basic.Column.new({mainAxisAlignment: flex.MainAxisAlignment.center, crossAxisAlignment: flex.CrossAxisAlignment.start, children: JSArrayOfWidget().of([title, subTitle])})})})])})});
    return new gesture_detector.GestureDetector.new({behavior: proxy_box.HitTestBehavior.opaque, onTap: dart.fn(() => {
        if (dart.test(this.widget.isEditMode)) {
          this.setState(dart.fn(() => {
            this.widget.isSelected = !dart.test(this.widget.isSelected);
            new vv_my_history_model.ClickCellNotification.new(this.widget.model.getSectionRowKey(), dart.test(this.widget.isSelected) ? vv_my_history_model.ClickCellOptionType.ClickCellOptionType_Clicked : vv_my_history_model.ClickCellOptionType.ClickCellOptionType_Unclick).dispatch(context);
          }, VoidToNull()));
        } else {
          core.print("click cell");
          new vv_my_history_model.ClickCellNotification.new(this.widget.model.getSectionRowKey(), vv_my_history_model.ClickCellOptionType.ClickCellOptionType_YiTuoSan).dispatch(context);
        }
      }, VoidToNull()), child: cell});
  }
};
(vv_my_history_page_cell._VVMyHistoryPageCellState.new = function() {
  this.videoTimeLabel = null;
  vv_my_history_page_cell._VVMyHistoryPageCellState.__proto__.new.call(this);
}).prototype = vv_my_history_page_cell._VVMyHistoryPageCellState.prototype;
// Exports:
exports.biz__my_history__view__vv_my_history_page_cell = vv_my_history_page_cell;

//# sourceMappingURL=vv_my_history_page_cell.ddc.js.map
