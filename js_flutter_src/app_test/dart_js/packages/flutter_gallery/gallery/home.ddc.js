'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const ui = dart_sdk.ui;
const _interceptors = dart_sdk._interceptors;
const math = dart_sdk.math;
const developer = dart_sdk.developer;
const _js_helper = dart_sdk._js_helper;
const async = dart_sdk.async;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const container = packages__flutter__src__widgets__actions.src__widgets__container;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const icon = packages__flutter__src__widgets__actions.src__widgets__icon;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const media_query = packages__flutter__src__widgets__actions.src__widgets__media_query;
const single_child_scroll_view = packages__flutter__src__widgets__actions.src__widgets__single_child_scroll_view;
const page_storage = packages__flutter__src__widgets__actions.src__widgets__page_storage;
const layout_builder = packages__flutter__src__widgets__actions.src__widgets__layout_builder;
const navigator = packages__flutter__src__widgets__actions.src__widgets__navigator;
const scroll_view = packages__flutter__src__widgets__actions.src__widgets__scroll_view;
const safe_area = packages__flutter__src__widgets__actions.src__widgets__safe_area;
const will_pop_scope = packages__flutter__src__widgets__actions.src__widgets__will_pop_scope;
const animated_switcher = packages__flutter__src__widgets__actions.src__widgets__animated_switcher;
const transitions = packages__flutter__src__widgets__actions.src__widgets__transitions;
const banner = packages__flutter__src__widgets__actions.src__widgets__banner;
const annotated_region = packages__flutter__src__widgets__actions.src__widgets__annotated_region;
const ticker_provider = packages__flutter__src__widgets__actions.src__widgets__ticker_provider;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const box_decoration = packages__flutter__src__painting___network_image_web.src__painting__box_decoration;
const box_border = packages__flutter__src__painting___network_image_web.src__painting__box_border;
const decoration_image = packages__flutter__src__painting___network_image_web.src__painting__decoration_image;
const alignment = packages__flutter__src__painting___network_image_web.src__painting__alignment;
const image_resolution = packages__flutter__src__painting___network_image_web.src__painting__image_resolution;
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const text_style = packages__flutter__src__painting___network_image_web.src__painting__text_style;
const packages__flutter__material = require('packages/flutter/material');
const theme$ = packages__flutter__material.src__material__theme;
const button = packages__flutter__material.src__material__button;
const colors = packages__flutter__material.src__material__colors;
const scaffold = packages__flutter__material.src__material__scaffold;
const icon_button = packages__flutter__material.src__material__icon_button;
const back_button = packages__flutter__material.src__material__back_button;
const packages__flutter__src__rendering__animated_size = require('packages/flutter/src/rendering/animated_size');
const flex = packages__flutter__src__rendering__animated_size.src__rendering__flex;
const box = packages__flutter__src__rendering__animated_size.src__rendering__box;
const stack = packages__flutter__src__rendering__animated_size.src__rendering__stack;
const packages__flutter_gallery__demo__all = require('packages/flutter_gallery/demo/all');
const demos = packages__flutter_gallery__demo__all.gallery__demos;
const packages__flutter__src__foundation___bitfield_web = require('packages/flutter/src/foundation/_bitfield_web');
const key = packages__flutter__src__foundation___bitfield_web.src__foundation__key;
const packages__flutter__src__gestures__arena = require('packages/flutter/src/gestures/arena');
const recognizer = packages__flutter__src__gestures__arena.src__gestures__recognizer;
const system_chrome = packages__flutter__src__gestures__arena.src__services__system_chrome;
const packages__flutter__src__animation__animation = require('packages/flutter/src/animation/animation');
const animation_controller = packages__flutter__src__animation__animation.src__animation__animation_controller;
const curves = packages__flutter__src__animation__animation.src__animation__curves;
const animations = packages__flutter__src__animation__animation.src__animation__animations;
const packages__flutter_gallery__gallery__backdrop = require('packages/flutter_gallery/gallery/backdrop');
const backdrop = packages__flutter_gallery__gallery__backdrop.gallery__backdrop;
const home$ = Object.create(dart.library);
const $toList = dartx.toList;
const $toDouble = dartx.toDouble;
const $length = dartx.length;
const $truncate = dartx.truncate;
const $_get = dartx._get;
const $add = dartx.add;
const $map = dartx.map;
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
let PageStorageKeyOfString = () => (PageStorageKeyOfString = dart.constFn(page_storage.PageStorageKey$(core.String)))();
let ListOfWidget = () => (ListOfWidget = dart.constFn(core.List$(framework.Widget)))();
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let intToSizedBox = () => (intToSizedBox = dart.constFn(dart.fnType(basic.SizedBox, [core.int])))();
let intToRow = () => (intToRow = dart.constFn(dart.fnType(basic.Row, [core.int])))();
let BuildContextAndBoxConstraintsToRepaintBoundary = () => (BuildContextAndBoxConstraintsToRepaintBoundary = dart.constFn(dart.fnType(basic.RepaintBoundary, [framework.BuildContext, box.BoxConstraints])))();
let IdentityMapOfString$String = () => (IdentityMapOfString$String = dart.constFn(_js_helper.IdentityMap$(core.String, core.String)))();
let ValueKeyOfString = () => (ValueKeyOfString = dart.constFn(key.ValueKey$(core.String)))();
let GalleryDemoTo_DemoItem = () => (GalleryDemoTo_DemoItem = dart.constFn(dart.fnType(home$._DemoItem, [demos.GalleryDemo])))();
let FutureOfbool = () => (FutureOfbool = dart.constFn(async.Future$(core.bool)))();
let VoidToFutureOfbool = () => (VoidToFutureOfbool = dart.constFn(dart.fnType(FutureOfbool(), [])))();
let VoidTovoid = () => (VoidTovoid = dart.constFn(dart.fnType(dart.void, [])))();
let WidgetAndListOfWidgetToWidget = () => (WidgetAndListOfWidgetToWidget = dart.constFn(dart.fnType(framework.Widget, [framework.Widget, ListOfWidget()])))();
let VoidToGalleryDemoCategory = () => (VoidToGalleryDemoCategory = dart.constFn(dart.fnType(demos.GalleryDemoCategory, [])))();
let GalleryDemoCategoryToNull = () => (GalleryDemoCategoryToNull = dart.constFn(dart.fnType(core.Null, [demos.GalleryDemoCategory])))();
let VoidTobool = () => (VoidTobool = dart.constFn(dart.fnType(core.bool, [])))();
let AnnotatedRegionOfSystemUiOverlayStyle = () => (AnnotatedRegionOfSystemUiOverlayStyle = dart.constFn(annotated_region.AnnotatedRegion$(system_chrome.SystemUiOverlayStyle)))();
let GlobalKeyOfScaffoldState = () => (GlobalKeyOfScaffoldState = dart.constFn(framework.GlobalKey$(scaffold.ScaffoldState)))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C1() {
    return C1 = dart.const({
      __proto__: box_border.BoxShape.prototype,
      [_name]: "BoxShape.rectangle",
      index: 0
    });
  },
  get C3() {
    return C3 = dart.const({
      __proto__: decoration_image.ImageRepeat.prototype,
      [_name$]: "ImageRepeat.noRepeat",
      index: 3
    });
  },
  get C4() {
    return C4 = dart.const({
      __proto__: alignment.Alignment.prototype,
      [Alignment_y]: 0,
      [Alignment_x]: 0
    });
  },
  get C5() {
    return C5 = dart.const({
      __proto__: image_resolution.AssetImage.prototype,
      [AssetImage_package]: "flutter_gallery_assets",
      [AssetImage_bundle]: null,
      [AssetImage_assetName]: "logos/flutter_white/logo.png"
    });
  },
  get C2() {
    return C2 = dart.const({
      __proto__: decoration_image.DecorationImage.prototype,
      [DecorationImage_matchTextDirection]: false,
      [DecorationImage_repeat]: C3 || CT.C3,
      [DecorationImage_centerSlice]: null,
      [DecorationImage_alignment]: C4 || CT.C4,
      [DecorationImage_fit]: null,
      [DecorationImage_colorFilter]: null,
      [DecorationImage_image]: C5 || CT.C5
    });
  },
  get C0() {
    return C0 = dart.const({
      __proto__: box_decoration.BoxDecoration.prototype,
      [BoxDecoration_shape]: C1 || CT.C1,
      [BoxDecoration_backgroundBlendMode]: null,
      [BoxDecoration_gradient]: null,
      [BoxDecoration_boxShadow]: null,
      [BoxDecoration_borderRadius]: null,
      [BoxDecoration_border]: null,
      [BoxDecoration_image]: C2 || CT.C2,
      [BoxDecoration_color]: null
    });
  },
  get C14() {
    return C14 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 6,
      [EdgeInsets_right]: 6,
      [EdgeInsets_top]: 6,
      [EdgeInsets_left]: 6
    });
  },
  get C24() {
    return C24 = dart.const({
      __proto__: basic.SizedBox.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: null,
      [SizedBox_height]: 10,
      [SizedBox_width]: null
    });
  },
  get C51() {
    return C51 = dart.const({
      __proto__: PageStorageKeyOfString().prototype,
      [ValueKey_value]: "categories"
    });
  },
  get C97() {
    return C97 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4280295716.0
    });
  },
  get C102() {
    return C102 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4284507243.0
    });
  },
  get C115() {
    return C115 = dart.const({
      __proto__: basic.SizedBox.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: null,
      [SizedBox_height]: null,
      [SizedBox_width]: 44
    });
  },
  get C130() {
    return C130 = dart.const({
      __proto__: ValueKeyOfString().prototype,
      [ValueKey_value]: "GalleryDemoList"
    });
  },
  get C155() {
    return C155 = dart.const({
      __proto__: core.Duration.prototype,
      [Duration__duration]: 600000
    });
  },
  get C157() {
    return C157 = dart.const({
      __proto__: curves.Cubic.prototype,
      [Cubic_d]: 1,
      [Cubic_c]: 0.2,
      [Cubic_b]: 0,
      [Cubic_a]: 0.4
    });
  },
  get C156() {
    return C156 = dart.const({
      __proto__: curves.Interval.prototype,
      [Interval_curve]: C157 || CT.C157,
      [Interval_end]: 1,
      [Interval_begin]: 0.4
    });
  },
  get C158() {
    return C158 = dart.const({
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
      [Text_data]: "Options"
    });
  },
  get C159() {
    return C159 = dart.const({
      __proto__: home$._FlutterLogo.prototype,
      [Widget_key]: null
    });
  },
  get C160() {
    return C160 = dart.const({
      __proto__: back_button.BackButtonIcon.prototype,
      [Widget_key]: null
    });
  },
  get C172() {
    return C172 = dart.const({
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
      [Text_data]: "Flutter gallery"
    });
  },
  get C183() {
    return C183 = dart.fn(home$._GalleryHomeState._topHomeLayout, WidgetAndListOfWidgetToWidget());
  },
  get C221() {
    return C221 = dart.const({
      __proto__: ui.FontWeight.prototype,
      [FontWeight_index]: 8
    });
  },
  get C222() {
    return C222 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4294967295.0
    });
  },
  get C220() {
    return C220 = dart.const({
      __proto__: text_style.TextStyle.prototype,
      [TextStyle_fontFeatures]: null,
      [TextStyle_shadows]: null,
      [TextStyle_debugLabel]: null,
      [TextStyle_decorationThickness]: null,
      [TextStyle_decorationStyle]: null,
      [TextStyle_decorationColor]: null,
      [TextStyle_decoration]: null,
      [TextStyle_background]: null,
      [TextStyle_foreground]: null,
      [TextStyle_locale]: null,
      [TextStyle_height]: 1,
      [TextStyle_textBaseline]: null,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: C221 || CT.C221,
      [TextStyle_fontSize]: 10.2,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: null,
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C222 || CT.C222,
      [TextStyle_inherit]: true
    });
  },
  get C223() {
    return C223 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 2696354844.0
    });
  },
  get C224() {
    return C224 = dart.const({
      __proto__: banner.BannerLocation.prototype,
      [_name$0]: "BannerLocation.topEnd",
      index: 1
    });
  },
  get C219() {
    return C219 = dart.const({
      __proto__: banner.Banner.prototype,
      [Widget_key]: null,
      [Banner_textStyle]: C220 || CT.C220,
      [Banner_color]: C223 || CT.C223,
      [Banner_layoutDirection]: null,
      [Banner_location]: C224 || CT.C224,
      [Banner_textDirection]: null,
      [Banner_message]: "PREVIEW",
      [Banner_child]: null
    });
  },
  get C237() {
    return C237 = dart.fn(animated_switcher.AnimatedSwitcher.defaultLayoutBuilder, WidgetAndListOfWidgetToWidget());
  },
  get C238() {
    return C238 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4278205813.0
    });
  },
  get C239() {
    return C239 = dart.const({
      __proto__: core.Duration.prototype,
      [Duration__duration]: 300000
    });
  }
});
const _name = dart.privateName(box_border, "_name");
let C1;
const BoxDecoration_shape = dart.privateName(box_decoration, "BoxDecoration.shape");
const BoxDecoration_backgroundBlendMode = dart.privateName(box_decoration, "BoxDecoration.backgroundBlendMode");
const BoxDecoration_gradient = dart.privateName(box_decoration, "BoxDecoration.gradient");
const BoxDecoration_boxShadow = dart.privateName(box_decoration, "BoxDecoration.boxShadow");
const BoxDecoration_borderRadius = dart.privateName(box_decoration, "BoxDecoration.borderRadius");
const BoxDecoration_border = dart.privateName(box_decoration, "BoxDecoration.border");
const DecorationImage_matchTextDirection = dart.privateName(decoration_image, "DecorationImage.matchTextDirection");
const _name$ = dart.privateName(decoration_image, "_name");
let C3;
const DecorationImage_repeat = dart.privateName(decoration_image, "DecorationImage.repeat");
const DecorationImage_centerSlice = dart.privateName(decoration_image, "DecorationImage.centerSlice");
const Alignment_y = dart.privateName(alignment, "Alignment.y");
const Alignment_x = dart.privateName(alignment, "Alignment.x");
let C4;
const DecorationImage_alignment = dart.privateName(decoration_image, "DecorationImage.alignment");
const DecorationImage_fit = dart.privateName(decoration_image, "DecorationImage.fit");
const DecorationImage_colorFilter = dart.privateName(decoration_image, "DecorationImage.colorFilter");
const AssetImage_package = dart.privateName(image_resolution, "AssetImage.package");
const AssetImage_bundle = dart.privateName(image_resolution, "AssetImage.bundle");
const AssetImage_assetName = dart.privateName(image_resolution, "AssetImage.assetName");
let C5;
const DecorationImage_image = dart.privateName(decoration_image, "DecorationImage.image");
let C2;
const BoxDecoration_image = dart.privateName(box_decoration, "BoxDecoration.image");
const BoxDecoration_color = dart.privateName(box_decoration, "BoxDecoration.color");
let C0;
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
home$._FlutterLogo = class _FlutterLogo extends framework.StatelessWidget {
  build(context) {
    return new basic.Center.new({child: new container.Container.new({width: 34.0, height: 34.0, decoration: C0 || CT.C0, $creationLocationd_0dea112b090073317d4: C6 || CT.C6}), $creationLocationd_0dea112b090073317d4: C11 || CT.C11});
  }
};
(home$._FlutterLogo.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  home$._FlutterLogo.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = home$._FlutterLogo.prototype;
dart.addTypeTests(home$._FlutterLogo);
dart.setMethodSignature(home$._FlutterLogo, () => ({
  __proto__: dart.getMethods(home$._FlutterLogo.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(home$._FlutterLogo, "package:flutter_gallery/gallery/home.dart");
const EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
const EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
const EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
const EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
let C14;
const Widget_key = dart.privateName(framework, "Widget.key");
const SingleChildRenderObjectWidget_child = dart.privateName(framework, "SingleChildRenderObjectWidget.child");
const SizedBox_height = dart.privateName(basic, "SizedBox.height");
const SizedBox_width = dart.privateName(basic, "SizedBox.width");
let C24;
const category$ = dart.privateName(home$, "_CategoryItem.category");
const onTap$ = dart.privateName(home$, "_CategoryItem.onTap");
home$._CategoryItem = class _CategoryItem extends framework.StatelessWidget {
  get category() {
    return this[category$];
  }
  set category(value) {
    super.category = value;
  }
  get onTap() {
    return this[onTap$];
  }
  set onTap(value) {
    super.onTap = value;
  }
  build(context) {
    let theme = theme$.Theme.of(context);
    let isDark = dart.equals(theme.brightness, ui.Brightness.dark);
    return new basic.RepaintBoundary.new({child: new button.RawMaterialButton.new({padding: edge_insets.EdgeInsets.zero, hoverColor: theme.primaryColor.withOpacity(0.05), splashColor: theme.primaryColor.withOpacity(0.12), highlightColor: colors.Colors.transparent, onPressed: this.onTap, child: new basic.Column.new({mainAxisAlignment: flex.MainAxisAlignment.end, crossAxisAlignment: flex.CrossAxisAlignment.center, children: JSArrayOfWidget().of([new basic.Padding.new({padding: C14 || CT.C14, child: new icon.Icon.new(this.category.icon, {size: 60.0, color: isDark ? colors.Colors.white : home$._kFlutterBlue, $creationLocationd_0dea112b090073317d4: C15 || CT.C15}), $creationLocationd_0dea112b090073317d4: C20 || CT.C20}), C24 || CT.C24, new container.Container.new({height: 48.0, alignment: alignment.Alignment.center, child: new text.Text.new(this.category.name, {textAlign: ui.TextAlign.center, style: theme.textTheme.subhead.copyWith({fontFamily: "GoogleSans", color: isDark ? colors.Colors.white : home$._kFlutterBlue}), $creationLocationd_0dea112b090073317d4: C25 || CT.C25}), $creationLocationd_0dea112b090073317d4: C30 || CT.C30})]), $creationLocationd_0dea112b090073317d4: C35 || CT.C35}), $creationLocationd_0dea112b090073317d4: C40 || CT.C40}), $creationLocationd_0dea112b090073317d4: C48 || CT.C48});
  }
};
(home$._CategoryItem.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let category = opts && 'category' in opts ? opts.category : null;
  let onTap = opts && 'onTap' in opts ? opts.onTap : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[category$] = category;
  this[onTap$] = onTap;
  home$._CategoryItem.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = home$._CategoryItem.prototype;
dart.addTypeTests(home$._CategoryItem);
dart.setMethodSignature(home$._CategoryItem, () => ({
  __proto__: dart.getMethods(home$._CategoryItem.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(home$._CategoryItem, "package:flutter_gallery/gallery/home.dart");
dart.setFieldSignature(home$._CategoryItem, () => ({
  __proto__: dart.getFields(home$._CategoryItem.__proto__),
  category: dart.finalFieldType(demos.GalleryDemoCategory),
  onTap: dart.finalFieldType(dart.fnType(dart.void, []))
}));
const ValueKey_value = dart.privateName(key, "ValueKey.value");
let C51;
const categories$ = dart.privateName(home$, "_CategoriesPage.categories");
const onCategoryTap$ = dart.privateName(home$, "_CategoriesPage.onCategoryTap");
home$._CategoriesPage = class _CategoriesPage extends framework.StatelessWidget {
  get categories() {
    return this[categories$];
  }
  set categories(value) {
    super.categories = value;
  }
  get onCategoryTap() {
    return this[onCategoryTap$];
  }
  set onCategoryTap(value) {
    super.onCategoryTap = value;
  }
  build(context) {
    let categoriesList = this.categories[$toList]();
    let columnCount = dart.equals(media_query.MediaQuery.of(context).orientation, media_query.Orientation.portrait) ? 2 : 3;
    return new basic.Semantics.new({scopesRoute: true, namesRoute: true, label: "categories", explicitChildNodes: true, child: new single_child_scroll_view.SingleChildScrollView.new({key: C51 || CT.C51, child: new layout_builder.LayoutBuilder.new({builder: dart.fn((context, constraints) => {
            let columnWidth = dart.notNull(constraints.biggest.width) / columnCount[$toDouble]();
            let rowHeight = math.min(core.double, 225.0, columnWidth * 0.8888888888888888);
            let rowCount = ((dart.notNull(this.categories[$length]) + columnCount - 1) / columnCount)[$truncate]();
            return new basic.RepaintBoundary.new({child: new basic.Column.new({mainAxisSize: flex.MainAxisSize.min, crossAxisAlignment: flex.CrossAxisAlignment.stretch, children: ListOfWidget().generate(rowCount, dart.fn(rowIndex => {
                  let columnCountForRow = dart.asInt(rowIndex === rowCount - 1 ? dart.notNull(this.categories[$length]) - columnCount * math.max(core.num, 0, rowCount - 1) : columnCount);
                  return new basic.Row.new({children: ListOfWidget().generate(columnCountForRow, dart.fn(columnIndex => {
                      let index = dart.notNull(rowIndex) * columnCount + dart.notNull(columnIndex);
                      let category = categoriesList[$_get](index);
                      return new basic.SizedBox.new({width: columnWidth, height: rowHeight, child: new home$._CategoryItem.new({category: category, onTap: dart.fn(() => {
                            this.onCategoryTap(category);
                          }, VoidToNull()), $creationLocationd_0dea112b090073317d4: C52 || CT.C52}), $creationLocationd_0dea112b090073317d4: C56 || CT.C56});
                    }, intToSizedBox())), $creationLocationd_0dea112b090073317d4: C61 || CT.C61});
                }, intToRow())), $creationLocationd_0dea112b090073317d4: C64 || CT.C64}), $creationLocationd_0dea112b090073317d4: C69 || CT.C69});
          }, BuildContextAndBoxConstraintsToRepaintBoundary()), $creationLocationd_0dea112b090073317d4: C72 || CT.C72}), $creationLocationd_0dea112b090073317d4: C75 || CT.C75}), $creationLocationd_0dea112b090073317d4: C79 || CT.C79});
  }
};
(home$._CategoriesPage.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let categories = opts && 'categories' in opts ? opts.categories : null;
  let onCategoryTap = opts && 'onCategoryTap' in opts ? opts.onCategoryTap : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[categories$] = categories;
  this[onCategoryTap$] = onCategoryTap;
  home$._CategoriesPage.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = home$._CategoriesPage.prototype;
dart.addTypeTests(home$._CategoriesPage);
dart.setMethodSignature(home$._CategoriesPage, () => ({
  __proto__: dart.getMethods(home$._CategoriesPage.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(home$._CategoriesPage, "package:flutter_gallery/gallery/home.dart");
dart.setFieldSignature(home$._CategoriesPage, () => ({
  __proto__: dart.getFields(home$._CategoriesPage.__proto__),
  categories: dart.finalFieldType(core.Iterable$(demos.GalleryDemoCategory)),
  onCategoryTap: dart.finalFieldType(dart.fnType(dart.void, [demos.GalleryDemoCategory]))
}));
const _launchDemo = dart.privateName(home$, "_launchDemo");
const Color_value = dart.privateName(ui, "Color.value");
let C97;
let C102;
let C115;
const demo$ = dart.privateName(home$, "_DemoItem.demo");
home$._DemoItem = class _DemoItem extends framework.StatelessWidget {
  get demo() {
    return this[demo$];
  }
  set demo(value) {
    super.demo = value;
  }
  [_launchDemo](context) {
    if (this.demo.routeName != null) {
      developer.Timeline.instantSync("Start Transition", {arguments: new (IdentityMapOfString$String()).from(["from", "/", "to", this.demo.routeName])});
      navigator.Navigator.pushNamed(core.Object, context, this.demo.routeName);
    }
  }
  build(context) {
    let theme = theme$.Theme.of(context);
    let isDark = dart.equals(theme.brightness, ui.Brightness.dark);
    let textScaleFactor = media_query.MediaQuery.textScaleFactorOf(context);
    return new button.RawMaterialButton.new({padding: edge_insets.EdgeInsets.zero, splashColor: theme.primaryColor.withOpacity(0.12), highlightColor: colors.Colors.transparent, onPressed: dart.fn(() => {
        this[_launchDemo](context);
      }, VoidToNull()), child: new container.Container.new({constraints: new box.BoxConstraints.new({minHeight: 64 * dart.notNull(textScaleFactor)}), child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({width: 56.0, height: 56.0, alignment: alignment.Alignment.center, child: new icon.Icon.new(this.demo.icon, {size: 24.0, color: isDark ? colors.Colors.white : home$._kFlutterBlue, $creationLocationd_0dea112b090073317d4: C86 || CT.C86}), $creationLocationd_0dea112b090073317d4: C91 || CT.C91}), new basic.Expanded.new({child: new basic.Column.new({mainAxisAlignment: flex.MainAxisAlignment.center, crossAxisAlignment: flex.CrossAxisAlignment.stretch, children: (() => {
                  let t0 = JSArrayOfWidget().of([]);
                  t0[$add](new text.Text.new(this.demo.title, {style: theme.textTheme.subhead.copyWith({color: isDark ? colors.Colors.white : C97 || CT.C97}), $creationLocationd_0dea112b090073317d4: C98 || CT.C98}));
                  if (this.demo.subtitle != null) t0[$add](new text.Text.new(this.demo.subtitle, {style: theme.textTheme.body1.copyWith({color: isDark ? colors.Colors.white : C102 || CT.C102}), $creationLocationd_0dea112b090073317d4: C103 || CT.C103}));
                  return t0;
                })(), $creationLocationd_0dea112b090073317d4: C107 || CT.C107}), $creationLocationd_0dea112b090073317d4: C112 || CT.C112}), C115 || CT.C115]), $creationLocationd_0dea112b090073317d4: C116 || CT.C116}), $creationLocationd_0dea112b090073317d4: C119 || CT.C119}), $creationLocationd_0dea112b090073317d4: C123 || CT.C123});
  }
};
(home$._DemoItem.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let demo = opts && 'demo' in opts ? opts.demo : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[demo$] = demo;
  home$._DemoItem.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = home$._DemoItem.prototype;
dart.addTypeTests(home$._DemoItem);
dart.setMethodSignature(home$._DemoItem, () => ({
  __proto__: dart.getMethods(home$._DemoItem.__proto__),
  [_launchDemo]: dart.fnType(dart.void, [framework.BuildContext]),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(home$._DemoItem, "package:flutter_gallery/gallery/home.dart");
dart.setFieldSignature(home$._DemoItem, () => ({
  __proto__: dart.getFields(home$._DemoItem.__proto__),
  demo: dart.finalFieldType(demos.GalleryDemo)
}));
let C130;
const category$0 = dart.privateName(home$, "_DemosPage.category");
home$._DemosPage = class _DemosPage extends framework.StatelessWidget {
  get category() {
    return this[category$0];
  }
  set category(value) {
    super.category = value;
  }
  build(context) {
    let windowBottomPadding = media_query.MediaQuery.of(context).padding.bottom;
    return new basic.KeyedSubtree.new({key: C130 || CT.C130, child: new basic.Semantics.new({scopesRoute: true, namesRoute: true, label: this.category.name, explicitChildNodes: true, child: new scroll_view.ListView.new({dragStartBehavior: recognizer.DragStartBehavior.down, key: new (PageStorageKeyOfString()).new(this.category.name), padding: new edge_insets.EdgeInsets.only({top: 8.0, bottom: windowBottomPadding}), children: demos.kGalleryCategoryToDemos[$_get](this.category)[$map](framework.Widget, dart.fn(demo => new home$._DemoItem.new({demo: demo, $creationLocationd_0dea112b090073317d4: C131 || CT.C131}), GalleryDemoTo_DemoItem()))[$toList](), $creationLocationd_0dea112b090073317d4: C134 || CT.C134}), $creationLocationd_0dea112b090073317d4: C140 || CT.C140}), $creationLocationd_0dea112b090073317d4: C147 || CT.C147});
  }
};
(home$._DemosPage.new = function(category, opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[category$0] = category;
  home$._DemosPage.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = home$._DemosPage.prototype;
dart.addTypeTests(home$._DemosPage);
dart.setMethodSignature(home$._DemosPage, () => ({
  __proto__: dart.getMethods(home$._DemosPage.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(home$._DemosPage, "package:flutter_gallery/gallery/home.dart");
dart.setFieldSignature(home$._DemosPage, () => ({
  __proto__: dart.getFields(home$._DemosPage.__proto__),
  category: dart.finalFieldType(demos.GalleryDemoCategory)
}));
const optionsPage$ = dart.privateName(home$, "GalleryHome.optionsPage");
const testMode$ = dart.privateName(home$, "GalleryHome.testMode");
home$.GalleryHome = class GalleryHome extends framework.StatefulWidget {
  get optionsPage() {
    return this[optionsPage$];
  }
  set optionsPage(value) {
    super.optionsPage = value;
  }
  get testMode() {
    return this[testMode$];
  }
  set testMode(value) {
    super.testMode = value;
  }
  createState() {
    return new home$._GalleryHomeState.new();
  }
};
(home$.GalleryHome.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let testMode = opts && 'testMode' in opts ? opts.testMode : false;
  let optionsPage = opts && 'optionsPage' in opts ? opts.optionsPage : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[testMode$] = testMode;
  this[optionsPage$] = optionsPage;
  home$.GalleryHome.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = home$.GalleryHome.prototype;
dart.addTypeTests(home$.GalleryHome);
dart.setMethodSignature(home$.GalleryHome, () => ({
  __proto__: dart.getMethods(home$.GalleryHome.__proto__),
  createState: dart.fnType(home$._GalleryHomeState, [])
}));
dart.setLibraryUri(home$.GalleryHome, "package:flutter_gallery/gallery/home.dart");
dart.setFieldSignature(home$.GalleryHome, () => ({
  __proto__: dart.getFields(home$.GalleryHome.__proto__),
  optionsPage: dart.finalFieldType(framework.Widget),
  testMode: dart.finalFieldType(core.bool)
}));
dart.defineLazy(home$.GalleryHome, {
  /*home$.GalleryHome.showPreviewBanner*/get showPreviewBanner() {
    return true;
  },
  set showPreviewBanner(_) {}
});
const _controller = dart.privateName(home$, "_controller");
const _category = dart.privateName(home$, "_category");
const Duration__duration = dart.privateName(core, "Duration._duration");
let C155;
const Cubic_d = dart.privateName(curves, "Cubic.d");
const Cubic_c = dart.privateName(curves, "Cubic.c");
const Cubic_b = dart.privateName(curves, "Cubic.b");
const Cubic_a = dart.privateName(curves, "Cubic.a");
let C157;
const Interval_curve = dart.privateName(curves, "Interval.curve");
const Interval_end = dart.privateName(curves, "Interval.end");
const Interval_begin = dart.privateName(curves, "Interval.begin");
let C156;
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
let C158;
let C159;
let C160;
let C172;
let C183;
const TextStyle_fontFeatures = dart.privateName(text_style, "TextStyle.fontFeatures");
const TextStyle_shadows = dart.privateName(text_style, "TextStyle.shadows");
const TextStyle_debugLabel = dart.privateName(text_style, "TextStyle.debugLabel");
const TextStyle_decorationThickness = dart.privateName(text_style, "TextStyle.decorationThickness");
const TextStyle_decorationStyle = dart.privateName(text_style, "TextStyle.decorationStyle");
const TextStyle_decorationColor = dart.privateName(text_style, "TextStyle.decorationColor");
const TextStyle_decoration = dart.privateName(text_style, "TextStyle.decoration");
const TextStyle_background = dart.privateName(text_style, "TextStyle.background");
const TextStyle_foreground = dart.privateName(text_style, "TextStyle.foreground");
const TextStyle_locale = dart.privateName(text_style, "TextStyle.locale");
const TextStyle_height = dart.privateName(text_style, "TextStyle.height");
const TextStyle_textBaseline = dart.privateName(text_style, "TextStyle.textBaseline");
const TextStyle_wordSpacing = dart.privateName(text_style, "TextStyle.wordSpacing");
const TextStyle_letterSpacing = dart.privateName(text_style, "TextStyle.letterSpacing");
const TextStyle_fontStyle = dart.privateName(text_style, "TextStyle.fontStyle");
const FontWeight_index = dart.privateName(ui, "FontWeight.index");
let C221;
const TextStyle_fontWeight = dart.privateName(text_style, "TextStyle.fontWeight");
const TextStyle_fontSize = dart.privateName(text_style, "TextStyle.fontSize");
const TextStyle__package = dart.privateName(text_style, "TextStyle._package");
const TextStyle__fontFamilyFallback = dart.privateName(text_style, "TextStyle._fontFamilyFallback");
const TextStyle_fontFamily = dart.privateName(text_style, "TextStyle.fontFamily");
const TextStyle_backgroundColor = dart.privateName(text_style, "TextStyle.backgroundColor");
let C222;
const TextStyle_color = dart.privateName(text_style, "TextStyle.color");
const TextStyle_inherit = dart.privateName(text_style, "TextStyle.inherit");
let C220;
const Banner_textStyle = dart.privateName(banner, "Banner.textStyle");
let C223;
const Banner_color = dart.privateName(banner, "Banner.color");
const Banner_layoutDirection = dart.privateName(banner, "Banner.layoutDirection");
const _name$0 = dart.privateName(banner, "_name");
let C224;
const Banner_location = dart.privateName(banner, "Banner.location");
const Banner_textDirection = dart.privateName(banner, "Banner.textDirection");
const Banner_message = dart.privateName(banner, "Banner.message");
const Banner_child = dart.privateName(banner, "Banner.child");
let C219;
let C237;
const State_SingleTickerProviderStateMixin$36 = class State_SingleTickerProviderStateMixin extends framework.State$(home$.GalleryHome) {};
(State_SingleTickerProviderStateMixin$36.new = function() {
  ticker_provider.SingleTickerProviderStateMixin$(home$.GalleryHome)[dart.mixinNew].call(this);
  State_SingleTickerProviderStateMixin$36.__proto__.new.call(this);
}).prototype = State_SingleTickerProviderStateMixin$36.prototype;
dart.applyMixin(State_SingleTickerProviderStateMixin$36, ticker_provider.SingleTickerProviderStateMixin$(home$.GalleryHome));
home$._GalleryHomeState = class _GalleryHomeState extends State_SingleTickerProviderStateMixin$36 {
  static _topHomeLayout(currentChild, previousChildren) {
    return new basic.Stack.new({children: (() => {
        let t1 = JSArrayOfWidget().of([]);
        for (let t2 of previousChildren)
          t1[$add](t2);
        if (currentChild != null) t1[$add](currentChild);
        return t1;
      })(), alignment: alignment.Alignment.topCenter, $creationLocationd_0dea112b090073317d4: C151 || CT.C151});
  }
  initState() {
    let t3;
    super.initState();
    this[_controller] = (t3 = new animation_controller.AnimationController.new({duration: C155 || CT.C155, debugLabel: "preview banner", vsync: this}), t3.forward(), t3);
  }
  dispose() {
    this[_controller].dispose();
    super.dispose();
  }
  build(context) {
    let theme = theme$.Theme.of(context);
    let isDark = dart.equals(theme.brightness, ui.Brightness.dark);
    let media = media_query.MediaQuery.of(context);
    let centerHome = dart.equals(media.orientation, media_query.Orientation.portrait) && dart.notNull(media.size.height) < 800.0;
    let switchOutCurve = C156 || CT.C156;
    let switchInCurve = C156 || CT.C156;
    let home = new scaffold.Scaffold.new({key: home$._GalleryHomeState._scaffoldKey, backgroundColor: isDark ? home$._kFlutterBlue : theme.primaryColor, body: new safe_area.SafeArea.new({bottom: false, child: new will_pop_scope.WillPopScope.new({onWillPop: dart.fn(() => {
            if (this[_category] != null) {
              this.setState(dart.fn(() => this[_category] = null, VoidToNull()));
              return FutureOfbool().value(false);
            }
            return FutureOfbool().value(true);
          }, VoidToFutureOfbool()), child: new backdrop.Backdrop.new({backTitle: C158 || CT.C158, backLayer: this.widget.optionsPage, frontAction: new animated_switcher.AnimatedSwitcher.new({duration: home$._kFrontLayerSwitchDuration, switchOutCurve: switchOutCurve, switchInCurve: switchInCurve, child: this[_category] == null ? C159 || CT.C159 : new icon_button.IconButton.new({icon: C160 || CT.C160, tooltip: "Back", onPressed: dart.fn(() => this.setState(dart.fn(() => this[_category] = null, VoidToNull())), VoidTovoid()), $creationLocationd_0dea112b090073317d4: C161 || CT.C161}), $creationLocationd_0dea112b090073317d4: C166 || CT.C166}), frontTitle: new animated_switcher.AnimatedSwitcher.new({duration: home$._kFrontLayerSwitchDuration, child: this[_category] == null ? C172 || CT.C172 : new text.Text.new(this[_category].name, {$creationLocationd_0dea112b090073317d4: C173 || CT.C173}), $creationLocationd_0dea112b090073317d4: C176 || CT.C176}), frontHeading: dart.test(this.widget.testMode) ? null : new container.Container.new({height: 24.0, $creationLocationd_0dea112b090073317d4: C180 || CT.C180}), frontLayer: new animated_switcher.AnimatedSwitcher.new({duration: home$._kFrontLayerSwitchDuration, switchOutCurve: switchOutCurve, switchInCurve: switchInCurve, layoutBuilder: centerHome ? home$._GalleryHomeState._centerHomeLayout : C183 || CT.C183, child: this[_category] != null ? new home$._DemosPage.new(this[_category], {$creationLocationd_0dea112b090073317d4: C184 || CT.C184}) : new home$._CategoriesPage.new({categories: demos.kAllGalleryDemoCategories, onCategoryTap: dart.fn(category => {
                  this.setState(dart.fn(() => this[_category] = category, VoidToGalleryDemoCategory()));
                }, GalleryDemoCategoryToNull()), $creationLocationd_0dea112b090073317d4: C187 || CT.C187}), $creationLocationd_0dea112b090073317d4: C191 || CT.C191}), $creationLocationd_0dea112b090073317d4: C198 || CT.C198}), $creationLocationd_0dea112b090073317d4: C206 || CT.C206}), $creationLocationd_0dea112b090073317d4: C210 || CT.C210}), $creationLocationd_0dea112b090073317d4: C214 || CT.C214});
    if (!dart.test(dart.fn(() => {
      home$.GalleryHome.showPreviewBanner = false;
      return true;
    }, VoidTobool())())) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/gallery/home.dart", 383, 12, "() {\n      GalleryHome.showPreviewBanner = false;\n      return true;\n    }()");
    if (dart.test(home$.GalleryHome.showPreviewBanner)) {
      home = new basic.Stack.new({fit: stack.StackFit.expand, children: JSArrayOfWidget().of([home, new transitions.FadeTransition.new({opacity: new animations.CurvedAnimation.new({parent: this[_controller], curve: curves.Curves.easeInOut}), child: C219 || CT.C219, $creationLocationd_0dea112b090073317d4: C225 || CT.C225})]), $creationLocationd_0dea112b090073317d4: C229 || CT.C229});
    }
    home = new (AnnotatedRegionOfSystemUiOverlayStyle()).new({child: home, value: system_chrome.SystemUiOverlayStyle.light, $creationLocationd_0dea112b090073317d4: C233 || CT.C233});
    return home;
  }
};
(home$._GalleryHomeState.new = function() {
  this[_controller] = null;
  this[_category] = null;
  home$._GalleryHomeState.__proto__.new.call(this);
  ;
}).prototype = home$._GalleryHomeState.prototype;
dart.addTypeTests(home$._GalleryHomeState);
dart.setMethodSignature(home$._GalleryHomeState, () => ({
  __proto__: dart.getMethods(home$._GalleryHomeState.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(home$._GalleryHomeState, "package:flutter_gallery/gallery/home.dart");
dart.setFieldSignature(home$._GalleryHomeState, () => ({
  __proto__: dart.getFields(home$._GalleryHomeState.__proto__),
  [_controller]: dart.fieldType(animation_controller.AnimationController),
  [_category]: dart.fieldType(demos.GalleryDemoCategory)
}));
dart.defineLazy(home$._GalleryHomeState, {
  /*home$._GalleryHomeState._scaffoldKey*/get _scaffoldKey() {
    return GlobalKeyOfScaffoldState().new();
  },
  /*home$._GalleryHomeState._centerHomeLayout*/get _centerHomeLayout() {
    return C237 || CT.C237;
  }
});
let C238;
let C239;
dart.defineLazy(home$, {
  /*home$._kGalleryAssetsPackage*/get _kGalleryAssetsPackage() {
    return "flutter_gallery_assets";
  },
  /*home$._kFlutterBlue*/get _kFlutterBlue() {
    return C238 || CT.C238;
  },
  /*home$._kDemoItemHeight*/get _kDemoItemHeight() {
    return 64;
  },
  /*home$._kFrontLayerSwitchDuration*/get _kFrontLayerSwitchDuration() {
    return C239 || CT.C239;
  }
});
dart.trackLibraries("packages/flutter_gallery/gallery/home", {
  "package:flutter_gallery/gallery/home.dart": home$
}, {
}, '{"version":3,"sourceRoot":"","sources":["home.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;QAwB4B;AACxB,UAAO,8BACE,oCACE,cACC;EAWd;;;MAlByB;;AAAS,oDAAW,GAAG;;AAAC;;;;;;;;;;;;;;;;;;;;EA4BvB;;;;;;EACP;;;;;;QAGO;AACR,gBAAc,gBAAG,OAAO;AAC7B,iBAA0B,YAAjB,AAAM,KAAD,aAA0B;AAInD,UAAO,uCACE,2CACe,yCACR,AAAM,AAAa,KAAd,0BAA0B,oBAC9B,AAAM,AAAa,KAAd,0BAA0B,uBACrB,sCACZ,mBACJ,yCACgC,gDACE,0CACrB,sBAChB,sDAES,kBACL,AAAS,2BACH,aACC,MAAM,GAAU,sBAAQ,sJAInC,qCACU,iBACa,mCACd,kBACL,AAAS,gCACY,4BACd,AAAM,AAAU,AAAQ,KAAnB,yCACE,qBACL,MAAM,GAAU,sBAAQ;EAQ/C;;;MAnDM;MACC;MACA;;EADA;EACA;AACF,qDAAY,GAAG;;AAAC;;;;;;;;;;;;;;;;;EA0De;;;;;;EACI;;;;;;QAGd;AAEQ,yBAAiB,AAAW;AAClD,sBAAkD,YAAxB,AAAY,0BAAT,OAAO,eAA6B,oCAAY,IAAI;AAE3F,UAAO,uCACQ,kBACD,aACL,kCACa,aACb,mFAEE,+CACI,SAAc,SAAwB;AAChC,8BAAwC,aAA1B,AAAY,AAAQ,WAAT,kBAAiB,AAAY,WAAD;AACrD,4BAAY,sBAAS,OAAO,AAAY,WAAD;AAC1C,2BAAiD,EAAnB,AAAc,aAAhC,AAAW,4BAAS,WAAW,GAAG,KAAM,WAAW;AAKzE,kBAAO,uCACE,oCACsB,2CACY,2CAC/B,wBAAwB,QAAQ,EAAE,QAAK;AACnC,qDAAoB,AAAS,QAAD,KAAI,AAAS,QAAD,GAAG,IAC/B,aAAlB,AAAW,4BAAS,AAAY,WAAD,GAAG,mBAAS,GAAG,AAAS,QAAD,GAAG,KACzD,WAAW;AAEf,wBAAO,8BACG,wBAAwB,iBAAiB,EAAE,QAAK;AAC5C,kCAAiB,AAAc,aAAvB,QAAQ,IAAG,WAAW,gBAAG,WAAW;AAC5B,qCAAW,AAAc,cAAA,QAAC,KAAK;AAEzD,4BAAO,gCACE,WAAW,UACV,SAAS,SACV,uCACK,QAAQ,SACX;AACkB,4BAAvB,mBAAc,QAAQ;;;;;EAahD;;;MA/DM;MACC;MACA;;EADA;EACA;AACF,uDAAW,GAAG;;AAAC;;;;;;;;;;;;;;;;;;;EAkEF;;;;;;gBAEY;AAC5B,QAAI,AAAK,uBAAa;AAIlB,MAHO,+BAAY,gCAA+C,yCAClE,QAAQ,KACR,MAAM,AAAK;AAE+B,MAAlC,2CAAU,OAAO,EAAE,AAAK;;EAEtC;QAG0B;AACR,gBAAc,gBAAG,OAAO;AAC7B,iBAA0B,YAAjB,AAAM,KAAD,aAA0B;AACtC,0BAA6B,yCAAkB,OAAO;AACnE,UAAO,4CACe,0CACP,AAAM,AAAa,KAAd,0BAA0B,uBACrB,sCACZ;AACW,QAApB,kBAAY,OAAO;+BAEd,0CACQ,uCAA2C,kBAAE,eAAe,YAClE,6BACa,sBAChB,oCACS,cACC,iBACa,mCACd,kBACL,AAAK,uBACC,aACC,MAAM,GAAU,sBAAQ,uIAGnC,+BACS,yCACgC,mDACE;;2BAErC,kBACE,AAAK,yBACE,AAAM,AAAU,AAAQ,KAAnB,oCACH,MAAM,GAAU;AAG3B,sBAAI,AAAK,sBAAY,eACnB,kBACE,AAAK,4BACE,AAAM,AAAU,AAAM,KAAjB,kCACH,MAAM,GAAU;;;EAW7C;;;MAlEsB;MAAU;;;AAAU,iDAAW,GAAG;;AAAC;;;;;;;;;;;;;;;EAwE/B;;;;;;QAGA;AAGX,8BAAiC,AAAY,AAAQ,0BAAjB,OAAO;AACxD,UAAO,0DAEE,sCACQ,kBACD,aACL,AAAS,wCACI,aACb,iDACgC,wCAChC,mCAAuB,AAAS,8BACjB,sCAAU,aAAa,mBAAmB,cACpD,AAAuB,AAAW,AAEzC,qCAF+B,uCAAsB,QAAa,QAC5D,+BAAgB,IAAI;EAKrC;;iCA1BsB;;;AAAhB;;AAAyB;;;;;;;;;;;;;;EAoClB;;;;;;EACF;;;;;;;AAOwB;EAAmB;;;MAbhD;MACC;MACA;;EADA;EACA;AACF,mDAAW,GAAG;;AAAC;;;;;;;;;;;;;IAOR,mCAAiB;UAAG;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;wBAWI,cAA2B;AAC7D,UAAO;;sBAEA,iBAAgB;;AACnB,YAAI,YAAY,IAAI,eAAM,YAAY;;uBAEnB;EAEzB;;;AAMmB,IAAX;AAKM,IAJZ,0BAAc,yFAEA,yBACL,QACN;EACL;;AAIuB,IAArB,AAAY;AACG,IAAT;EACR;QAG0B;AACR,gBAAc,gBAAG,OAAO;AAC7B,iBAA0B,YAAjB,AAAM,KAAD,aAA0B;AAC9B,gBAAmB,0BAAG,OAAO;AACvC,qBAA+B,AAAwB,YAA1C,AAAM,KAAD,cAA4B,qCAA8B,aAAlB,AAAM,AAAK,KAAN,gBAAe;AAE7E;AACA;AAEL,eAAO,gCACP,uDACY,MAAM,GAAG,sBAAgB,AAAM,KAAD,qBACzC,oCACI,cACD,gDACM;AAET,gBAAI,mBAAa;AACiB,cAAhC,cAAS,cAAM,kBAAY;AAC3B,0CAA0B;;AAE5B,wCAA0B;2CAErB,kEAEM,AAAO,sCACL,sDACD,kDACM,cAAc,iBACf,aAAa,SACrB,AAAU,mBAAG,yBAEhB,gEAES,mBACE,cAAM,cAAS,cAAM,kBAAY,uKAGtC,sDACA,yCACH,AAAU,mBAAG,yBAEhB,kBAAK,AAAU,qKAEP,AAAO,wBAAW,OAAO,qCAAkB,6EAC7C,sDACA,kDACM,cAAc,iBACf,aAAa,iBACb,UAAU,GAAG,oEACrB,AAAU,mBAAG,OAChB,yBAAW,8EACX,2CACY,gDACG,QAAqB;AACE,kBAApC,cAAS,cAAM,kBAAY,QAAQ;;AASnD,mBAAO,AAGN;AAFsC,MAAzB,sCAAoB;AAChC,YAAO;;AAGT,kBAAgB;AAab,MAZD,OAAO,0BACS,iCACI,sBAChB,IAAI,EACJ,6CACW,4CAAwB,0BAA2B;;AAYnE,IAHD,OAAO,0DACE,IAAI,SACiB;AAG9B,UAAO,KAAI;EACb;;;EA1HoB;EACA;;;AA0HtB;;;;;;;;;;;;;IA5HwC,oCAAY;UAAG;;IAcV,yCAAiB;;;;;;;IA5RjD,4BAAsB;;;IACvB,mBAAa;;;IACZ,sBAAgB;;;IACd,gCAA0B","file":"home.ddc.js"}');
// Exports:
exports.gallery__home = home$;

//# sourceMappingURL=home.ddc.js.map
