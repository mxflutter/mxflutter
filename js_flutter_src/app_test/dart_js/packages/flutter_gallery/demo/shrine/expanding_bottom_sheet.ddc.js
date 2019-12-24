'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const ui = dart_sdk.ui;
const async = dart_sdk.async;
const collection = dart_sdk.collection;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__foundation___bitfield_web = require('packages/flutter/src/foundation/_bitfield_web');
const assertions = packages__flutter__src__foundation___bitfield_web.src__foundation__assertions;
const key = packages__flutter__src__foundation___bitfield_web.src__foundation__key;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const implicit_animations = packages__flutter__src__widgets__actions.src__widgets__implicit_animations;
const icon = packages__flutter__src__widgets__actions.src__widgets__icon;
const icon_data = packages__flutter__src__widgets__actions.src__widgets__icon_data;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const container = packages__flutter__src__widgets__actions.src__widgets__container;
const media_query = packages__flutter__src__widgets__actions.src__widgets__media_query;
const transitions = packages__flutter__src__widgets__actions.src__widgets__transitions;
const animated_size = packages__flutter__src__widgets__actions.src__widgets__animated_size;
const will_pop_scope = packages__flutter__src__widgets__actions.src__widgets__will_pop_scope;
const gesture_detector = packages__flutter__src__widgets__actions.src__widgets__gesture_detector;
const ticker_provider = packages__flutter__src__widgets__actions.src__widgets__ticker_provider;
const animated_list = packages__flutter__src__widgets__actions.src__widgets__animated_list;
const scroll_physics = packages__flutter__src__widgets__actions.src__widgets__scroll_physics;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const safe_area = packages__flutter__src__widgets__actions.src__widgets__safe_area;
const scroll_view = packages__flutter__src__widgets__actions.src__widgets__scroll_view;
const localizations = packages__flutter__src__widgets__actions.src__widgets__localizations;
const image = packages__flutter__src__widgets__actions.src__widgets__image;
const packages__flutter__src__animation__animation = require('packages/flutter/src/animation/animation');
const animation_controller = packages__flutter__src__animation__animation.src__animation__animation_controller;
const animation = packages__flutter__src__animation__animation.src__animation__animation;
const tween = packages__flutter__src__animation__animation.src__animation__tween;
const animations = packages__flutter__src__animation__animation.src__animation__animations;
const curves = packages__flutter__src__animation__animation.src__animation__curves;
const tween_sequence = packages__flutter__src__animation__animation.src__animation__tween_sequence;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const beveled_rectangle_border = packages__flutter__src__painting___network_image_web.src__painting__beveled_rectangle_border;
const border_radius = packages__flutter__src__painting___network_image_web.src__painting__border_radius;
const fractional_offset = packages__flutter__src__painting___network_image_web.src__painting__fractional_offset;
const basic_types = packages__flutter__src__painting___network_image_web.src__painting__basic_types;
const box_decoration = packages__flutter__src__painting___network_image_web.src__painting__box_decoration;
const decoration_image = packages__flutter__src__painting___network_image_web.src__painting__decoration_image;
const image_provider = packages__flutter__src__painting___network_image_web.src__painting__image_provider;
const box_fit = packages__flutter__src__painting___network_image_web.src__painting__box_fit;
const borders = packages__flutter__src__painting___network_image_web.src__painting__borders;
const packages__scoped_model__scoped_model = require('packages/scoped_model/scoped_model');
const scoped_model = packages__scoped_model__scoped_model.scoped_model;
const packages__flutter_gallery__demo__shrine__model__app_state_model = require('packages/flutter_gallery/demo/shrine/model/app_state_model');
const app_state_model = packages__flutter_gallery__demo__shrine__model__app_state_model.demo__shrine__model__app_state_model;
const packages__flutter__material = require('packages/flutter/material');
const material = packages__flutter__material.src__material__material;
const theme = packages__flutter__material.src__material__theme;
const scaffold = packages__flutter__material.src__material__scaffold;
const icon_button = packages__flutter__material.src__material__icon_button;
const raised_button = packages__flutter__material.src__material__raised_button;
const divider = packages__flutter__material.src__material__divider;
const packages__flutter_gallery__demo__shrine__colors = require('packages/flutter_gallery/demo/shrine/colors');
const colors = packages__flutter_gallery__demo__shrine__colors.demo__shrine__colors;
const packages__flutter__src__gestures__arena = require('packages/flutter/src/gestures/arena');
const system_navigator = packages__flutter__src__gestures__arena.src__services__system_navigator;
const packages__flutter__src__rendering__animated_size = require('packages/flutter/src/rendering/animated_size');
const proxy_box = packages__flutter__src__rendering__animated_size.src__rendering__proxy_box;
const flex = packages__flutter__src__rendering__animated_size.src__rendering__flex;
const packages__flutter_gallery__demo__shrine__model__product = require('packages/flutter_gallery/demo/shrine/model/product');
const product = packages__flutter_gallery__demo__shrine__model__product.demo__shrine__model__product;
const packages__intl__intl = require('packages/intl/intl');
const intl = packages__intl__intl.intl;
const expanding_bottom_sheet = Object.create(dart.library);
const shopping_cart = Object.create(dart.library);
const $length = dartx.length;
const $keys = dartx.keys;
const $toList = dartx.toList;
const $isEmpty = dartx.isEmpty;
const $isNotEmpty = dartx.isNotEmpty;
const $_get = dartx._get;
const $insert = dartx.insert;
const $indexOf = dartx.indexOf;
const $removeAt = dartx.removeAt;
const $map = dartx.map;
let StateOfStatefulWidget = () => (StateOfStatefulWidget = dart.constFn(framework.State$(framework.StatefulWidget)))();
let GlobalKeyOfStateOfStatefulWidget = () => (GlobalKeyOfStateOfStatefulWidget = dart.constFn(framework.GlobalKey$(StateOfStatefulWidget())))();
let TweenOfdouble = () => (TweenOfdouble = dart.constFn(tween.Tween$(core.double)))();
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
let ScopedModelDescendantOfAppStateModel = () => (ScopedModelDescendantOfAppStateModel = dart.constFn(scoped_model.ScopedModelDescendant$(app_state_model.AppStateModel)))();
let BuildContextAndWidgetAndAppStateModelToAnimatedBuilder = () => (BuildContextAndWidgetAndAppStateModelToAnimatedBuilder = dart.constFn(dart.fnType(transitions.AnimatedBuilder, [framework.BuildContext, framework.Widget, app_state_model.AppStateModel])))();
let GlobalKeyOfAnimatedListState = () => (GlobalKeyOfAnimatedListState = dart.constFn(framework.GlobalKey$(animated_list.AnimatedListState)))();
let ListOfint = () => (ListOfint = dart.constFn(core.List$(core.int)))();
let LinkedHashSetOfint = () => (LinkedHashSetOfint = dart.constFn(collection.LinkedHashSet$(core.int)))();
let BuildContextAndWidgetAndAppStateModelToWidget = () => (BuildContextAndWidgetAndAppStateModelToWidget = dart.constFn(dart.fnType(framework.Widget, [framework.BuildContext, framework.Widget, app_state_model.AppStateModel])))();
let JSArrayOfint = () => (JSArrayOfint = dart.constFn(_interceptors.JSArray$(core.int)))();
let AnimationOfdouble = () => (AnimationOfdouble = dart.constFn(animation.Animation$(core.double)))();
let BuildContextAndAnimationOfdoubleToWidget = () => (BuildContextAndAnimationOfdoubleToWidget = dart.constFn(dart.fnType(framework.Widget, [framework.BuildContext, AnimationOfdouble()])))();
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let intToShoppingCartRow = () => (intToShoppingCartRow = dart.constFn(dart.fnType(shopping_cart.ShoppingCartRow, [core.int])))();
let VoidTovoid = () => (VoidTovoid = dart.constFn(dart.fnType(dart.void, [])))();
let BuildContextAndWidgetAndAppStateModelToStack = () => (BuildContextAndWidgetAndAppStateModelToStack = dart.constFn(dart.fnType(basic.Stack, [framework.BuildContext, framework.Widget, app_state_model.AppStateModel])))();
let ValueKeyOfint = () => (ValueKeyOfint = dart.constFn(key.ValueKey$(core.int)))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: core.Duration.prototype,
      [Duration__duration]: 500000
    });
  },
  get C2() {
    return C2 = dart.const({
      __proto__: curves.Cubic.prototype,
      [Cubic_d]: 1,
      [Cubic_c]: 0.2,
      [Cubic_b]: 0,
      [Cubic_a]: 0.4
    });
  },
  get C1() {
    return C1 = dart.const({
      __proto__: curves.Interval.prototype,
      [Interval_curve]: C2 || CT.C2,
      [Interval_end]: 0.3,
      [Interval_begin]: 0
    });
  },
  get C4() {
    return C4 = dart.const({
      __proto__: curves._Linear.prototype
    });
  },
  get C3() {
    return C3 = dart.const({
      __proto__: curves.Interval.prototype,
      [Interval_curve]: C4 || CT.C4,
      [Interval_end]: 0.87,
      [Interval_begin]: 0
    });
  },
  get C5() {
    return C5 = dart.const({
      __proto__: curves.Interval.prototype,
      [Interval_curve]: C4 || CT.C4,
      [Interval_end]: 1,
      [Interval_begin]: 0.434
    });
  },
  get C6() {
    return C6 = dart.const({
      __proto__: curves.Interval.prototype,
      [Interval_curve]: C4 || CT.C4,
      [Interval_end]: 0.3,
      [Interval_begin]: 0
    });
  },
  get C7() {
    return C7 = dart.const({
      __proto__: curves.Interval.prototype,
      [Interval_curve]: C4 || CT.C4,
      [Interval_end]: 0.766,
      [Interval_begin]: 0.532
    });
  },
  get C8() {
    return C8 = dart.const({
      __proto__: curves.Interval.prototype,
      [Interval_curve]: C4 || CT.C4,
      [Interval_end]: 0.6,
      [Interval_begin]: 0.3
    });
  },
  get C9() {
    return C9 = dart.const({
      __proto__: curves.Interval.prototype,
      [Interval_curve]: C4 || CT.C4,
      [Interval_end]: 1,
      [Interval_begin]: 0.766
    });
  },
  get C10() {
    return C10 = dart.const({
      __proto__: edge_insets.EdgeInsetsDirectional.prototype,
      [EdgeInsetsDirectional_bottom]: 0,
      [EdgeInsetsDirectional_end]: 8,
      [EdgeInsetsDirectional_top]: 0,
      [EdgeInsetsDirectional_start]: 20
    });
  },
  get C11() {
    return C11 = dart.const({
      __proto__: edge_insets.EdgeInsetsDirectional.prototype,
      [EdgeInsetsDirectional_bottom]: 0,
      [EdgeInsetsDirectional_end]: 8,
      [EdgeInsetsDirectional_top]: 0,
      [EdgeInsetsDirectional_start]: 32
    });
  },
  get C13() {
    return C13 = dart.const({
      __proto__: icon_data.IconData.prototype,
      [IconData_matchTextDirection]: false,
      [IconData_fontPackage]: null,
      [IconData_fontFamily]: "MaterialIcons",
      [IconData_codePoint]: 59596
    });
  },
  get C12() {
    return C12 = dart.const({
      __proto__: icon.Icon.prototype,
      [Widget_key]: null,
      [Icon_textDirection]: null,
      [Icon_semanticLabel]: null,
      [Icon_color]: null,
      [Icon_size]: null,
      [Icon_icon]: C13 || CT.C13
    });
  },
  get C14() {
    return C14 = dart.const({
      __proto__: core.Duration.prototype,
      [Duration__duration]: 225000
    });
  },
  get C20() {
    return C20 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 8,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 8,
      [EdgeInsets_left]: 0
    });
  },
  get C48() {
    return C48 = dart.const({
      __proto__: core.Duration.prototype,
      [Duration__duration]: 0
    });
  },
  get C66() {
    return C66 = dart.const({
      __proto__: ui.Offset.prototype,
      [OffsetBase__dy]: 0,
      [OffsetBase__dx]: 1
    });
  },
  get C67() {
    return C67 = dart.const({
      __proto__: ui.Offset.prototype,
      [OffsetBase__dy]: 0,
      [OffsetBase__dx]: 0.379146
    });
  },
  get C68() {
    return C68 = dart.const({
      __proto__: ui.Offset.prototype,
      [OffsetBase__dy]: 0,
      [OffsetBase__dx]: 0
    });
  },
  get C108() {
    return C108 = dart.const({
      __proto__: curves.Cubic.prototype,
      [Cubic_d]: 1,
      [Cubic_c]: 1,
      [Cubic_b]: 0,
      [Cubic_a]: 0.42
    });
  },
  get C107() {
    return C107 = dart.const({
      __proto__: curves.Interval.prototype,
      [Interval_curve]: C108 || CT.C108,
      [Interval_end]: 1,
      [Interval_begin]: 0.33
    });
  },
  get C109() {
    return C109 = dart.const({
      __proto__: curves.Interval.prototype,
      [Interval_curve]: C4 || CT.C4,
      [Interval_end]: 1,
      [Interval_begin]: 0.33
    });
  },
  get C115() {
    return C115 = dart.const({
      __proto__: scroll_physics.NeverScrollableScrollPhysics.prototype,
      [ScrollPhysics_parent]: null
    });
  },
  get C139() {
    return C139 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 10,
      [Radius_x]: 10
    });
  },
  get C138() {
    return C138 = dart.const({
      __proto__: border_radius.BorderRadius.prototype,
      [BorderRadius_bottomRight]: C139 || CT.C139,
      [BorderRadius_bottomLeft]: C139 || CT.C139,
      [BorderRadius_topRight]: C139 || CT.C139,
      [BorderRadius_topLeft]: C139 || CT.C139
    });
  },
  get C140() {
    return C140 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 16
    });
  },
  get C155() {
    return C155 = dart.const({
      __proto__: curves.Cubic.prototype,
      [Cubic_d]: 0.464,
      [Cubic_c]: 0.757,
      [Cubic_b]: 0,
      [Cubic_a]: 0.548
    });
  },
  get C156() {
    return C156 = dart.const({
      __proto__: curves.Cubic.prototype,
      [Cubic_d]: 1,
      [Cubic_c]: 0.41,
      [Cubic_b]: 0.94,
      [Cubic_a]: 0.23
    });
  },
  get C163() {
    return C163 = dart.const({
      __proto__: icon_data.IconData.prototype,
      [IconData_matchTextDirection]: false,
      [IconData_fontPackage]: null,
      [IconData_fontFamily]: "MaterialIcons",
      [IconData_codePoint]: 58131
    });
  },
  get C162() {
    return C162 = dart.const({
      __proto__: icon.Icon.prototype,
      [Widget_key]: null,
      [Icon_textDirection]: null,
      [Icon_semanticLabel]: null,
      [Icon_color]: null,
      [Icon_size]: null,
      [Icon_icon]: C163 || CT.C163
    });
  },
  get C176() {
    return C176 = dart.const({
      __proto__: basic.SizedBox.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: null,
      [SizedBox_height]: null,
      [SizedBox_width]: 16
    });
  },
  get C183() {
    return C183 = dart.const({
      __proto__: basic.SizedBox.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: null,
      [SizedBox_height]: 16,
      [SizedBox_width]: null
    });
  },
  get C190() {
    return C190 = dart.const({
      __proto__: basic.SizedBox.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: null,
      [SizedBox_height]: 100,
      [SizedBox_width]: null
    });
  },
  get C196() {
    return C196 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 7,
      [Radius_x]: 7
    });
  },
  get C195() {
    return C195 = dart.const({
      __proto__: border_radius.BorderRadius.prototype,
      [BorderRadius_bottomRight]: C196 || CT.C196,
      [BorderRadius_bottomLeft]: C196 || CT.C196,
      [BorderRadius_topRight]: C196 || CT.C196,
      [BorderRadius_topLeft]: C196 || CT.C196
    });
  },
  get C198() {
    return C198 = dart.const({
      __proto__: borders.BorderStyle.prototype,
      [_name]: "BorderStyle.none",
      index: 0
    });
  },
  get C199() {
    return C199 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4278190080.0
    });
  },
  get C197() {
    return C197 = dart.const({
      __proto__: borders.BorderSide.prototype,
      [BorderSide_style]: C198 || CT.C198,
      [BorderSide_width]: 0,
      [BorderSide_color]: C199 || CT.C199
    });
  },
  get C194() {
    return C194 = dart.const({
      __proto__: beveled_rectangle_border.BeveledRectangleBorder.prototype,
      [BeveledRectangleBorder_borderRadius]: C195 || CT.C195,
      [BeveledRectangleBorder_side]: C197 || CT.C197
    });
  },
  get C201() {
    return C201 = dart.const({
      __proto__: text.Text.prototype,
      [Widget_key]: null,
      [Text_textWidthBasis]: null,
      [Text_semanticsLabel]: null,
      [Text_maxLines]: null,
      [Text_textScaleFactor]: null,
      [Text_overflow]: null,
      [Text_softWrap]: null,
      [Text_locale]: null,
      [Text_textDirection]: null,
      [Text_textAlign]: null,
      [Text_strutStyle]: null,
      [Text_style]: null,
      [Text_textSpan]: null,
      [Text_data]: "CLEAR CART"
    });
  },
  get C202() {
    return C202 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 12,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 12,
      [EdgeInsets_left]: 0
    });
  },
  get C200() {
    return C200 = dart.const({
      __proto__: basic.Padding.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: C201 || CT.C201,
      [Padding_padding]: C202 || CT.C202
    });
  },
  get C232() {
    return C232 = dart.const({
      __proto__: basic.SizedBox.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: null,
      [SizedBox_height]: null,
      [SizedBox_width]: 60
    });
  },
  get C233() {
    return C233 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 16,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C235() {
    return C235 = dart.const({
      __proto__: text.Text.prototype,
      [Widget_key]: null,
      [Text_textWidthBasis]: null,
      [Text_semanticsLabel]: null,
      [Text_maxLines]: null,
      [Text_textScaleFactor]: null,
      [Text_overflow]: null,
      [Text_softWrap]: null,
      [Text_locale]: null,
      [Text_textDirection]: null,
      [Text_textAlign]: null,
      [Text_strutStyle]: null,
      [Text_style]: null,
      [Text_textSpan]: null,
      [Text_data]: "TOTAL"
    });
  },
  get C236() {
    return C236 = dart.const({
      __proto__: flex.FlexFit.prototype,
      [_name$]: "FlexFit.tight",
      index: 0
    });
  },
  get C234() {
    return C234 = dart.const({
      __proto__: basic.Expanded.prototype,
      [Widget_key]: null,
      [ProxyWidget_child]: C235 || CT.C235,
      [Flexible_fit]: C236 || CT.C236,
      [Flexible_flex]: 1
    });
  },
  get C246() {
    return C246 = dart.const({
      __proto__: text.Text.prototype,
      [Widget_key]: null,
      [Text_textWidthBasis]: null,
      [Text_semanticsLabel]: null,
      [Text_maxLines]: null,
      [Text_textScaleFactor]: null,
      [Text_overflow]: null,
      [Text_softWrap]: null,
      [Text_locale]: null,
      [Text_textDirection]: null,
      [Text_textAlign]: null,
      [Text_strutStyle]: null,
      [Text_style]: null,
      [Text_textSpan]: null,
      [Text_data]: "Subtotal:"
    });
  },
  get C245() {
    return C245 = dart.const({
      __proto__: basic.Expanded.prototype,
      [Widget_key]: null,
      [ProxyWidget_child]: C246 || CT.C246,
      [Flexible_fit]: C236 || CT.C236,
      [Flexible_flex]: 1
    });
  },
  get C254() {
    return C254 = dart.const({
      __proto__: basic.SizedBox.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: null,
      [SizedBox_height]: 4,
      [SizedBox_width]: null
    });
  },
  get C256() {
    return C256 = dart.const({
      __proto__: text.Text.prototype,
      [Widget_key]: null,
      [Text_textWidthBasis]: null,
      [Text_semanticsLabel]: null,
      [Text_maxLines]: null,
      [Text_textScaleFactor]: null,
      [Text_overflow]: null,
      [Text_softWrap]: null,
      [Text_locale]: null,
      [Text_textDirection]: null,
      [Text_textAlign]: null,
      [Text_strutStyle]: null,
      [Text_style]: null,
      [Text_textSpan]: null,
      [Text_data]: "Shipping:"
    });
  },
  get C255() {
    return C255 = dart.const({
      __proto__: basic.Expanded.prototype,
      [Widget_key]: null,
      [ProxyWidget_child]: C256 || CT.C256,
      [Flexible_fit]: C236 || CT.C236,
      [Flexible_flex]: 1
    });
  },
  get C265() {
    return C265 = dart.const({
      __proto__: text.Text.prototype,
      [Widget_key]: null,
      [Text_textWidthBasis]: null,
      [Text_semanticsLabel]: null,
      [Text_maxLines]: null,
      [Text_textScaleFactor]: null,
      [Text_overflow]: null,
      [Text_softWrap]: null,
      [Text_locale]: null,
      [Text_textDirection]: null,
      [Text_textAlign]: null,
      [Text_strutStyle]: null,
      [Text_style]: null,
      [Text_textSpan]: null,
      [Text_data]: "Tax:"
    });
  },
  get C264() {
    return C264 = dart.const({
      __proto__: basic.Expanded.prototype,
      [Widget_key]: null,
      [ProxyWidget_child]: C265 || CT.C265,
      [Flexible_fit]: C236 || CT.C236,
      [Flexible_flex]: 1
    });
  },
  get C286() {
    return C286 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 16,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C288() {
    return C288 = dart.const({
      __proto__: icon_data.IconData.prototype,
      [IconData_matchTextDirection]: false,
      [IconData_fontPackage]: null,
      [IconData_fontFamily]: "MaterialIcons",
      [IconData_codePoint]: 57693
    });
  },
  get C287() {
    return C287 = dart.const({
      __proto__: icon.Icon.prototype,
      [Widget_key]: null,
      [Icon_textDirection]: null,
      [Icon_semanticLabel]: null,
      [Icon_color]: null,
      [Icon_size]: null,
      [Icon_icon]: C288 || CT.C288
    });
  },
  get C332() {
    return C332 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4282657581.0
    });
  },
  get C331() {
    return C331 = dart.const({
      __proto__: divider.Divider.prototype,
      [Widget_key]: null,
      [Divider_color]: C332 || CT.C332,
      [Divider_endIndent]: null,
      [Divider_indent]: null,
      [Divider_thickness]: null,
      [Divider_height]: 10
    });
  }
});
const hideController$ = dart.privateName(expanding_bottom_sheet, "ExpandingBottomSheet.hideController");
expanding_bottom_sheet.ExpandingBottomSheet = class ExpandingBottomSheet extends framework.StatefulWidget {
  get hideController() {
    return this[hideController$];
  }
  set hideController(value) {
    super.hideController = value;
  }
  createState() {
    return new expanding_bottom_sheet._ExpandingBottomSheetState.new();
  }
  static of(context, opts) {
    let isNullOk = opts && 'isNullOk' in opts ? opts.isNullOk : false;
    if (!(isNullOk != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/shrine/expanding_bottom_sheet.dart", 41, 12, "isNullOk != null");
    if (!(context != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/shrine/expanding_bottom_sheet.dart", 42, 12, "context != null");
    let result = context.findAncestorStateOfType(expanding_bottom_sheet._ExpandingBottomSheetState);
    if (dart.test(isNullOk) || result != null) {
      return result;
    }
    dart.throw(assertions.FlutterError.new("ExpandingBottomSheet.of() called with a context that does not contain a ExpandingBottomSheet.\n"));
  }
};
(expanding_bottom_sheet.ExpandingBottomSheet.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let hideController = opts && 'hideController' in opts ? opts.hideController : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[hideController$] = hideController;
  if (!(hideController != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/shrine/expanding_bottom_sheet.dart", 32, 16, "hideController != null");
  expanding_bottom_sheet.ExpandingBottomSheet.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = expanding_bottom_sheet.ExpandingBottomSheet.prototype;
dart.addTypeTests(expanding_bottom_sheet.ExpandingBottomSheet);
dart.setMethodSignature(expanding_bottom_sheet.ExpandingBottomSheet, () => ({
  __proto__: dart.getMethods(expanding_bottom_sheet.ExpandingBottomSheet.__proto__),
  createState: dart.fnType(expanding_bottom_sheet._ExpandingBottomSheetState, [])
}));
dart.setLibraryUri(expanding_bottom_sheet.ExpandingBottomSheet, "package:flutter_gallery/demo/shrine/expanding_bottom_sheet.dart");
dart.setFieldSignature(expanding_bottom_sheet.ExpandingBottomSheet, () => ({
  __proto__: dart.getFields(expanding_bottom_sheet.ExpandingBottomSheet.__proto__),
  hideController: dart.finalFieldType(animation_controller.AnimationController)
}));
const _expandingBottomSheetKey = dart.privateName(expanding_bottom_sheet, "_expandingBottomSheetKey");
const _width = dart.privateName(expanding_bottom_sheet, "_width");
const _controller = dart.privateName(expanding_bottom_sheet, "_controller");
const _widthAnimation = dart.privateName(expanding_bottom_sheet, "_widthAnimation");
const _heightAnimation = dart.privateName(expanding_bottom_sheet, "_heightAnimation");
const _thumbnailOpacityAnimation = dart.privateName(expanding_bottom_sheet, "_thumbnailOpacityAnimation");
const _cartOpacityAnimation = dart.privateName(expanding_bottom_sheet, "_cartOpacityAnimation");
const _shapeAnimation = dart.privateName(expanding_bottom_sheet, "_shapeAnimation");
const _slideAnimation = dart.privateName(expanding_bottom_sheet, "_slideAnimation");
const Duration__duration = dart.privateName(core, "Duration._duration");
let C0;
const Cubic_d = dart.privateName(curves, "Cubic.d");
const Cubic_c = dart.privateName(curves, "Cubic.c");
const Cubic_b = dart.privateName(curves, "Cubic.b");
const Cubic_a = dart.privateName(curves, "Cubic.a");
let C2;
const Interval_curve = dart.privateName(curves, "Interval.curve");
const Interval_end = dart.privateName(curves, "Interval.end");
const Interval_begin = dart.privateName(curves, "Interval.begin");
let C1;
let C4;
let C3;
const _getWidthAnimation = dart.privateName(expanding_bottom_sheet, "_getWidthAnimation");
let C5;
const _getHeightAnimation = dart.privateName(expanding_bottom_sheet, "_getHeightAnimation");
const _getShapeAnimation = dart.privateName(expanding_bottom_sheet, "_getShapeAnimation");
let C6;
let C7;
const _getThumbnailOpacityAnimation = dart.privateName(expanding_bottom_sheet, "_getThumbnailOpacityAnimation");
let C8;
let C9;
const _getCartOpacityAnimation = dart.privateName(expanding_bottom_sheet, "_getCartOpacityAnimation");
const _widthFor = dart.privateName(expanding_bottom_sheet, "_widthFor");
const _isOpen = dart.privateName(expanding_bottom_sheet, "_isOpen");
const EdgeInsetsDirectional_bottom = dart.privateName(edge_insets, "EdgeInsetsDirectional.bottom");
const EdgeInsetsDirectional_end = dart.privateName(edge_insets, "EdgeInsetsDirectional.end");
const EdgeInsetsDirectional_top = dart.privateName(edge_insets, "EdgeInsetsDirectional.top");
const EdgeInsetsDirectional_start = dart.privateName(edge_insets, "EdgeInsetsDirectional.start");
let C10;
let C11;
const _cartPaddingFor = dart.privateName(expanding_bottom_sheet, "_cartPaddingFor");
const _cartIsVisible = dart.privateName(expanding_bottom_sheet, "_cartIsVisible");
const Widget_key = dart.privateName(framework, "Widget.key");
const Icon_textDirection = dart.privateName(icon, "Icon.textDirection");
const Icon_semanticLabel = dart.privateName(icon, "Icon.semanticLabel");
const Icon_color = dart.privateName(icon, "Icon.color");
const Icon_size = dart.privateName(icon, "Icon.size");
const IconData_matchTextDirection = dart.privateName(icon_data, "IconData.matchTextDirection");
const IconData_fontPackage = dart.privateName(icon_data, "IconData.fontPackage");
const IconData_fontFamily = dart.privateName(icon_data, "IconData.fontFamily");
const IconData_codePoint = dart.privateName(icon_data, "IconData.codePoint");
let C13;
const Icon_icon = dart.privateName(icon, "Icon.icon");
let C12;
let C14;
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
const EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
const EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
const EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
const EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
let C20;
const _buildThumbnails = dart.privateName(expanding_bottom_sheet, "_buildThumbnails");
const _buildShoppingCartPage = dart.privateName(expanding_bottom_sheet, "_buildShoppingCartPage");
let C48;
const _buildCart = dart.privateName(expanding_bottom_sheet, "_buildCart");
const OffsetBase__dy = dart.privateName(ui, "OffsetBase._dy");
const OffsetBase__dx = dart.privateName(ui, "OffsetBase._dx");
let C66;
let C67;
let C68;
const _buildSlideAnimation = dart.privateName(expanding_bottom_sheet, "_buildSlideAnimation");
const _onWillPop = dart.privateName(expanding_bottom_sheet, "_onWillPop");
const State_TickerProviderStateMixin$36 = class State_TickerProviderStateMixin extends framework.State$(expanding_bottom_sheet.ExpandingBottomSheet) {};
(State_TickerProviderStateMixin$36.new = function() {
  ticker_provider.TickerProviderStateMixin$(expanding_bottom_sheet.ExpandingBottomSheet)[dart.mixinNew].call(this);
  State_TickerProviderStateMixin$36.__proto__.new.call(this);
}).prototype = State_TickerProviderStateMixin$36.prototype;
dart.applyMixin(State_TickerProviderStateMixin$36, ticker_provider.TickerProviderStateMixin$(expanding_bottom_sheet.ExpandingBottomSheet));
expanding_bottom_sheet._ExpandingBottomSheetState = class _ExpandingBottomSheetState extends State_TickerProviderStateMixin$36 {
  initState() {
    super.initState();
    this[_controller] = new animation_controller.AnimationController.new({duration: C0 || CT.C0, vsync: this});
  }
  dispose() {
    this[_controller].dispose();
    super.dispose();
  }
  [_getWidthAnimation](screenWidth) {
    if (dart.equals(this[_controller].status, animation.AnimationStatus.forward)) {
      return new (TweenOfdouble()).new({begin: this[_width], end: screenWidth}).animate(new animations.CurvedAnimation.new({parent: this[_controller].view, curve: C1 || CT.C1}));
    } else {
      return expanding_bottom_sheet._getEmphasizedEasingAnimation(core.double, {begin: this[_width], peak: expanding_bottom_sheet._getPeakPoint({begin: this[_width], end: screenWidth}), end: screenWidth, isForward: false, parent: new animations.CurvedAnimation.new({parent: this[_controller].view, curve: C3 || CT.C3})});
    }
  }
  [_getHeightAnimation](screenHeight) {
    if (dart.equals(this[_controller].status, animation.AnimationStatus.forward)) {
      return expanding_bottom_sheet._getEmphasizedEasingAnimation(core.double, {begin: 56, peak: 56 + (dart.notNull(screenHeight) - 56) * 0.379146, end: screenHeight, isForward: true, parent: this[_controller].view});
    } else {
      return new (TweenOfdouble()).new({begin: 56, end: screenHeight}).animate(new animations.CurvedAnimation.new({parent: this[_controller].view, curve: C5 || CT.C5, reverseCurve: new curves.Interval.new(0.434, 1.0, {curve: curves.Curves.fastOutSlowIn.flipped})}));
    }
  }
  [_getShapeAnimation]() {
    if (dart.equals(this[_controller].status, animation.AnimationStatus.forward)) {
      return new (TweenOfdouble()).new({begin: 24, end: 0.0}).animate(new animations.CurvedAnimation.new({parent: this[_controller].view, curve: C1 || CT.C1}));
    } else {
      return expanding_bottom_sheet._getEmphasizedEasingAnimation(core.double, {begin: 24, peak: expanding_bottom_sheet._getPeakPoint({begin: 24, end: 0.0}), end: 0.0, isForward: false, parent: this[_controller].view});
    }
  }
  [_getThumbnailOpacityAnimation]() {
    return new (TweenOfdouble()).new({begin: 1.0, end: 0.0}).animate(new animations.CurvedAnimation.new({parent: this[_controller].view, curve: dart.equals(this[_controller].status, animation.AnimationStatus.forward) ? C6 || CT.C6 : C7 || CT.C7}));
  }
  [_getCartOpacityAnimation]() {
    return new animations.CurvedAnimation.new({parent: this[_controller].view, curve: dart.equals(this[_controller].status, animation.AnimationStatus.forward) ? C8 || CT.C8 : C9 || CT.C9});
  }
  [_widthFor](numProducts) {
    switch (numProducts) {
      case 0:
      {
        return 64;
      }
      case 1:
      {
        return 136.0;
      }
      case 2:
      {
        return 192.0;
      }
      case 3:
      {
        return 248.0;
      }
      default:
      {
        return 278.0;
      }
    }
  }
  get [_isOpen]() {
    let status = this[_controller].status;
    return dart.equals(status, animation.AnimationStatus.completed) || dart.equals(status, animation.AnimationStatus.forward);
  }
  open() {
    if (!dart.test(this[_isOpen])) {
      this[_controller].forward();
    }
  }
  close() {
    if (dart.test(this[_isOpen])) {
      this[_controller].reverse();
    }
  }
  [_cartPaddingFor](numProducts) {
    return numProducts === 0 ? C10 || CT.C10 : C11 || CT.C11;
  }
  get [_cartIsVisible]() {
    return this[_thumbnailOpacityAnimation].value === 0.0;
  }
  [_buildThumbnails](numProducts) {
    return new basic.ExcludeSemantics.new({child: new basic.Opacity.new({opacity: this[_thumbnailOpacityAnimation].value, child: new basic.Column.new({children: JSArrayOfWidget().of([new basic.Row.new({children: JSArrayOfWidget().of([new implicit_animations.AnimatedPadding.new({padding: this[_cartPaddingFor](numProducts), child: C12 || CT.C12, duration: C14 || CT.C14, $creationLocationd_0dea112b090073317d4: C15 || CT.C15}), new container.Container.new({width: dart.notNull(numProducts) > 3 ? dart.notNull(this[_width]) - 94.0 : dart.notNull(this[_width]) - 64.0, height: 56, padding: C20 || CT.C20, child: new expanding_bottom_sheet.ProductThumbnailRow.new({$creationLocationd_0dea112b090073317d4: C21 || CT.C21}), $creationLocationd_0dea112b090073317d4: C23 || CT.C23}), new expanding_bottom_sheet.ExtraProductsNumber.new({$creationLocationd_0dea112b090073317d4: C29 || CT.C29})]), $creationLocationd_0dea112b090073317d4: C30 || CT.C30})]), $creationLocationd_0dea112b090073317d4: C33 || CT.C33}), $creationLocationd_0dea112b090073317d4: C36 || CT.C36}), $creationLocationd_0dea112b090073317d4: C40 || CT.C40});
  }
  [_buildShoppingCartPage]() {
    return new basic.Opacity.new({opacity: this[_cartOpacityAnimation].value, child: new shopping_cart.ShoppingCartPage.new({$creationLocationd_0dea112b090073317d4: C43 || CT.C43}), $creationLocationd_0dea112b090073317d4: C44 || CT.C44});
  }
  [_buildCart](context, child) {
    let model = scoped_model.ScopedModel.of(app_state_model.AppStateModel, context);
    let numProducts = model.productsInCart[$keys][$length];
    let totalCartQuantity = model.totalCartQuantity;
    let screenSize = media_query.MediaQuery.of(context).size;
    let screenWidth = screenSize.width;
    let screenHeight = screenSize.height;
    this[_width] = this[_widthFor](numProducts);
    this[_widthAnimation] = this[_getWidthAnimation](screenWidth);
    this[_heightAnimation] = this[_getHeightAnimation](screenHeight);
    this[_shapeAnimation] = this[_getShapeAnimation]();
    this[_thumbnailOpacityAnimation] = this[_getThumbnailOpacityAnimation]();
    this[_cartOpacityAnimation] = this[_getCartOpacityAnimation]();
    return new basic.Semantics.new({button: true, value: "Shopping cart, " + dart.str(totalCartQuantity) + " items", child: new container.Container.new({width: this[_widthAnimation].value, height: this[_heightAnimation].value, child: new material.Material.new({animationDuration: C48 || CT.C48, shape: new beveled_rectangle_border.BeveledRectangleBorder.new({borderRadius: new border_radius.BorderRadius.only({topLeft: new ui.Radius.circular(this[_shapeAnimation].value)})}), elevation: 4.0, color: colors.kShrinePink50, child: dart.test(this[_cartIsVisible]) ? this[_buildShoppingCartPage]() : this[_buildThumbnails](numProducts), $creationLocationd_0dea112b090073317d4: C49 || CT.C49}), $creationLocationd_0dea112b090073317d4: C56 || CT.C56}), $creationLocationd_0dea112b090073317d4: C61 || CT.C61});
  }
  [_buildSlideAnimation](context, child) {
    this[_slideAnimation] = expanding_bottom_sheet._getEmphasizedEasingAnimation(ui.Offset, {begin: C66 || CT.C66, peak: C67 || CT.C67, end: C68 || CT.C68, isForward: dart.equals(this.widget.hideController.status, animation.AnimationStatus.forward), parent: this.widget.hideController});
    return new transitions.SlideTransition.new({position: this[_slideAnimation], child: child, $creationLocationd_0dea112b090073317d4: C69 || CT.C69});
  }
  [_onWillPop]() {
    return async.async(core.bool, (function* _onWillPop() {
      if (!dart.test(this[_isOpen])) {
        yield system_navigator.SystemNavigator.pop();
        return true;
      }
      this.close();
      return true;
    }).bind(this));
  }
  build(context) {
    return new animated_size.AnimatedSize.new({key: this[_expandingBottomSheetKey], duration: C14 || CT.C14, curve: curves.Curves.easeInOut, vsync: this, alignment: fractional_offset.FractionalOffset.topLeft, child: new will_pop_scope.WillPopScope.new({onWillPop: dart.bind(this, _onWillPop), child: new transitions.AnimatedBuilder.new({animation: this.widget.hideController, builder: dart.bind(this, _buildSlideAnimation), child: new gesture_detector.GestureDetector.new({behavior: proxy_box.HitTestBehavior.opaque, onTap: dart.bind(this, 'open'), child: new (ScopedModelDescendantOfAppStateModel()).new({builder: dart.fn((context, child, model) => new transitions.AnimatedBuilder.new({builder: dart.bind(this, _buildCart), animation: this[_controller], $creationLocationd_0dea112b090073317d4: C73 || CT.C73}), BuildContextAndWidgetAndAppStateModelToAnimatedBuilder()), $creationLocationd_0dea112b090073317d4: C77 || CT.C77}), $creationLocationd_0dea112b090073317d4: C80 || CT.C80}), $creationLocationd_0dea112b090073317d4: C85 || CT.C85}), $creationLocationd_0dea112b090073317d4: C90 || CT.C90}), $creationLocationd_0dea112b090073317d4: C94 || CT.C94});
  }
};
(expanding_bottom_sheet._ExpandingBottomSheetState.new = function() {
  this[_expandingBottomSheetKey] = GlobalKeyOfStateOfStatefulWidget().new({debugLabel: "Expanding bottom sheet"});
  this[_width] = 64;
  this[_controller] = null;
  this[_widthAnimation] = null;
  this[_heightAnimation] = null;
  this[_thumbnailOpacityAnimation] = null;
  this[_cartOpacityAnimation] = null;
  this[_shapeAnimation] = null;
  this[_slideAnimation] = null;
  expanding_bottom_sheet._ExpandingBottomSheetState.__proto__.new.call(this);
  ;
}).prototype = expanding_bottom_sheet._ExpandingBottomSheetState.prototype;
dart.addTypeTests(expanding_bottom_sheet._ExpandingBottomSheetState);
dart.setMethodSignature(expanding_bottom_sheet._ExpandingBottomSheetState, () => ({
  __proto__: dart.getMethods(expanding_bottom_sheet._ExpandingBottomSheetState.__proto__),
  [_getWidthAnimation]: dart.fnType(animation.Animation$(core.double), [core.double]),
  [_getHeightAnimation]: dart.fnType(animation.Animation$(core.double), [core.double]),
  [_getShapeAnimation]: dart.fnType(animation.Animation$(core.double), []),
  [_getThumbnailOpacityAnimation]: dart.fnType(animation.Animation$(core.double), []),
  [_getCartOpacityAnimation]: dart.fnType(animation.Animation$(core.double), []),
  [_widthFor]: dart.fnType(core.double, [core.int]),
  open: dart.fnType(dart.void, []),
  close: dart.fnType(dart.void, []),
  [_cartPaddingFor]: dart.fnType(edge_insets.EdgeInsetsDirectional, [core.int]),
  [_buildThumbnails]: dart.fnType(framework.Widget, [core.int]),
  [_buildShoppingCartPage]: dart.fnType(framework.Widget, []),
  [_buildCart]: dart.fnType(framework.Widget, [framework.BuildContext, framework.Widget]),
  [_buildSlideAnimation]: dart.fnType(framework.Widget, [framework.BuildContext, framework.Widget]),
  [_onWillPop]: dart.fnType(async.Future$(core.bool), []),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setGetterSignature(expanding_bottom_sheet._ExpandingBottomSheetState, () => ({
  __proto__: dart.getGetters(expanding_bottom_sheet._ExpandingBottomSheetState.__proto__),
  [_isOpen]: core.bool,
  [_cartIsVisible]: core.bool
}));
dart.setLibraryUri(expanding_bottom_sheet._ExpandingBottomSheetState, "package:flutter_gallery/demo/shrine/expanding_bottom_sheet.dart");
dart.setFieldSignature(expanding_bottom_sheet._ExpandingBottomSheetState, () => ({
  __proto__: dart.getFields(expanding_bottom_sheet._ExpandingBottomSheetState.__proto__),
  [_expandingBottomSheetKey]: dart.finalFieldType(framework.GlobalKey$(framework.State$(framework.StatefulWidget))),
  [_width]: dart.fieldType(core.double),
  [_controller]: dart.fieldType(animation_controller.AnimationController),
  [_widthAnimation]: dart.fieldType(animation.Animation$(core.double)),
  [_heightAnimation]: dart.fieldType(animation.Animation$(core.double)),
  [_thumbnailOpacityAnimation]: dart.fieldType(animation.Animation$(core.double)),
  [_cartOpacityAnimation]: dart.fieldType(animation.Animation$(core.double)),
  [_shapeAnimation]: dart.fieldType(animation.Animation$(core.double)),
  [_slideAnimation]: dart.fieldType(animation.Animation$(ui.Offset))
}));
expanding_bottom_sheet.ProductThumbnailRow = class ProductThumbnailRow extends framework.StatefulWidget {
  createState() {
    return new expanding_bottom_sheet._ProductThumbnailRowState.new();
  }
};
(expanding_bottom_sheet.ProductThumbnailRow.new = function(opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  expanding_bottom_sheet.ProductThumbnailRow.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = expanding_bottom_sheet.ProductThumbnailRow.prototype;
dart.addTypeTests(expanding_bottom_sheet.ProductThumbnailRow);
dart.setMethodSignature(expanding_bottom_sheet.ProductThumbnailRow, () => ({
  __proto__: dart.getMethods(expanding_bottom_sheet.ProductThumbnailRow.__proto__),
  createState: dart.fnType(expanding_bottom_sheet._ProductThumbnailRowState, [])
}));
dart.setLibraryUri(expanding_bottom_sheet.ProductThumbnailRow, "package:flutter_gallery/demo/shrine/expanding_bottom_sheet.dart");
const _listKey = dart.privateName(expanding_bottom_sheet, "_listKey");
const _list = dart.privateName(expanding_bottom_sheet, "_list");
const _internalList = dart.privateName(expanding_bottom_sheet, "_internalList");
const _buildRemovedThumbnail = dart.privateName(expanding_bottom_sheet, "_buildRemovedThumbnail");
const _productWithId = dart.privateName(expanding_bottom_sheet, "_productWithId");
let C108;
let C107;
let C109;
const _buildThumbnail = dart.privateName(expanding_bottom_sheet, "_buildThumbnail");
const _updateLists = dart.privateName(expanding_bottom_sheet, "_updateLists");
const ScrollPhysics_parent = dart.privateName(scroll_physics, "ScrollPhysics.parent");
let C115;
const _buildAnimatedList = dart.privateName(expanding_bottom_sheet, "_buildAnimatedList");
expanding_bottom_sheet._ProductThumbnailRowState = class _ProductThumbnailRowState extends framework.State$(expanding_bottom_sheet.ProductThumbnailRow) {
  initState() {
    super.initState();
    this[_list] = new expanding_bottom_sheet._ListModel.new({listKey: this[_listKey], initialItems: scoped_model.ScopedModel.of(app_state_model.AppStateModel, this.context).productsInCart[$keys][$toList](), removedItemBuilder: dart.bind(this, _buildRemovedThumbnail)});
    this[_internalList] = ListOfint().from(this[_list].list);
  }
  [_productWithId](productId) {
    let model = scoped_model.ScopedModel.of(app_state_model.AppStateModel, this.context);
    let product = model.getProductById(productId);
    if (!(product != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/shrine/expanding_bottom_sheet.dart", 441, 12, "product != null");
    return product;
  }
  [_buildRemovedThumbnail](item, context, animation) {
    return new expanding_bottom_sheet.ProductThumbnail.new(animation, animation, this[_productWithId](item), {$creationLocationd_0dea112b090073317d4: C102 || CT.C102});
  }
  [_buildThumbnail](context, index, animation) {
    let thumbnailSize = new (TweenOfdouble()).new({begin: 0.8, end: 1.0}).animate(new animations.CurvedAnimation.new({curve: C107 || CT.C107, parent: animation}));
    let opacity = new animations.CurvedAnimation.new({curve: C109 || CT.C109, parent: animation});
    return new expanding_bottom_sheet.ProductThumbnail.new(thumbnailSize, opacity, this[_productWithId](this[_list]._get(index)), {$creationLocationd_0dea112b090073317d4: C110 || CT.C110});
  }
  [_updateLists]() {
    this[_internalList] = scoped_model.ScopedModel.of(app_state_model.AppStateModel, this.context).productsInCart[$keys][$toList]();
    let internalSet = LinkedHashSetOfint().from(this[_internalList]);
    let listSet = LinkedHashSetOfint().from(this[_list].list);
    let difference = internalSet.difference(listSet);
    if (dart.test(difference[$isEmpty])) {
      return;
    }
    for (let product of difference) {
      if (dart.notNull(this[_internalList][$length]) < dart.notNull(this[_list].length)) {
        this[_list].remove(product);
      } else if (dart.notNull(this[_internalList][$length]) > dart.notNull(this[_list].length)) {
        this[_list].add(product);
      }
    }
    while (this[_internalList][$length] != this[_list].length) {
      let index = 0;
      while (dart.test(this[_internalList][$isNotEmpty]) && dart.notNull(this[_list].length) > 0 && index < dart.notNull(this[_internalList][$length]) && index < dart.notNull(this[_list].length) && this[_internalList][$_get](index) == this[_list]._get(index)) {
        index = index + 1;
      }
    }
  }
  [_buildAnimatedList]() {
    return new animated_list.AnimatedList.new({key: this[_listKey], shrinkWrap: true, itemBuilder: dart.bind(this, _buildThumbnail), initialItemCount: this[_list].length, scrollDirection: basic_types.Axis.horizontal, physics: C115 || CT.C115, $creationLocationd_0dea112b090073317d4: C116 || CT.C116});
  }
  build(context) {
    this[_updateLists]();
    return new (ScopedModelDescendantOfAppStateModel()).new({builder: dart.fn((context, child, model) => this[_buildAnimatedList](), BuildContextAndWidgetAndAppStateModelToWidget()), $creationLocationd_0dea112b090073317d4: C124 || CT.C124});
  }
};
(expanding_bottom_sheet._ProductThumbnailRowState.new = function() {
  this[_listKey] = GlobalKeyOfAnimatedListState().new();
  this[_list] = null;
  this[_internalList] = null;
  expanding_bottom_sheet._ProductThumbnailRowState.__proto__.new.call(this);
  ;
}).prototype = expanding_bottom_sheet._ProductThumbnailRowState.prototype;
dart.addTypeTests(expanding_bottom_sheet._ProductThumbnailRowState);
dart.setMethodSignature(expanding_bottom_sheet._ProductThumbnailRowState, () => ({
  __proto__: dart.getMethods(expanding_bottom_sheet._ProductThumbnailRowState.__proto__),
  [_productWithId]: dart.fnType(product.Product, [core.int]),
  [_buildRemovedThumbnail]: dart.fnType(framework.Widget, [core.int, framework.BuildContext, animation.Animation$(core.double)]),
  [_buildThumbnail]: dart.fnType(framework.Widget, [framework.BuildContext, core.int, animation.Animation$(core.double)]),
  [_updateLists]: dart.fnType(dart.void, []),
  [_buildAnimatedList]: dart.fnType(framework.Widget, []),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(expanding_bottom_sheet._ProductThumbnailRowState, "package:flutter_gallery/demo/shrine/expanding_bottom_sheet.dart");
dart.setFieldSignature(expanding_bottom_sheet._ProductThumbnailRowState, () => ({
  __proto__: dart.getFields(expanding_bottom_sheet._ProductThumbnailRowState.__proto__),
  [_listKey]: dart.finalFieldType(framework.GlobalKey$(animated_list.AnimatedListState)),
  [_list]: dart.fieldType(expanding_bottom_sheet._ListModel),
  [_internalList]: dart.fieldType(core.List$(core.int))
}));
const _calculateOverflow = dart.privateName(expanding_bottom_sheet, "_calculateOverflow");
const _buildOverflow = dart.privateName(expanding_bottom_sheet, "_buildOverflow");
expanding_bottom_sheet.ExtraProductsNumber = class ExtraProductsNumber extends framework.StatelessWidget {
  [_calculateOverflow](model) {
    let productMap = model.productsInCart;
    let products = productMap[$keys][$toList]();
    let overflow = 0;
    let numProducts = products[$length];
    if (dart.notNull(numProducts) > 3) {
      for (let i = 3; i < dart.notNull(numProducts); i = i + 1) {
        overflow = overflow + dart.notNull(productMap[$_get](products[$_get](i)));
      }
    }
    return overflow;
  }
  [_buildOverflow](model, context) {
    if (dart.notNull(model.productsInCart[$length]) <= 3) return new container.Container.new({$creationLocationd_0dea112b090073317d4: C127 || CT.C127});
    let numOverflowProducts = this[_calculateOverflow](model);
    let displayedOverflowProducts = dart.notNull(numOverflowProducts) <= 99 ? numOverflowProducts : 99;
    return new container.Container.new({child: new text.Text.new("+" + dart.str(displayedOverflowProducts), {style: theme.Theme.of(context).primaryTextTheme.button, $creationLocationd_0dea112b090073317d4: C128 || CT.C128}), $creationLocationd_0dea112b090073317d4: C132 || CT.C132});
  }
  build(context) {
    return new (ScopedModelDescendantOfAppStateModel()).new({builder: dart.fn((builder, child, model) => this[_buildOverflow](model, context), BuildContextAndWidgetAndAppStateModelToWidget()), $creationLocationd_0dea112b090073317d4: C135 || CT.C135});
  }
};
(expanding_bottom_sheet.ExtraProductsNumber.new = function(opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  expanding_bottom_sheet.ExtraProductsNumber.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = expanding_bottom_sheet.ExtraProductsNumber.prototype;
dart.addTypeTests(expanding_bottom_sheet.ExtraProductsNumber);
dart.setMethodSignature(expanding_bottom_sheet.ExtraProductsNumber, () => ({
  __proto__: dart.getMethods(expanding_bottom_sheet.ExtraProductsNumber.__proto__),
  [_calculateOverflow]: dart.fnType(core.int, [app_state_model.AppStateModel]),
  [_buildOverflow]: dart.fnType(framework.Widget, [app_state_model.AppStateModel, framework.BuildContext]),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(expanding_bottom_sheet.ExtraProductsNumber, "package:flutter_gallery/demo/shrine/expanding_bottom_sheet.dart");
const Radius_y = dart.privateName(ui, "Radius.y");
const Radius_x = dart.privateName(ui, "Radius.x");
let C139;
const BorderRadius_bottomRight = dart.privateName(border_radius, "BorderRadius.bottomRight");
const BorderRadius_bottomLeft = dart.privateName(border_radius, "BorderRadius.bottomLeft");
const BorderRadius_topRight = dart.privateName(border_radius, "BorderRadius.topRight");
const BorderRadius_topLeft = dart.privateName(border_radius, "BorderRadius.topLeft");
let C138;
let C140;
const animation$ = dart.privateName(expanding_bottom_sheet, "ProductThumbnail.animation");
const opacityAnimation$ = dart.privateName(expanding_bottom_sheet, "ProductThumbnail.opacityAnimation");
const product$ = dart.privateName(expanding_bottom_sheet, "ProductThumbnail.product");
expanding_bottom_sheet.ProductThumbnail = class ProductThumbnail extends framework.StatelessWidget {
  get animation() {
    return this[animation$];
  }
  set animation(value) {
    super.animation = value;
  }
  get opacityAnimation() {
    return this[opacityAnimation$];
  }
  set opacityAnimation(value) {
    super.opacityAnimation = value;
  }
  get product() {
    return this[product$];
  }
  set product(value) {
    super.product = value;
  }
  build(context) {
    return new transitions.FadeTransition.new({opacity: this.opacityAnimation, child: new transitions.ScaleTransition.new({scale: this.animation, child: new container.Container.new({width: 40.0, height: 40.0, decoration: new box_decoration.BoxDecoration.new({image: new decoration_image.DecorationImage.new({image: new image_provider.ExactAssetImage.new(this.product.assetName, {package: this.product.assetPackage}), fit: box_fit.BoxFit.cover}), borderRadius: C138 || CT.C138}), margin: C140 || CT.C140, $creationLocationd_0dea112b090073317d4: C141 || CT.C141}), $creationLocationd_0dea112b090073317d4: C147 || CT.C147}), $creationLocationd_0dea112b090073317d4: C151 || CT.C151});
  }
};
(expanding_bottom_sheet.ProductThumbnail.new = function(animation, opacityAnimation, product, opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[animation$] = animation;
  this[opacityAnimation$] = opacityAnimation;
  this[product$] = product;
  expanding_bottom_sheet.ProductThumbnail.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = expanding_bottom_sheet.ProductThumbnail.prototype;
dart.addTypeTests(expanding_bottom_sheet.ProductThumbnail);
dart.setMethodSignature(expanding_bottom_sheet.ProductThumbnail, () => ({
  __proto__: dart.getMethods(expanding_bottom_sheet.ProductThumbnail.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(expanding_bottom_sheet.ProductThumbnail, "package:flutter_gallery/demo/shrine/expanding_bottom_sheet.dart");
dart.setFieldSignature(expanding_bottom_sheet.ProductThumbnail, () => ({
  __proto__: dart.getFields(expanding_bottom_sheet.ProductThumbnail.__proto__),
  animation: dart.finalFieldType(animation.Animation$(core.double)),
  opacityAnimation: dart.finalFieldType(animation.Animation$(core.double)),
  product: dart.finalFieldType(product.Product)
}));
const _items = dart.privateName(expanding_bottom_sheet, "_items");
const _animatedList = dart.privateName(expanding_bottom_sheet, "_animatedList");
const _insert = dart.privateName(expanding_bottom_sheet, "_insert");
const _removeAt = dart.privateName(expanding_bottom_sheet, "_removeAt");
expanding_bottom_sheet._ListModel = class _ListModel extends core.Object {
  get [_animatedList]() {
    return this.listKey.currentState;
  }
  add(product) {
    this[_insert](this[_items][$length], product);
  }
  [_insert](index, item) {
    this[_items][$insert](index, item);
    this[_animatedList].insertItem(index, {duration: C14 || CT.C14});
  }
  remove(product) {
    let index = this[_items][$indexOf](product);
    if (dart.notNull(index) >= 0) {
      this[_removeAt](index);
    }
  }
  [_removeAt](index) {
    let removedItem = this[_items][$removeAt](index);
    if (removedItem != null) {
      this[_animatedList].removeItem(index, dart.fn((context, animation) => framework.Widget._check(dart.dsend(this, 'removedItemBuilder', [removedItem, context, animation])), BuildContextAndAnimationOfdoubleToWidget()));
    }
  }
  get length() {
    return this[_items][$length];
  }
  _get(index) {
    return this[_items][$_get](index);
  }
  indexOf(item) {
    return this[_items][$indexOf](item);
  }
  get list() {
    return this[_items];
  }
};
(expanding_bottom_sheet._ListModel.new = function(opts) {
  let t0, t0$;
  let listKey = opts && 'listKey' in opts ? opts.listKey : null;
  let removedItemBuilder = opts && 'removedItemBuilder' in opts ? opts.removedItemBuilder : null;
  let initialItems = opts && 'initialItems' in opts ? opts.initialItems : null;
  this.listKey = listKey;
  this.removedItemBuilder = removedItemBuilder;
  if (!(listKey != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/shrine/expanding_bottom_sheet.dart", 602, 15, "listKey != null");
  if (!(removedItemBuilder != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/shrine/expanding_bottom_sheet.dart", 603, 15, "removedItemBuilder != null");
  this[_items] = (t0$ = (t0 = initialItems, t0 == null ? null : t0[$toList]()), t0$ == null ? JSArrayOfint().of([]) : t0$);
  ;
}).prototype = expanding_bottom_sheet._ListModel.prototype;
dart.addTypeTests(expanding_bottom_sheet._ListModel);
dart.setMethodSignature(expanding_bottom_sheet._ListModel, () => ({
  __proto__: dart.getMethods(expanding_bottom_sheet._ListModel.__proto__),
  add: dart.fnType(dart.void, [core.int]),
  [_insert]: dart.fnType(dart.void, [core.int, core.int]),
  remove: dart.fnType(dart.void, [core.int]),
  [_removeAt]: dart.fnType(dart.void, [core.int]),
  _get: dart.fnType(core.int, [core.int]),
  indexOf: dart.fnType(core.int, [core.int])
}));
dart.setGetterSignature(expanding_bottom_sheet._ListModel, () => ({
  __proto__: dart.getGetters(expanding_bottom_sheet._ListModel.__proto__),
  [_animatedList]: animated_list.AnimatedListState,
  length: core.int,
  list: core.List$(core.int)
}));
dart.setLibraryUri(expanding_bottom_sheet._ListModel, "package:flutter_gallery/demo/shrine/expanding_bottom_sheet.dart");
dart.setFieldSignature(expanding_bottom_sheet._ListModel, () => ({
  __proto__: dart.getFields(expanding_bottom_sheet._ListModel.__proto__),
  listKey: dart.finalFieldType(framework.GlobalKey$(animated_list.AnimatedListState)),
  removedItemBuilder: dart.finalFieldType(dart.dynamic),
  [_items]: dart.finalFieldType(core.List$(core.int))
}));
expanding_bottom_sheet._getEmphasizedEasingAnimation = function _getEmphasizedEasingAnimation(T, opts) {
  let begin = opts && 'begin' in opts ? opts.begin : null;
  let peak = opts && 'peak' in opts ? opts.peak : null;
  let end = opts && 'end' in opts ? opts.end : null;
  let isForward = opts && 'isForward' in opts ? opts.isForward : null;
  let parent = opts && 'parent' in opts ? opts.parent : null;
  let firstCurve = null;
  let secondCurve = null;
  let firstWeight = null;
  let secondWeight = null;
  if (dart.test(isForward)) {
    firstCurve = expanding_bottom_sheet._kAccelerateCurve;
    secondCurve = expanding_bottom_sheet._kDecelerateCurve;
    firstWeight = 0.24821;
    secondWeight = 1.0 - 0.24821;
  } else {
    firstCurve = expanding_bottom_sheet._kDecelerateCurve.flipped;
    secondCurve = expanding_bottom_sheet._kAccelerateCurve.flipped;
    firstWeight = 1.0 - 0.24821;
    secondWeight = 0.24821;
  }
  return new (tween_sequence.TweenSequence$(T)).new(_interceptors.JSArray$(tween_sequence.TweenSequenceItem$(T)).of([new (tween_sequence.TweenSequenceItem$(T)).new({weight: firstWeight, tween: new (tween.Tween$(T)).new({begin: begin, end: peak}).chain(new tween.CurveTween.new({curve: firstCurve}))}), new (tween_sequence.TweenSequenceItem$(T)).new({weight: secondWeight, tween: new (tween.Tween$(T)).new({begin: peak, end: end}).chain(new tween.CurveTween.new({curve: secondCurve}))})])).animate(parent);
};
expanding_bottom_sheet._getPeakPoint = function _getPeakPoint(opts) {
  let begin = opts && 'begin' in opts ? opts.begin : null;
  let end = opts && 'end' in opts ? opts.end : null;
  return dart.notNull(begin) + (dart.notNull(end) - dart.notNull(begin)) * 0.379146;
};
let C155;
let C156;
dart.defineLazy(expanding_bottom_sheet, {
  /*expanding_bottom_sheet._kAccelerateCurve*/get _kAccelerateCurve() {
    return C155 || CT.C155;
  },
  /*expanding_bottom_sheet._kDecelerateCurve*/get _kDecelerateCurve() {
    return C156 || CT.C156;
  },
  /*expanding_bottom_sheet._kPeakVelocityTime*/get _kPeakVelocityTime() {
    return 0.24821;
  },
  /*expanding_bottom_sheet._kPeakVelocityProgress*/get _kPeakVelocityProgress() {
    return 0.379146;
  },
  /*expanding_bottom_sheet._kCartHeight*/get _kCartHeight() {
    return 56;
  },
  /*expanding_bottom_sheet._kCornerRadius*/get _kCornerRadius() {
    return 24;
  },
  /*expanding_bottom_sheet._kWidthForCartIcon*/get _kWidthForCartIcon() {
    return 64;
  }
});
shopping_cart.ShoppingCartPage = class ShoppingCartPage extends framework.StatefulWidget {
  createState() {
    return new shopping_cart._ShoppingCartPageState.new();
  }
};
(shopping_cart.ShoppingCartPage.new = function(opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  shopping_cart.ShoppingCartPage.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = shopping_cart.ShoppingCartPage.prototype;
dart.addTypeTests(shopping_cart.ShoppingCartPage);
dart.setMethodSignature(shopping_cart.ShoppingCartPage, () => ({
  __proto__: dart.getMethods(shopping_cart.ShoppingCartPage.__proto__),
  createState: dart.fnType(shopping_cart._ShoppingCartPageState, [])
}));
dart.setLibraryUri(shopping_cart.ShoppingCartPage, "package:flutter_gallery/demo/shrine/shopping_cart.dart");
const _createShoppingCartRows = dart.privateName(shopping_cart, "_createShoppingCartRows");
let C163;
let C162;
const SingleChildRenderObjectWidget_child = dart.privateName(framework, "SingleChildRenderObjectWidget.child");
const SizedBox_height = dart.privateName(basic, "SizedBox.height");
const SizedBox_width = dart.privateName(basic, "SizedBox.width");
let C176;
let C183;
let C190;
let C196;
let C195;
const BeveledRectangleBorder_borderRadius = dart.privateName(beveled_rectangle_border, "BeveledRectangleBorder.borderRadius");
const _name = dart.privateName(borders, "_name");
let C198;
const BorderSide_style = dart.privateName(borders, "BorderSide.style");
const BorderSide_width = dart.privateName(borders, "BorderSide.width");
const Color_value = dart.privateName(ui, "Color.value");
let C199;
const BorderSide_color = dart.privateName(borders, "BorderSide.color");
let C197;
const BeveledRectangleBorder_side = dart.privateName(beveled_rectangle_border, "BeveledRectangleBorder.side");
let C194;
const Text_textWidthBasis = dart.privateName(text, "Text.textWidthBasis");
const Text_semanticsLabel = dart.privateName(text, "Text.semanticsLabel");
const Text_maxLines = dart.privateName(text, "Text.maxLines");
const Text_textScaleFactor = dart.privateName(text, "Text.textScaleFactor");
const Text_overflow = dart.privateName(text, "Text.overflow");
const Text_softWrap = dart.privateName(text, "Text.softWrap");
const Text_locale = dart.privateName(text, "Text.locale");
const Text_textDirection = dart.privateName(text, "Text.textDirection");
const Text_textAlign = dart.privateName(text, "Text.textAlign");
const Text_strutStyle = dart.privateName(text, "Text.strutStyle");
const Text_style = dart.privateName(text, "Text.style");
const Text_textSpan = dart.privateName(text, "Text.textSpan");
const Text_data = dart.privateName(text, "Text.data");
let C201;
let C202;
const Padding_padding = dart.privateName(basic, "Padding.padding");
let C200;
shopping_cart._ShoppingCartPageState = class _ShoppingCartPageState extends framework.State$(shopping_cart.ShoppingCartPage) {
  [_createShoppingCartRows](model) {
    return model.productsInCart[$keys][$map](shopping_cart.ShoppingCartRow, dart.fn(id => new shopping_cart.ShoppingCartRow.new({product: model.getProductById(id), quantity: model.productsInCart[$_get](id), onPressed: dart.fn(() => {
        model.removeItemFromCart(id);
      }, VoidToNull()), $creationLocationd_0dea112b090073317d4: C157 || CT.C157}), intToShoppingCartRow()))[$toList]();
  }
  build(context) {
    let localTheme = theme.Theme.of(context);
    return new scaffold.Scaffold.new({backgroundColor: colors.kShrinePink50, body: new safe_area.SafeArea.new({child: new container.Container.new({child: new (ScopedModelDescendantOfAppStateModel()).new({builder: dart.fn((context, child, model) => new basic.Stack.new({children: JSArrayOfWidget().of([new scroll_view.ListView.new({children: JSArrayOfWidget().of([new basic.Row.new({children: JSArrayOfWidget().of([new basic.SizedBox.new({width: 60, child: new icon_button.IconButton.new({icon: C162 || CT.C162, onPressed: dart.fn(() => expanding_bottom_sheet.ExpandingBottomSheet.of(context).close(), VoidTovoid()), $creationLocationd_0dea112b090073317d4: C164 || CT.C164}), $creationLocationd_0dea112b090073317d4: C168 || CT.C168}), new text.Text.new("CART", {style: localTheme.textTheme.subhead.copyWith({fontWeight: ui.FontWeight.w600}), $creationLocationd_0dea112b090073317d4: C172 || CT.C172}), C176 || CT.C176, new text.Text.new(dart.str(model.totalCartQuantity) + " ITEMS", {$creationLocationd_0dea112b090073317d4: C177 || CT.C177})]), $creationLocationd_0dea112b090073317d4: C180 || CT.C180}), C183 || CT.C183, new basic.Column.new({children: this[_createShoppingCartRows](model), $creationLocationd_0dea112b090073317d4: C184 || CT.C184}), new shopping_cart.ShoppingCartSummary.new({model: model, $creationLocationd_0dea112b090073317d4: C187 || CT.C187}), C190 || CT.C190]), $creationLocationd_0dea112b090073317d4: C191 || CT.C191}), new basic.Positioned.new({bottom: 16.0, left: 16.0, right: 16.0, child: new raised_button.RaisedButton.new({shape: C194 || CT.C194, color: colors.kShrinePink100, splashColor: colors.kShrineBrown600, child: C200 || CT.C200, onPressed: dart.fn(() => {
                      model.clearCart();
                      expanding_bottom_sheet.ExpandingBottomSheet.of(context).close();
                    }, VoidToNull()), $creationLocationd_0dea112b090073317d4: C203 || CT.C203}), $creationLocationd_0dea112b090073317d4: C210 || CT.C210})]), $creationLocationd_0dea112b090073317d4: C216 || CT.C216}), BuildContextAndWidgetAndAppStateModelToStack()), $creationLocationd_0dea112b090073317d4: C219 || CT.C219}), $creationLocationd_0dea112b090073317d4: C222 || CT.C222}), $creationLocationd_0dea112b090073317d4: C225 || CT.C225}), $creationLocationd_0dea112b090073317d4: C228 || CT.C228});
  }
};
(shopping_cart._ShoppingCartPageState.new = function() {
  shopping_cart._ShoppingCartPageState.__proto__.new.call(this);
  ;
}).prototype = shopping_cart._ShoppingCartPageState.prototype;
dart.addTypeTests(shopping_cart._ShoppingCartPageState);
dart.setMethodSignature(shopping_cart._ShoppingCartPageState, () => ({
  __proto__: dart.getMethods(shopping_cart._ShoppingCartPageState.__proto__),
  [_createShoppingCartRows]: dart.fnType(core.List$(framework.Widget), [app_state_model.AppStateModel]),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(shopping_cart._ShoppingCartPageState, "package:flutter_gallery/demo/shrine/shopping_cart.dart");
let C232;
let C233;
let C235;
const ProxyWidget_child = dart.privateName(framework, "ProxyWidget.child");
const _name$ = dart.privateName(flex, "_name");
let C236;
const Flexible_fit = dart.privateName(basic, "Flexible.fit");
const Flexible_flex = dart.privateName(basic, "Flexible.flex");
let C234;
let C246;
let C245;
let C254;
let C256;
let C255;
let C265;
let C264;
const model$ = dart.privateName(shopping_cart, "ShoppingCartSummary.model");
shopping_cart.ShoppingCartSummary = class ShoppingCartSummary extends framework.StatelessWidget {
  get model() {
    return this[model$];
  }
  set model(value) {
    super.model = value;
  }
  build(context) {
    let smallAmountStyle = theme.Theme.of(context).textTheme.body1.copyWith({color: colors.kShrineBrown600});
    let largeAmountStyle = theme.Theme.of(context).textTheme.display1;
    let formatter = intl.NumberFormat.simpleCurrency({decimalDigits: 2, locale: dart.toString(localizations.Localizations.localeOf(context))});
    return new basic.Row.new({children: JSArrayOfWidget().of([C232 || CT.C232, new basic.Expanded.new({child: new basic.Padding.new({padding: C233 || CT.C233, child: new basic.Column.new({children: JSArrayOfWidget().of([new basic.Row.new({crossAxisAlignment: flex.CrossAxisAlignment.center, children: JSArrayOfWidget().of([C234 || CT.C234, new text.Text.new(formatter.format(this.model.totalCost), {style: largeAmountStyle, $creationLocationd_0dea112b090073317d4: C237 || CT.C237})]), $creationLocationd_0dea112b090073317d4: C241 || CT.C241}), C183 || CT.C183, new basic.Row.new({children: JSArrayOfWidget().of([C245 || CT.C245, new text.Text.new(formatter.format(this.model.subtotalCost), {style: smallAmountStyle, $creationLocationd_0dea112b090073317d4: C247 || CT.C247})]), $creationLocationd_0dea112b090073317d4: C251 || CT.C251}), C254 || CT.C254, new basic.Row.new({children: JSArrayOfWidget().of([C255 || CT.C255, new text.Text.new(formatter.format(this.model.shippingCost), {style: smallAmountStyle, $creationLocationd_0dea112b090073317d4: C257 || CT.C257})]), $creationLocationd_0dea112b090073317d4: C261 || CT.C261}), C254 || CT.C254, new basic.Row.new({children: JSArrayOfWidget().of([C264 || CT.C264, new text.Text.new(formatter.format(this.model.tax), {style: smallAmountStyle, $creationLocationd_0dea112b090073317d4: C266 || CT.C266})]), $creationLocationd_0dea112b090073317d4: C270 || CT.C270})]), $creationLocationd_0dea112b090073317d4: C273 || CT.C273}), $creationLocationd_0dea112b090073317d4: C276 || CT.C276}), $creationLocationd_0dea112b090073317d4: C280 || CT.C280})]), $creationLocationd_0dea112b090073317d4: C283 || CT.C283});
  }
};
(shopping_cart.ShoppingCartSummary.new = function(opts) {
  let model = opts && 'model' in opts ? opts.model : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[model$] = model;
  shopping_cart.ShoppingCartSummary.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = shopping_cart.ShoppingCartSummary.prototype;
dart.addTypeTests(shopping_cart.ShoppingCartSummary);
dart.setMethodSignature(shopping_cart.ShoppingCartSummary, () => ({
  __proto__: dart.getMethods(shopping_cart.ShoppingCartSummary.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(shopping_cart.ShoppingCartSummary, "package:flutter_gallery/demo/shrine/shopping_cart.dart");
dart.setFieldSignature(shopping_cart.ShoppingCartSummary, () => ({
  __proto__: dart.getFields(shopping_cart.ShoppingCartSummary.__proto__),
  model: dart.finalFieldType(app_state_model.AppStateModel)
}));
let C286;
let C288;
let C287;
let C332;
const Divider_color = dart.privateName(divider, "Divider.color");
const Divider_endIndent = dart.privateName(divider, "Divider.endIndent");
const Divider_indent = dart.privateName(divider, "Divider.indent");
const Divider_thickness = dart.privateName(divider, "Divider.thickness");
const Divider_height = dart.privateName(divider, "Divider.height");
let C331;
const product$0 = dart.privateName(shopping_cart, "ShoppingCartRow.product");
const quantity$ = dart.privateName(shopping_cart, "ShoppingCartRow.quantity");
const onPressed$ = dart.privateName(shopping_cart, "ShoppingCartRow.onPressed");
shopping_cart.ShoppingCartRow = class ShoppingCartRow extends framework.StatelessWidget {
  get product() {
    return this[product$0];
  }
  set product(value) {
    super.product = value;
  }
  get quantity() {
    return this[quantity$];
  }
  set quantity(value) {
    super.quantity = value;
  }
  get onPressed() {
    return this[onPressed$];
  }
  set onPressed(value) {
    super.onPressed = value;
  }
  build(context) {
    let formatter = intl.NumberFormat.simpleCurrency({decimalDigits: 0, locale: dart.toString(localizations.Localizations.localeOf(context))});
    let localTheme = theme.Theme.of(context);
    return new basic.Padding.new({padding: C286 || CT.C286, child: new basic.Row.new({key: new (ValueKeyOfint()).new(this.product.id), crossAxisAlignment: flex.CrossAxisAlignment.start, children: JSArrayOfWidget().of([new basic.SizedBox.new({width: 60, child: new icon_button.IconButton.new({icon: C287 || CT.C287, onPressed: this.onPressed, $creationLocationd_0dea112b090073317d4: C289 || CT.C289}), $creationLocationd_0dea112b090073317d4: C293 || CT.C293}), new basic.Expanded.new({child: new basic.Padding.new({padding: C233 || CT.C233, child: new basic.Column.new({children: JSArrayOfWidget().of([new basic.Row.new({crossAxisAlignment: flex.CrossAxisAlignment.start, children: JSArrayOfWidget().of([new image.Image.asset(this.product.assetName, {package: this.product.assetPackage, fit: box_fit.BoxFit.cover, width: 75.0, height: 75.0, $creationLocationd_0dea112b090073317d4: C297 || CT.C297}), C176 || CT.C176, new basic.Expanded.new({child: new basic.Column.new({crossAxisAlignment: flex.CrossAxisAlignment.start, children: JSArrayOfWidget().of([new basic.Row.new({children: JSArrayOfWidget().of([new basic.Expanded.new({child: new text.Text.new("Quantity: " + dart.str(this.quantity), {$creationLocationd_0dea112b090073317d4: C304 || CT.C304}), $creationLocationd_0dea112b090073317d4: C307 || CT.C307}), new text.Text.new("x " + dart.str(formatter.format(this.product.price)), {$creationLocationd_0dea112b090073317d4: C310 || CT.C310})]), $creationLocationd_0dea112b090073317d4: C313 || CT.C313}), new text.Text.new(this.product.name, {style: localTheme.textTheme.subhead.copyWith({fontWeight: ui.FontWeight.w600}), $creationLocationd_0dea112b090073317d4: C316 || CT.C316})]), $creationLocationd_0dea112b090073317d4: C320 || CT.C320}), $creationLocationd_0dea112b090073317d4: C324 || CT.C324})]), $creationLocationd_0dea112b090073317d4: C327 || CT.C327}), C183 || CT.C183, C331 || CT.C331]), $creationLocationd_0dea112b090073317d4: C333 || CT.C333}), $creationLocationd_0dea112b090073317d4: C336 || CT.C336}), $creationLocationd_0dea112b090073317d4: C340 || CT.C340})]), $creationLocationd_0dea112b090073317d4: C343 || CT.C343}), $creationLocationd_0dea112b090073317d4: C348 || CT.C348});
  }
};
(shopping_cart.ShoppingCartRow.new = function(opts) {
  let product = opts && 'product' in opts ? opts.product : null;
  let quantity = opts && 'quantity' in opts ? opts.quantity : null;
  let onPressed = opts && 'onPressed' in opts ? opts.onPressed : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[product$0] = product;
  this[quantity$] = quantity;
  this[onPressed$] = onPressed;
  shopping_cart.ShoppingCartRow.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = shopping_cart.ShoppingCartRow.prototype;
dart.addTypeTests(shopping_cart.ShoppingCartRow);
dart.setMethodSignature(shopping_cart.ShoppingCartRow, () => ({
  __proto__: dart.getMethods(shopping_cart.ShoppingCartRow.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(shopping_cart.ShoppingCartRow, "package:flutter_gallery/demo/shrine/shopping_cart.dart");
dart.setFieldSignature(shopping_cart.ShoppingCartRow, () => ({
  __proto__: dart.getFields(shopping_cart.ShoppingCartRow.__proto__),
  product: dart.finalFieldType(product.Product),
  quantity: dart.finalFieldType(core.int),
  onPressed: dart.finalFieldType(dart.fnType(dart.void, []))
}));
dart.defineLazy(shopping_cart, {
  /*shopping_cart._leftColumnWidth*/get _leftColumnWidth() {
    return 60;
  }
});
dart.trackLibraries("packages/flutter_gallery/demo/shrine/expanding_bottom_sheet", {
  "package:flutter_gallery/demo/shrine/expanding_bottom_sheet.dart": expanding_bottom_sheet,
  "package:flutter_gallery/demo/shrine/shopping_cart.dart": shopping_cart
}, {
}, '{"version":3,"sourceRoot":"","sources":["expanding_bottom_sheet.dart","shopping_cart.dart"],"names":[],"mappings":"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","file":"expanding_bottom_sheet.ddc.js"}');
// Exports:
exports.demo__shrine__expanding_bottom_sheet = expanding_bottom_sheet;
exports.demo__shrine__shopping_cart = shopping_cart;

//# sourceMappingURL=expanding_bottom_sheet.ddc.js.map
