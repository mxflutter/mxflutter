'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const ui = dart_sdk.ui;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const editable_text = packages__flutter__src__widgets__actions.src__widgets__editable_text;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const icon = packages__flutter__src__widgets__actions.src__widgets__icon;
const icon_data = packages__flutter__src__widgets__actions.src__widgets__icon_data;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const scroll_view = packages__flutter__src__widgets__actions.src__widgets__scroll_view;
const packages__flutter__src__cupertino__action_sheet = require('packages/flutter/src/cupertino/action_sheet');
const text_field = packages__flutter__src__cupertino__action_sheet.src__cupertino__text_field;
const colors = packages__flutter__src__cupertino__action_sheet.src__cupertino__colors;
const button = packages__flutter__src__cupertino__action_sheet.src__cupertino__button;
const page_scaffold = packages__flutter__src__cupertino__action_sheet.src__cupertino__page_scaffold;
const nav_bar = packages__flutter__src__cupertino__action_sheet.src__cupertino__nav_bar;
const scrollbar = packages__flutter__src__cupertino__action_sheet.src__cupertino__scrollbar;
const packages__flutter__src__gestures__arena = require('packages/flutter/src/gestures/arena');
const text_input = packages__flutter__src__gestures__arena.src__services__text_input;
const recognizer = packages__flutter__src__gestures__arena.src__gestures__recognizer;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const box_decoration = packages__flutter__src__painting___network_image_web.src__painting__box_decoration;
const box_border = packages__flutter__src__painting___network_image_web.src__painting__box_border;
const border_radius = packages__flutter__src__painting___network_image_web.src__painting__border_radius;
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const text_style = packages__flutter__src__painting___network_image_web.src__painting__text_style;
const borders = packages__flutter__src__painting___network_image_web.src__painting__borders;
const cupertino_text_field_demo = Object.create(dart.library);
let VoidTovoid = () => (VoidTovoid = dart.constFn(dart.fnType(dart.void, [])))();
let StringTovoid = () => (StringTovoid = dart.constFn(dart.fnType(dart.void, [core.String])))();
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C1() {
    return C1 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 4,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 4
    });
  },
  get C0() {
    return C0 = dart.const({
      __proto__: basic.Padding.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: null,
      [Padding_padding]: C1 || CT.C1
    });
  },
  get C3() {
    return C3 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4294967295.0
    });
  },
  get C4() {
    return C4 = dart.const({
      __proto__: icon_data.IconData.prototype,
      [IconData_matchTextDirection]: false,
      [IconData_fontPackage]: "cupertino_icons",
      [IconData_fontFamily]: "CupertinoIcons",
      [IconData_codePoint]: 62310
    });
  },
  get C2() {
    return C2 = dart.const({
      __proto__: icon.Icon.prototype,
      [Widget_key]: null,
      [Icon_textDirection]: null,
      [Icon_semanticLabel]: null,
      [Icon_color]: C3 || CT.C3,
      [Icon_size]: 21,
      [Icon_icon]: C4 || CT.C4
    });
  },
  get C5() {
    return C5 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 2,
      [EdgeInsets_right]: 2,
      [EdgeInsets_top]: 2,
      [EdgeInsets_left]: 2
    });
  },
  get C32() {
    return C32 = dart.const({
      __proto__: recognizer.DragStartBehavior.prototype,
      [_name]: "DragStartBehavior.start",
      index: 1
    });
  },
  get C33() {
    return C33 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 20,
      [EdgeInsets_right]: 20,
      [EdgeInsets_top]: 20,
      [EdgeInsets_left]: 20
    });
  },
  get C34() {
    return C34 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 2,
      [Radius_x]: 2
    });
  },
  get C35() {
    return C35 = dart.const({
      __proto__: editable_text.ToolbarOptions.prototype,
      [ToolbarOptions_selectAll]: true,
      [ToolbarOptions_paste]: true,
      [ToolbarOptions_cut]: true,
      [ToolbarOptions_copy]: true
    });
  },
  get C36() {
    return C36 = dart.const({
      __proto__: ui.TextAlign.prototype,
      [_name$]: "TextAlign.start",
      index: 4
    });
  },
  get C37() {
    return C37 = dart.const({
      __proto__: text_input.TextCapitalization.prototype,
      [_name$0]: "TextCapitalization.words",
      index: 0
    });
  },
  get C38() {
    return C38 = dart.const({
      __proto__: text_input.TextInputType.prototype,
      [TextInputType_decimal]: null,
      [TextInputType_signed]: null,
      [TextInputType_index]: 0
    });
  },
  get C39() {
    return C39 = dart.const({
      __proto__: text_field.OverlayVisibilityMode.prototype,
      [_name$1]: "OverlayVisibilityMode.editing",
      index: 1
    });
  },
  get C40() {
    return C40 = dart.const({
      __proto__: text_field.OverlayVisibilityMode.prototype,
      [_name$1]: "OverlayVisibilityMode.always",
      index: 3
    });
  },
  get C42() {
    return C42 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4293256682.0
    });
  },
  get C43() {
    return C43 = dart.const({
      __proto__: icon_data.IconData.prototype,
      [IconData_matchTextDirection]: false,
      [IconData_fontPackage]: "cupertino_icons",
      [IconData_fontFamily]: "CupertinoIcons",
      [IconData_codePoint]: 62590
    });
  },
  get C41() {
    return C41 = dart.const({
      __proto__: icon.Icon.prototype,
      [Widget_key]: null,
      [Icon_textDirection]: null,
      [Icon_semanticLabel]: null,
      [Icon_color]: C42 || CT.C42,
      [Icon_size]: 28,
      [Icon_icon]: C43 || CT.C43
    });
  },
  get C45() {
    return C45 = dart.const({
      __proto__: ui.FontWeight.prototype,
      [FontWeight_index]: 3
    });
  },
  get C47() {
    return C47 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 1626074101
    });
  },
  get C48() {
    return C48 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 1614560323
    });
  },
  get C49() {
    return C49 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 1290529781
    });
  },
  get C50() {
    return C50 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 1279016003
    });
  },
  get C46() {
    return C46 = dart.const({
      __proto__: colors.CupertinoDynamicColor.prototype,
      [Color_value]: 0,
      [CupertinoDynamicColor_darkHighContrastElevatedColor]: C47 || CT.C47,
      [CupertinoDynamicColor_highContrastElevatedColor]: C48 || CT.C48,
      [CupertinoDynamicColor_darkElevatedColor]: C49 || CT.C49,
      [CupertinoDynamicColor_elevatedColor]: C50 || CT.C50,
      [CupertinoDynamicColor_darkHighContrastColor]: C47 || CT.C47,
      [CupertinoDynamicColor_highContrastColor]: C48 || CT.C48,
      [CupertinoDynamicColor_darkColor]: C49 || CT.C49,
      [CupertinoDynamicColor_color]: C50 || CT.C50,
      [CupertinoDynamicColor__debugResolveContext]: null,
      [CupertinoDynamicColor__debugLabel]: "placeholderText",
      [CupertinoDynamicColor__effectiveColor]: C50 || CT.C50
    });
  },
  get C44() {
    return C44 = dart.const({
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
      [TextStyle_height]: null,
      [TextStyle_textBaseline]: null,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: C45 || CT.C45,
      [TextStyle_fontSize]: null,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: null,
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C46 || CT.C46,
      [TextStyle_inherit]: true
    });
  },
  get C51() {
    return C51 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 12,
      [EdgeInsets_right]: 6,
      [EdgeInsets_top]: 12,
      [EdgeInsets_left]: 6
    });
  },
  get C53() {
    return C53 = dart.const({
      __proto__: box_border.BoxShape.prototype,
      [_name$2]: "BoxShape.rectangle",
      index: 0
    });
  },
  get C56() {
    return C56 = dart.const({
      __proto__: borders.BorderStyle.prototype,
      [_name$3]: "BorderStyle.none",
      index: 0
    });
  },
  get C57() {
    return C57 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4278190080.0
    });
  },
  get C55() {
    return C55 = dart.const({
      __proto__: borders.BorderSide.prototype,
      [BorderSide_style]: C56 || CT.C56,
      [BorderSide_width]: 0,
      [BorderSide_color]: C57 || CT.C57
    });
  },
  get C59() {
    return C59 = dart.const({
      __proto__: borders.BorderStyle.prototype,
      [_name$3]: "BorderStyle.solid",
      index: 1
    });
  },
  get C61() {
    return C61 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4285887861.0
    });
  },
  get C62() {
    return C62 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4288256409.0
    });
  },
  get C60() {
    return C60 = dart.const({
      __proto__: colors.CupertinoDynamicColor.prototype,
      [Color_value]: 0,
      [CupertinoDynamicColor_darkHighContrastElevatedColor]: C61 || CT.C61,
      [CupertinoDynamicColor_highContrastElevatedColor]: C62 || CT.C62,
      [CupertinoDynamicColor_darkElevatedColor]: C61 || CT.C61,
      [CupertinoDynamicColor_elevatedColor]: C62 || CT.C62,
      [CupertinoDynamicColor_darkHighContrastColor]: C61 || CT.C61,
      [CupertinoDynamicColor_highContrastColor]: C62 || CT.C62,
      [CupertinoDynamicColor_darkColor]: C61 || CT.C61,
      [CupertinoDynamicColor_color]: C62 || CT.C62,
      [CupertinoDynamicColor__debugResolveContext]: null,
      [CupertinoDynamicColor__debugLabel]: "inactiveGray",
      [CupertinoDynamicColor__effectiveColor]: C62 || CT.C62
    });
  },
  get C58() {
    return C58 = dart.const({
      __proto__: borders.BorderSide.prototype,
      [BorderSide_style]: C59 || CT.C59,
      [BorderSide_width]: 0,
      [BorderSide_color]: C60 || CT.C60
    });
  },
  get C54() {
    return C54 = dart.const({
      __proto__: box_border.Border.prototype,
      [Border_left]: C55 || CT.C55,
      [Border_bottom]: C58 || CT.C58,
      [Border_right]: C55 || CT.C55,
      [Border_top]: C55 || CT.C55
    });
  },
  get C52() {
    return C52 = dart.const({
      __proto__: box_decoration.BoxDecoration.prototype,
      [BoxDecoration_shape]: C53 || CT.C53,
      [BoxDecoration_backgroundBlendMode]: null,
      [BoxDecoration_gradient]: null,
      [BoxDecoration_boxShadow]: null,
      [BoxDecoration_borderRadius]: null,
      [BoxDecoration_border]: C54 || CT.C54,
      [BoxDecoration_image]: null,
      [BoxDecoration_color]: null
    });
  },
  get C31() {
    return C31 = dart.const({
      __proto__: text_field.CupertinoTextField.prototype,
      [Widget_key]: null,
      [CupertinoTextField_onTap]: null,
      [CupertinoTextField_scrollPhysics]: null,
      [CupertinoTextField_scrollController]: null,
      [CupertinoTextField_dragStartBehavior]: C32 || CT.C32,
      [CupertinoTextField_enableInteractiveSelection]: true,
      [CupertinoTextField_scrollPadding]: C33 || CT.C33,
      [CupertinoTextField_keyboardAppearance]: null,
      [CupertinoTextField_cursorColor]: null,
      [CupertinoTextField_cursorRadius]: C34 || CT.C34,
      [CupertinoTextField_cursorWidth]: 2,
      [CupertinoTextField_enabled]: null,
      [CupertinoTextField_inputFormatters]: null,
      [CupertinoTextField_onSubmitted]: null,
      [CupertinoTextField_onEditingComplete]: null,
      [CupertinoTextField_onChanged]: null,
      [CupertinoTextField_maxLengthEnforced]: true,
      [CupertinoTextField_maxLength]: null,
      [CupertinoTextField_expands]: false,
      [CupertinoTextField_minLines]: null,
      [CupertinoTextField_maxLines]: 1,
      [CupertinoTextField_enableSuggestions]: true,
      [CupertinoTextField_autocorrect]: false,
      [CupertinoTextField_obscureText]: false,
      [CupertinoTextField_autofocus]: false,
      [CupertinoTextField_showCursor]: null,
      [CupertinoTextField_readOnly]: false,
      [CupertinoTextField_textAlignVertical]: null,
      [CupertinoTextField_toolbarOptions]: C35 || CT.C35,
      [CupertinoTextField_textAlign]: C36 || CT.C36,
      [CupertinoTextField_strutStyle]: null,
      [CupertinoTextField_style]: null,
      [CupertinoTextField_textCapitalization]: C37 || CT.C37,
      [CupertinoTextField_textInputAction]: null,
      [CupertinoTextField_keyboardType]: C38 || CT.C38,
      [CupertinoTextField_clearButtonMode]: C39 || CT.C39,
      [CupertinoTextField_suffixMode]: C40 || CT.C40,
      [CupertinoTextField_suffix]: null,
      [CupertinoTextField_prefixMode]: C40 || CT.C40,
      [CupertinoTextField_prefix]: C41 || CT.C41,
      [CupertinoTextField_placeholderStyle]: C44 || CT.C44,
      [CupertinoTextField_placeholder]: "Name",
      [CupertinoTextField_padding]: C51 || CT.C51,
      [CupertinoTextField_decoration]: C52 || CT.C52,
      [CupertinoTextField_focusNode]: null,
      [CupertinoTextField_controller]: null
    });
  },
  get C64() {
    return C64 = dart.const({
      __proto__: text_input.TextCapitalization.prototype,
      [_name$0]: "TextCapitalization.none",
      index: 3
    });
  },
  get C65() {
    return C65 = dart.const({
      __proto__: text_input.TextInputType.prototype,
      [TextInputType_decimal]: null,
      [TextInputType_signed]: null,
      [TextInputType_index]: 5
    });
  },
  get C67() {
    return C67 = dart.const({
      __proto__: icon_data.IconData.prototype,
      [IconData_matchTextDirection]: false,
      [IconData_fontPackage]: "cupertino_icons",
      [IconData_fontFamily]: "CupertinoIcons",
      [IconData_codePoint]: 62499
    });
  },
  get C66() {
    return C66 = dart.const({
      __proto__: icon.Icon.prototype,
      [Widget_key]: null,
      [Icon_textDirection]: null,
      [Icon_semanticLabel]: null,
      [Icon_color]: C42 || CT.C42,
      [Icon_size]: 28,
      [Icon_icon]: C67 || CT.C67
    });
  },
  get C63() {
    return C63 = dart.const({
      __proto__: text_field.CupertinoTextField.prototype,
      [Widget_key]: null,
      [CupertinoTextField_onTap]: null,
      [CupertinoTextField_scrollPhysics]: null,
      [CupertinoTextField_scrollController]: null,
      [CupertinoTextField_dragStartBehavior]: C32 || CT.C32,
      [CupertinoTextField_enableInteractiveSelection]: true,
      [CupertinoTextField_scrollPadding]: C33 || CT.C33,
      [CupertinoTextField_keyboardAppearance]: null,
      [CupertinoTextField_cursorColor]: null,
      [CupertinoTextField_cursorRadius]: C34 || CT.C34,
      [CupertinoTextField_cursorWidth]: 2,
      [CupertinoTextField_enabled]: null,
      [CupertinoTextField_inputFormatters]: null,
      [CupertinoTextField_onSubmitted]: null,
      [CupertinoTextField_onEditingComplete]: null,
      [CupertinoTextField_onChanged]: null,
      [CupertinoTextField_maxLengthEnforced]: true,
      [CupertinoTextField_maxLength]: null,
      [CupertinoTextField_expands]: false,
      [CupertinoTextField_minLines]: null,
      [CupertinoTextField_maxLines]: 1,
      [CupertinoTextField_enableSuggestions]: true,
      [CupertinoTextField_autocorrect]: false,
      [CupertinoTextField_obscureText]: false,
      [CupertinoTextField_autofocus]: false,
      [CupertinoTextField_showCursor]: null,
      [CupertinoTextField_readOnly]: false,
      [CupertinoTextField_textAlignVertical]: null,
      [CupertinoTextField_toolbarOptions]: C35 || CT.C35,
      [CupertinoTextField_textAlign]: C36 || CT.C36,
      [CupertinoTextField_strutStyle]: null,
      [CupertinoTextField_style]: null,
      [CupertinoTextField_textCapitalization]: C64 || CT.C64,
      [CupertinoTextField_textInputAction]: null,
      [CupertinoTextField_keyboardType]: C65 || CT.C65,
      [CupertinoTextField_clearButtonMode]: C39 || CT.C39,
      [CupertinoTextField_suffixMode]: C40 || CT.C40,
      [CupertinoTextField_suffix]: null,
      [CupertinoTextField_prefixMode]: C40 || CT.C40,
      [CupertinoTextField_prefix]: C66 || CT.C66,
      [CupertinoTextField_placeholderStyle]: C44 || CT.C44,
      [CupertinoTextField_placeholder]: "Email",
      [CupertinoTextField_padding]: C51 || CT.C51,
      [CupertinoTextField_decoration]: C52 || CT.C52,
      [CupertinoTextField_focusNode]: null,
      [CupertinoTextField_controller]: null
    });
  },
  get C69() {
    return C69 = dart.const({
      __proto__: icon_data.IconData.prototype,
      [IconData_matchTextDirection]: false,
      [IconData_fontPackage]: "cupertino_icons",
      [IconData_fontFamily]: "CupertinoIcons",
      [IconData_codePoint]: 62550
    });
  },
  get C68() {
    return C68 = dart.const({
      __proto__: icon.Icon.prototype,
      [Widget_key]: null,
      [Icon_textDirection]: null,
      [Icon_semanticLabel]: null,
      [Icon_color]: C42 || CT.C42,
      [Icon_size]: 28,
      [Icon_icon]: C69 || CT.C69
    });
  },
  get C80() {
    return C80 = dart.const({
      __proto__: editable_text.ToolbarOptions.prototype,
      [ToolbarOptions_selectAll]: true,
      [ToolbarOptions_paste]: true,
      [ToolbarOptions_cut]: false,
      [ToolbarOptions_copy]: false
    });
  },
  get C81() {
    return C81 = dart.const({
      __proto__: text_input.TextInputType.prototype,
      [TextInputType_decimal]: false,
      [TextInputType_signed]: false,
      [TextInputType_index]: 2
    });
  },
  get C83() {
    return C83 = dart.const({
      __proto__: icon_data.IconData.prototype,
      [IconData_matchTextDirection]: false,
      [IconData_fontPackage]: "cupertino_icons",
      [IconData_fontFamily]: "CupertinoIcons",
      [IconData_codePoint]: 62665
    });
  },
  get C82() {
    return C82 = dart.const({
      __proto__: icon.Icon.prototype,
      [Widget_key]: null,
      [Icon_textDirection]: null,
      [Icon_semanticLabel]: null,
      [Icon_color]: C42 || CT.C42,
      [Icon_size]: 28,
      [Icon_icon]: C83 || CT.C83
    });
  },
  get C79() {
    return C79 = dart.const({
      __proto__: text_field.CupertinoTextField.prototype,
      [Widget_key]: null,
      [CupertinoTextField_onTap]: null,
      [CupertinoTextField_scrollPhysics]: null,
      [CupertinoTextField_scrollController]: null,
      [CupertinoTextField_dragStartBehavior]: C32 || CT.C32,
      [CupertinoTextField_enableInteractiveSelection]: true,
      [CupertinoTextField_scrollPadding]: C33 || CT.C33,
      [CupertinoTextField_keyboardAppearance]: null,
      [CupertinoTextField_cursorColor]: null,
      [CupertinoTextField_cursorRadius]: C34 || CT.C34,
      [CupertinoTextField_cursorWidth]: 2,
      [CupertinoTextField_enabled]: null,
      [CupertinoTextField_inputFormatters]: null,
      [CupertinoTextField_onSubmitted]: null,
      [CupertinoTextField_onEditingComplete]: null,
      [CupertinoTextField_onChanged]: null,
      [CupertinoTextField_maxLengthEnforced]: true,
      [CupertinoTextField_maxLength]: null,
      [CupertinoTextField_expands]: false,
      [CupertinoTextField_minLines]: null,
      [CupertinoTextField_maxLines]: 1,
      [CupertinoTextField_enableSuggestions]: true,
      [CupertinoTextField_autocorrect]: false,
      [CupertinoTextField_obscureText]: true,
      [CupertinoTextField_autofocus]: false,
      [CupertinoTextField_showCursor]: null,
      [CupertinoTextField_readOnly]: false,
      [CupertinoTextField_textAlignVertical]: null,
      [CupertinoTextField_toolbarOptions]: C80 || CT.C80,
      [CupertinoTextField_textAlign]: C36 || CT.C36,
      [CupertinoTextField_strutStyle]: null,
      [CupertinoTextField_style]: null,
      [CupertinoTextField_textCapitalization]: C64 || CT.C64,
      [CupertinoTextField_textInputAction]: null,
      [CupertinoTextField_keyboardType]: C81 || CT.C81,
      [CupertinoTextField_clearButtonMode]: C39 || CT.C39,
      [CupertinoTextField_suffixMode]: C40 || CT.C40,
      [CupertinoTextField_suffix]: null,
      [CupertinoTextField_prefixMode]: C40 || CT.C40,
      [CupertinoTextField_prefix]: C82 || CT.C82,
      [CupertinoTextField_placeholderStyle]: C44 || CT.C44,
      [CupertinoTextField_placeholder]: "Create a PIN",
      [CupertinoTextField_padding]: C51 || CT.C51,
      [CupertinoTextField_decoration]: C52 || CT.C52,
      [CupertinoTextField_focusNode]: null,
      [CupertinoTextField_controller]: null
    });
  },
  get C85() {
    return C85 = dart.const({
      __proto__: icon_data.IconData.prototype,
      [IconData_matchTextDirection]: false,
      [IconData_fontPackage]: "cupertino_icons",
      [IconData_fontFamily]: "CupertinoIcons",
      [IconData_codePoint]: 62607
    });
  },
  get C84() {
    return C84 = dart.const({
      __proto__: icon.Icon.prototype,
      [Widget_key]: null,
      [Icon_textDirection]: null,
      [Icon_semanticLabel]: null,
      [Icon_color]: C42 || CT.C42,
      [Icon_size]: 28,
      [Icon_icon]: C85 || CT.C85
    });
  },
  get C93() {
    return C93 = dart.const({
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
      [TextStyle_height]: null,
      [TextStyle_textBaseline]: null,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: null,
      [TextStyle_fontSize]: 17,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: ".SF UI Text",
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C57 || CT.C57,
      [TextStyle_inherit]: false
    });
  },
  get C95() {
    return C95 = dart.const({
      __proto__: nav_bar._HeroTag.prototype,
      [_HeroTag_navigator]: null
    });
  },
  get C98() {
    return C98 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 1291845632
    });
  },
  get C97() {
    return C97 = dart.const({
      __proto__: borders.BorderSide.prototype,
      [BorderSide_style]: C59 || CT.C59,
      [BorderSide_width]: 0,
      [BorderSide_color]: C98 || CT.C98
    });
  },
  get C96() {
    return C96 = dart.const({
      __proto__: box_border.Border.prototype,
      [Border_left]: C55 || CT.C55,
      [Border_bottom]: C97 || CT.C97,
      [Border_right]: C55 || CT.C55,
      [Border_top]: C55 || CT.C55
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
      [Text_data]: "Text Fields"
    });
  },
  get C94() {
    return C94 = dart.const({
      __proto__: nav_bar.CupertinoNavigationBar.prototype,
      [Widget_key]: null,
      [CupertinoNavigationBar_heroTag]: C95 || CT.C95,
      [CupertinoNavigationBar_transitionBetweenRoutes]: true,
      [CupertinoNavigationBar_actionsForegroundColor]: null,
      [CupertinoNavigationBar_border]: C96 || CT.C96,
      [CupertinoNavigationBar_padding]: null,
      [CupertinoNavigationBar_backgroundColor]: null,
      [CupertinoNavigationBar_trailing]: null,
      [CupertinoNavigationBar_middle]: C99 || CT.C99,
      [CupertinoNavigationBar_previousPageTitle]: "Cupertino",
      [CupertinoNavigationBar_automaticallyImplyMiddle]: true,
      [CupertinoNavigationBar_automaticallyImplyLeading]: true,
      [CupertinoNavigationBar_leading]: null
    });
  },
  get C100() {
    return C100 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 32,
      [EdgeInsets_right]: 16,
      [EdgeInsets_top]: 32,
      [EdgeInsets_left]: 16
    });
  }
});
cupertino_text_field_demo.CupertinoTextFieldDemo = class CupertinoTextFieldDemo extends framework.StatefulWidget {
  createState() {
    return new cupertino_text_field_demo._CupertinoTextFieldDemoState.new();
  }
};
(cupertino_text_field_demo.CupertinoTextFieldDemo.new = function(opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  cupertino_text_field_demo.CupertinoTextFieldDemo.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = cupertino_text_field_demo.CupertinoTextFieldDemo.prototype;
dart.addTypeTests(cupertino_text_field_demo.CupertinoTextFieldDemo);
dart.setMethodSignature(cupertino_text_field_demo.CupertinoTextFieldDemo, () => ({
  __proto__: dart.getMethods(cupertino_text_field_demo.CupertinoTextFieldDemo.__proto__),
  createState: dart.fnType(cupertino_text_field_demo._CupertinoTextFieldDemoState, [])
}));
dart.setLibraryUri(cupertino_text_field_demo.CupertinoTextFieldDemo, "package:flutter_gallery/demo/cupertino/cupertino_text_field_demo.dart");
dart.defineLazy(cupertino_text_field_demo.CupertinoTextFieldDemo, {
  /*cupertino_text_field_demo.CupertinoTextFieldDemo.routeName*/get routeName() {
    return "/cupertino/text_fields";
  }
});
const _chatTextController = dart.privateName(cupertino_text_field_demo, "_chatTextController");
const _locationTextController = dart.privateName(cupertino_text_field_demo, "_locationTextController");
const Widget_key = dart.privateName(framework, "Widget.key");
const SingleChildRenderObjectWidget_child = dart.privateName(framework, "SingleChildRenderObjectWidget.child");
const EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
const EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
const EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
const EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
let C1;
const Padding_padding = dart.privateName(basic, "Padding.padding");
let C0;
const Icon_textDirection = dart.privateName(icon, "Icon.textDirection");
const Icon_semanticLabel = dart.privateName(icon, "Icon.semanticLabel");
const Color_value = dart.privateName(ui, "Color.value");
let C3;
const Icon_color = dart.privateName(icon, "Icon.color");
const Icon_size = dart.privateName(icon, "Icon.size");
const IconData_matchTextDirection = dart.privateName(icon_data, "IconData.matchTextDirection");
const IconData_fontPackage = dart.privateName(icon_data, "IconData.fontPackage");
const IconData_fontFamily = dart.privateName(icon_data, "IconData.fontFamily");
const IconData_codePoint = dart.privateName(icon_data, "IconData.codePoint");
let C4;
const Icon_icon = dart.privateName(icon, "Icon.icon");
let C2;
let C5;
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
const _buildChatTextField = dart.privateName(cupertino_text_field_demo, "_buildChatTextField");
const CupertinoTextField_onTap = dart.privateName(text_field, "CupertinoTextField.onTap");
const CupertinoTextField_scrollPhysics = dart.privateName(text_field, "CupertinoTextField.scrollPhysics");
const CupertinoTextField_scrollController = dart.privateName(text_field, "CupertinoTextField.scrollController");
const _name = dart.privateName(recognizer, "_name");
let C32;
const CupertinoTextField_dragStartBehavior = dart.privateName(text_field, "CupertinoTextField.dragStartBehavior");
const CupertinoTextField_enableInteractiveSelection = dart.privateName(text_field, "CupertinoTextField.enableInteractiveSelection");
let C33;
const CupertinoTextField_scrollPadding = dart.privateName(text_field, "CupertinoTextField.scrollPadding");
const CupertinoTextField_keyboardAppearance = dart.privateName(text_field, "CupertinoTextField.keyboardAppearance");
const CupertinoTextField_cursorColor = dart.privateName(text_field, "CupertinoTextField.cursorColor");
const Radius_y = dart.privateName(ui, "Radius.y");
const Radius_x = dart.privateName(ui, "Radius.x");
let C34;
const CupertinoTextField_cursorRadius = dart.privateName(text_field, "CupertinoTextField.cursorRadius");
const CupertinoTextField_cursorWidth = dart.privateName(text_field, "CupertinoTextField.cursorWidth");
const CupertinoTextField_enabled = dart.privateName(text_field, "CupertinoTextField.enabled");
const CupertinoTextField_inputFormatters = dart.privateName(text_field, "CupertinoTextField.inputFormatters");
const CupertinoTextField_onSubmitted = dart.privateName(text_field, "CupertinoTextField.onSubmitted");
const CupertinoTextField_onEditingComplete = dart.privateName(text_field, "CupertinoTextField.onEditingComplete");
const CupertinoTextField_onChanged = dart.privateName(text_field, "CupertinoTextField.onChanged");
const CupertinoTextField_maxLengthEnforced = dart.privateName(text_field, "CupertinoTextField.maxLengthEnforced");
const CupertinoTextField_maxLength = dart.privateName(text_field, "CupertinoTextField.maxLength");
const CupertinoTextField_expands = dart.privateName(text_field, "CupertinoTextField.expands");
const CupertinoTextField_minLines = dart.privateName(text_field, "CupertinoTextField.minLines");
const CupertinoTextField_maxLines = dart.privateName(text_field, "CupertinoTextField.maxLines");
const CupertinoTextField_enableSuggestions = dart.privateName(text_field, "CupertinoTextField.enableSuggestions");
const CupertinoTextField_autocorrect = dart.privateName(text_field, "CupertinoTextField.autocorrect");
const CupertinoTextField_obscureText = dart.privateName(text_field, "CupertinoTextField.obscureText");
const CupertinoTextField_autofocus = dart.privateName(text_field, "CupertinoTextField.autofocus");
const CupertinoTextField_showCursor = dart.privateName(text_field, "CupertinoTextField.showCursor");
const CupertinoTextField_readOnly = dart.privateName(text_field, "CupertinoTextField.readOnly");
const CupertinoTextField_textAlignVertical = dart.privateName(text_field, "CupertinoTextField.textAlignVertical");
const ToolbarOptions_selectAll = dart.privateName(editable_text, "ToolbarOptions.selectAll");
const ToolbarOptions_paste = dart.privateName(editable_text, "ToolbarOptions.paste");
const ToolbarOptions_cut = dart.privateName(editable_text, "ToolbarOptions.cut");
const ToolbarOptions_copy = dart.privateName(editable_text, "ToolbarOptions.copy");
let C35;
const CupertinoTextField_toolbarOptions = dart.privateName(text_field, "CupertinoTextField.toolbarOptions");
const _name$ = dart.privateName(ui, "_name");
let C36;
const CupertinoTextField_textAlign = dart.privateName(text_field, "CupertinoTextField.textAlign");
const CupertinoTextField_strutStyle = dart.privateName(text_field, "CupertinoTextField.strutStyle");
const CupertinoTextField_style = dart.privateName(text_field, "CupertinoTextField.style");
const _name$0 = dart.privateName(text_input, "_name");
let C37;
const CupertinoTextField_textCapitalization = dart.privateName(text_field, "CupertinoTextField.textCapitalization");
const CupertinoTextField_textInputAction = dart.privateName(text_field, "CupertinoTextField.textInputAction");
const TextInputType_decimal = dart.privateName(text_input, "TextInputType.decimal");
const TextInputType_signed = dart.privateName(text_input, "TextInputType.signed");
const TextInputType_index = dart.privateName(text_input, "TextInputType.index");
let C38;
const CupertinoTextField_keyboardType = dart.privateName(text_field, "CupertinoTextField.keyboardType");
const _name$1 = dart.privateName(text_field, "_name");
let C39;
const CupertinoTextField_clearButtonMode = dart.privateName(text_field, "CupertinoTextField.clearButtonMode");
let C40;
const CupertinoTextField_suffixMode = dart.privateName(text_field, "CupertinoTextField.suffixMode");
const CupertinoTextField_suffix = dart.privateName(text_field, "CupertinoTextField.suffix");
const CupertinoTextField_prefixMode = dart.privateName(text_field, "CupertinoTextField.prefixMode");
let C42;
let C43;
let C41;
const CupertinoTextField_prefix = dart.privateName(text_field, "CupertinoTextField.prefix");
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
let C45;
const TextStyle_fontWeight = dart.privateName(text_style, "TextStyle.fontWeight");
const TextStyle_fontSize = dart.privateName(text_style, "TextStyle.fontSize");
const TextStyle__package = dart.privateName(text_style, "TextStyle._package");
const TextStyle__fontFamilyFallback = dart.privateName(text_style, "TextStyle._fontFamilyFallback");
const TextStyle_fontFamily = dart.privateName(text_style, "TextStyle.fontFamily");
const TextStyle_backgroundColor = dart.privateName(text_style, "TextStyle.backgroundColor");
let C47;
const CupertinoDynamicColor_darkHighContrastElevatedColor = dart.privateName(colors, "CupertinoDynamicColor.darkHighContrastElevatedColor");
let C48;
const CupertinoDynamicColor_highContrastElevatedColor = dart.privateName(colors, "CupertinoDynamicColor.highContrastElevatedColor");
let C49;
const CupertinoDynamicColor_darkElevatedColor = dart.privateName(colors, "CupertinoDynamicColor.darkElevatedColor");
let C50;
const CupertinoDynamicColor_elevatedColor = dart.privateName(colors, "CupertinoDynamicColor.elevatedColor");
const CupertinoDynamicColor_darkHighContrastColor = dart.privateName(colors, "CupertinoDynamicColor.darkHighContrastColor");
const CupertinoDynamicColor_highContrastColor = dart.privateName(colors, "CupertinoDynamicColor.highContrastColor");
const CupertinoDynamicColor_darkColor = dart.privateName(colors, "CupertinoDynamicColor.darkColor");
const CupertinoDynamicColor_color = dart.privateName(colors, "CupertinoDynamicColor.color");
const CupertinoDynamicColor__debugResolveContext = dart.privateName(colors, "CupertinoDynamicColor._debugResolveContext");
const CupertinoDynamicColor__debugLabel = dart.privateName(colors, "CupertinoDynamicColor._debugLabel");
const CupertinoDynamicColor__effectiveColor = dart.privateName(colors, "CupertinoDynamicColor._effectiveColor");
let C46;
const TextStyle_color = dart.privateName(text_style, "TextStyle.color");
const TextStyle_inherit = dart.privateName(text_style, "TextStyle.inherit");
let C44;
const CupertinoTextField_placeholderStyle = dart.privateName(text_field, "CupertinoTextField.placeholderStyle");
const CupertinoTextField_placeholder = dart.privateName(text_field, "CupertinoTextField.placeholder");
let C51;
const CupertinoTextField_padding = dart.privateName(text_field, "CupertinoTextField.padding");
const _name$2 = dart.privateName(box_border, "_name");
let C53;
const BoxDecoration_shape = dart.privateName(box_decoration, "BoxDecoration.shape");
const BoxDecoration_backgroundBlendMode = dart.privateName(box_decoration, "BoxDecoration.backgroundBlendMode");
const BoxDecoration_gradient = dart.privateName(box_decoration, "BoxDecoration.gradient");
const BoxDecoration_boxShadow = dart.privateName(box_decoration, "BoxDecoration.boxShadow");
const BoxDecoration_borderRadius = dart.privateName(box_decoration, "BoxDecoration.borderRadius");
const _name$3 = dart.privateName(borders, "_name");
let C56;
const BorderSide_style = dart.privateName(borders, "BorderSide.style");
const BorderSide_width = dart.privateName(borders, "BorderSide.width");
let C57;
const BorderSide_color = dart.privateName(borders, "BorderSide.color");
let C55;
const Border_left = dart.privateName(box_border, "Border.left");
let C59;
let C61;
let C62;
let C60;
let C58;
const Border_bottom = dart.privateName(box_border, "Border.bottom");
const Border_right = dart.privateName(box_border, "Border.right");
const Border_top = dart.privateName(box_border, "Border.top");
let C54;
const BoxDecoration_border = dart.privateName(box_decoration, "BoxDecoration.border");
const BoxDecoration_image = dart.privateName(box_decoration, "BoxDecoration.image");
const BoxDecoration_color = dart.privateName(box_decoration, "BoxDecoration.color");
let C52;
const CupertinoTextField_decoration = dart.privateName(text_field, "CupertinoTextField.decoration");
const CupertinoTextField_focusNode = dart.privateName(text_field, "CupertinoTextField.focusNode");
const CupertinoTextField_controller = dart.privateName(text_field, "CupertinoTextField.controller");
let C31;
const _buildNameField = dart.privateName(cupertino_text_field_demo, "_buildNameField");
let C64;
let C65;
let C67;
let C66;
let C63;
const _buildEmailField = dart.privateName(cupertino_text_field_demo, "_buildEmailField");
let C69;
let C68;
const _buildLocationField = dart.privateName(cupertino_text_field_demo, "_buildLocationField");
let C80;
let C81;
let C83;
let C82;
let C79;
const _buildPinField = dart.privateName(cupertino_text_field_demo, "_buildPinField");
let C85;
let C84;
const _buildTagsField = dart.privateName(cupertino_text_field_demo, "_buildTagsField");
let C93;
const _HeroTag_navigator = dart.privateName(nav_bar, "_HeroTag.navigator");
let C95;
const CupertinoNavigationBar_heroTag = dart.privateName(nav_bar, "CupertinoNavigationBar.heroTag");
const CupertinoNavigationBar_transitionBetweenRoutes = dart.privateName(nav_bar, "CupertinoNavigationBar.transitionBetweenRoutes");
const CupertinoNavigationBar_actionsForegroundColor = dart.privateName(nav_bar, "CupertinoNavigationBar.actionsForegroundColor");
let C98;
let C97;
let C96;
const CupertinoNavigationBar_border = dart.privateName(nav_bar, "CupertinoNavigationBar.border");
const CupertinoNavigationBar_padding = dart.privateName(nav_bar, "CupertinoNavigationBar.padding");
const CupertinoNavigationBar_backgroundColor = dart.privateName(nav_bar, "CupertinoNavigationBar.backgroundColor");
const CupertinoNavigationBar_trailing = dart.privateName(nav_bar, "CupertinoNavigationBar.trailing");
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
let C99;
const CupertinoNavigationBar_middle = dart.privateName(nav_bar, "CupertinoNavigationBar.middle");
const CupertinoNavigationBar_previousPageTitle = dart.privateName(nav_bar, "CupertinoNavigationBar.previousPageTitle");
const CupertinoNavigationBar_automaticallyImplyMiddle = dart.privateName(nav_bar, "CupertinoNavigationBar.automaticallyImplyMiddle");
const CupertinoNavigationBar_automaticallyImplyLeading = dart.privateName(nav_bar, "CupertinoNavigationBar.automaticallyImplyLeading");
const CupertinoNavigationBar_leading = dart.privateName(nav_bar, "CupertinoNavigationBar.leading");
let C94;
let C100;
cupertino_text_field_demo._CupertinoTextFieldDemoState = class _CupertinoTextFieldDemoState extends framework.State$(cupertino_text_field_demo.CupertinoTextFieldDemo) {
  initState() {
    super.initState();
    this[_chatTextController] = new editable_text.TextEditingController.new();
    this[_locationTextController] = new editable_text.TextEditingController.new({text: "Montreal, Canada"});
  }
  [_buildChatTextField]() {
    return new text_field.CupertinoTextField.new({controller: this[_chatTextController], textCapitalization: text_input.TextCapitalization.sentences, placeholder: "Text Message", decoration: new box_decoration.BoxDecoration.new({border: box_border.Border.all({width: 0.0, color: colors.CupertinoColors.inactiveGray}), borderRadius: new border_radius.BorderRadius.circular(15.0)}), maxLines: null, keyboardType: text_input.TextInputType.multiline, prefix: C0 || CT.C0, suffix: new basic.Padding.new({padding: C1 || CT.C1, child: new button.CupertinoButton.new({color: colors.CupertinoColors.activeGreen, minSize: 0.0, child: C2 || CT.C2, padding: C5 || CT.C5, borderRadius: new border_radius.BorderRadius.circular(15.0), onPressed: dart.fn(() => this.setState(dart.fn(() => this[_chatTextController].clear(), VoidTovoid())), VoidTovoid()), $creationLocationd_0dea112b090073317d4: C6 || CT.C6}), $creationLocationd_0dea112b090073317d4: C14 || CT.C14}), autofocus: true, suffixMode: text_field.OverlayVisibilityMode.editing, onSubmitted: dart.fn(text => this.setState(dart.fn(() => this[_chatTextController].clear(), VoidTovoid())), StringTovoid()), $creationLocationd_0dea112b090073317d4: C18 || CT.C18});
  }
  [_buildNameField]() {
    return C31 || CT.C31;
  }
  [_buildEmailField]() {
    return C63 || CT.C63;
  }
  [_buildLocationField]() {
    return new text_field.CupertinoTextField.new({controller: this[_locationTextController], prefix: C68 || CT.C68, padding: C51 || CT.C51, clearButtonMode: text_field.OverlayVisibilityMode.editing, textCapitalization: text_input.TextCapitalization.words, decoration: C52 || CT.C52, placeholder: "Location", $creationLocationd_0dea112b090073317d4: C70 || CT.C70});
  }
  [_buildPinField]() {
    return C79 || CT.C79;
  }
  [_buildTagsField]() {
    return new text_field.CupertinoTextField.new({controller: new editable_text.TextEditingController.new({text: "colleague, reading club"}), prefix: C84 || CT.C84, enabled: false, padding: C51 || CT.C51, decoration: C52 || CT.C52, $creationLocationd_0dea112b090073317d4: C86 || CT.C86});
  }
  build(context) {
    return new text.DefaultTextStyle.new({style: C93 || CT.C93, child: new page_scaffold.CupertinoPageScaffold.new({navigationBar: C94 || CT.C94, child: new scrollbar.CupertinoScrollbar.new({child: new scroll_view.ListView.new({children: JSArrayOfWidget().of([new basic.Padding.new({padding: C100 || CT.C100, child: new basic.Column.new({children: JSArrayOfWidget().of([this[_buildNameField](), this[_buildEmailField](), this[_buildLocationField](), this[_buildPinField](), this[_buildTagsField]()]), $creationLocationd_0dea112b090073317d4: C101 || CT.C101}), $creationLocationd_0dea112b090073317d4: C104 || CT.C104}), new basic.Padding.new({padding: C100 || CT.C100, child: this[_buildChatTextField](), $creationLocationd_0dea112b090073317d4: C108 || CT.C108})]), $creationLocationd_0dea112b090073317d4: C112 || CT.C112}), $creationLocationd_0dea112b090073317d4: C115 || CT.C115}), $creationLocationd_0dea112b090073317d4: C118 || CT.C118}), $creationLocationd_0dea112b090073317d4: C122 || CT.C122});
  }
};
(cupertino_text_field_demo._CupertinoTextFieldDemoState.new = function() {
  this[_chatTextController] = null;
  this[_locationTextController] = null;
  cupertino_text_field_demo._CupertinoTextFieldDemoState.__proto__.new.call(this);
  ;
}).prototype = cupertino_text_field_demo._CupertinoTextFieldDemoState.prototype;
dart.addTypeTests(cupertino_text_field_demo._CupertinoTextFieldDemoState);
dart.setMethodSignature(cupertino_text_field_demo._CupertinoTextFieldDemoState, () => ({
  __proto__: dart.getMethods(cupertino_text_field_demo._CupertinoTextFieldDemoState.__proto__),
  [_buildChatTextField]: dart.fnType(framework.Widget, []),
  [_buildNameField]: dart.fnType(framework.Widget, []),
  [_buildEmailField]: dart.fnType(framework.Widget, []),
  [_buildLocationField]: dart.fnType(framework.Widget, []),
  [_buildPinField]: dart.fnType(framework.Widget, []),
  [_buildTagsField]: dart.fnType(framework.Widget, []),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(cupertino_text_field_demo._CupertinoTextFieldDemoState, "package:flutter_gallery/demo/cupertino/cupertino_text_field_demo.dart");
dart.setFieldSignature(cupertino_text_field_demo._CupertinoTextFieldDemoState, () => ({
  __proto__: dart.getFields(cupertino_text_field_demo._CupertinoTextFieldDemoState.__proto__),
  [_chatTextController]: dart.fieldType(editable_text.TextEditingController),
  [_locationTextController]: dart.fieldType(editable_text.TextEditingController)
}));
dart.trackLibraries("packages/flutter_gallery/demo/cupertino/cupertino_text_field_demo", {
  "package:flutter_gallery/demo/cupertino/cupertino_text_field_demo.dart": cupertino_text_field_demo
}, {
}, '{"version":3,"sourceRoot":"","sources":["cupertino_text_field_demo.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;AAWI,UAAO;EACT;;;;;;AACF;;;;;;;;IANsB,0DAAS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;AAcV,IAAX;AACuC,IAA7C,4BAAsB;AACmD,IAAzE,gCAA0B,mDAA4B;EACxD;;AAGE,UAAO,oDACO,+CAC2B,sDAC1B,4BACD,8CACK,8BACN,YACgB,qDAEE,wCAAS,mBAE5B,oBACkB,iEAEpB,oDAEC,uCACkB,6CACd,6DAOkB,wCAAS,kBACzB,cAAK,cAAS,cAAK,AAAoB,6LAG3C,kBACuB,uDACrB,QAAQ,QAAQ,cAAS,cAAK,AAAoB;EAEnE;;AAGE;EAeF;;AAGE;EAeF;;AAGE,UAAO,oDACO,+FAO2B,8DACA,6EAI1B;EAEjB;;AAGE;EAgBF;;AAGE,UAAO,oDACO,mDAA4B,6DAM/B;EAMb;QAG0B;AACxB,UAAO,6DAOE,kFAQE,6CACE,wCACa,sBAChB,wDAES,gCACa,sBAChB,yBACA,0BACA,6BACA,wBACA,iJAIN,wDAES;EAOrB;;;EAhLsB;EACA;;;AAgLxB","file":"cupertino_text_field_demo.ddc.js"}');
// Exports:
exports.demo__cupertino__cupertino_text_field_demo = cupertino_text_field_demo;

//# sourceMappingURL=cupertino_text_field_demo.ddc.js.map
