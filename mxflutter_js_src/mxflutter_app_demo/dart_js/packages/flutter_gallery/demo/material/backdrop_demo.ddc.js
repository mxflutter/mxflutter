'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const ui = dart_sdk.ui;
const math = dart_sdk.math;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__material = require('packages/flutter/material');
const theme$ = packages__flutter__material.src__material__theme;
const scrollbar = packages__flutter__material.src__material__scrollbar;
const card = packages__flutter__material.src__material__card;
const material = packages__flutter__material.src__material__material;
const tooltip = packages__flutter__material.src__material__tooltip;
const divider = packages__flutter__material.src__material__divider;
const colors = packages__flutter__material.src__material__colors;
const list_tile = packages__flutter__material.src__material__list_tile;
const scaffold = packages__flutter__material.src__material__scaffold;
const app_bar = packages__flutter__material.src__material__app_bar;
const icon_button = packages__flutter__material.src__material__icon_button;
const animated_icons = packages__flutter__material.src__material__animated_icons;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const scroll_view = packages__flutter__src__widgets__actions.src__widgets__scroll_view;
const page_storage = packages__flutter__src__widgets__actions.src__widgets__page_storage;
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const container = packages__flutter__src__widgets__actions.src__widgets__container;
const image = packages__flutter__src__widgets__actions.src__widgets__image;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const gesture_detector = packages__flutter__src__widgets__actions.src__widgets__gesture_detector;
const transitions = packages__flutter__src__widgets__actions.src__widgets__transitions;
const media_query = packages__flutter__src__widgets__actions.src__widgets__media_query;
const layout_builder = packages__flutter__src__widgets__actions.src__widgets__layout_builder;
const ticker_provider = packages__flutter__src__widgets__actions.src__widgets__ticker_provider;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const alignment = packages__flutter__src__painting___network_image_web.src__painting__alignment;
const box_fit = packages__flutter__src__painting___network_image_web.src__painting__box_fit;
const border_radius = packages__flutter__src__painting___network_image_web.src__painting__border_radius;
const rounded_rectangle_border = packages__flutter__src__painting___network_image_web.src__painting__rounded_rectangle_border;
const borders = packages__flutter__src__painting___network_image_web.src__painting__borders;
const packages__flutter__src__rendering__animated_size = require('packages/flutter/src/rendering/animated_size');
const flex = packages__flutter__src__rendering__animated_size.src__rendering__flex;
const proxy_box = packages__flutter__src__rendering__animated_size.src__rendering__proxy_box;
const paragraph = packages__flutter__src__rendering__animated_size.src__rendering__paragraph;
const box = packages__flutter__src__rendering__animated_size.src__rendering__box;
const stack = packages__flutter__src__rendering__animated_size.src__rendering__stack;
const packages__flutter__src__gestures__arena = require('packages/flutter/src/gestures/arena');
const drag_details = packages__flutter__src__gestures__arena.src__gestures__drag_details;
const packages__flutter__src__animation__animation = require('packages/flutter/src/animation/animation');
const animation = packages__flutter__src__animation__animation.src__animation__animation;
const animations = packages__flutter__src__animation__animation.src__animation__animations;
const curves = packages__flutter__src__animation__animation.src__animation__curves;
const animation_controller = packages__flutter__src__animation__animation.src__animation__animation_controller;
const backdrop_demo = Object.create(dart.library);
const $runtimeType = dartx.runtimeType;
const $map = dartx.map;
const $toList = dartx.toList;
const $_get = dartx._get;
let PageStorageKeyOfCategory = () => (PageStorageKeyOfCategory = dart.constFn(page_storage.PageStorageKey$(backdrop_demo.Category)))();
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
let StringToColumn = () => (StringToColumn = dart.constFn(dart.fnType(basic.Column, [core.String])))();
let AnimationOfdouble = () => (AnimationOfdouble = dart.constFn(animation.Animation$(core.double)))();
let StateOfStatefulWidget = () => (StateOfStatefulWidget = dart.constFn(framework.State$(framework.StatefulWidget)))();
let GlobalKeyOfStateOfStatefulWidget = () => (GlobalKeyOfStateOfStatefulWidget = dart.constFn(framework.GlobalKey$(StateOfStatefulWidget())))();
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let CategoryToMaterial = () => (CategoryToMaterial = dart.constFn(dart.fnType(material.Material, [backdrop_demo.Category])))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 16,
      [EdgeInsets_right]: 64,
      [EdgeInsets_top]: 16,
      [EdgeInsets_left]: 64
    });
  },
  get C6() {
    return C6 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 16,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C27() {
    return C27 = dart.const({
      __proto__: basic.SizedBox.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: null,
      [SizedBox_height]: 24,
      [SizedBox_width]: null
    });
  },
  get C41() {
    return C41 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 0,
      [Radius_x]: 0
    });
  },
  get C42() {
    return C42 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 16,
      [Radius_x]: 16
    });
  },
  get C40() {
    return C40 = dart.const({
      __proto__: border_radius.BorderRadius.prototype,
      [BorderRadius_bottomRight]: C41 || CT.C41,
      [BorderRadius_bottomLeft]: C41 || CT.C41,
      [BorderRadius_topRight]: C42 || CT.C42,
      [BorderRadius_topLeft]: C42 || CT.C42
    });
  },
  get C43() {
    return C43 = dart.const({
      __proto__: edge_insets.EdgeInsetsDirectional.prototype,
      [EdgeInsetsDirectional_bottom]: 0,
      [EdgeInsetsDirectional_end]: 0,
      [EdgeInsetsDirectional_top]: 0,
      [EdgeInsetsDirectional_start]: 16
    });
  },
  get C65() {
    return C65 = dart.const({
      __proto__: divider.Divider.prototype,
      [Widget_key]: null,
      [Divider_color]: null,
      [Divider_endIndent]: null,
      [Divider_indent]: null,
      [Divider_thickness]: null,
      [Divider_height]: 1
    });
  },
  get C79() {
    return C79 = dart.const({
      __proto__: curves._Linear.prototype
    });
  },
  get C78() {
    return C78 = dart.const({
      __proto__: curves.Interval.prototype,
      [Interval_curve]: C79 || CT.C79,
      [Interval_end]: 1,
      [Interval_begin]: 0.5
    });
  },
  get C80() {
    return C80 = dart.const({
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
      [Text_data]: "Select a Category"
    });
  },
  get C85() {
    return C85 = dart.const({
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
      [Text_data]: "Asset Viewer"
    });
  },
  get C99() {
    return C99 = dart.const({
      __proto__: core.Duration.prototype,
      [Duration__duration]: 300000
    });
  },
  get C100() {
    return C100 = dart.const({
      __proto__: stack.RelativeRect.prototype,
      [RelativeRect_bottom]: 0,
      [RelativeRect_right]: 0,
      [RelativeRect_top]: 0,
      [RelativeRect_left]: 0
    });
  },
  get C103() {
    return C103 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 4,
      [Radius_x]: 4
    });
  },
  get C102() {
    return C102 = dart.const({
      __proto__: border_radius.BorderRadius.prototype,
      [BorderRadius_bottomRight]: C103 || CT.C103,
      [BorderRadius_bottomLeft]: C103 || CT.C103,
      [BorderRadius_topRight]: C103 || CT.C103,
      [BorderRadius_topLeft]: C103 || CT.C103
    });
  },
  get C105() {
    return C105 = dart.const({
      __proto__: borders.BorderStyle.prototype,
      [_name]: "BorderStyle.none",
      index: 0
    });
  },
  get C106() {
    return C106 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4278190080.0
    });
  },
  get C104() {
    return C104 = dart.const({
      __proto__: borders.BorderSide.prototype,
      [BorderSide_style]: C105 || CT.C105,
      [BorderSide_width]: 0,
      [BorderSide_color]: C106 || CT.C106
    });
  },
  get C101() {
    return C101 = dart.const({
      __proto__: rounded_rectangle_border.RoundedRectangleBorder.prototype,
      [RoundedRectangleBorder_borderRadius]: C102 || CT.C102,
      [RoundedRectangleBorder_side]: C104 || CT.C104
    });
  },
  get C120() {
    return C120 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 16,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 16
    });
  },
  get C186() {
    return C186 = dart.constList(["products/belt.png", "products/earrings.png", "products/backpack.png", "products/hat.png", "products/scarf.png", "products/sunnies.png"], core.String);
  },
  get C185() {
    return C185 = dart.const({
      __proto__: backdrop_demo.Category.prototype,
      [assets$]: C186 || CT.C186,
      [title$]: "Accessories"
    });
  },
  get C188() {
    return C188 = dart.constList(["products/backpack.png", "products/cup.png", "products/napkins.png", "products/top.png"], core.String);
  },
  get C187() {
    return C187 = dart.const({
      __proto__: backdrop_demo.Category.prototype,
      [assets$]: C188 || CT.C188,
      [title$]: "Blue"
    });
  },
  get C190() {
    return C190 = dart.constList(["products/jacket.png", "products/jumper.png", "products/scarf.png", "products/sweater.png", "products/sweats.png"], core.String);
  },
  get C189() {
    return C189 = dart.const({
      __proto__: backdrop_demo.Category.prototype,
      [assets$]: C190 || CT.C190,
      [title$]: "Cold Weather"
    });
  },
  get C192() {
    return C192 = dart.constList(["products/cup.png", "products/napkins.png", "products/planters.png", "products/table.png", "products/teaset.png"], core.String);
  },
  get C191() {
    return C191 = dart.const({
      __proto__: backdrop_demo.Category.prototype,
      [assets$]: C192 || CT.C192,
      [title$]: "Home"
    });
  },
  get C194() {
    return C194 = dart.constList(["products/jumper.png", "products/shirt.png", "products/sweater.png", "products/top.png"], core.String);
  },
  get C193() {
    return C193 = dart.const({
      __proto__: backdrop_demo.Category.prototype,
      [assets$]: C194 || CT.C194,
      [title$]: "Tops"
    });
  },
  get C196() {
    return C196 = dart.constList(["products/backpack.png", "products/belt.png", "products/cup.png", "products/dress.png", "products/earrings.png", "products/flatwear.png", "products/hat.png", "products/jacket.png", "products/jumper.png", "products/napkins.png", "products/planters.png", "products/scarf.png", "products/shirt.png", "products/sunnies.png", "products/sweater.png", "products/sweats.png", "products/table.png", "products/teaset.png", "products/top.png"], core.String);
  },
  get C195() {
    return C195 = dart.const({
      __proto__: backdrop_demo.Category.prototype,
      [assets$]: C196 || CT.C196,
      [title$]: "Everything"
    });
  },
  get C184() {
    return C184 = dart.constList([C185 || CT.C185, C187 || CT.C187, C189 || CT.C189, C191 || CT.C191, C193 || CT.C193, C195 || CT.C195], backdrop_demo.Category);
  }
});
const title$ = dart.privateName(backdrop_demo, "Category.title");
const assets$ = dart.privateName(backdrop_demo, "Category.assets");
backdrop_demo.Category = class Category extends core.Object {
  get title() {
    return this[title$];
  }
  set title(value) {
    super.title = value;
  }
  get assets() {
    return this[assets$];
  }
  set assets(value) {
    super.assets = value;
  }
  toString() {
    return dart.str(this[$runtimeType]) + "(\"" + dart.str(this.title) + "\")";
  }
};
(backdrop_demo.Category.new = function(opts) {
  let title = opts && 'title' in opts ? opts.title : null;
  let assets = opts && 'assets' in opts ? opts.assets : null;
  this[title$] = title;
  this[assets$] = assets;
  ;
}).prototype = backdrop_demo.Category.prototype;
dart.addTypeTests(backdrop_demo.Category);
dart.setLibraryUri(backdrop_demo.Category, "package:flutter_gallery/demo/material/backdrop_demo.dart");
dart.setFieldSignature(backdrop_demo.Category, () => ({
  __proto__: dart.getFields(backdrop_demo.Category.__proto__),
  title: dart.finalFieldType(core.String),
  assets: dart.finalFieldType(core.List$(core.String))
}));
dart.defineExtensionMethods(backdrop_demo.Category, ['toString']);
const EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
const EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
const EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
const EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
let C0;
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
let C6;
const Widget_key = dart.privateName(framework, "Widget.key");
const SingleChildRenderObjectWidget_child = dart.privateName(framework, "SingleChildRenderObjectWidget.child");
const SizedBox_height = dart.privateName(basic, "SizedBox.height");
const SizedBox_width = dart.privateName(basic, "SizedBox.width");
let C27;
const category$ = dart.privateName(backdrop_demo, "CategoryView.category");
backdrop_demo.CategoryView = class CategoryView extends framework.StatelessWidget {
  get category() {
    return this[category$];
  }
  set category(value) {
    super.category = value;
  }
  build(context) {
    let theme = theme$.Theme.of(context);
    return new scrollbar.Scrollbar.new({child: new scroll_view.ListView.new({key: new (PageStorageKeyOfCategory()).new(this.category), padding: C0 || CT.C0, children: this.category.assets[$map](framework.Widget, dart.fn(asset => new basic.Column.new({crossAxisAlignment: flex.CrossAxisAlignment.stretch, children: JSArrayOfWidget().of([new card.Card.new({child: new container.Container.new({width: 144.0, alignment: alignment.Alignment.center, child: new basic.Column.new({children: JSArrayOfWidget().of([new image.Image.asset(asset, {package: "flutter_gallery_assets", fit: box_fit.BoxFit.contain, $creationLocationd_0dea112b090073317d4: C1 || CT.C1}), new container.Container.new({padding: C6 || CT.C6, alignment: alignment.AlignmentDirectional.center, child: new text.Text.new(asset, {style: theme.textTheme.caption, $creationLocationd_0dea112b090073317d4: C7 || CT.C7}), $creationLocationd_0dea112b090073317d4: C11 || CT.C11})]), $creationLocationd_0dea112b090073317d4: C16 || CT.C16}), $creationLocationd_0dea112b090073317d4: C19 || CT.C19}), $creationLocationd_0dea112b090073317d4: C24 || CT.C24}), C27 || CT.C27]), $creationLocationd_0dea112b090073317d4: C28 || CT.C28}), StringToColumn()))[$toList](), $creationLocationd_0dea112b090073317d4: C32 || CT.C32}), $creationLocationd_0dea112b090073317d4: C37 || CT.C37});
  }
};
(backdrop_demo.CategoryView.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let category = opts && 'category' in opts ? opts.category : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[category$] = category;
  backdrop_demo.CategoryView.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = backdrop_demo.CategoryView.prototype;
dart.addTypeTests(backdrop_demo.CategoryView);
dart.setMethodSignature(backdrop_demo.CategoryView, () => ({
  __proto__: dart.getMethods(backdrop_demo.CategoryView.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(backdrop_demo.CategoryView, "package:flutter_gallery/demo/material/backdrop_demo.dart");
dart.setFieldSignature(backdrop_demo.CategoryView, () => ({
  __proto__: dart.getFields(backdrop_demo.CategoryView.__proto__),
  category: dart.finalFieldType(backdrop_demo.Category)
}));
const Radius_y = dart.privateName(ui, "Radius.y");
const Radius_x = dart.privateName(ui, "Radius.x");
let C41;
const BorderRadius_bottomRight = dart.privateName(border_radius, "BorderRadius.bottomRight");
const BorderRadius_bottomLeft = dart.privateName(border_radius, "BorderRadius.bottomLeft");
let C42;
const BorderRadius_topRight = dart.privateName(border_radius, "BorderRadius.topRight");
const BorderRadius_topLeft = dart.privateName(border_radius, "BorderRadius.topLeft");
let C40;
const EdgeInsetsDirectional_bottom = dart.privateName(edge_insets, "EdgeInsetsDirectional.bottom");
const EdgeInsetsDirectional_end = dart.privateName(edge_insets, "EdgeInsetsDirectional.end");
const EdgeInsetsDirectional_top = dart.privateName(edge_insets, "EdgeInsetsDirectional.top");
const EdgeInsetsDirectional_start = dart.privateName(edge_insets, "EdgeInsetsDirectional.start");
let C43;
const Divider_color = dart.privateName(divider, "Divider.color");
const Divider_endIndent = dart.privateName(divider, "Divider.endIndent");
const Divider_indent = dart.privateName(divider, "Divider.indent");
const Divider_thickness = dart.privateName(divider, "Divider.thickness");
const Divider_height = dart.privateName(divider, "Divider.height");
let C65;
const onTap$ = dart.privateName(backdrop_demo, "BackdropPanel.onTap");
const onVerticalDragUpdate$ = dart.privateName(backdrop_demo, "BackdropPanel.onVerticalDragUpdate");
const onVerticalDragEnd$ = dart.privateName(backdrop_demo, "BackdropPanel.onVerticalDragEnd");
const title$0 = dart.privateName(backdrop_demo, "BackdropPanel.title");
const child$ = dart.privateName(backdrop_demo, "BackdropPanel.child");
backdrop_demo.BackdropPanel = class BackdropPanel extends framework.StatelessWidget {
  get onTap() {
    return this[onTap$];
  }
  set onTap(value) {
    super.onTap = value;
  }
  get onVerticalDragUpdate() {
    return this[onVerticalDragUpdate$];
  }
  set onVerticalDragUpdate(value) {
    super.onVerticalDragUpdate = value;
  }
  get onVerticalDragEnd() {
    return this[onVerticalDragEnd$];
  }
  set onVerticalDragEnd(value) {
    super.onVerticalDragEnd = value;
  }
  get title() {
    return this[title$0];
  }
  set title(value) {
    super.title = value;
  }
  get child() {
    return this[child$];
  }
  set child(value) {
    super.child = value;
  }
  build(context) {
    let theme = theme$.Theme.of(context);
    return new material.Material.new({elevation: 2.0, borderRadius: C40 || CT.C40, child: new basic.Column.new({crossAxisAlignment: flex.CrossAxisAlignment.stretch, children: JSArrayOfWidget().of([new gesture_detector.GestureDetector.new({behavior: proxy_box.HitTestBehavior.opaque, onVerticalDragUpdate: this.onVerticalDragUpdate, onVerticalDragEnd: this.onVerticalDragEnd, onTap: this.onTap, child: new container.Container.new({height: 48.0, padding: C43 || CT.C43, alignment: alignment.AlignmentDirectional.centerStart, child: new text.DefaultTextStyle.new({style: theme.textTheme.subhead, child: new tooltip.Tooltip.new({message: "Tap to dismiss", child: this.title, $creationLocationd_0dea112b090073317d4: C44 || CT.C44}), $creationLocationd_0dea112b090073317d4: C48 || CT.C48}), $creationLocationd_0dea112b090073317d4: C52 || CT.C52}), $creationLocationd_0dea112b090073317d4: C58 || CT.C58}), C65 || CT.C65, new basic.Expanded.new({child: this.child, $creationLocationd_0dea112b090073317d4: C66 || CT.C66})]), $creationLocationd_0dea112b090073317d4: C69 || CT.C69}), $creationLocationd_0dea112b090073317d4: C73 || CT.C73});
  }
};
(backdrop_demo.BackdropPanel.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let onTap = opts && 'onTap' in opts ? opts.onTap : null;
  let onVerticalDragUpdate = opts && 'onVerticalDragUpdate' in opts ? opts.onVerticalDragUpdate : null;
  let onVerticalDragEnd = opts && 'onVerticalDragEnd' in opts ? opts.onVerticalDragEnd : null;
  let title = opts && 'title' in opts ? opts.title : null;
  let child = opts && 'child' in opts ? opts.child : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[onTap$] = onTap;
  this[onVerticalDragUpdate$] = onVerticalDragUpdate;
  this[onVerticalDragEnd$] = onVerticalDragEnd;
  this[title$0] = title;
  this[child$] = child;
  backdrop_demo.BackdropPanel.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = backdrop_demo.BackdropPanel.prototype;
dart.addTypeTests(backdrop_demo.BackdropPanel);
dart.setMethodSignature(backdrop_demo.BackdropPanel, () => ({
  __proto__: dart.getMethods(backdrop_demo.BackdropPanel.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(backdrop_demo.BackdropPanel, "package:flutter_gallery/demo/material/backdrop_demo.dart");
dart.setFieldSignature(backdrop_demo.BackdropPanel, () => ({
  __proto__: dart.getFields(backdrop_demo.BackdropPanel.__proto__),
  onTap: dart.finalFieldType(dart.fnType(dart.void, [])),
  onVerticalDragUpdate: dart.finalFieldType(dart.fnType(dart.void, [drag_details.DragUpdateDetails])),
  onVerticalDragEnd: dart.finalFieldType(dart.fnType(dart.void, [drag_details.DragEndDetails])),
  title: dart.finalFieldType(framework.Widget),
  child: dart.finalFieldType(framework.Widget)
}));
let C79;
const Interval_curve = dart.privateName(curves, "Interval.curve");
const Interval_end = dart.privateName(curves, "Interval.end");
const Interval_begin = dart.privateName(curves, "Interval.begin");
let C78;
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
let C80;
let C85;
backdrop_demo.BackdropTitle = class BackdropTitle extends transitions.AnimatedWidget {
  build(context) {
    let animation = AnimationOfdouble()._check(this.listenable);
    return new text.DefaultTextStyle.new({style: theme$.Theme.of(context).primaryTextTheme.title, softWrap: false, overflow: paragraph.TextOverflow.ellipsis, child: new basic.Stack.new({children: JSArrayOfWidget().of([new basic.Opacity.new({opacity: new animations.CurvedAnimation.new({parent: new animations.ReverseAnimation.new(animation), curve: C78 || CT.C78}).value, child: C80 || CT.C80, $creationLocationd_0dea112b090073317d4: C81 || CT.C81}), new basic.Opacity.new({opacity: new animations.CurvedAnimation.new({parent: animation, curve: C78 || CT.C78}).value, child: C85 || CT.C85, $creationLocationd_0dea112b090073317d4: C86 || CT.C86})]), $creationLocationd_0dea112b090073317d4: C90 || CT.C90}), $creationLocationd_0dea112b090073317d4: C93 || CT.C93});
  }
};
(backdrop_demo.BackdropTitle.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let listenable = opts && 'listenable' in opts ? opts.listenable : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  backdrop_demo.BackdropTitle.__proto__.new.call(this, {key: key, listenable: listenable, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = backdrop_demo.BackdropTitle.prototype;
dart.addTypeTests(backdrop_demo.BackdropTitle);
dart.setMethodSignature(backdrop_demo.BackdropTitle, () => ({
  __proto__: dart.getMethods(backdrop_demo.BackdropTitle.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(backdrop_demo.BackdropTitle, "package:flutter_gallery/demo/material/backdrop_demo.dart");
backdrop_demo.BackdropDemo = class BackdropDemo extends framework.StatefulWidget {
  createState() {
    return new backdrop_demo._BackdropDemoState.new();
  }
};
(backdrop_demo.BackdropDemo.new = function(opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  backdrop_demo.BackdropDemo.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = backdrop_demo.BackdropDemo.prototype;
dart.addTypeTests(backdrop_demo.BackdropDemo);
dart.setMethodSignature(backdrop_demo.BackdropDemo, () => ({
  __proto__: dart.getMethods(backdrop_demo.BackdropDemo.__proto__),
  createState: dart.fnType(backdrop_demo._BackdropDemoState, [])
}));
dart.setLibraryUri(backdrop_demo.BackdropDemo, "package:flutter_gallery/demo/material/backdrop_demo.dart");
dart.defineLazy(backdrop_demo.BackdropDemo, {
  /*backdrop_demo.BackdropDemo.routeName*/get routeName() {
    return "/material/backdrop";
  }
});
const _backdropKey = dart.privateName(backdrop_demo, "_backdropKey");
const _controller = dart.privateName(backdrop_demo, "_controller");
const _category = dart.privateName(backdrop_demo, "_category");
const Duration__duration = dart.privateName(core, "Duration._duration");
let C99;
const _changeCategory = dart.privateName(backdrop_demo, "_changeCategory");
const _backdropPanelVisible = dart.privateName(backdrop_demo, "_backdropPanelVisible");
const _toggleBackdropPanelVisibility = dart.privateName(backdrop_demo, "_toggleBackdropPanelVisibility");
const _backdropHeight = dart.privateName(backdrop_demo, "_backdropHeight");
const _handleDragUpdate = dart.privateName(backdrop_demo, "_handleDragUpdate");
const _handleDragEnd = dart.privateName(backdrop_demo, "_handleDragEnd");
const RelativeRect_bottom = dart.privateName(stack, "RelativeRect.bottom");
const RelativeRect_right = dart.privateName(stack, "RelativeRect.right");
const RelativeRect_top = dart.privateName(stack, "RelativeRect.top");
const RelativeRect_left = dart.privateName(stack, "RelativeRect.left");
let C100;
let C103;
let C102;
const RoundedRectangleBorder_borderRadius = dart.privateName(rounded_rectangle_border, "RoundedRectangleBorder.borderRadius");
const _name = dart.privateName(borders, "_name");
let C105;
const BorderSide_style = dart.privateName(borders, "BorderSide.style");
const BorderSide_width = dart.privateName(borders, "BorderSide.width");
const Color_value = dart.privateName(ui, "Color.value");
let C106;
const BorderSide_color = dart.privateName(borders, "BorderSide.color");
let C104;
const RoundedRectangleBorder_side = dart.privateName(rounded_rectangle_border, "RoundedRectangleBorder.side");
let C101;
let C120;
const _buildStack = dart.privateName(backdrop_demo, "_buildStack");
const State_SingleTickerProviderStateMixin$36 = class State_SingleTickerProviderStateMixin extends framework.State$(backdrop_demo.BackdropDemo) {};
(State_SingleTickerProviderStateMixin$36.new = function() {
  ticker_provider.SingleTickerProviderStateMixin$(backdrop_demo.BackdropDemo)[dart.mixinNew].call(this);
  State_SingleTickerProviderStateMixin$36.__proto__.new.call(this);
}).prototype = State_SingleTickerProviderStateMixin$36.prototype;
dart.applyMixin(State_SingleTickerProviderStateMixin$36, ticker_provider.SingleTickerProviderStateMixin$(backdrop_demo.BackdropDemo));
backdrop_demo._BackdropDemoState = class _BackdropDemoState extends State_SingleTickerProviderStateMixin$36 {
  initState() {
    super.initState();
    this[_controller] = new animation_controller.AnimationController.new({duration: C99 || CT.C99, value: 1.0, vsync: this});
  }
  dispose() {
    this[_controller].dispose();
    super.dispose();
  }
  [_changeCategory](category) {
    this.setState(dart.fn(() => {
      this[_category] = category;
      this[_controller].fling({velocity: 2.0});
    }, VoidToNull()));
  }
  get [_backdropPanelVisible]() {
    let status = this[_controller].status;
    return dart.equals(status, animation.AnimationStatus.completed) || dart.equals(status, animation.AnimationStatus.forward);
  }
  [_toggleBackdropPanelVisibility]() {
    this[_controller].fling({velocity: dart.test(this[_backdropPanelVisible]) ? -2.0 : 2.0});
  }
  get [_backdropHeight]() {
    let renderBox = box.RenderBox._check(this[_backdropKey].currentContext.findRenderObject());
    return renderBox.size.height;
  }
  [_handleDragUpdate](details) {
    let t1, t0;
    if (dart.test(this[_controller].isAnimating) || dart.equals(this[_controller].status, animation.AnimationStatus.completed)) return;
    t0 = this[_controller];
    t0.value = dart.notNull(t0.value) - dart.notNull(details.primaryDelta) / dart.notNull((t1 = this[_backdropHeight], t1 == null ? details.primaryDelta : t1));
  }
  [_handleDragEnd](details) {
    if (dart.test(this[_controller].isAnimating) || dart.equals(this[_controller].status, animation.AnimationStatus.completed)) return;
    let flingVelocity = dart.notNull(details.velocity.pixelsPerSecond.dy) / dart.notNull(this[_backdropHeight]);
    if (flingVelocity < 0.0)
      this[_controller].fling({velocity: math.max(core.double, 2.0, -flingVelocity)});
    else if (flingVelocity > 0.0)
      this[_controller].fling({velocity: math.min(core.double, -2.0, -flingVelocity)});
    else
      this[_controller].fling({velocity: dart.notNull(this[_controller].value) < 0.5 ? -2.0 : 2.0});
  }
  [_buildStack](context, constraints) {
    let panelSize = constraints.biggest;
    let panelTop = dart.notNull(panelSize.height) - 48;
    let panelAnimation = this[_controller].drive(stack.RelativeRect, new transitions.RelativeRectTween.new({begin: new stack.RelativeRect.fromLTRB(0.0, panelTop - dart.notNull(media_query.MediaQuery.of(context).padding.bottom), 0.0, panelTop - dart.notNull(panelSize.height)), end: C100 || CT.C100}));
    let theme = theme$.Theme.of(context);
    let backdropItems = backdrop_demo.allCategories[$map](framework.Widget, dart.fn(category => {
      let selected = dart.equals(category, this[_category]);
      return new material.Material.new({shape: C101 || CT.C101, color: selected ? colors.Colors.white.withOpacity(0.25) : colors.Colors.transparent, child: new list_tile.ListTile.new({title: new text.Text.new(category.title, {$creationLocationd_0dea112b090073317d4: C107 || CT.C107}), selected: selected, onTap: dart.fn(() => {
            this[_changeCategory](category);
          }, VoidToNull()), $creationLocationd_0dea112b090073317d4: C110 || CT.C110}), $creationLocationd_0dea112b090073317d4: C115 || CT.C115});
    }, CategoryToMaterial()))[$toList]();
    return new container.Container.new({key: this[_backdropKey], color: theme.primaryColor, child: new basic.Stack.new({children: JSArrayOfWidget().of([new list_tile.ListTileTheme.new({iconColor: theme.primaryIconTheme.color, textColor: theme.primaryTextTheme.title.color.withOpacity(0.6), selectedColor: theme.primaryTextTheme.title.color, child: new basic.Padding.new({padding: C120 || CT.C120, child: new basic.Column.new({crossAxisAlignment: flex.CrossAxisAlignment.stretch, children: backdropItems, $creationLocationd_0dea112b090073317d4: C121 || CT.C121}), $creationLocationd_0dea112b090073317d4: C125 || CT.C125}), $creationLocationd_0dea112b090073317d4: C129 || CT.C129}), new transitions.PositionedTransition.new({rect: panelAnimation, child: new backdrop_demo.BackdropPanel.new({onTap: dart.bind(this, _toggleBackdropPanelVisibility), onVerticalDragUpdate: dart.bind(this, _handleDragUpdate), onVerticalDragEnd: dart.bind(this, _handleDragEnd), title: new text.Text.new(this[_category].title, {$creationLocationd_0dea112b090073317d4: C135 || CT.C135}), child: new backdrop_demo.CategoryView.new({category: this[_category], $creationLocationd_0dea112b090073317d4: C138 || CT.C138}), $creationLocationd_0dea112b090073317d4: C141 || CT.C141}), $creationLocationd_0dea112b090073317d4: C148 || CT.C148})]), $creationLocationd_0dea112b090073317d4: C152 || CT.C152}), $creationLocationd_0dea112b090073317d4: C155 || CT.C155});
  }
  build(context) {
    return new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({elevation: 0.0, title: new backdrop_demo.BackdropTitle.new({listenable: this[_controller].view, $creationLocationd_0dea112b090073317d4: C160 || CT.C160}), actions: JSArrayOfWidget().of([new icon_button.IconButton.new({onPressed: dart.bind(this, _toggleBackdropPanelVisibility), icon: new animated_icons.AnimatedIcon.new({icon: animated_icons.AnimatedIcons.close_menu, semanticLabel: "close", progress: this[_controller].view, $creationLocationd_0dea112b090073317d4: C163 || CT.C163}), $creationLocationd_0dea112b090073317d4: C168 || CT.C168})]), $creationLocationd_0dea112b090073317d4: C172 || CT.C172}), body: new layout_builder.LayoutBuilder.new({builder: dart.bind(this, _buildStack), $creationLocationd_0dea112b090073317d4: C177 || CT.C177}), $creationLocationd_0dea112b090073317d4: C180 || CT.C180});
  }
};
(backdrop_demo._BackdropDemoState.new = function() {
  this[_backdropKey] = GlobalKeyOfStateOfStatefulWidget().new({debugLabel: "Backdrop"});
  this[_controller] = null;
  this[_category] = backdrop_demo.allCategories[$_get](0);
  backdrop_demo._BackdropDemoState.__proto__.new.call(this);
  ;
}).prototype = backdrop_demo._BackdropDemoState.prototype;
dart.addTypeTests(backdrop_demo._BackdropDemoState);
dart.setMethodSignature(backdrop_demo._BackdropDemoState, () => ({
  __proto__: dart.getMethods(backdrop_demo._BackdropDemoState.__proto__),
  [_changeCategory]: dart.fnType(dart.void, [backdrop_demo.Category]),
  [_toggleBackdropPanelVisibility]: dart.fnType(dart.void, []),
  [_handleDragUpdate]: dart.fnType(dart.void, [drag_details.DragUpdateDetails]),
  [_handleDragEnd]: dart.fnType(dart.void, [drag_details.DragEndDetails]),
  [_buildStack]: dart.fnType(framework.Widget, [framework.BuildContext, box.BoxConstraints]),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setGetterSignature(backdrop_demo._BackdropDemoState, () => ({
  __proto__: dart.getGetters(backdrop_demo._BackdropDemoState.__proto__),
  [_backdropPanelVisible]: core.bool,
  [_backdropHeight]: core.double
}));
dart.setLibraryUri(backdrop_demo._BackdropDemoState, "package:flutter_gallery/demo/material/backdrop_demo.dart");
dart.setFieldSignature(backdrop_demo._BackdropDemoState, () => ({
  __proto__: dart.getFields(backdrop_demo._BackdropDemoState.__proto__),
  [_backdropKey]: dart.finalFieldType(framework.GlobalKey$(framework.State$(framework.StatefulWidget))),
  [_controller]: dart.fieldType(animation_controller.AnimationController),
  [_category]: dart.fieldType(backdrop_demo.Category)
}));
let C186;
let C185;
let C188;
let C187;
let C190;
let C189;
let C192;
let C191;
let C194;
let C193;
let C196;
let C195;
let C184;
dart.defineLazy(backdrop_demo, {
  /*backdrop_demo.allCategories*/get allCategories() {
    return C184 || CT.C184;
  }
});
dart.trackLibraries("packages/flutter_gallery/demo/material/backdrop_demo", {
  "package:flutter_gallery/demo/material/backdrop_demo.dart": backdrop_demo
}, {
}, '{"version":3,"sourceRoot":"","sources":["backdrop_demo.dart"],"names":[],"mappings":"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","file":"backdrop_demo.ddc.js"}');
// Exports:
exports.demo__material__backdrop_demo = backdrop_demo;

//# sourceMappingURL=backdrop_demo.ddc.js.map
