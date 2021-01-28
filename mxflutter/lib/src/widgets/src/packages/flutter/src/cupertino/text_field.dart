//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/text_field.dart';
import 'dart:ui' as ui;
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/icons.dart';
import 'package:flutter/src/cupertino/text_selection.dart';
import 'package:flutter/src/cupertino/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTextFieldSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_overlayVisibilityMode.funName] = _overlayVisibilityMode;
  m[_cupertinoTextField.funName] = _cupertinoTextField;
  return m;
}

var _overlayVisibilityMode = MXFunctionInvoke("OverlayVisibilityMode",
    ({String name, int index}) => MXOverlayVisibilityMode.parse(name, index), ["name", "index"]);
var _cupertinoTextField = MXFunctionInvoke(
  "CupertinoTextField",
  ({
    Key key,
    TextEditingController controller,
    FocusNode focusNode,
    BoxDecoration decoration = const BoxDecoration(
        color:
            const CupertinoDynamicColor.withBrightness(color: CupertinoColors.white, darkColor: CupertinoColors.black),
        border: Border(
            top: BorderSide(
                color: CupertinoDynamicColor.withBrightness(color: Color(0x33000000), darkColor: Color(0x33FFFFFF)),
                style: BorderStyle.solid,
                width: 0.0),
            bottom: BorderSide(
                color: CupertinoDynamicColor.withBrightness(color: Color(0x33000000), darkColor: Color(0x33FFFFFF)),
                style: BorderStyle.solid,
                width: 0.0),
            left: BorderSide(
                color: CupertinoDynamicColor.withBrightness(color: Color(0x33000000), darkColor: Color(0x33FFFFFF)),
                style: BorderStyle.solid,
                width: 0.0),
            right: BorderSide(
                color: CupertinoDynamicColor.withBrightness(color: Color(0x33000000), darkColor: Color(0x33FFFFFF)),
                style: BorderStyle.solid,
                width: 0.0)),
        borderRadius: const BorderRadius.all(const Radius.circular(5.0))),
    EdgeInsetsGeometry padding = const EdgeInsets.all(6.0),
    String placeholder,
    TextStyle placeholderStyle = const TextStyle(fontWeight: FontWeight.w400, color: CupertinoColors.placeholderText),
    Widget prefix,
    OverlayVisibilityMode prefixMode = OverlayVisibilityMode.always,
    Widget suffix,
    OverlayVisibilityMode suffixMode = OverlayVisibilityMode.always,
    OverlayVisibilityMode clearButtonMode = OverlayVisibilityMode.never,
    TextInputType keyboardType,
    TextInputAction textInputAction,
    TextCapitalization textCapitalization = TextCapitalization.none,
    TextStyle style,
    StrutStyle strutStyle,
    ui.TextAlign textAlign = TextAlign.start,
    TextAlignVertical textAlignVertical,
    bool readOnly = false,
    ToolbarOptions toolbarOptions,
    bool showCursor,
    bool autofocus = false,
    String obscuringCharacter = '•',
    bool obscureText = false,
    bool autocorrect = true,
    SmartDashesType smartDashesType,
    SmartQuotesType smartQuotesType,
    bool enableSuggestions = true,
    int maxLines = 1,
    int minLines,
    bool expands = false,
    int maxLength,
    bool maxLengthEnforced = true,
    dynamic onChanged,
    dynamic onEditingComplete,
    dynamic onSubmitted,
    dynamic inputFormatters,
    bool enabled,
    dynamic cursorWidth = 2.0,
    ui.Radius cursorRadius = const Radius.circular(2.0),
    ui.Color cursorColor,
    // MX modified begin -add ui.
    ui.BoxHeightStyle selectionHeightStyle = ui.BoxHeightStyle.tight,
    ui.BoxWidthStyle selectionWidthStyle = ui.BoxWidthStyle.tight,
    // MX modified end
    ui.Brightness keyboardAppearance,
    EdgeInsets scrollPadding = const EdgeInsets.all(20.0),
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool enableInteractiveSelection = true,
    dynamic onTap,
    ScrollController scrollController,
    ScrollPhysics scrollPhysics,
    Iterable<String> autofillHints,
  }) =>
      CupertinoTextField(
    key: key,
    controller: controller,
    focusNode: focusNode,
    decoration: decoration,
    padding: padding,
    placeholder: placeholder,
    placeholderStyle: placeholderStyle,
    prefix: prefix,
    prefixMode: prefixMode,
    suffix: suffix,
    suffixMode: suffixMode,
    clearButtonMode: clearButtonMode,
    keyboardType: keyboardType,
    textInputAction: textInputAction,
    textCapitalization: textCapitalization,
    style: style,
    strutStyle: strutStyle,
    textAlign: textAlign,
    textAlignVertical: textAlignVertical,
    readOnly: readOnly,
    toolbarOptions: toolbarOptions,
    showCursor: showCursor,
    autofocus: autofocus,
    obscuringCharacter: obscuringCharacter,
    obscureText: obscureText,
    autocorrect: autocorrect,
    smartDashesType: smartDashesType,
    smartQuotesType: smartQuotesType,
    enableSuggestions: enableSuggestions,
    maxLines: maxLines,
    minLines: minLines,
    expands: expands,
    maxLength: maxLength,
    maxLengthEnforced: maxLengthEnforced,
    onChanged: createValueChangedGenericClosure<String>(_cupertinoTextField.buildOwner, onChanged),
    onEditingComplete: createVoidCallbackClosure(_cupertinoTextField.buildOwner, onEditingComplete),
    onSubmitted: createValueChangedGenericClosure<String>(_cupertinoTextField.buildOwner, onSubmitted),
    inputFormatters: toListT<TextInputFormatter>(inputFormatters),
    enabled: enabled,
    cursorWidth: cursorWidth?.toDouble(),
    cursorRadius: cursorRadius,
    cursorColor: cursorColor,
    selectionHeightStyle: selectionHeightStyle,
    selectionWidthStyle: selectionWidthStyle,
    keyboardAppearance: keyboardAppearance,
    scrollPadding: scrollPadding,
    dragStartBehavior: dragStartBehavior,
    enableInteractiveSelection: enableInteractiveSelection,
    onTap: createVoidCallbackClosure(_cupertinoTextField.buildOwner, onTap),
    scrollController: scrollController,
    scrollPhysics: scrollPhysics,
    autofillHints: autofillHints,
  ),
  [
    "key",
    "controller",
    "focusNode",
    "decoration",
    "padding",
    "placeholder",
    "placeholderStyle",
    "prefix",
    "prefixMode",
    "suffix",
    "suffixMode",
    "clearButtonMode",
    "keyboardType",
    "textInputAction",
    "textCapitalization",
    "style",
    "strutStyle",
    "textAlign",
    "textAlignVertical",
    "readOnly",
    "toolbarOptions",
    "showCursor",
    "autofocus",
    "obscuringCharacter",
    "obscureText",
    "autocorrect",
    "smartDashesType",
    "smartQuotesType",
    "enableSuggestions",
    "maxLines",
    "minLines",
    "expands",
    "maxLength",
    "maxLengthEnforced",
    "onChanged",
    "onEditingComplete",
    "onSubmitted",
    "inputFormatters",
    "enabled",
    "cursorWidth",
    "cursorRadius",
    "cursorColor",
    "selectionHeightStyle",
    "selectionWidthStyle",
    "keyboardAppearance",
    "scrollPadding",
    "dragStartBehavior",
    "enableInteractiveSelection",
    "onTap",
    "scrollController",
    "scrollPhysics",
    "autofillHints",
  ],
);

class MXOverlayVisibilityMode {
  static OverlayVisibilityMode parse(String name, int index) {
    switch (name) {
      case 'OverlayVisibilityMode.never':
        return OverlayVisibilityMode.never;
      case 'OverlayVisibilityMode.editing':
        return OverlayVisibilityMode.editing;
      case 'OverlayVisibilityMode.notEditing':
        return OverlayVisibilityMode.notEditing;
      case 'OverlayVisibilityMode.always':
        return OverlayVisibilityMode.always;
    }
    return null;
  }
}
