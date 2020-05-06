'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const ui = dart_sdk.ui;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__material__icon_button$46dart = require('packages/flutter/src/material/icon_button.dart');
const theme = packages__flutter__src__material__icon_button$46dart.src__material__theme;
const icon_button = packages__flutter__src__material__icon_button$46dart.src__material__icon_button;
const theme_data = packages__flutter__src__material__icon_button$46dart.src__material__theme_data;
const scaffold = packages__flutter__src__material__icon_button$46dart.src__material__scaffold;
const app_bar = packages__flutter__src__material__icon_button$46dart.src__material__app_bar;
const snack_bar = packages__flutter__src__material__icon_button$46dart.src__material__snack_bar;
const flexible_space_bar = packages__flutter__src__material__icon_button$46dart.src__material__flexible_space_bar;
const packages__flutter__src__widgets__widget_span$46dart = require('packages/flutter/src/widgets/widget_span.dart');
const container = packages__flutter__src__widgets__widget_span$46dart.src__widgets__container;
const text = packages__flutter__src__widgets__widget_span$46dart.src__widgets__text;
const basic = packages__flutter__src__widgets__widget_span$46dart.src__widgets__basic;
const framework = packages__flutter__src__widgets__widget_span$46dart.src__widgets__framework;
const image = packages__flutter__src__widgets__widget_span$46dart.src__widgets__image;
const sliver = packages__flutter__src__widgets__widget_span$46dart.src__widgets__sliver;
const packages__flutter__src__painting__edge_insets$46dart = require('packages/flutter/src/painting/edge_insets.dart');
const edge_insets = packages__flutter__src__painting__edge_insets$46dart.src__painting__edge_insets;
const packages__flutter__src__painting__box_decoration$46dart = require('packages/flutter/src/painting/box_decoration.dart');
const box_decoration = packages__flutter__src__painting__box_decoration$46dart.src__painting__box_decoration;
const packages__flutter__src__painting__box_border$46dart = require('packages/flutter/src/painting/box_border.dart');
const box_border = packages__flutter__src__painting__box_border$46dart.src__painting__box_border;
const packages__flutter__src__painting__borders$46dart = require('packages/flutter/src/painting/borders.dart');
const borders = packages__flutter__src__painting__borders$46dart.src__painting__borders;
const packages__flutter__src__widgets__safe_area$46dart = require('packages/flutter/src/widgets/safe_area.dart');
const safe_area = packages__flutter__src__widgets__safe_area$46dart.src__widgets__safe_area;
const packages__flutter__src__rendering__flex$46dart = require('packages/flutter/src/rendering/flex.dart');
const flex = packages__flutter__src__rendering__flex$46dart.src__rendering__flex;
const packages__flutter__src__widgets__icon$46dart = require('packages/flutter/src/widgets/icon.dart');
const icon = packages__flutter__src__widgets__icon$46dart.src__widgets__icon;
const packages__flutter__src__widgets__icon_data$46dart = require('packages/flutter/src/widgets/icon_data.dart');
const icon_data = packages__flutter__src__widgets__icon_data$46dart.src__widgets__icon_data;
const packages__flutter__src__material__colors$46dart = require('packages/flutter/src/material/colors.dart');
const colors = packages__flutter__src__material__colors$46dart.src__material__colors;
const packages__flutter__src__widgets__scroll_view$46dart = require('packages/flutter/src/widgets/scroll_view.dart');
const scroll_view = packages__flutter__src__widgets__scroll_view$46dart.src__widgets__scroll_view;
const packages__flutter__src__material__popup_menu$46dart = require('packages/flutter/src/material/popup_menu.dart');
const popup_menu = packages__flutter__src__material__popup_menu$46dart.src__material__popup_menu;
const packages__flutter__src__rendering__stack$46dart = require('packages/flutter/src/rendering/stack.dart');
const stack = packages__flutter__src__rendering__stack$46dart.src__rendering__stack;
const packages__flutter__src__painting__box_fit$46dart = require('packages/flutter/src/painting/box_fit.dart');
const box_fit = packages__flutter__src__painting__box_fit$46dart.src__painting__box_fit;
const packages__flutter__src__rendering__proxy_box$46dart = require('packages/flutter/src/rendering/proxy_box.dart');
const proxy_box = packages__flutter__src__rendering__proxy_box$46dart.src__rendering__proxy_box;
const packages__flutter__src__painting__gradient$46dart = require('packages/flutter/src/painting/gradient.dart');
const gradient = packages__flutter__src__painting__gradient$46dart.src__painting__gradient;
const packages__flutter__src__painting__alignment$46dart = require('packages/flutter/src/painting/alignment.dart');
const alignment = packages__flutter__src__painting__alignment$46dart.src__painting__alignment;
const packages__flutter__src__widgets__annotated_region$46dart = require('packages/flutter/src/widgets/annotated_region.dart');
const annotated_region = packages__flutter__src__widgets__annotated_region$46dart.src__widgets__annotated_region;
const packages__flutter__src__services__system_chrome$46dart = require('packages/flutter/src/services/system_chrome.dart');
const system_chrome = packages__flutter__src__services__system_chrome$46dart.src__services__system_chrome;
const packages__flutter__src__material__icons$46dart = require('packages/flutter/src/material/icons.dart');
const icons = packages__flutter__src__material__icons$46dart.src__material__icons;
var contacts_demo = Object.create(dart.library);
var $length = dartx.length;
var $sublist = dartx.sublist;
var $map = dartx.map;
var $toList = dartx.toList;
var $last = dartx.last;
var $add = dartx.add;
var JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
var StringToText = () => (StringToText = dart.constFn(dart.fnType(text.Text, [core.String])))();
var VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
var PopupMenuButtonOfAppBarBehavior = () => (PopupMenuButtonOfAppBarBehavior = dart.constFn(popup_menu.PopupMenuButton$(contacts_demo.AppBarBehavior)))();
var AppBarBehaviorToNull = () => (AppBarBehaviorToNull = dart.constFn(dart.fnType(core.Null, [contacts_demo.AppBarBehavior])))();
var PopupMenuItemOfAppBarBehavior = () => (PopupMenuItemOfAppBarBehavior = dart.constFn(popup_menu.PopupMenuItem$(contacts_demo.AppBarBehavior)))();
var JSArrayOfPopupMenuItemOfAppBarBehavior = () => (JSArrayOfPopupMenuItemOfAppBarBehavior = dart.constFn(_interceptors.JSArray$(PopupMenuItemOfAppBarBehavior())))();
var ListOfPopupMenuItemOfAppBarBehavior = () => (ListOfPopupMenuItemOfAppBarBehavior = dart.constFn(core.List$(PopupMenuItemOfAppBarBehavior())))();
var BuildContextToListOfPopupMenuItemOfAppBarBehavior = () => (BuildContextToListOfPopupMenuItemOfAppBarBehavior = dart.constFn(dart.fnType(ListOfPopupMenuItemOfAppBarBehavior(), [framework.BuildContext])))();
var AnnotatedRegionOfSystemUiOverlayStyle = () => (AnnotatedRegionOfSystemUiOverlayStyle = dart.constFn(annotated_region.AnnotatedRegion$(system_chrome.SystemUiOverlayStyle)))();
var GlobalKeyOfScaffoldState = () => (GlobalKeyOfScaffoldState = dart.constFn(framework.GlobalKey$(scaffold.ScaffoldState)))();
const CT = Object.create(null);
var L1 = "file:///Users/lucaliu/project/test/jsbuild_test/lib/contacts_demo.dart";
var L0 = "package:jsbuild_test/contacts_demo.dart";
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
  get C2() {
    return C2 = dart.const({
      __proto__: contacts_demo.AppBarBehavior.prototype,
      [_name$]: "AppBarBehavior.normal",
      index: 0
    });
  },
  get C3() {
    return C3 = dart.const({
      __proto__: contacts_demo.AppBarBehavior.prototype,
      [_name$]: "AppBarBehavior.pinned",
      index: 1
    });
  },
  get C4() {
    return C4 = dart.const({
      __proto__: contacts_demo.AppBarBehavior.prototype,
      [_name$]: "AppBarBehavior.floating",
      index: 2
    });
  },
  get C5() {
    return C5 = dart.const({
      __proto__: contacts_demo.AppBarBehavior.prototype,
      [_name$]: "AppBarBehavior.snapping",
      index: 3
    });
  },
  get C6() {
    return C6 = dart.constList([C2 || CT.C2, C3 || CT.C3, C4 || CT.C4, C5 || CT.C5], contacts_demo.AppBarBehavior);
  },
  get C8() {
    return C8 = dart.const({
      __proto__: icon_data.IconData.prototype,
      [IconData_matchTextDirection]: false,
      [IconData_fontPackage]: null,
      [IconData_fontFamily]: "MaterialIcons",
      [IconData_codePoint]: 57680
    });
  },
  get C7() {
    return C7 = dart.const({
      __proto__: icon.Icon.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [Icon_textDirection]: null,
      [Icon_semanticLabel]: null,
      [Icon_color]: null,
      [Icon_size]: null,
      [Icon_icon]: C8 || CT.C8
    });
  },
  get C10() {
    return C10 = dart.const({
      __proto__: core.Duration.prototype,
      [Duration__duration]: 4000000
    });
  },
  get C11() {
    return C11 = dart.const({
      __proto__: text.Text.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [Text_textHeightBehavior]: null,
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
  get C9() {
    return C9 = dart.const({
      __proto__: snack_bar.SnackBar.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [SnackBar_onVisible]: null,
      [SnackBar_animation]: null,
      [SnackBar_duration]: C10 || CT.C10,
      [SnackBar_action]: null,
      [SnackBar_behavior]: null,
      [SnackBar_shape]: null,
      [SnackBar_elevation]: null,
      [SnackBar_backgroundColor]: null,
      [SnackBar_content]: C11 || CT.C11
    });
  },
  get C13() {
    return C13 = dart.const({
      __proto__: text.Text.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [Text_textHeightBehavior]: null,
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
  get C12() {
    return C12 = dart.const({
      __proto__: PopupMenuItemOfAppBarBehavior().prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [PopupMenuItem_child]: C13 || CT.C13,
      [PopupMenuItem_textStyle]: null,
      [PopupMenuItem_height]: 48,
      [PopupMenuItem_enabled]: true,
      [PopupMenuItem_value]: C2 || CT.C2
    });
  },
  get C15() {
    return C15 = dart.const({
      __proto__: text.Text.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [Text_textHeightBehavior]: null,
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
  get C14() {
    return C14 = dart.const({
      __proto__: PopupMenuItemOfAppBarBehavior().prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [PopupMenuItem_child]: C15 || CT.C15,
      [PopupMenuItem_textStyle]: null,
      [PopupMenuItem_height]: 48,
      [PopupMenuItem_enabled]: true,
      [PopupMenuItem_value]: C3 || CT.C3
    });
  },
  get C17() {
    return C17 = dart.const({
      __proto__: text.Text.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [Text_textHeightBehavior]: null,
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
  get C16() {
    return C16 = dart.const({
      __proto__: PopupMenuItemOfAppBarBehavior().prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [PopupMenuItem_child]: C17 || CT.C17,
      [PopupMenuItem_textStyle]: null,
      [PopupMenuItem_height]: 48,
      [PopupMenuItem_enabled]: true,
      [PopupMenuItem_value]: C4 || CT.C4
    });
  },
  get C19() {
    return C19 = dart.const({
      __proto__: text.Text.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [Text_textHeightBehavior]: null,
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
  get C18() {
    return C18 = dart.const({
      __proto__: PopupMenuItemOfAppBarBehavior().prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [PopupMenuItem_child]: C19 || CT.C19,
      [PopupMenuItem_textStyle]: null,
      [PopupMenuItem_height]: 48,
      [PopupMenuItem_enabled]: true,
      [PopupMenuItem_value]: C5 || CT.C5
    });
  },
  get C20() {
    return C20 = dart.const({
      __proto__: text.Text.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [Text_textHeightBehavior]: null,
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
  get C22() {
    return C22 = dart.const({
      __proto__: proxy_box.DecorationPosition.prototype,
      [_name]: "DecorationPosition.background",
      index: 0
    });
  },
  get C24() {
    return C24 = dart.const({
      __proto__: box_border.BoxShape.prototype,
      [_name$0]: "BoxShape.rectangle",
      index: 0
    });
  },
  get C27() {
    return C27 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 1610612736
    });
  },
  get C28() {
    return C28 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 0
    });
  },
  get C26() {
    return C26 = dart.constList([C27 || CT.C27, C28 || CT.C28], ui.Color);
  },
  get C29() {
    return C29 = dart.const({
      __proto__: ui.TileMode.prototype,
      [_name$1]: "TileMode.clamp",
      index: 0
    });
  },
  get C30() {
    return C30 = dart.const({
      __proto__: alignment.Alignment.prototype,
      [Alignment_y]: -0.4,
      [Alignment_x]: 0
    });
  },
  get C31() {
    return C31 = dart.const({
      __proto__: alignment.Alignment.prototype,
      [Alignment_y]: -1,
      [Alignment_x]: 0
    });
  },
  get C25() {
    return C25 = dart.const({
      __proto__: gradient.LinearGradient.prototype,
      [Gradient_transform]: null,
      [Gradient_stops]: null,
      [Gradient_colors]: C26 || CT.C26,
      [LinearGradient_tileMode]: C29 || CT.C29,
      [LinearGradient_end]: C30 || CT.C30,
      [LinearGradient_begin]: C31 || CT.C31
    });
  },
  get C23() {
    return C23 = dart.const({
      __proto__: box_decoration.BoxDecoration.prototype,
      [BoxDecoration_shape]: C24 || CT.C24,
      [BoxDecoration_backgroundBlendMode]: null,
      [BoxDecoration_gradient]: C25 || CT.C25,
      [BoxDecoration_boxShadow]: null,
      [BoxDecoration_borderRadius]: null,
      [BoxDecoration_border]: null,
      [BoxDecoration_image]: null,
      [BoxDecoration_color]: null
    });
  },
  get C21() {
    return C21 = dart.const({
      __proto__: container.DecoratedBox.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: null,
      [DecoratedBox_position]: C22 || CT.C22,
      [DecoratedBox_decoration]: C23 || CT.C23
    });
  },
  get C33() {
    return C33 = dart.const({
      __proto__: text.Text.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [Text_textHeightBehavior]: null,
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
  get C32() {
    return C32 = dart.const({
      __proto__: snack_bar.SnackBar.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [SnackBar_onVisible]: null,
      [SnackBar_animation]: null,
      [SnackBar_duration]: C10 || CT.C10,
      [SnackBar_action]: null,
      [SnackBar_behavior]: null,
      [SnackBar_shape]: null,
      [SnackBar_elevation]: null,
      [SnackBar_backgroundColor]: null,
      [SnackBar_content]: C33 || CT.C33
    });
  },
  get C34() {
    return C34 = dart.constList(["(650) 555-1234", "Mobile"], core.String);
  },
  get C36() {
    return C36 = dart.const({
      __proto__: text.Text.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [Text_textHeightBehavior]: null,
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
  get C35() {
    return C35 = dart.const({
      __proto__: snack_bar.SnackBar.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [SnackBar_onVisible]: null,
      [SnackBar_animation]: null,
      [SnackBar_duration]: C10 || CT.C10,
      [SnackBar_action]: null,
      [SnackBar_behavior]: null,
      [SnackBar_shape]: null,
      [SnackBar_elevation]: null,
      [SnackBar_backgroundColor]: null,
      [SnackBar_content]: C36 || CT.C36
    });
  },
  get C37() {
    return C37 = dart.constList(["(323) 555-6789", "Work"], core.String);
  },
  get C39() {
    return C39 = dart.const({
      __proto__: text.Text.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [Text_textHeightBehavior]: null,
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
  get C38() {
    return C38 = dart.const({
      __proto__: snack_bar.SnackBar.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [SnackBar_onVisible]: null,
      [SnackBar_animation]: null,
      [SnackBar_duration]: C10 || CT.C10,
      [SnackBar_action]: null,
      [SnackBar_behavior]: null,
      [SnackBar_shape]: null,
      [SnackBar_elevation]: null,
      [SnackBar_backgroundColor]: null,
      [SnackBar_content]: C39 || CT.C39
    });
  },
  get C40() {
    return C40 = dart.constList(["(650) 555-6789", "Home"], core.String);
  },
  get C42() {
    return C42 = dart.const({
      __proto__: text.Text.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [Text_textHeightBehavior]: null,
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
  get C41() {
    return C41 = dart.const({
      __proto__: snack_bar.SnackBar.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [SnackBar_onVisible]: null,
      [SnackBar_animation]: null,
      [SnackBar_duration]: C10 || CT.C10,
      [SnackBar_action]: null,
      [SnackBar_behavior]: null,
      [SnackBar_shape]: null,
      [SnackBar_elevation]: null,
      [SnackBar_backgroundColor]: null,
      [SnackBar_content]: C42 || CT.C42
    });
  },
  get C43() {
    return C43 = dart.constList(["ali_connors@example.com", "Personal"], core.String);
  },
  get C45() {
    return C45 = dart.const({
      __proto__: text.Text.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [Text_textHeightBehavior]: null,
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
  get C44() {
    return C44 = dart.const({
      __proto__: snack_bar.SnackBar.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [SnackBar_onVisible]: null,
      [SnackBar_animation]: null,
      [SnackBar_duration]: C10 || CT.C10,
      [SnackBar_action]: null,
      [SnackBar_behavior]: null,
      [SnackBar_shape]: null,
      [SnackBar_elevation]: null,
      [SnackBar_backgroundColor]: null,
      [SnackBar_content]: C45 || CT.C45
    });
  },
  get C46() {
    return C46 = dart.constList(["aliconnors@example.com", "Work"], core.String);
  },
  get C48() {
    return C48 = dart.const({
      __proto__: text.Text.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [Text_textHeightBehavior]: null,
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
  get C47() {
    return C47 = dart.const({
      __proto__: snack_bar.SnackBar.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [SnackBar_onVisible]: null,
      [SnackBar_animation]: null,
      [SnackBar_duration]: C10 || CT.C10,
      [SnackBar_action]: null,
      [SnackBar_behavior]: null,
      [SnackBar_shape]: null,
      [SnackBar_elevation]: null,
      [SnackBar_backgroundColor]: null,
      [SnackBar_content]: C48 || CT.C48
    });
  },
  get C49() {
    return C49 = dart.constList(["2000 Main Street", "San Francisco, CA", "Home"], core.String);
  },
  get C51() {
    return C51 = dart.const({
      __proto__: text.Text.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [Text_textHeightBehavior]: null,
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
  get C50() {
    return C50 = dart.const({
      __proto__: snack_bar.SnackBar.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [SnackBar_onVisible]: null,
      [SnackBar_animation]: null,
      [SnackBar_duration]: C10 || CT.C10,
      [SnackBar_action]: null,
      [SnackBar_behavior]: null,
      [SnackBar_shape]: null,
      [SnackBar_elevation]: null,
      [SnackBar_backgroundColor]: null,
      [SnackBar_content]: C51 || CT.C51
    });
  },
  get C52() {
    return C52 = dart.constList(["1600 Amphitheater Parkway", "Mountain View, CA", "Work"], core.String);
  },
  get C54() {
    return C54 = dart.const({
      __proto__: text.Text.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [Text_textHeightBehavior]: null,
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
  get C53() {
    return C53 = dart.const({
      __proto__: snack_bar.SnackBar.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [SnackBar_onVisible]: null,
      [SnackBar_animation]: null,
      [SnackBar_duration]: C10 || CT.C10,
      [SnackBar_action]: null,
      [SnackBar_behavior]: null,
      [SnackBar_shape]: null,
      [SnackBar_elevation]: null,
      [SnackBar_backgroundColor]: null,
      [SnackBar_content]: C54 || CT.C54
    });
  },
  get C55() {
    return C55 = dart.constList(["126 Severyns Ave", "Mountain View, CA", "Jet Travel"], core.String);
  },
  get C56() {
    return C56 = dart.constList(["Birthday", "January 9th, 1989"], core.String);
  },
  get C57() {
    return C57 = dart.constList(["Wedding anniversary", "June 21st, 2014"], core.String);
  },
  get C58() {
    return C58 = dart.constList(["First day in office", "January 20th, 2015"], core.String);
  },
  get C59() {
    return C59 = dart.constList(["Last day in office", "August 9th, 2018"], core.String);
  }
}, false);
var EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
var EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
var EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
var EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
var C0;
var C1;
var icon$ = dart.privateName(contacts_demo, "_ContactCategory.icon");
var children$ = dart.privateName(contacts_demo, "_ContactCategory.children");
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
    return new container.Container.new({padding: C0 || CT.C0, decoration: new box_decoration.BoxDecoration.new({border: new box_border.Border.new({bottom: new borders.BorderSide.new({color: themeData.dividerColor})})}), child: new text.DefaultTextStyle.new({style: theme.Theme.of(context).textTheme.subhead, child: new safe_area.SafeArea.new({top: false, bottom: false, child: new basic.Row.new({crossAxisAlignment: flex.CrossAxisAlignment.start, children: JSArrayOfWidget().of([new container.Container.new({padding: C1 || CT.C1, width: 72.0, child: new icon.Icon.new(this.icon, {color: themeData.primaryColor})}), new basic.Expanded.new({child: new basic.Column.new({children: this.children})})])})})})});
  }
};
(contacts_demo._ContactCategory.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let icon = opts && 'icon' in opts ? opts.icon : null;
  let children = opts && 'children' in opts ? opts.children : null;
  this[icon$] = icon;
  this[children$] = children;
  contacts_demo._ContactCategory.__proto__.new.call(this, {key: key});
  ;
}).prototype = contacts_demo._ContactCategory.prototype;
dart.addTypeTests(contacts_demo._ContactCategory);
dart.addTypeCaches(contacts_demo._ContactCategory);
dart.setMethodSignature(contacts_demo._ContactCategory, () => ({
  __proto__: dart.getMethods(contacts_demo._ContactCategory.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(contacts_demo._ContactCategory, L0);
dart.setFieldSignature(contacts_demo._ContactCategory, () => ({
  __proto__: dart.getFields(contacts_demo._ContactCategory.__proto__),
  icon: dart.finalFieldType(icon_data.IconData),
  children: dart.finalFieldType(core.List$(framework.Widget))
}));
var icon$0 = dart.privateName(contacts_demo, "_ContactItem.icon");
var lines$ = dart.privateName(contacts_demo, "_ContactItem.lines");
var tooltip$ = dart.privateName(contacts_demo, "_ContactItem.tooltip");
var onPressed$ = dart.privateName(contacts_demo, "_ContactItem.onPressed");
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
    let columnChildren = this.lines[$sublist](0, dart.notNull(this.lines[$length]) - 1)[$map](framework.Widget, dart.fn(line => new text.Text.new(line), StringToText()))[$toList]();
    columnChildren[$add](new text.Text.new(this.lines[$last], {style: themeData.textTheme.caption}));
    let rowChildren = JSArrayOfWidget().of([new basic.Expanded.new({child: new basic.Column.new({crossAxisAlignment: flex.CrossAxisAlignment.start, children: columnChildren})})]);
    if (this.icon != null) {
      rowChildren[$add](new basic.SizedBox.new({width: 72.0, child: new icon_button.IconButton.new({icon: new icon.Icon.new(this.icon), color: themeData.primaryColor, onPressed: this.onPressed})}));
    }
    return new basic.MergeSemantics.new({child: new basic.Padding.new({padding: C0 || CT.C0, child: new basic.Row.new({mainAxisAlignment: flex.MainAxisAlignment.spaceBetween, children: rowChildren})})});
  }
};
(contacts_demo._ContactItem.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let icon = opts && 'icon' in opts ? opts.icon : null;
  let lines = opts && 'lines' in opts ? opts.lines : null;
  let tooltip = opts && 'tooltip' in opts ? opts.tooltip : null;
  let onPressed = opts && 'onPressed' in opts ? opts.onPressed : null;
  this[icon$0] = icon;
  this[lines$] = lines;
  this[tooltip$] = tooltip;
  this[onPressed$] = onPressed;
  if (!(dart.notNull(lines[$length]) > 1)) dart.assertFailed(null, L1, 46, 14, "lines.length > 1");
  contacts_demo._ContactItem.__proto__.new.call(this, {key: key});
  ;
}).prototype = contacts_demo._ContactItem.prototype;
dart.addTypeTests(contacts_demo._ContactItem);
dart.addTypeCaches(contacts_demo._ContactItem);
dart.setMethodSignature(contacts_demo._ContactItem, () => ({
  __proto__: dart.getMethods(contacts_demo._ContactItem.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(contacts_demo._ContactItem, L0);
dart.setFieldSignature(contacts_demo._ContactItem, () => ({
  __proto__: dart.getFields(contacts_demo._ContactItem.__proto__),
  icon: dart.finalFieldType(icon_data.IconData),
  lines: dart.finalFieldType(core.List$(core.String)),
  tooltip: dart.finalFieldType(core.String),
  onPressed: dart.finalFieldType(dart.fnType(dart.void, []))
}));
contacts_demo.ContactsDemo = class ContactsDemo extends framework.StatefulWidget {
  createState() {
    return new contacts_demo.ContactsDemoState.new();
  }
};
(contacts_demo.ContactsDemo.new = function() {
  contacts_demo.ContactsDemo.__proto__.new.call(this);
  ;
}).prototype = contacts_demo.ContactsDemo.prototype;
dart.addTypeTests(contacts_demo.ContactsDemo);
dart.addTypeCaches(contacts_demo.ContactsDemo);
dart.setMethodSignature(contacts_demo.ContactsDemo, () => ({
  __proto__: dart.getMethods(contacts_demo.ContactsDemo.__proto__),
  createState: dart.fnType(contacts_demo.ContactsDemoState, [])
}));
dart.setLibraryUri(contacts_demo.ContactsDemo, L0);
dart.defineLazy(contacts_demo.ContactsDemo, {
  /*contacts_demo.ContactsDemo.routeName*/get routeName() {
    return "/contacts";
  }
}, true);
var _name$ = dart.privateName(contacts_demo, "_name");
var C2;
var C3;
var C4;
var C5;
var C6;
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
dart.addTypeTests(contacts_demo.AppBarBehavior);
dart.addTypeCaches(contacts_demo.AppBarBehavior);
dart.setLibraryUri(contacts_demo.AppBarBehavior, L0);
dart.setFieldSignature(contacts_demo.AppBarBehavior, () => ({
  __proto__: dart.getFields(contacts_demo.AppBarBehavior.__proto__),
  index: dart.finalFieldType(core.int),
  [_name$]: dart.finalFieldType(core.String)
}));
dart.defineExtensionMethods(contacts_demo.AppBarBehavior, ['toString']);
contacts_demo.AppBarBehavior.normal = C2 || CT.C2;
contacts_demo.AppBarBehavior.pinned = C3 || CT.C3;
contacts_demo.AppBarBehavior.floating = C4 || CT.C4;
contacts_demo.AppBarBehavior.snapping = C5 || CT.C5;
contacts_demo.AppBarBehavior.values = C6 || CT.C6;
var _appBarHeight = dart.privateName(contacts_demo, "_appBarHeight");
var _appBarBehavior = dart.privateName(contacts_demo, "_appBarBehavior");
var Widget__location = dart.privateName(framework, "Widget._location");
var Widget_key = dart.privateName(framework, "Widget.key");
var Icon_textDirection = dart.privateName(icon, "Icon.textDirection");
var Icon_semanticLabel = dart.privateName(icon, "Icon.semanticLabel");
var Icon_color = dart.privateName(icon, "Icon.color");
var Icon_size = dart.privateName(icon, "Icon.size");
var IconData_matchTextDirection = dart.privateName(icon_data, "IconData.matchTextDirection");
var IconData_fontPackage = dart.privateName(icon_data, "IconData.fontPackage");
var IconData_fontFamily = dart.privateName(icon_data, "IconData.fontFamily");
var IconData_codePoint = dart.privateName(icon_data, "IconData.codePoint");
var C8;
var Icon_icon = dart.privateName(icon, "Icon.icon");
var C7;
var SnackBar_onVisible = dart.privateName(snack_bar, "SnackBar.onVisible");
var SnackBar_animation = dart.privateName(snack_bar, "SnackBar.animation");
var Duration__duration = dart.privateName(core, "Duration._duration");
var C10;
var SnackBar_duration = dart.privateName(snack_bar, "SnackBar.duration");
var SnackBar_action = dart.privateName(snack_bar, "SnackBar.action");
var SnackBar_behavior = dart.privateName(snack_bar, "SnackBar.behavior");
var SnackBar_shape = dart.privateName(snack_bar, "SnackBar.shape");
var SnackBar_elevation = dart.privateName(snack_bar, "SnackBar.elevation");
var SnackBar_backgroundColor = dart.privateName(snack_bar, "SnackBar.backgroundColor");
var Text_textHeightBehavior = dart.privateName(text, "Text.textHeightBehavior");
var Text_textWidthBasis = dart.privateName(text, "Text.textWidthBasis");
var Text_semanticsLabel = dart.privateName(text, "Text.semanticsLabel");
var Text_maxLines = dart.privateName(text, "Text.maxLines");
var Text_textScaleFactor = dart.privateName(text, "Text.textScaleFactor");
var Text_overflow = dart.privateName(text, "Text.overflow");
var Text_softWrap = dart.privateName(text, "Text.softWrap");
var Text_locale = dart.privateName(text, "Text.locale");
var Text_textDirection = dart.privateName(text, "Text.textDirection");
var Text_textAlign = dart.privateName(text, "Text.textAlign");
var Text_strutStyle = dart.privateName(text, "Text.strutStyle");
var Text_style = dart.privateName(text, "Text.style");
var Text_textSpan = dart.privateName(text, "Text.textSpan");
var Text_data = dart.privateName(text, "Text.data");
var C11;
var SnackBar_content = dart.privateName(snack_bar, "SnackBar.content");
var C9;
var C13;
var PopupMenuItem_child = dart.privateName(popup_menu, "PopupMenuItem.child");
var PopupMenuItem_textStyle = dart.privateName(popup_menu, "PopupMenuItem.textStyle");
var PopupMenuItem_height = dart.privateName(popup_menu, "PopupMenuItem.height");
var PopupMenuItem_enabled = dart.privateName(popup_menu, "PopupMenuItem.enabled");
var PopupMenuItem_value = dart.privateName(popup_menu, "PopupMenuItem.value");
var C12;
var C15;
var C14;
var C17;
var C16;
var C19;
var C18;
var C20;
var SingleChildRenderObjectWidget_child = dart.privateName(framework, "SingleChildRenderObjectWidget.child");
var _name = dart.privateName(proxy_box, "_name");
var C22;
var DecoratedBox_position = dart.privateName(container, "DecoratedBox.position");
var _name$0 = dart.privateName(box_border, "_name");
var C24;
var BoxDecoration_shape = dart.privateName(box_decoration, "BoxDecoration.shape");
var BoxDecoration_backgroundBlendMode = dart.privateName(box_decoration, "BoxDecoration.backgroundBlendMode");
var Gradient_transform = dart.privateName(gradient, "Gradient.transform");
var Gradient_stops = dart.privateName(gradient, "Gradient.stops");
var Color_value = dart.privateName(ui, "Color.value");
var C27;
var C28;
var C26;
var Gradient_colors = dart.privateName(gradient, "Gradient.colors");
var _name$1 = dart.privateName(ui, "_name");
var C29;
var LinearGradient_tileMode = dart.privateName(gradient, "LinearGradient.tileMode");
var Alignment_y = dart.privateName(alignment, "Alignment.y");
var Alignment_x = dart.privateName(alignment, "Alignment.x");
var C30;
var LinearGradient_end = dart.privateName(gradient, "LinearGradient.end");
var C31;
var LinearGradient_begin = dart.privateName(gradient, "LinearGradient.begin");
var C25;
var BoxDecoration_gradient = dart.privateName(box_decoration, "BoxDecoration.gradient");
var BoxDecoration_boxShadow = dart.privateName(box_decoration, "BoxDecoration.boxShadow");
var BoxDecoration_borderRadius = dart.privateName(box_decoration, "BoxDecoration.borderRadius");
var BoxDecoration_border = dart.privateName(box_decoration, "BoxDecoration.border");
var BoxDecoration_image = dart.privateName(box_decoration, "BoxDecoration.image");
var BoxDecoration_color = dart.privateName(box_decoration, "BoxDecoration.color");
var C23;
var DecoratedBox_decoration = dart.privateName(container, "DecoratedBox.decoration");
var C21;
var C33;
var C32;
var C34;
var C36;
var C35;
var C37;
var C39;
var C38;
var C40;
var C42;
var C41;
var C43;
var C45;
var C44;
var C46;
var C48;
var C47;
var C49;
var C51;
var C50;
var C52;
var C54;
var C53;
var C55;
var C56;
var C57;
var C58;
var C59;
contacts_demo.ContactsDemoState = class ContactsDemoState extends framework.State$(contacts_demo.ContactsDemo) {
  build(context) {
    return new theme.Theme.new({data: theme_data.ThemeData.new({brightness: ui.Brightness.light, primarySwatch: colors.Colors.indigo, platform: theme.Theme.of(context).platform}), child: new scaffold.Scaffold.new({key: contacts_demo.ContactsDemoState._scaffoldKey, body: new scroll_view.CustomScrollView.new({slivers: JSArrayOfWidget().of([new app_bar.SliverAppBar.new({expandedHeight: this[_appBarHeight], pinned: dart.equals(this[_appBarBehavior], contacts_demo.AppBarBehavior.pinned), floating: dart.equals(this[_appBarBehavior], contacts_demo.AppBarBehavior.floating) || dart.equals(this[_appBarBehavior], contacts_demo.AppBarBehavior.snapping), snap: dart.equals(this[_appBarBehavior], contacts_demo.AppBarBehavior.snapping), actions: JSArrayOfWidget().of([new icon_button.IconButton.new({icon: C7 || CT.C7, tooltip: "Edit", onPressed: dart.fn(() => {
                    contacts_demo.ContactsDemoState._scaffoldKey.currentState.showSnackBar(C9 || CT.C9);
                  }, VoidToNull())}), new (PopupMenuButtonOfAppBarBehavior()).new({onSelected: dart.fn(value => {
                    this.setState(dart.fn(() => {
                      this[_appBarBehavior] = value;
                    }, VoidToNull()));
                  }, AppBarBehaviorToNull()), itemBuilder: dart.fn(context => JSArrayOfPopupMenuItemOfAppBarBehavior().of([C12 || CT.C12, C14 || CT.C14, C16 || CT.C16, C18 || CT.C18]), BuildContextToListOfPopupMenuItemOfAppBarBehavior())})]), flexibleSpace: new flexible_space_bar.FlexibleSpaceBar.new({title: C20 || CT.C20, background: new basic.Stack.new({fit: stack.StackFit.expand, children: JSArrayOfWidget().of([new image.Image.asset("people/ali_landscape.png", {package: "flutter_gallery_assets", fit: box_fit.BoxFit.cover, height: this[_appBarHeight]}), C21 || CT.C21])})})}), new sliver.SliverList.new({delegate: new sliver.SliverChildListDelegate.new(JSArrayOfWidget().of([new (AnnotatedRegionOfSystemUiOverlayStyle()).new({value: system_chrome.SystemUiOverlayStyle.dark, child: new contacts_demo._ContactCategory.new({icon: icons.Icons.call, children: JSArrayOfWidget().of([new contacts_demo._ContactItem.new({icon: icons.Icons.message, tooltip: "Send message", onPressed: dart.fn(() => {
                          contacts_demo.ContactsDemoState._scaffoldKey.currentState.showSnackBar(C32 || CT.C32);
                        }, VoidToNull()), lines: C34 || CT.C34}), new contacts_demo._ContactItem.new({icon: icons.Icons.message, tooltip: "Send message", onPressed: dart.fn(() => {
                          contacts_demo.ContactsDemoState._scaffoldKey.currentState.showSnackBar(C35 || CT.C35);
                        }, VoidToNull()), lines: C37 || CT.C37}), new contacts_demo._ContactItem.new({icon: icons.Icons.message, tooltip: "Send message", onPressed: dart.fn(() => {
                          contacts_demo.ContactsDemoState._scaffoldKey.currentState.showSnackBar(C38 || CT.C38);
                        }, VoidToNull()), lines: C40 || CT.C40})])})}), new contacts_demo._ContactCategory.new({icon: icons.Icons.contact_mail, children: JSArrayOfWidget().of([new contacts_demo._ContactItem.new({icon: icons.Icons.email, tooltip: "Send personal e-mail", onPressed: dart.fn(() => {
                        contacts_demo.ContactsDemoState._scaffoldKey.currentState.showSnackBar(C41 || CT.C41);
                      }, VoidToNull()), lines: C43 || CT.C43}), new contacts_demo._ContactItem.new({icon: icons.Icons.email, tooltip: "Send work e-mail", onPressed: dart.fn(() => {
                        contacts_demo.ContactsDemoState._scaffoldKey.currentState.showSnackBar(C44 || CT.C44);
                      }, VoidToNull()), lines: C46 || CT.C46})])}), new contacts_demo._ContactCategory.new({icon: icons.Icons.location_on, children: JSArrayOfWidget().of([new contacts_demo._ContactItem.new({icon: icons.Icons.map, tooltip: "Open map", onPressed: dart.fn(() => {
                        contacts_demo.ContactsDemoState._scaffoldKey.currentState.showSnackBar(C47 || CT.C47);
                      }, VoidToNull()), lines: C49 || CT.C49}), new contacts_demo._ContactItem.new({icon: icons.Icons.map, tooltip: "Open map", onPressed: dart.fn(() => {
                        contacts_demo.ContactsDemoState._scaffoldKey.currentState.showSnackBar(C50 || CT.C50);
                      }, VoidToNull()), lines: C52 || CT.C52}), new contacts_demo._ContactItem.new({icon: icons.Icons.map, tooltip: "Open map", onPressed: dart.fn(() => {
                        contacts_demo.ContactsDemoState._scaffoldKey.currentState.showSnackBar(C53 || CT.C53);
                      }, VoidToNull()), lines: C55 || CT.C55})])}), new contacts_demo._ContactCategory.new({icon: icons.Icons.today, children: JSArrayOfWidget().of([new contacts_demo._ContactItem.new({lines: C56 || CT.C56}), new contacts_demo._ContactItem.new({lines: C57 || CT.C57}), new contacts_demo._ContactItem.new({lines: C58 || CT.C58}), new contacts_demo._ContactItem.new({lines: C59 || CT.C59})])})]))})])})})});
  }
};
(contacts_demo.ContactsDemoState.new = function() {
  this[_appBarHeight] = 256.0;
  this[_appBarBehavior] = contacts_demo.AppBarBehavior.pinned;
  contacts_demo.ContactsDemoState.__proto__.new.call(this);
  ;
}).prototype = contacts_demo.ContactsDemoState.prototype;
dart.addTypeTests(contacts_demo.ContactsDemoState);
dart.addTypeCaches(contacts_demo.ContactsDemoState);
dart.setMethodSignature(contacts_demo.ContactsDemoState, () => ({
  __proto__: dart.getMethods(contacts_demo.ContactsDemoState.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(contacts_demo.ContactsDemoState, L0);
dart.setFieldSignature(contacts_demo.ContactsDemoState, () => ({
  __proto__: dart.getFields(contacts_demo.ContactsDemoState.__proto__),
  [_appBarHeight]: dart.finalFieldType(core.double),
  [_appBarBehavior]: dart.fieldType(contacts_demo.AppBarBehavior)
}));
dart.defineLazy(contacts_demo.ContactsDemoState, {
  /*contacts_demo.ContactsDemoState._scaffoldKey*/get _scaffoldKey() {
    return GlobalKeyOfScaffoldState().new();
  }
}, true);
// Exports:
exports.contacts_demo = contacts_demo;

//# sourceMappingURL=contacts_demo.dart.lib.js.map
