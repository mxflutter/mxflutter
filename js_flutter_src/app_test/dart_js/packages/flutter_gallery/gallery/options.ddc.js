'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const ui = dart_sdk.ui;
const _interceptors = dart_sdk._interceptors;
const _js_helper = dart_sdk._js_helper;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__foundation___bitfield_web = require('packages/flutter/src/foundation/_bitfield_web');
const platform = packages__flutter__src__foundation___bitfield_web.src__foundation__platform;
const key = packages__flutter__src__foundation___bitfield_web.src__foundation__key;
const packages__flutter_gallery__gallery__scales = require('packages/flutter_gallery/gallery/scales');
const scales = packages__flutter_gallery__gallery__scales.gallery__scales;
const packages__flutter__material = require('packages/flutter/material');
const app = packages__flutter__material.src__material__app;
const theme$ = packages__flutter__material.src__material__theme;
const $switch = packages__flutter__material.src__material__switch;
const colors = packages__flutter__material.src__material__colors;
const flat_button = packages__flutter__material.src__material__flat_button;
const popup_menu = packages__flutter__material.src__material__popup_menu;
const divider = packages__flutter__material.src__material__divider;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const media_query = packages__flutter__src__widgets__actions.src__widgets__media_query;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const container = packages__flutter__src__widgets__actions.src__widgets__container;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const icon_theme = packages__flutter__src__widgets__actions.src__widgets__icon_theme;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const icon = packages__flutter__src__widgets__actions.src__widgets__icon;
const icon_data = packages__flutter__src__widgets__actions.src__widgets__icon_data;
const scroll_view = packages__flutter__src__widgets__actions.src__widgets__scroll_view;
const packages__flutter__src__rendering__animated_size = require('packages/flutter/src/rendering/animated_size');
const box = packages__flutter__src__rendering__animated_size.src__rendering__box;
const paragraph = packages__flutter__src__rendering__animated_size.src__rendering__paragraph;
const flex = packages__flutter__src__rendering__animated_size.src__rendering__flex;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const alignment = packages__flutter__src__painting___network_image_web.src__painting__alignment;
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const packages__flutter_gallery__gallery__about = require('packages/flutter_gallery/gallery/about');
const about = packages__flutter_gallery__gallery__about.gallery__about;
const options$ = Object.create(dart.library);
const $runtimeType = dartx.runtimeType;
const $_get = dartx._get;
const $map = dartx.map;
const $toList = dartx.toList;
const $add = dartx.add;
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
let PopupMenuButtonOfThemeMode = () => (PopupMenuButtonOfThemeMode = dart.constFn(popup_menu.PopupMenuButton$(app.ThemeMode)))();
let PopupMenuItemOfThemeMode = () => (PopupMenuItemOfThemeMode = dart.constFn(popup_menu.PopupMenuItem$(app.ThemeMode)))();
let ThemeModeToPopupMenuItemOfThemeMode = () => (ThemeModeToPopupMenuItemOfThemeMode = dart.constFn(dart.fnType(PopupMenuItemOfThemeMode(), [app.ThemeMode])))();
let ListOfPopupMenuItemOfThemeMode = () => (ListOfPopupMenuItemOfThemeMode = dart.constFn(core.List$(PopupMenuItemOfThemeMode())))();
let BuildContextToListOfPopupMenuItemOfThemeMode = () => (BuildContextToListOfPopupMenuItemOfThemeMode = dart.constFn(dart.fnType(ListOfPopupMenuItemOfThemeMode(), [framework.BuildContext])))();
let ThemeModeToNull = () => (ThemeModeToNull = dart.constFn(dart.fnType(core.Null, [app.ThemeMode])))();
let LinkedMapOfThemeMode$String = () => (LinkedMapOfThemeMode$String = dart.constFn(_js_helper.LinkedMap$(app.ThemeMode, core.String)))();
let PopupMenuButtonOfGalleryTextScaleValue = () => (PopupMenuButtonOfGalleryTextScaleValue = dart.constFn(popup_menu.PopupMenuButton$(scales.GalleryTextScaleValue)))();
let PopupMenuItemOfGalleryTextScaleValue = () => (PopupMenuItemOfGalleryTextScaleValue = dart.constFn(popup_menu.PopupMenuItem$(scales.GalleryTextScaleValue)))();
let GalleryTextScaleValueToPopupMenuItemOfGalleryTextScaleValue = () => (GalleryTextScaleValueToPopupMenuItemOfGalleryTextScaleValue = dart.constFn(dart.fnType(PopupMenuItemOfGalleryTextScaleValue(), [scales.GalleryTextScaleValue])))();
let ListOfPopupMenuItemOfGalleryTextScaleValue = () => (ListOfPopupMenuItemOfGalleryTextScaleValue = dart.constFn(core.List$(PopupMenuItemOfGalleryTextScaleValue())))();
let BuildContextToListOfPopupMenuItemOfGalleryTextScaleValue = () => (BuildContextToListOfPopupMenuItemOfGalleryTextScaleValue = dart.constFn(dart.fnType(ListOfPopupMenuItemOfGalleryTextScaleValue(), [framework.BuildContext])))();
let GalleryTextScaleValueToNull = () => (GalleryTextScaleValueToNull = dart.constFn(dart.fnType(core.Null, [scales.GalleryTextScaleValue])))();
let boolToNull = () => (boolToNull = dart.constFn(dart.fnType(core.Null, [core.bool])))();
let ValueKeyOfString = () => (ValueKeyOfString = dart.constFn(key.ValueKey$(core.String)))();
let PopupMenuButtonOfTargetPlatform = () => (PopupMenuButtonOfTargetPlatform = dart.constFn(popup_menu.PopupMenuButton$(platform.TargetPlatform)))();
let PopupMenuItemOfTargetPlatform = () => (PopupMenuItemOfTargetPlatform = dart.constFn(popup_menu.PopupMenuItem$(platform.TargetPlatform)))();
let TargetPlatformToPopupMenuItemOfTargetPlatform = () => (TargetPlatformToPopupMenuItemOfTargetPlatform = dart.constFn(dart.fnType(PopupMenuItemOfTargetPlatform(), [platform.TargetPlatform])))();
let ListOfPopupMenuItemOfTargetPlatform = () => (ListOfPopupMenuItemOfTargetPlatform = dart.constFn(core.List$(PopupMenuItemOfTargetPlatform())))();
let BuildContextToListOfPopupMenuItemOfTargetPlatform = () => (BuildContextToListOfPopupMenuItemOfTargetPlatform = dart.constFn(dart.fnType(ListOfPopupMenuItemOfTargetPlatform(), [framework.BuildContext])))();
let TargetPlatformToNull = () => (TargetPlatformToNull = dart.constFn(dart.fnType(core.Null, [platform.TargetPlatform])))();
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: ui.TextDirection.prototype,
      [_name]: "TextDirection.ltr",
      index: 1
    });
  },
  get C26() {
    return C26 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4281978621.0
    });
  },
  get C73() {
    return C73 = dart.const({
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
      [Text_data]: "Theme"
    });
  },
  get C85() {
    return C85 = dart.const({
      __proto__: edge_insets.EdgeInsetsDirectional.prototype,
      [EdgeInsetsDirectional_bottom]: 0,
      [EdgeInsetsDirectional_end]: 16,
      [EdgeInsetsDirectional_top]: 0,
      [EdgeInsetsDirectional_start]: 0
    });
  },
  get C87() {
    return C87 = dart.const({
      __proto__: icon_data.IconData.prototype,
      [IconData_matchTextDirection]: false,
      [IconData_fontPackage]: null,
      [IconData_fontFamily]: "MaterialIcons",
      [IconData_codePoint]: 58821
    });
  },
  get C86() {
    return C86 = dart.const({
      __proto__: icon.Icon.prototype,
      [Widget_key]: null,
      [Icon_textDirection]: null,
      [Icon_semanticLabel]: null,
      [Icon_color]: null,
      [Icon_size]: null,
      [Icon_icon]: C87 || CT.C87
    });
  },
  get C108() {
    return C108 = dart.const({
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
      [Text_data]: "Text size"
    });
  },
  get C139() {
    return C139 = dart.const({
      __proto__: ValueKeyOfString().prototype,
      [ValueKey_value]: "text_direction"
    });
  },
  get C146() {
    return C146 = dart.const({
      __proto__: ValueKeyOfString().prototype,
      [ValueKey_value]: "slow_motion"
    });
  },
  get C153() {
    return C153 = dart.const({
      __proto__: platform.TargetPlatform.prototype,
      [_name$]: "TargetPlatform.android",
      index: 0
    });
  },
  get C154() {
    return C154 = dart.const({
      __proto__: platform.TargetPlatform.prototype,
      [_name$]: "TargetPlatform.fuchsia",
      index: 1
    });
  },
  get C155() {
    return C155 = dart.const({
      __proto__: platform.TargetPlatform.prototype,
      [_name$]: "TargetPlatform.iOS",
      index: 2
    });
  },
  get C156() {
    return C156 = dart.const({
      __proto__: platform.TargetPlatform.prototype,
      [_name$]: "TargetPlatform.macOS",
      index: 3
    });
  },
  get C157() {
    return C157 = dart.const({
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
      [Text_data]: "Platform mechanics"
    });
  },
  get C188() {
    return C188 = dart.constList([], framework.Widget);
  },
  get C189() {
    return C189 = dart.const({
      __proto__: divider.Divider.prototype,
      [Widget_key]: null,
      [Divider_color]: null,
      [Divider_endIndent]: null,
      [Divider_indent]: null,
      [Divider_thickness]: null,
      [Divider_height]: null
    });
  },
  get C190() {
    return C190 = dart.const({
      __proto__: options$._Heading.prototype,
      [Widget_key]: null,
      [text$0]: "Diagnostics"
    });
  },
  get C206() {
    return C206 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 124,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C207() {
    return C207 = dart.const({
      __proto__: options$._Heading.prototype,
      [Widget_key]: null,
      [text$0]: "Display"
    });
  },
  get C224() {
    return C224 = dart.const({
      __proto__: options$._Heading.prototype,
      [Widget_key]: null,
      [text$0]: "Platform mechanics"
    });
  },
  get C229() {
    return C229 = dart.const({
      __proto__: options$._Heading.prototype,
      [Widget_key]: null,
      [text$0]: "Flutter gallery"
    });
  },
  get C246() {
    return C246 = dart.const({
      __proto__: edge_insets.EdgeInsetsDirectional.prototype,
      [EdgeInsetsDirectional_bottom]: 0,
      [EdgeInsetsDirectional_end]: 0,
      [EdgeInsetsDirectional_top]: 0,
      [EdgeInsetsDirectional_start]: 56
    });
  }
});
const _name = dart.privateName(ui, "_name");
let C0;
const themeMode$ = dart.privateName(options$, "GalleryOptions.themeMode");
const textScaleFactor$ = dart.privateName(options$, "GalleryOptions.textScaleFactor");
const textDirection$ = dart.privateName(options$, "GalleryOptions.textDirection");
const timeDilation$ = dart.privateName(options$, "GalleryOptions.timeDilation");
const platform$ = dart.privateName(options$, "GalleryOptions.platform");
const showPerformanceOverlay$ = dart.privateName(options$, "GalleryOptions.showPerformanceOverlay");
const showRasterCacheImagesCheckerboard$ = dart.privateName(options$, "GalleryOptions.showRasterCacheImagesCheckerboard");
const showOffscreenLayersCheckerboard$ = dart.privateName(options$, "GalleryOptions.showOffscreenLayersCheckerboard");
options$.GalleryOptions = class GalleryOptions extends core.Object {
  get themeMode() {
    return this[themeMode$];
  }
  set themeMode(value) {
    super.themeMode = value;
  }
  get textScaleFactor() {
    return this[textScaleFactor$];
  }
  set textScaleFactor(value) {
    super.textScaleFactor = value;
  }
  get textDirection() {
    return this[textDirection$];
  }
  set textDirection(value) {
    super.textDirection = value;
  }
  get timeDilation() {
    return this[timeDilation$];
  }
  set timeDilation(value) {
    super.timeDilation = value;
  }
  get platform() {
    return this[platform$];
  }
  set platform(value) {
    super.platform = value;
  }
  get showPerformanceOverlay() {
    return this[showPerformanceOverlay$];
  }
  set showPerformanceOverlay(value) {
    super.showPerformanceOverlay = value;
  }
  get showRasterCacheImagesCheckerboard() {
    return this[showRasterCacheImagesCheckerboard$];
  }
  set showRasterCacheImagesCheckerboard(value) {
    super.showRasterCacheImagesCheckerboard = value;
  }
  get showOffscreenLayersCheckerboard() {
    return this[showOffscreenLayersCheckerboard$];
  }
  set showOffscreenLayersCheckerboard(value) {
    super.showOffscreenLayersCheckerboard = value;
  }
  copyWith(opts) {
    let t0, t0$, t0$0, t0$1, t0$2, t0$3, t0$4, t0$5;
    let themeMode = opts && 'themeMode' in opts ? opts.themeMode : null;
    let textScaleFactor = opts && 'textScaleFactor' in opts ? opts.textScaleFactor : null;
    let textDirection = opts && 'textDirection' in opts ? opts.textDirection : null;
    let timeDilation = opts && 'timeDilation' in opts ? opts.timeDilation : null;
    let platform = opts && 'platform' in opts ? opts.platform : null;
    let showPerformanceOverlay = opts && 'showPerformanceOverlay' in opts ? opts.showPerformanceOverlay : null;
    let showRasterCacheImagesCheckerboard = opts && 'showRasterCacheImagesCheckerboard' in opts ? opts.showRasterCacheImagesCheckerboard : null;
    let showOffscreenLayersCheckerboard = opts && 'showOffscreenLayersCheckerboard' in opts ? opts.showOffscreenLayersCheckerboard : null;
    return new options$.GalleryOptions.new({themeMode: (t0 = themeMode, t0 == null ? this.themeMode : t0), textScaleFactor: (t0$ = textScaleFactor, t0$ == null ? this.textScaleFactor : t0$), textDirection: (t0$0 = textDirection, t0$0 == null ? this.textDirection : t0$0), timeDilation: (t0$1 = timeDilation, t0$1 == null ? this.timeDilation : t0$1), platform: (t0$2 = platform, t0$2 == null ? this.platform : t0$2), showPerformanceOverlay: (t0$3 = showPerformanceOverlay, t0$3 == null ? this.showPerformanceOverlay : t0$3), showOffscreenLayersCheckerboard: (t0$4 = showOffscreenLayersCheckerboard, t0$4 == null ? this.showOffscreenLayersCheckerboard : t0$4), showRasterCacheImagesCheckerboard: (t0$5 = showRasterCacheImagesCheckerboard, t0$5 == null ? this.showRasterCacheImagesCheckerboard : t0$5)});
  }
  _equals(other) {
    if (other == null) return false;
    if (!dart.equals(this[$runtimeType], dart.runtimeType(other))) return false;
    let typedOther = options$.GalleryOptions._check(other);
    return dart.equals(this.themeMode, typedOther.themeMode) && dart.equals(this.textScaleFactor, typedOther.textScaleFactor) && dart.equals(this.textDirection, typedOther.textDirection) && dart.equals(this.platform, typedOther.platform) && dart.equals(this.showPerformanceOverlay, typedOther.showPerformanceOverlay) && dart.equals(this.showRasterCacheImagesCheckerboard, typedOther.showRasterCacheImagesCheckerboard) && dart.equals(this.showOffscreenLayersCheckerboard, typedOther.showRasterCacheImagesCheckerboard);
  }
  get hashCode() {
    return ui.hashValues(this.themeMode, this.textScaleFactor, this.textDirection, this.timeDilation, this.platform, this.showPerformanceOverlay, this.showRasterCacheImagesCheckerboard, this.showOffscreenLayersCheckerboard);
  }
  toString() {
    return dart.str(this[$runtimeType]) + "(" + dart.str(this.themeMode) + ")";
  }
};
(options$.GalleryOptions.new = function(opts) {
  let themeMode = opts && 'themeMode' in opts ? opts.themeMode : null;
  let textScaleFactor = opts && 'textScaleFactor' in opts ? opts.textScaleFactor : null;
  let textDirection = opts && 'textDirection' in opts ? opts.textDirection : C0 || CT.C0;
  let timeDilation = opts && 'timeDilation' in opts ? opts.timeDilation : 1;
  let platform = opts && 'platform' in opts ? opts.platform : null;
  let showOffscreenLayersCheckerboard = opts && 'showOffscreenLayersCheckerboard' in opts ? opts.showOffscreenLayersCheckerboard : false;
  let showRasterCacheImagesCheckerboard = opts && 'showRasterCacheImagesCheckerboard' in opts ? opts.showRasterCacheImagesCheckerboard : false;
  let showPerformanceOverlay = opts && 'showPerformanceOverlay' in opts ? opts.showPerformanceOverlay : false;
  this[themeMode$] = themeMode;
  this[textScaleFactor$] = textScaleFactor;
  this[textDirection$] = textDirection;
  this[timeDilation$] = timeDilation;
  this[platform$] = platform;
  this[showOffscreenLayersCheckerboard$] = showOffscreenLayersCheckerboard;
  this[showRasterCacheImagesCheckerboard$] = showRasterCacheImagesCheckerboard;
  this[showPerformanceOverlay$] = showPerformanceOverlay;
  ;
}).prototype = options$.GalleryOptions.prototype;
dart.addTypeTests(options$.GalleryOptions);
dart.setMethodSignature(options$.GalleryOptions, () => ({
  __proto__: dart.getMethods(options$.GalleryOptions.__proto__),
  copyWith: dart.fnType(options$.GalleryOptions, [], {platform: platform.TargetPlatform, showOffscreenLayersCheckerboard: core.bool, showPerformanceOverlay: core.bool, showRasterCacheImagesCheckerboard: core.bool, textDirection: ui.TextDirection, textScaleFactor: scales.GalleryTextScaleValue, themeMode: app.ThemeMode, timeDilation: core.double}, {})
}));
dart.setLibraryUri(options$.GalleryOptions, "package:flutter_gallery/gallery/options.dart");
dart.setFieldSignature(options$.GalleryOptions, () => ({
  __proto__: dart.getFields(options$.GalleryOptions.__proto__),
  themeMode: dart.finalFieldType(app.ThemeMode),
  textScaleFactor: dart.finalFieldType(scales.GalleryTextScaleValue),
  textDirection: dart.finalFieldType(ui.TextDirection),
  timeDilation: dart.finalFieldType(core.double),
  platform: dart.finalFieldType(platform.TargetPlatform),
  showPerformanceOverlay: dart.finalFieldType(core.bool),
  showRasterCacheImagesCheckerboard: dart.finalFieldType(core.bool),
  showOffscreenLayersCheckerboard: dart.finalFieldType(core.bool)
}));
dart.defineExtensionMethods(options$.GalleryOptions, ['_equals', 'toString']);
dart.defineExtensionAccessors(options$.GalleryOptions, ['hashCode']);
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
const child$ = dart.privateName(options$, "_OptionsItem.child");
options$._OptionsItem = class _OptionsItem extends framework.StatelessWidget {
  get child() {
    return this[child$];
  }
  set child(value) {
    super.child = value;
  }
  build(context) {
    let textScaleFactor = media_query.MediaQuery.textScaleFactorOf(context);
    return new basic.MergeSemantics.new({child: new container.Container.new({constraints: new box.BoxConstraints.new({minHeight: 48 * dart.notNull(textScaleFactor)}), padding: options$._kItemPadding, alignment: alignment.AlignmentDirectional.centerStart, child: new text.DefaultTextStyle.new({style: text.DefaultTextStyle.of(context).style, maxLines: 2, overflow: paragraph.TextOverflow.fade, child: new icon_theme.IconTheme.new({data: theme$.Theme.of(context).primaryIconTheme, child: this.child, $creationLocationd_0dea112b090073317d4: C1 || CT.C1}), $creationLocationd_0dea112b090073317d4: C5 || CT.C5}), $creationLocationd_0dea112b090073317d4: C11 || CT.C11}), $creationLocationd_0dea112b090073317d4: C17 || CT.C17});
  }
};
(options$._OptionsItem.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let child = opts && 'child' in opts ? opts.child : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[child$] = child;
  options$._OptionsItem.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = options$._OptionsItem.prototype;
dart.addTypeTests(options$._OptionsItem);
dart.setMethodSignature(options$._OptionsItem, () => ({
  __proto__: dart.getMethods(options$._OptionsItem.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(options$._OptionsItem, "package:flutter_gallery/gallery/options.dart");
dart.setFieldSignature(options$._OptionsItem, () => ({
  __proto__: dart.getFields(options$._OptionsItem.__proto__),
  child: dart.finalFieldType(framework.Widget)
}));
const Color_value = dart.privateName(ui, "Color.value");
let C26;
const title$ = dart.privateName(options$, "_BooleanItem.title");
const value$ = dart.privateName(options$, "_BooleanItem.value");
const onChanged$ = dart.privateName(options$, "_BooleanItem.onChanged");
const switchKey$ = dart.privateName(options$, "_BooleanItem.switchKey");
options$._BooleanItem = class _BooleanItem extends framework.StatelessWidget {
  get title() {
    return this[title$];
  }
  set title(value) {
    super.title = value;
  }
  get value() {
    return this[value$];
  }
  set value(value) {
    super.value = value;
  }
  get onChanged() {
    return this[onChanged$];
  }
  set onChanged(value) {
    super.onChanged = value;
  }
  get switchKey() {
    return this[switchKey$];
  }
  set switchKey(value) {
    super.switchKey = value;
  }
  build(context) {
    let isDark = dart.equals(theme$.Theme.of(context).brightness, ui.Brightness.dark);
    return new options$._OptionsItem.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new basic.Expanded.new({child: new text.Text.new(this.title, {$creationLocationd_0dea112b090073317d4: C20 || CT.C20}), $creationLocationd_0dea112b090073317d4: C23 || CT.C23}), new $switch.Switch.new({key: this.switchKey, value: this.value, onChanged: this.onChanged, activeColor: C26 || CT.C26, activeTrackColor: isDark ? colors.Colors.white30 : colors.Colors.black26, $creationLocationd_0dea112b090073317d4: C27 || CT.C27})]), $creationLocationd_0dea112b090073317d4: C34 || CT.C34}), $creationLocationd_0dea112b090073317d4: C37 || CT.C37});
  }
};
(options$._BooleanItem.new = function(title, value, onChanged, opts) {
  let switchKey = opts && 'switchKey' in opts ? opts.switchKey : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[title$] = title;
  this[value$] = value;
  this[onChanged$] = onChanged;
  this[switchKey$] = switchKey;
  options$._BooleanItem.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = options$._BooleanItem.prototype;
dart.addTypeTests(options$._BooleanItem);
dart.setMethodSignature(options$._BooleanItem, () => ({
  __proto__: dart.getMethods(options$._BooleanItem.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(options$._BooleanItem, "package:flutter_gallery/gallery/options.dart");
dart.setFieldSignature(options$._BooleanItem, () => ({
  __proto__: dart.getFields(options$._BooleanItem.__proto__),
  title: dart.finalFieldType(core.String),
  value: dart.finalFieldType(core.bool),
  onChanged: dart.finalFieldType(dart.fnType(dart.void, [core.bool])),
  switchKey: dart.finalFieldType(key.Key)
}));
const text$ = dart.privateName(options$, "_ActionItem.text");
const onTap$ = dart.privateName(options$, "_ActionItem.onTap");
options$._ActionItem = class _ActionItem extends framework.StatelessWidget {
  get text() {
    return this[text$];
  }
  set text(value) {
    super.text = value;
  }
  get onTap() {
    return this[onTap$];
  }
  set onTap(value) {
    super.onTap = value;
  }
  build(context) {
    return new options$._OptionsItem.new({child: new options$._FlatButton.new({onPressed: this.onTap, child: new text.Text.new(this.text, {$creationLocationd_0dea112b090073317d4: C40 || CT.C40}), $creationLocationd_0dea112b090073317d4: C43 || CT.C43}), $creationLocationd_0dea112b090073317d4: C47 || CT.C47});
  }
};
(options$._ActionItem.new = function(text, onTap, opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[text$] = text;
  this[onTap$] = onTap;
  options$._ActionItem.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = options$._ActionItem.prototype;
dart.addTypeTests(options$._ActionItem);
dart.setMethodSignature(options$._ActionItem, () => ({
  __proto__: dart.getMethods(options$._ActionItem.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(options$._ActionItem, "package:flutter_gallery/gallery/options.dart");
dart.setFieldSignature(options$._ActionItem, () => ({
  __proto__: dart.getFields(options$._ActionItem.__proto__),
  text: dart.finalFieldType(core.String),
  onTap: dart.finalFieldType(dart.fnType(dart.void, []))
}));
const onPressed$ = dart.privateName(options$, "_FlatButton.onPressed");
const child$0 = dart.privateName(options$, "_FlatButton.child");
options$._FlatButton = class _FlatButton extends framework.StatelessWidget {
  get onPressed() {
    return this[onPressed$];
  }
  set onPressed(value) {
    super.onPressed = value;
  }
  get child() {
    return this[child$0];
  }
  set child(value) {
    super.child = value;
  }
  build(context) {
    return new flat_button.FlatButton.new({padding: edge_insets.EdgeInsets.zero, onPressed: this.onPressed, child: new text.DefaultTextStyle.new({style: theme$.Theme.of(context).primaryTextTheme.subhead, child: this.child, $creationLocationd_0dea112b090073317d4: C50 || CT.C50}), $creationLocationd_0dea112b090073317d4: C54 || CT.C54});
  }
};
(options$._FlatButton.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let onPressed = opts && 'onPressed' in opts ? opts.onPressed : null;
  let child = opts && 'child' in opts ? opts.child : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[onPressed$] = onPressed;
  this[child$0] = child;
  options$._FlatButton.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = options$._FlatButton.prototype;
dart.addTypeTests(options$._FlatButton);
dart.setMethodSignature(options$._FlatButton, () => ({
  __proto__: dart.getMethods(options$._FlatButton.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(options$._FlatButton, "package:flutter_gallery/gallery/options.dart");
dart.setFieldSignature(options$._FlatButton, () => ({
  __proto__: dart.getFields(options$._FlatButton.__proto__),
  onPressed: dart.finalFieldType(dart.fnType(dart.void, [])),
  child: dart.finalFieldType(framework.Widget)
}));
const text$0 = dart.privateName(options$, "_Heading.text");
options$._Heading = class _Heading extends framework.StatelessWidget {
  get text() {
    return this[text$0];
  }
  set text(value) {
    super.text = value;
  }
  build(context) {
    let theme = theme$.Theme.of(context);
    return new options$._OptionsItem.new({child: new text.DefaultTextStyle.new({style: theme.textTheme.body1.copyWith({fontFamily: "GoogleSans", color: theme.accentColor}), child: new basic.Semantics.new({child: new text.Text.new(this.text, {$creationLocationd_0dea112b090073317d4: C59 || CT.C59}), header: true, $creationLocationd_0dea112b090073317d4: C62 || CT.C62}), $creationLocationd_0dea112b090073317d4: C66 || CT.C66}), $creationLocationd_0dea112b090073317d4: C70 || CT.C70});
  }
};
(options$._Heading.new = function(text, opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[text$0] = text;
  options$._Heading.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = options$._Heading.prototype;
dart.addTypeTests(options$._Heading);
dart.setMethodSignature(options$._Heading, () => ({
  __proto__: dart.getMethods(options$._Heading.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(options$._Heading, "package:flutter_gallery/gallery/options.dart");
dart.setFieldSignature(options$._Heading, () => ({
  __proto__: dart.getFields(options$._Heading.__proto__),
  text: dart.finalFieldType(core.String)
}));
const Widget_key = dart.privateName(framework, "Widget.key");
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
let C73;
const EdgeInsetsDirectional_bottom = dart.privateName(edge_insets, "EdgeInsetsDirectional.bottom");
const EdgeInsetsDirectional_end = dart.privateName(edge_insets, "EdgeInsetsDirectional.end");
const EdgeInsetsDirectional_top = dart.privateName(edge_insets, "EdgeInsetsDirectional.top");
const EdgeInsetsDirectional_start = dart.privateName(edge_insets, "EdgeInsetsDirectional.start");
let C85;
const Icon_textDirection = dart.privateName(icon, "Icon.textDirection");
const Icon_semanticLabel = dart.privateName(icon, "Icon.semanticLabel");
const Icon_color = dart.privateName(icon, "Icon.color");
const Icon_size = dart.privateName(icon, "Icon.size");
const IconData_matchTextDirection = dart.privateName(icon_data, "IconData.matchTextDirection");
const IconData_fontPackage = dart.privateName(icon_data, "IconData.fontPackage");
const IconData_fontFamily = dart.privateName(icon_data, "IconData.fontFamily");
const IconData_codePoint = dart.privateName(icon_data, "IconData.codePoint");
let C87;
const Icon_icon = dart.privateName(icon, "Icon.icon");
let C86;
const options$0 = dart.privateName(options$, "_ThemeModeItem.options");
const onOptionsChanged$ = dart.privateName(options$, "_ThemeModeItem.onOptionsChanged");
options$._ThemeModeItem = class _ThemeModeItem extends framework.StatelessWidget {
  get options() {
    return this[options$0];
  }
  set options(value) {
    super.options = value;
  }
  get onOptionsChanged() {
    return this[onOptionsChanged$];
  }
  set onOptionsChanged(value) {
    super.onOptionsChanged = value;
  }
  build(context) {
    return new options$._OptionsItem.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new basic.Expanded.new({child: new basic.Column.new({crossAxisAlignment: flex.CrossAxisAlignment.start, children: JSArrayOfWidget().of([C73 || CT.C73, new text.Text.new(dart.str(options$._ThemeModeItem.modeLabels[$_get](this.options.themeMode)), {style: theme$.Theme.of(context).primaryTextTheme.body1, $creationLocationd_0dea112b090073317d4: C74 || CT.C74})]), $creationLocationd_0dea112b090073317d4: C78 || CT.C78}), $creationLocationd_0dea112b090073317d4: C82 || CT.C82}), new (PopupMenuButtonOfThemeMode()).new({padding: C85 || CT.C85, icon: C86 || CT.C86, initialValue: this.options.themeMode, itemBuilder: dart.fn(context => app.ThemeMode.values[$map](PopupMenuItemOfThemeMode(), dart.fn(mode => new (PopupMenuItemOfThemeMode()).new({value: mode, child: new text.Text.new(options$._ThemeModeItem.modeLabels[$_get](mode), {$creationLocationd_0dea112b090073317d4: C88 || CT.C88}), $creationLocationd_0dea112b090073317d4: C91 || CT.C91}), ThemeModeToPopupMenuItemOfThemeMode()))[$toList](), BuildContextToListOfPopupMenuItemOfThemeMode()), onSelected: dart.fn(mode => {
              this.onOptionsChanged(this.options.copyWith({themeMode: mode}));
            }, ThemeModeToNull()), $creationLocationd_0dea112b090073317d4: C95 || CT.C95})]), $creationLocationd_0dea112b090073317d4: C102 || CT.C102}), $creationLocationd_0dea112b090073317d4: C105 || CT.C105});
  }
};
(options$._ThemeModeItem.new = function(options, onOptionsChanged, opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[options$0] = options;
  this[onOptionsChanged$] = onOptionsChanged;
  options$._ThemeModeItem.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = options$._ThemeModeItem.prototype;
dart.addTypeTests(options$._ThemeModeItem);
dart.setMethodSignature(options$._ThemeModeItem, () => ({
  __proto__: dart.getMethods(options$._ThemeModeItem.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(options$._ThemeModeItem, "package:flutter_gallery/gallery/options.dart");
dart.setFieldSignature(options$._ThemeModeItem, () => ({
  __proto__: dart.getFields(options$._ThemeModeItem.__proto__),
  options: dart.finalFieldType(options$.GalleryOptions),
  onOptionsChanged: dart.finalFieldType(dart.fnType(dart.void, [options$.GalleryOptions]))
}));
dart.defineLazy(options$._ThemeModeItem, {
  /*options$._ThemeModeItem.modeLabels*/get modeLabels() {
    return new (LinkedMapOfThemeMode$String()).from([app.ThemeMode.system, "System Default", app.ThemeMode.light, "Light", app.ThemeMode.dark, "Dark"]);
  }
});
let C108;
const options$1 = dart.privateName(options$, "_TextScaleFactorItem.options");
const onOptionsChanged$0 = dart.privateName(options$, "_TextScaleFactorItem.onOptionsChanged");
options$._TextScaleFactorItem = class _TextScaleFactorItem extends framework.StatelessWidget {
  get options() {
    return this[options$1];
  }
  set options(value) {
    super.options = value;
  }
  get onOptionsChanged() {
    return this[onOptionsChanged$0];
  }
  set onOptionsChanged(value) {
    super.onOptionsChanged = value;
  }
  build(context) {
    return new options$._OptionsItem.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new basic.Expanded.new({child: new basic.Column.new({crossAxisAlignment: flex.CrossAxisAlignment.start, children: JSArrayOfWidget().of([C108 || CT.C108, new text.Text.new(dart.str(this.options.textScaleFactor.label), {style: theme$.Theme.of(context).primaryTextTheme.body1, $creationLocationd_0dea112b090073317d4: C109 || CT.C109})]), $creationLocationd_0dea112b090073317d4: C113 || CT.C113}), $creationLocationd_0dea112b090073317d4: C117 || CT.C117}), new (PopupMenuButtonOfGalleryTextScaleValue()).new({padding: C85 || CT.C85, icon: C86 || CT.C86, itemBuilder: dart.fn(context => scales.kAllGalleryTextScaleValues[$map](PopupMenuItemOfGalleryTextScaleValue(), dart.fn(scaleValue => new (PopupMenuItemOfGalleryTextScaleValue()).new({value: scaleValue, child: new text.Text.new(scaleValue.label, {$creationLocationd_0dea112b090073317d4: C120 || CT.C120}), $creationLocationd_0dea112b090073317d4: C123 || CT.C123}), GalleryTextScaleValueToPopupMenuItemOfGalleryTextScaleValue()))[$toList](), BuildContextToListOfPopupMenuItemOfGalleryTextScaleValue()), onSelected: dart.fn(scaleValue => {
              this.onOptionsChanged(this.options.copyWith({textScaleFactor: scaleValue}));
            }, GalleryTextScaleValueToNull()), $creationLocationd_0dea112b090073317d4: C127 || CT.C127})]), $creationLocationd_0dea112b090073317d4: C133 || CT.C133}), $creationLocationd_0dea112b090073317d4: C136 || CT.C136});
  }
};
(options$._TextScaleFactorItem.new = function(options, onOptionsChanged, opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[options$1] = options;
  this[onOptionsChanged$0] = onOptionsChanged;
  options$._TextScaleFactorItem.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = options$._TextScaleFactorItem.prototype;
dart.addTypeTests(options$._TextScaleFactorItem);
dart.setMethodSignature(options$._TextScaleFactorItem, () => ({
  __proto__: dart.getMethods(options$._TextScaleFactorItem.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(options$._TextScaleFactorItem, "package:flutter_gallery/gallery/options.dart");
dart.setFieldSignature(options$._TextScaleFactorItem, () => ({
  __proto__: dart.getFields(options$._TextScaleFactorItem.__proto__),
  options: dart.finalFieldType(options$.GalleryOptions),
  onOptionsChanged: dart.finalFieldType(dart.fnType(dart.void, [options$.GalleryOptions]))
}));
const ValueKey_value = dart.privateName(key, "ValueKey.value");
let C139;
const options$2 = dart.privateName(options$, "_TextDirectionItem.options");
const onOptionsChanged$1 = dart.privateName(options$, "_TextDirectionItem.onOptionsChanged");
options$._TextDirectionItem = class _TextDirectionItem extends framework.StatelessWidget {
  get options() {
    return this[options$2];
  }
  set options(value) {
    super.options = value;
  }
  get onOptionsChanged() {
    return this[onOptionsChanged$1];
  }
  set onOptionsChanged(value) {
    super.onOptionsChanged = value;
  }
  build(context) {
    return new options$._BooleanItem.new("Force RTL", dart.equals(this.options.textDirection, ui.TextDirection.rtl), dart.fn(value => {
      this.onOptionsChanged(this.options.copyWith({textDirection: dart.test(value) ? ui.TextDirection.rtl : ui.TextDirection.ltr}));
    }, boolToNull()), {switchKey: C139 || CT.C139, $creationLocationd_0dea112b090073317d4: C140 || CT.C140});
  }
};
(options$._TextDirectionItem.new = function(options, onOptionsChanged, opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[options$2] = options;
  this[onOptionsChanged$1] = onOptionsChanged;
  options$._TextDirectionItem.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = options$._TextDirectionItem.prototype;
dart.addTypeTests(options$._TextDirectionItem);
dart.setMethodSignature(options$._TextDirectionItem, () => ({
  __proto__: dart.getMethods(options$._TextDirectionItem.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(options$._TextDirectionItem, "package:flutter_gallery/gallery/options.dart");
dart.setFieldSignature(options$._TextDirectionItem, () => ({
  __proto__: dart.getFields(options$._TextDirectionItem.__proto__),
  options: dart.finalFieldType(options$.GalleryOptions),
  onOptionsChanged: dart.finalFieldType(dart.fnType(dart.void, [options$.GalleryOptions]))
}));
let C146;
const options$3 = dart.privateName(options$, "_TimeDilationItem.options");
const onOptionsChanged$2 = dart.privateName(options$, "_TimeDilationItem.onOptionsChanged");
options$._TimeDilationItem = class _TimeDilationItem extends framework.StatelessWidget {
  get options() {
    return this[options$3];
  }
  set options(value) {
    super.options = value;
  }
  get onOptionsChanged() {
    return this[onOptionsChanged$2];
  }
  set onOptionsChanged(value) {
    super.onOptionsChanged = value;
  }
  build(context) {
    return new options$._BooleanItem.new("Slow motion", this.options.timeDilation !== 1.0, dart.fn(value => {
      this.onOptionsChanged(this.options.copyWith({timeDilation: dart.test(value) ? 20.0 : 1.0}));
    }, boolToNull()), {switchKey: C146 || CT.C146, $creationLocationd_0dea112b090073317d4: C147 || CT.C147});
  }
};
(options$._TimeDilationItem.new = function(options, onOptionsChanged, opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[options$3] = options;
  this[onOptionsChanged$2] = onOptionsChanged;
  options$._TimeDilationItem.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = options$._TimeDilationItem.prototype;
dart.addTypeTests(options$._TimeDilationItem);
dart.setMethodSignature(options$._TimeDilationItem, () => ({
  __proto__: dart.getMethods(options$._TimeDilationItem.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(options$._TimeDilationItem, "package:flutter_gallery/gallery/options.dart");
dart.setFieldSignature(options$._TimeDilationItem, () => ({
  __proto__: dart.getFields(options$._TimeDilationItem.__proto__),
  options: dart.finalFieldType(options$.GalleryOptions),
  onOptionsChanged: dart.finalFieldType(dart.fnType(dart.void, [options$.GalleryOptions]))
}));
const _name$ = dart.privateName(platform, "_name");
let C153;
let C154;
let C155;
let C156;
const _platformLabel = dart.privateName(options$, "_platformLabel");
let C157;
const options$4 = dart.privateName(options$, "_PlatformItem.options");
const onOptionsChanged$3 = dart.privateName(options$, "_PlatformItem.onOptionsChanged");
options$._PlatformItem = class _PlatformItem extends framework.StatelessWidget {
  get options() {
    return this[options$4];
  }
  set options(value) {
    super.options = value;
  }
  get onOptionsChanged() {
    return this[onOptionsChanged$3];
  }
  set onOptionsChanged(value) {
    super.onOptionsChanged = value;
  }
  [_platformLabel](platform) {
    switch (platform) {
      case C153 || CT.C153:
      {
        return "Mountain View";
      }
      case C154 || CT.C154:
      {
        return "Fuchsia";
      }
      case C155 || CT.C155:
      {
        return "Cupertino";
      }
      case C156 || CT.C156:
      {
        return "Material Desktop (macOS)";
      }
    }
    if (!false) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/gallery/options.dart", 366, 12, "false");
    return null;
  }
  build(context) {
    return new options$._OptionsItem.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new basic.Expanded.new({child: new basic.Column.new({crossAxisAlignment: flex.CrossAxisAlignment.start, children: JSArrayOfWidget().of([C157 || CT.C157, new text.Text.new(dart.str(this[_platformLabel](this.options.platform)), {style: theme$.Theme.of(context).primaryTextTheme.body1, $creationLocationd_0dea112b090073317d4: C158 || CT.C158})]), $creationLocationd_0dea112b090073317d4: C162 || CT.C162}), $creationLocationd_0dea112b090073317d4: C166 || CT.C166}), new (PopupMenuButtonOfTargetPlatform()).new({padding: C85 || CT.C85, icon: C86 || CT.C86, itemBuilder: dart.fn(context => platform.TargetPlatform.values[$map](PopupMenuItemOfTargetPlatform(), dart.fn(platform => new (PopupMenuItemOfTargetPlatform()).new({value: platform, child: new text.Text.new(this[_platformLabel](platform), {$creationLocationd_0dea112b090073317d4: C169 || CT.C169}), $creationLocationd_0dea112b090073317d4: C172 || CT.C172}), TargetPlatformToPopupMenuItemOfTargetPlatform()))[$toList](), BuildContextToListOfPopupMenuItemOfTargetPlatform()), onSelected: dart.fn(platform => {
              this.onOptionsChanged(this.options.copyWith({platform: platform}));
            }, TargetPlatformToNull()), $creationLocationd_0dea112b090073317d4: C176 || CT.C176})]), $creationLocationd_0dea112b090073317d4: C182 || CT.C182}), $creationLocationd_0dea112b090073317d4: C185 || CT.C185});
  }
};
(options$._PlatformItem.new = function(options, onOptionsChanged, opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[options$4] = options;
  this[onOptionsChanged$3] = onOptionsChanged;
  options$._PlatformItem.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = options$._PlatformItem.prototype;
dart.addTypeTests(options$._PlatformItem);
dart.setMethodSignature(options$._PlatformItem, () => ({
  __proto__: dart.getMethods(options$._PlatformItem.__proto__),
  [_platformLabel]: dart.fnType(core.String, [platform.TargetPlatform]),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(options$._PlatformItem, "package:flutter_gallery/gallery/options.dart");
dart.setFieldSignature(options$._PlatformItem, () => ({
  __proto__: dart.getFields(options$._PlatformItem.__proto__),
  options: dart.finalFieldType(options$.GalleryOptions),
  onOptionsChanged: dart.finalFieldType(dart.fnType(dart.void, [options$.GalleryOptions]))
}));
let C188;
const Divider_color = dart.privateName(divider, "Divider.color");
const Divider_endIndent = dart.privateName(divider, "Divider.endIndent");
const Divider_indent = dart.privateName(divider, "Divider.indent");
const Divider_thickness = dart.privateName(divider, "Divider.thickness");
const Divider_height = dart.privateName(divider, "Divider.height");
let C189;
let C190;
const _enabledDiagnosticItems = dart.privateName(options$, "_enabledDiagnosticItems");
const EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
const EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
const EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
const EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
let C206;
let C207;
let C224;
let C229;
const options$5 = dart.privateName(options$, "GalleryOptionsPage.options");
const onOptionsChanged$4 = dart.privateName(options$, "GalleryOptionsPage.onOptionsChanged");
const onSendFeedback$ = dart.privateName(options$, "GalleryOptionsPage.onSendFeedback");
options$.GalleryOptionsPage = class GalleryOptionsPage extends framework.StatelessWidget {
  get options() {
    return this[options$5];
  }
  set options(value) {
    super.options = value;
  }
  get onOptionsChanged() {
    return this[onOptionsChanged$4];
  }
  set onOptionsChanged(value) {
    super.onOptionsChanged = value;
  }
  get onSendFeedback() {
    return this[onSendFeedback$];
  }
  set onSendFeedback(value) {
    super.onSendFeedback = value;
  }
  [_enabledDiagnosticItems]() {
    if (this.options.showOffscreenLayersCheckerboard == null && this.options.showRasterCacheImagesCheckerboard == null && this.options.showPerformanceOverlay == null) return C188 || CT.C188;
    return (() => {
      let t0 = JSArrayOfWidget().of([]);
      t0[$add](C189 || CT.C189);
      t0[$add](C190 || CT.C190);
      if (this.options.showOffscreenLayersCheckerboard != null) t0[$add](new options$._BooleanItem.new("Highlight offscreen layers", this.options.showOffscreenLayersCheckerboard, dart.fn(value => {
        this.onOptionsChanged(this.options.copyWith({showOffscreenLayersCheckerboard: value}));
      }, boolToNull()), {$creationLocationd_0dea112b090073317d4: C191 || CT.C191}));
      if (this.options.showRasterCacheImagesCheckerboard != null) t0[$add](new options$._BooleanItem.new("Highlight raster cache images", this.options.showRasterCacheImagesCheckerboard, dart.fn(value => {
        this.onOptionsChanged(this.options.copyWith({showRasterCacheImagesCheckerboard: value}));
      }, boolToNull()), {$creationLocationd_0dea112b090073317d4: C196 || CT.C196}));
      if (this.options.showPerformanceOverlay != null) t0[$add](new options$._BooleanItem.new("Show performance overlay", this.options.showPerformanceOverlay, dart.fn(value => {
        this.onOptionsChanged(this.options.copyWith({showPerformanceOverlay: value}));
      }, boolToNull()), {$creationLocationd_0dea112b090073317d4: C201 || CT.C201}));
      return t0;
    })();
  }
  build(context) {
    let theme = theme$.Theme.of(context);
    return new text.DefaultTextStyle.new({style: theme.primaryTextTheme.subhead, child: new scroll_view.ListView.new({padding: C206 || CT.C206, children: (() => {
          let t1 = JSArrayOfWidget().of([]);
          t1[$add](C207 || CT.C207);
          t1[$add](new options$._ThemeModeItem.new(this.options, this.onOptionsChanged, {$creationLocationd_0dea112b090073317d4: C208 || CT.C208}));
          t1[$add](new options$._TextScaleFactorItem.new(this.options, this.onOptionsChanged, {$creationLocationd_0dea112b090073317d4: C212 || CT.C212}));
          t1[$add](new options$._TextDirectionItem.new(this.options, this.onOptionsChanged, {$creationLocationd_0dea112b090073317d4: C216 || CT.C216}));
          t1[$add](new options$._TimeDilationItem.new(this.options, this.onOptionsChanged, {$creationLocationd_0dea112b090073317d4: C220 || CT.C220}));
          t1[$add](C189 || CT.C189);
          t1[$add](C224 || CT.C224);
          t1[$add](new options$._PlatformItem.new(this.options, this.onOptionsChanged, {$creationLocationd_0dea112b090073317d4: C225 || CT.C225}));
          for (let t2 of this[_enabledDiagnosticItems]())
            t1[$add](t2);
          t1[$add](C189 || CT.C189);
          t1[$add](C229 || CT.C229);
          t1[$add](new options$._ActionItem.new("About Flutter Gallery", dart.fn(() => {
            about.showGalleryAboutDialog(context);
          }, VoidToNull()), {$creationLocationd_0dea112b090073317d4: C230 || CT.C230}));
          t1[$add](new options$._ActionItem.new("Send feedback", this.onSendFeedback, {$creationLocationd_0dea112b090073317d4: C234 || CT.C234}));
          return t1;
        })(), $creationLocationd_0dea112b090073317d4: C238 || CT.C238}), $creationLocationd_0dea112b090073317d4: C242 || CT.C242});
  }
};
(options$.GalleryOptionsPage.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let options = opts && 'options' in opts ? opts.options : null;
  let onOptionsChanged = opts && 'onOptionsChanged' in opts ? opts.onOptionsChanged : null;
  let onSendFeedback = opts && 'onSendFeedback' in opts ? opts.onSendFeedback : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[options$5] = options;
  this[onOptionsChanged$4] = onOptionsChanged;
  this[onSendFeedback$] = onSendFeedback;
  options$.GalleryOptionsPage.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = options$.GalleryOptionsPage.prototype;
dart.addTypeTests(options$.GalleryOptionsPage);
dart.setMethodSignature(options$.GalleryOptionsPage, () => ({
  __proto__: dart.getMethods(options$.GalleryOptionsPage.__proto__),
  [_enabledDiagnosticItems]: dart.fnType(core.List$(framework.Widget), []),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(options$.GalleryOptionsPage, "package:flutter_gallery/gallery/options.dart");
dart.setFieldSignature(options$.GalleryOptionsPage, () => ({
  __proto__: dart.getFields(options$.GalleryOptionsPage.__proto__),
  options: dart.finalFieldType(options$.GalleryOptions),
  onOptionsChanged: dart.finalFieldType(dart.fnType(dart.void, [options$.GalleryOptions])),
  onSendFeedback: dart.finalFieldType(dart.fnType(dart.void, []))
}));
let C246;
dart.defineLazy(options$, {
  /*options$._kItemHeight*/get _kItemHeight() {
    return 48;
  },
  /*options$._kItemPadding*/get _kItemPadding() {
    return C246 || CT.C246;
  }
});
dart.trackLibraries("packages/flutter_gallery/gallery/options", {
  "package:flutter_gallery/gallery/options.dart": options$
}, {
}, '{"version":3,"sourceRoot":"","sources":["options.dart"],"names":[],"mappings":"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","file":"options.ddc.js"}');
// Exports:
exports.gallery__options = options$;

//# sourceMappingURL=options.ddc.js.map
