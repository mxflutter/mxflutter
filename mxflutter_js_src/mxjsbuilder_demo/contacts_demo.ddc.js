'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const ui = dart_sdk.ui;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__material = require('packages/flutter/material');
const theme = packages__flutter__material.src__material__theme;
const icon_button = packages__flutter__material.src__material__icon_button;
const theme_data = packages__flutter__material.src__material__theme_data;
const colors = packages__flutter__material.src__material__colors;
const scaffold = packages__flutter__material.src__material__scaffold;
const app_bar = packages__flutter__material.src__material__app_bar;
const popup_menu = packages__flutter__material.src__material__popup_menu;
const flexible_space_bar = packages__flutter__material.src__material__flexible_space_bar;
const icons = packages__flutter__material.src__material__icons;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const container = packages__flutter__src__widgets__actions.src__widgets__container;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const safe_area = packages__flutter__src__widgets__actions.src__widgets__safe_area;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const icon = packages__flutter__src__widgets__actions.src__widgets__icon;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const icon_data = packages__flutter__src__widgets__actions.src__widgets__icon_data;
const scroll_view = packages__flutter__src__widgets__actions.src__widgets__scroll_view;
const image = packages__flutter__src__widgets__actions.src__widgets__image;
const sliver = packages__flutter__src__widgets__actions.src__widgets__sliver;
const annotated_region = packages__flutter__src__widgets__actions.src__widgets__annotated_region;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const box_decoration = packages__flutter__src__painting___network_image_web.src__painting__box_decoration;
const box_border = packages__flutter__src__painting___network_image_web.src__painting__box_border;
const borders = packages__flutter__src__painting___network_image_web.src__painting__borders;
const box_fit = packages__flutter__src__painting___network_image_web.src__painting__box_fit;
const gradient = packages__flutter__src__painting___network_image_web.src__painting__gradient;
const alignment = packages__flutter__src__painting___network_image_web.src__painting__alignment;
const packages__flutter__src__rendering__animated_size = require('packages/flutter/src/rendering/animated_size');
const flex = packages__flutter__src__rendering__animated_size.src__rendering__flex;
const stack = packages__flutter__src__rendering__animated_size.src__rendering__stack;
const proxy_box = packages__flutter__src__rendering__animated_size.src__rendering__proxy_box;
const packages__flutter__src__gestures__arena = require('packages/flutter/src/gestures/arena');
const system_chrome = packages__flutter__src__gestures__arena.src__services__system_chrome;
const contacts_demo = Object.create(dart.library);
const $length = dartx.length;
const $sublist = dartx.sublist;
const $map = dartx.map;
const $add = dartx.add;
const $last = dartx.last;
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
let StringToText = () => (StringToText = dart.constFn(dart.fnType(text.Text, [core.String])))();
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let PopupMenuButtonOfAppBarBehavior = () => (PopupMenuButtonOfAppBarBehavior = dart.constFn(popup_menu.PopupMenuButton$(contacts_demo.AppBarBehavior)))();
let AppBarBehaviorToNull = () => (AppBarBehaviorToNull = dart.constFn(dart.fnType(core.Null, [contacts_demo.AppBarBehavior])))();
let PopupMenuItemOfAppBarBehavior = () => (PopupMenuItemOfAppBarBehavior = dart.constFn(popup_menu.PopupMenuItem$(contacts_demo.AppBarBehavior)))();
let JSArrayOfPopupMenuItemOfAppBarBehavior = () => (JSArrayOfPopupMenuItemOfAppBarBehavior = dart.constFn(_interceptors.JSArray$(PopupMenuItemOfAppBarBehavior())))();
let ListOfPopupMenuItemOfAppBarBehavior = () => (ListOfPopupMenuItemOfAppBarBehavior = dart.constFn(core.List$(PopupMenuItemOfAppBarBehavior())))();
let BuildContextToListOfPopupMenuItemOfAppBarBehavior = () => (BuildContextToListOfPopupMenuItemOfAppBarBehavior = dart.constFn(dart.fnType(ListOfPopupMenuItemOfAppBarBehavior(), [framework.BuildContext])))();
let AnnotatedRegionOfSystemUiOverlayStyle = () => (AnnotatedRegionOfSystemUiOverlayStyle = dart.constFn(annotated_region.AnnotatedRegion$(system_chrome.SystemUiOverlayStyle)))();
let GlobalKeyOfScaffoldState = () => (GlobalKeyOfScaffoldState = dart.constFn(framework.GlobalKey$(scaffold.ScaffoldState)))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 16,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 16,
      [EdgeInsets_left]: 0
    });
  },
  get C1() {
    return C1 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 24,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 24,
      [EdgeInsets_left]: 0
    });
  },
  get C72() {
    return C72 = dart.const({
      __proto__: contacts_demo.AppBarBehavior.prototype,
      [_name$]: "AppBarBehavior.normal",
      index: 0
    });
  },
  get C73() {
    return C73 = dart.const({
      __proto__: contacts_demo.AppBarBehavior.prototype,
      [_name$]: "AppBarBehavior.pinned",
      index: 1
    });
  },
  get C74() {
    return C74 = dart.const({
      __proto__: contacts_demo.AppBarBehavior.prototype,
      [_name$]: "AppBarBehavior.floating",
      index: 2
    });
  },
  get C75() {
    return C75 = dart.const({
      __proto__: contacts_demo.AppBarBehavior.prototype,
      [_name$]: "AppBarBehavior.snapping",
      index: 3
    });
  },
  get C76() {
    return C76 = dart.constList([C72 || CT.C72, C73 || CT.C73, C74 || CT.C74, C75 || CT.C75], contacts_demo.AppBarBehavior);
  },
  get C78() {
    return C78 = dart.const({
      __proto__: icon_data.IconData.prototype,
      [IconData_matchTextDirection]: false,
      [IconData_fontPackage]: null,
      [IconData_fontFamily]: "MaterialIcons",
      [IconData_codePoint]: 57680
    });
  },
  get C77() {
    return C77 = dart.const({
      __proto__: icon.Icon.prototype,
      [Widget_key]: null,
      [Icon_textDirection]: null,
      [Icon_semanticLabel]: null,
      [Icon_color]: null,
      [Icon_size]: null,
      [Icon_icon]: C78 || CT.C78
    });
  },
  get C80() {
    return C80 = dart.const({
      __proto__: core.Duration.prototype,
      [Duration__duration]: 4000000
    });
  },
  get C81() {
    return C81 = dart.const({
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
      [Text_data]: "Editing isn't supported in this screen."
    });
  },
  get C79() {
    return C79 = dart.const({
     
    });
  },
  get C88() {
    return C88 = dart.const({
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
      [Text_data]: "App bar scrolls away"
    });
  },
  get C87() {
    return C87 = dart.const({
      __proto__: PopupMenuItemOfAppBarBehavior().prototype,
      [Widget_key]: null,
      [PopupMenuItem_child]: C88 || CT.C88,
      [PopupMenuItem_textStyle]: null,
      [PopupMenuItem_height]: 48,
      [PopupMenuItem_enabled]: true,
      [PopupMenuItem_value]: C72 || CT.C72
    });
  },
  get C90() {
    return C90 = dart.const({
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
      [Text_data]: "App bar stays put"
    });
  },
  get C89() {
    return C89 = dart.const({
      __proto__: PopupMenuItemOfAppBarBehavior().prototype,
      [Widget_key]: null,
      [PopupMenuItem_child]: C90 || CT.C90,
      [PopupMenuItem_textStyle]: null,
      [PopupMenuItem_height]: 48,
      [PopupMenuItem_enabled]: true,
      [PopupMenuItem_value]: C73 || CT.C73
    });
  },
  get C92() {
    return C92 = dart.const({
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
      [Text_data]: "App bar floats"
    });
  },
  get C91() {
    return C91 = dart.const({
      __proto__: PopupMenuItemOfAppBarBehavior().prototype,
      [Widget_key]: null,
      [PopupMenuItem_child]: C92 || CT.C92,
      [PopupMenuItem_textStyle]: null,
      [PopupMenuItem_height]: 48,
      [PopupMenuItem_enabled]: true,
      [PopupMenuItem_value]: C74 || CT.C74
    });
  },
  get C94() {
    return C94 = dart.const({
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
      [Text_data]: "App bar snaps"
    });
  },
  get C93() {
    return C93 = dart.const({
      __proto__: PopupMenuItemOfAppBarBehavior().prototype,
      [Widget_key]: null,
      [PopupMenuItem_child]: C94 || CT.C94,
      [PopupMenuItem_textStyle]: null,
      [PopupMenuItem_height]: 48,
      [PopupMenuItem_enabled]: true,
      [PopupMenuItem_value]: C75 || CT.C75
    });
  },
  get C99() {
    return C99 = dart.const({
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
      [Text_data]: "Ali Connors"
    });
  },
  get C107() {
    return C107 = dart.const({
      __proto__: proxy_box.DecorationPosition.prototype,
      [_name]: "DecorationPosition.background",
      index: 0
    });
  },
  get C109() {
    return C109 = dart.const({
      __proto__: box_border.BoxShape.prototype,
      [_name$0]: "BoxShape.rectangle",
      index: 0
    });
  },
  get C112() {
    return C112 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 1610612736
    });
  },
  get C113() {
    return C113 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 0
    });
  },
  get C111() {
    return C111 = dart.constList([C112 || CT.C112, C113 || CT.C113], ui.Color);
  },
  get C114() {
    return C114 = dart.const({
      __proto__: ui.TileMode.prototype,
      [_name$1]: "TileMode.clamp",
      index: 0
    });
  },
  get C115() {
    return C115 = dart.const({
      __proto__: alignment.Alignment.prototype,
      [Alignment_y]: -0.4,
      [Alignment_x]: 0
    });
  },
  get C116() {
    return C116 = dart.const({
      __proto__: alignment.Alignment.prototype,
      [Alignment_y]: -1,
      [Alignment_x]: 0
    });
  },
  get C110() {
    return C110 = dart.const({
      __proto__: gradient.LinearGradient.prototype,
      [Gradient_transform]: null,
      [Gradient_stops]: null,
      [Gradient_colors]: C111 || CT.C111,
      [LinearGradient_tileMode]: C114 || CT.C114,
      [LinearGradient_end]: C115 || CT.C115,
      [LinearGradient_begin]: C116 || CT.C116
    });
  },
  get C108() {
    return C108 = dart.const({
      __proto__: box_decoration.BoxDecoration.prototype,
      [BoxDecoration_shape]: C109 || CT.C109,
      [BoxDecoration_backgroundBlendMode]: null,
      [BoxDecoration_gradient]: C110 || CT.C110,
      [BoxDecoration_boxShadow]: null,
      [BoxDecoration_borderRadius]: null,
      [BoxDecoration_border]: null,
      [BoxDecoration_image]: null,
      [BoxDecoration_color]: null
    });
  },
  get C106() {
    return C106 = dart.const({
      __proto__: container.DecoratedBox.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: null,
      [DecoratedBox_position]: C107 || CT.C107,
      [DecoratedBox_decoration]: C108 || CT.C108
    });
  },
  get C134() {
    return C134 = dart.const({
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
      [Text_data]: "Pretend that this opened your SMS application."
    });
  },
  get C133() {
    return C133 = dart.const({
      
    });
  },
  get C135() {
    return C135 = dart.constList(["(650) 555-1234", "Mobile"], core.String);
  },
  get C143() {
    return C143 = dart.const({
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
      [Text_data]: "A messaging app appears."
    });
  },
  get C142() {
    return C142 = dart.const({
      
    });
  },
  get C144() {
    return C144 = dart.constList(["(323) 555-6789", "Work"], core.String);
  },
  get C152() {
    return C152 = dart.const({
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
      [Text_data]: "Imagine if you will, a messaging application."
    });
  },
  get C151() {
    return C151 = dart.const({
     
    });
  },
  get C153() {
    return C153 = dart.constList(["(650) 555-6789", "Home"], core.String);
  },
  get C169() {
    return C169 = dart.const({
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
      [Text_data]: "Here, your e-mail application would open."
    });
  },
  get C168() {
    return C168 = dart.const({
     
    });
  },
  get C170() {
    return C170 = dart.constList(["ali_connors@example.com", "Personal"], core.String);
  },
  get C178() {
    return C178 = dart.const({
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
      [Text_data]: "Summon your favorite e-mail application here."
    });
  },
  get C177() {
    return C177 = dart.const({
      
    });
  },
  get C179() {
    return C179 = dart.constList(["aliconnors@example.com", "Work"], core.String);
  },
  get C191() {
    return C191 = dart.const({
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
      [Text_data]: "This would show a map of San Francisco."
    });
  },
  get C190() {
    return C190 = dart.const({
     
    });
  },
  get C192() {
    return C192 = dart.constList(["2000 Main Street", "San Francisco, CA", "Home"], core.String);
  },
  get C200() {
    return C200 = dart.const({
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
      [Text_data]: "This would show a map of Mountain View."
    });
  },
  get C199() {
    return C199 = dart.const({
      
    });
  },
  get C201() {
    return C201 = dart.constList(["1600 Amphitheater Parkway", "Mountain View, CA", "Work"], core.String);
  },
  get C209() {
    return C209 = dart.const({
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
      [Text_data]: "This would also show a map, if this was not a demo."
    });
  },
  get C208() {
    return C208 = dart.const({
      
    });
  },
  get C210() {
    return C210 = dart.constList(["126 Severyns Ave", "Mountain View, CA", "Jet Travel"], core.String);
  },
  get C221() {
    return C221 = dart.constList(["Birthday", "January 9th, 1989"], core.String);
  },
  get C225() {
    return C225 = dart.constList(["Wedding anniversary", "June 21st, 2014"], core.String);
  },
  get C229() {
    return C229 = dart.constList(["First day in office", "January 20th, 2015"], core.String);
  },
  get C233() {
    return C233 = dart.constList(["Last day in office", "August 9th, 2018"], core.String);
  }
});
const EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
const EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
const EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
const EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
let C0;
let C1;
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
const icon$ = dart.privateName(contacts_demo, "_ContactCategory.icon");
const children$ = dart.privateName(contacts_demo, "_ContactCategory.children");
contacts_demo._ContactCategory = class _ContactCategory extends framework.StatelessWidget {
  get icon() {
    return this[icon$];
  }
  set icon(value) {
    super.icon = value;
  }
  get children() {
    return this[children$];
  }
  set children(value) {
    super.children = value;
  }
  build(context) {
    let themeData = theme.Theme.of(context);
    return new container.Container.new({padding: C0 || CT.C0, decoration: new box_decoration.BoxDecoration.new({border: new box_border.Border.new({bottom: new borders.BorderSide.new({color: themeData.dividerColor})})}), child: new text.DefaultTextStyle.new({style: theme.Theme.of(context).textTheme.subhead, child: new safe_area.SafeArea.new({top: false, bottom: false, child: new basic.Row.new({crossAxisAlignment: flex.CrossAxisAlignment.start, children: JSArrayOfWidget().of([new container.Container.new({padding: C1 || CT.C1, width: 72.0, child: new icon.Icon.new(this.icon, {color: themeData.primaryColor, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new basic.Expanded.new({child: new basic.Column.new({children: this.children, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}});
  }
};
(contacts_demo._ContactCategory.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let icon = opts && 'icon' in opts ? opts.icon : null;
  let children = opts && 'children' in opts ? opts.children : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[icon$] = icon;
  this[children$] = children;
  contacts_demo._ContactCategory.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = contacts_demo._ContactCategory.prototype;
;
;
dart.setLibraryUri(contacts_demo._ContactCategory, "package:flutter_dart2js/contacts_demo.dart");
;
const icon$0 = dart.privateName(contacts_demo, "_ContactItem.icon");
const lines$ = dart.privateName(contacts_demo, "_ContactItem.lines");
const tooltip$ = dart.privateName(contacts_demo, "_ContactItem.tooltip");
const onPressed$ = dart.privateName(contacts_demo, "_ContactItem.onPressed");
contacts_demo._ContactItem = class _ContactItem extends framework.StatelessWidget {
  get icon() {
    return this[icon$0];
  }
  set icon(value) {
    super.icon = value;
  }
  get lines() {
    return this[lines$];
  }
  set lines(value) {
    super.lines = value;
  }
  get tooltip() {
    return this[tooltip$];
  }
  set tooltip(value) {
    super.tooltip = value;
  }
  get onPressed() {
    return this[onPressed$];
  }
  set onPressed(value) {
    super.onPressed = value;
  }
  build(context) {
    let themeData = theme.Theme.of(context);
    return new basic.MergeSemantics.new({child: new basic.Padding.new({padding: C0 || CT.C0, child: new basic.Row.new({mainAxisAlignment: flex.MainAxisAlignment.spaceBetween, children: (() => {
            let t0 = JSArrayOfWidget().of([]);
            t0[$add](new basic.Expanded.new({child: new basic.Column.new({crossAxisAlignment: flex.CrossAxisAlignment.start, children: (() => {
                  let t1 = JSArrayOfWidget().of([]);
                  for (let t2 of this.lines[$sublist](0, dart.notNull(this.lines[$length]) - 1)[$map](framework.Widget, dart.fn(line => new text.Text.new(line, {$creationLocationd_0dea112b090073317d4: {}}), StringToText())))
                    t1[$add](t2);
                  t1[$add](new text.Text.new(this.lines[$last], {style: themeData.textTheme.caption, $creationLocationd_0dea112b090073317d4: {}}));
                  return t1;
                })(), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}));
            if (this.icon != null) t0[$add](new basic.SizedBox.new({width: 72.0, child: new icon_button.IconButton.new({icon: new icon.Icon.new(this.icon, {$creationLocationd_0dea112b090073317d4: {}}), color: themeData.primaryColor, onPressed: this.onPressed, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}));
            return t0;
          })(), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}});
  }
};
(contacts_demo._ContactItem.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let icon = opts && 'icon' in opts ? opts.icon : null;
  let lines = opts && 'lines' in opts ? opts.lines : null;
  let tooltip = opts && 'tooltip' in opts ? opts.tooltip : null;
  let onPressed = opts && 'onPressed' in opts ? opts.onPressed : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[icon$0] = icon;
  this[lines$] = lines;
  this[tooltip$] = tooltip;
  this[onPressed$] = onPressed;
  if (!(dart.notNull(lines[$length]) > 1)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_dart2js/contacts_demo.dart", 46, 14, "lines.length > 1");
  contacts_demo._ContactItem.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = contacts_demo._ContactItem.prototype;
;
;
dart.setLibraryUri(contacts_demo._ContactItem, "package:flutter_dart2js/contacts_demo.dart");
;
contacts_demo.ContactsDemo = class ContactsDemo extends framework.StatefulWidget {
  createState() {
    return new contacts_demo.ContactsDemoState.new();
  }
};
(contacts_demo.ContactsDemo.new = function(opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  contacts_demo.ContactsDemo.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = contacts_demo.ContactsDemo.prototype;
;
;
dart.setLibraryUri(contacts_demo.ContactsDemo, "package:flutter_dart2js/contacts_demo.dart");
dart.defineLazy(contacts_demo.ContactsDemo, {
  /*contacts_demo.ContactsDemo.routeName*/get routeName() {
    return "/contacts";
  }
});
const _name$ = dart.privateName(contacts_demo, "_name");
let C72;
let C73;
let C74;
let C75;
let C76;
contacts_demo.AppBarBehavior = class AppBarBehavior extends core.Object {
  toString() {
    return this[_name$];
  }
};
(contacts_demo.AppBarBehavior.new = function(index, _name) {
  this.index = index;
  this[_name$] = _name;
  ;
}).prototype = contacts_demo.AppBarBehavior.prototype;
;
dart.setLibraryUri(contacts_demo.AppBarBehavior, "package:flutter_dart2js/contacts_demo.dart");
;
dart.defineExtensionMethods(contacts_demo.AppBarBehavior, ['toString']);
contacts_demo.AppBarBehavior.normal = C72 || CT.C72;
contacts_demo.AppBarBehavior.pinned = C73 || CT.C73;
contacts_demo.AppBarBehavior.floating = C74 || CT.C74;
contacts_demo.AppBarBehavior.snapping = C75 || CT.C75;
contacts_demo.AppBarBehavior.values = C76 || CT.C76;
const _appBarHeight = dart.privateName(contacts_demo, "_appBarHeight");
const _appBarBehavior = dart.privateName(contacts_demo, "_appBarBehavior");
const Widget_key = dart.privateName(framework, "Widget.key");
const Icon_textDirection = dart.privateName(icon, "Icon.textDirection");
const Icon_semanticLabel = dart.privateName(icon, "Icon.semanticLabel");
const Icon_color = dart.privateName(icon, "Icon.color");
const Icon_size = dart.privateName(icon, "Icon.size");
const IconData_matchTextDirection = dart.privateName(icon_data, "IconData.matchTextDirection");
const IconData_fontPackage = dart.privateName(icon_data, "IconData.fontPackage");
const IconData_fontFamily = dart.privateName(icon_data, "IconData.fontFamily");
const IconData_codePoint = dart.privateName(icon_data, "IconData.codePoint");
let C78;
const Icon_icon = dart.privateName(icon, "Icon.icon");
let C77;
const Duration__duration = dart.privateName(core, "Duration._duration");
let C80;
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
let C81;
let C79;
let C88;
const PopupMenuItem_child = dart.privateName(popup_menu, "PopupMenuItem.child");
const PopupMenuItem_textStyle = dart.privateName(popup_menu, "PopupMenuItem.textStyle");
const PopupMenuItem_height = dart.privateName(popup_menu, "PopupMenuItem.height");
const PopupMenuItem_enabled = dart.privateName(popup_menu, "PopupMenuItem.enabled");
const PopupMenuItem_value = dart.privateName(popup_menu, "PopupMenuItem.value");
let C87;
let C90;
let C89;
let C92;
let C91;
let C94;
let C93;
let C99;
const SingleChildRenderObjectWidget_child = dart.privateName(framework, "SingleChildRenderObjectWidget.child");
const _name = dart.privateName(proxy_box, "_name");
let C107;
const DecoratedBox_position = dart.privateName(container, "DecoratedBox.position");
const _name$0 = dart.privateName(box_border, "_name");
let C109;
const BoxDecoration_shape = dart.privateName(box_decoration, "BoxDecoration.shape");
const BoxDecoration_backgroundBlendMode = dart.privateName(box_decoration, "BoxDecoration.backgroundBlendMode");
const Gradient_transform = dart.privateName(gradient, "Gradient.transform");
const Gradient_stops = dart.privateName(gradient, "Gradient.stops");
const Color_value = dart.privateName(ui, "Color.value");
let C112;
let C113;
let C111;
const Gradient_colors = dart.privateName(gradient, "Gradient.colors");
const _name$1 = dart.privateName(ui, "_name");
let C114;
const LinearGradient_tileMode = dart.privateName(gradient, "LinearGradient.tileMode");
const Alignment_y = dart.privateName(alignment, "Alignment.y");
const Alignment_x = dart.privateName(alignment, "Alignment.x");
let C115;
const LinearGradient_end = dart.privateName(gradient, "LinearGradient.end");
let C116;
const LinearGradient_begin = dart.privateName(gradient, "LinearGradient.begin");
let C110;
const BoxDecoration_gradient = dart.privateName(box_decoration, "BoxDecoration.gradient");
const BoxDecoration_boxShadow = dart.privateName(box_decoration, "BoxDecoration.boxShadow");
const BoxDecoration_borderRadius = dart.privateName(box_decoration, "BoxDecoration.borderRadius");
const BoxDecoration_border = dart.privateName(box_decoration, "BoxDecoration.border");
const BoxDecoration_image = dart.privateName(box_decoration, "BoxDecoration.image");
const BoxDecoration_color = dart.privateName(box_decoration, "BoxDecoration.color");
let C108;
const DecoratedBox_decoration = dart.privateName(container, "DecoratedBox.decoration");
let C106;
let C134;
let C133;
let C135;
let C143;
let C142;
let C144;
let C152;
let C151;
let C153;
let C169;
let C168;
let C170;
let C178;
let C177;
let C179;
let C191;
let C190;
let C192;
let C200;
let C199;
let C201;
let C209;
let C208;
let C210;
let C221;
let C225;
let C229;
let C233;
contacts_demo.ContactsDemoState = class ContactsDemoState extends framework.State$(contacts_demo.ContactsDemo) {
  build(context) {
    return new theme.Theme.new({data: theme_data.ThemeData.new({brightness: ui.Brightness.light, primarySwatch: colors.Colors.indigo, platform: theme.Theme.of(context).platform}), child: new scaffold.Scaffold.new({key: contacts_demo.ContactsDemoState._scaffoldKey, body: new scroll_view.CustomScrollView.new({slivers: JSArrayOfWidget().of([new app_bar.SliverAppBar.new({expandedHeight: this[_appBarHeight], pinned: dart.equals(this[_appBarBehavior], contacts_demo.AppBarBehavior.pinned), floating: dart.equals(this[_appBarBehavior], contacts_demo.AppBarBehavior.floating) || dart.equals(this[_appBarBehavior], contacts_demo.AppBarBehavior.snapping), snap: dart.equals(this[_appBarBehavior], contacts_demo.AppBarBehavior.snapping), actions: JSArrayOfWidget().of([new icon_button.IconButton.new({icon: C77 || CT.C77, tooltip: "Edit", onPressed: dart.fn(() => {
                    contacts_demo.ContactsDemoState._scaffoldKey.currentState.showSnackBar(C79 || CT.C79);
                  }, VoidToNull()), $creationLocationd_0dea112b090073317d4: {}}), new (PopupMenuButtonOfAppBarBehavior()).new({onSelected: dart.fn(value => {
                    this.setState(dart.fn(() => {
                      this[_appBarBehavior] = value;
                    }, VoidToNull()));
                  }, AppBarBehaviorToNull()), itemBuilder: dart.fn(context => JSArrayOfPopupMenuItemOfAppBarBehavior().of([C87 || CT.C87, C89 || CT.C89, C91 || CT.C91, C93 || CT.C93]), BuildContextToListOfPopupMenuItemOfAppBarBehavior()), $creationLocationd_0dea112b090073317d4: {}})]), flexibleSpace: new flexible_space_bar.FlexibleSpaceBar.new({title: C99 || CT.C99, background: new basic.Stack.new({fit: stack.StackFit.expand, children: JSArrayOfWidget().of([new image.Image.asset("mxflutter_js_src/mxflutter_app_demo/flutter_gallery_assets/people/ali_landscape.png", {package: "flutter_gallery_assets", fit: box_fit.BoxFit.cover, height: this[_appBarHeight], $creationLocationd_0dea112b090073317d4: {}}), C106 || CT.C106]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new sliver.SliverList.new({delegate: new sliver.SliverChildListDelegate.new(JSArrayOfWidget().of([new (AnnotatedRegionOfSystemUiOverlayStyle()).new({value: system_chrome.SystemUiOverlayStyle.dark, child: new contacts_demo._ContactCategory.new({icon: icons.Icons.call, children: JSArrayOfWidget().of([new contacts_demo._ContactItem.new({icon: icons.Icons.message, tooltip: "Send message", onPressed: dart.fn(() => {
                          contacts_demo.ContactsDemoState._scaffoldKey.currentState.showSnackBar(C133 || CT.C133);
                        }, VoidToNull()), lines: C135 || CT.C135, $creationLocationd_0dea112b090073317d4: {}}), new contacts_demo._ContactItem.new({icon: icons.Icons.message, tooltip: "Send message", onPressed: dart.fn(() => {
                          contacts_demo.ContactsDemoState._scaffoldKey.currentState.showSnackBar(C142 || CT.C142);
                        }, VoidToNull()), lines: C144 || CT.C144, $creationLocationd_0dea112b090073317d4: {}}), new contacts_demo._ContactItem.new({icon: icons.Icons.message, tooltip: "Send message", onPressed: dart.fn(() => {
                          contacts_demo.ContactsDemoState._scaffoldKey.currentState.showSnackBar(C151 || CT.C151);
                        }, VoidToNull()), lines: C153 || CT.C153, $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new contacts_demo._ContactCategory.new({icon: icons.Icons.contact_mail, children: JSArrayOfWidget().of([new contacts_demo._ContactItem.new({icon: icons.Icons.email, tooltip: "Send personal e-mail", onPressed: dart.fn(() => {
                        contacts_demo.ContactsDemoState._scaffoldKey.currentState.showSnackBar(C168 || CT.C168);
                      }, VoidToNull()), lines: C170 || CT.C170, $creationLocationd_0dea112b090073317d4: {}}), new contacts_demo._ContactItem.new({icon: icons.Icons.email, tooltip: "Send work e-mail", onPressed: dart.fn(() => {
                        contacts_demo.ContactsDemoState._scaffoldKey.currentState.showSnackBar(C177 || CT.C177);
                      }, VoidToNull()), lines: C179 || CT.C179, $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), new contacts_demo._ContactCategory.new({icon: icons.Icons.location_on, children: JSArrayOfWidget().of([new contacts_demo._ContactItem.new({icon: icons.Icons.map, tooltip: "Open map", onPressed: dart.fn(() => {
                        contacts_demo.ContactsDemoState._scaffoldKey.currentState.showSnackBar(C190 || CT.C190);
                      }, VoidToNull()), lines: C192 || CT.C192, $creationLocationd_0dea112b090073317d4: {}}), new contacts_demo._ContactItem.new({icon: icons.Icons.map, tooltip: "Open map", onPressed: dart.fn(() => {
                        contacts_demo.ContactsDemoState._scaffoldKey.currentState.showSnackBar(C199 || CT.C199);
                      }, VoidToNull()), lines: C201 || CT.C201, $creationLocationd_0dea112b090073317d4: {}}), new contacts_demo._ContactItem.new({icon: icons.Icons.map, tooltip: "Open map", onPressed: dart.fn(() => {
                        contacts_demo.ContactsDemoState._scaffoldKey.currentState.showSnackBar(C208 || CT.C208);
                      }, VoidToNull()), lines: C210 || CT.C210, $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), new contacts_demo._ContactCategory.new({icon: icons.Icons.today, children: JSArrayOfWidget().of([new contacts_demo._ContactItem.new({lines: C221 || CT.C221, $creationLocationd_0dea112b090073317d4: {}}), new contacts_demo._ContactItem.new({lines: C225 || CT.C225, $creationLocationd_0dea112b090073317d4: {}}), new contacts_demo._ContactItem.new({lines: C229 || CT.C229, $creationLocationd_0dea112b090073317d4: {}}), new contacts_demo._ContactItem.new({lines: C233 || CT.C233, $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}})])), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}});
  }
};
(contacts_demo.ContactsDemoState.new = function() {
  this[_appBarHeight] = 256.0;
  this[_appBarBehavior] = contacts_demo.AppBarBehavior.pinned;
  contacts_demo.ContactsDemoState.__proto__.new.call(this);
  ;
}).prototype = contacts_demo.ContactsDemoState.prototype;
;
;
dart.setLibraryUri(contacts_demo.ContactsDemoState, "package:flutter_dart2js/contacts_demo.dart");
;

// Exports:
exports.contacts_demo = contacts_demo;

//# sourceMappingURL=contacts_demo.ddc.js.map
