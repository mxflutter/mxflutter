//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/text_field.dart';
import 'dart:ui' as ui;
import 'package:characters/characters.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/feedback.dart';
import 'package:flutter/src/material/input_decorator.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/selectable_text.dart';
import 'package:flutter/src/material/text_selection.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTextFieldSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_textField.funName] = _textField;
  m[_textFieldNoMaxLength.funName] = _textFieldNoMaxLength;
  return m;
}

var _textField = MXFunctionInvoke(
  "TextField",
  ({
    Key key,
    TextEditingController controller,
    FocusNode focusNode,
    InputDecoration decoration = const InputDecoration(),
    TextInputType keyboardType,
    TextInputAction textInputAction,
    TextCapitalization textCapitalization = TextCapitalization.none,
    TextStyle style,
    StrutStyle strutStyle,
    ui.TextAlign textAlign = TextAlign.start,
    TextAlignVertical textAlignVertical,
    ui.TextDirection textDirection,
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
    ui.Radius cursorRadius,
    ui.Color cursorColor,

    /// MX modified begin -add ui.
    ui.BoxHeightStyle selectionHeightStyle = ui.BoxHeightStyle.tight,
    ui.BoxWidthStyle selectionWidthStyle = ui.BoxWidthStyle.tight,

    /// MX modified end
    ui.Brightness keyboardAppearance,
    EdgeInsets scrollPadding = const EdgeInsets.all(20.0),
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool enableInteractiveSelection = true,
    dynamic onTap,
    MouseCursor mouseCursor,
    dynamic buildCounter,
    ScrollController scrollController,
    ScrollPhysics scrollPhysics,
    Iterable<String> autofillHints,
  }) =>
      TextField(
    key: key,
    controller: controller,
    focusNode: focusNode,
    decoration: decoration,
    keyboardType: keyboardType,
    textInputAction: textInputAction,
    textCapitalization: textCapitalization,
    style: style,
    strutStyle: strutStyle,
    textAlign: textAlign,
    textAlignVertical: textAlignVertical,
    textDirection: textDirection,
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
    onChanged: createValueChangedGenericClosure<String>(_textField.buildOwner, onChanged),
    onEditingComplete: createVoidCallbackClosure(_textField.buildOwner, onEditingComplete),
    onSubmitted: createValueChangedGenericClosure<String>(_textField.buildOwner, onSubmitted),
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
    onTap: createVoidCallbackClosure(_textField.buildOwner, onTap),
    mouseCursor: mouseCursor,
    buildCounter: null,
    scrollController: scrollController,
    scrollPhysics: scrollPhysics,
    autofillHints: autofillHints,
  ),
  [
    "key",
    "controller",
    "focusNode",
    "decoration",
    "keyboardType",
    "textInputAction",
    "textCapitalization",
    "style",
    "strutStyle",
    "textAlign",
    "textAlignVertical",
    "textDirection",
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
    "mouseCursor",
    "buildCounter",
    "scrollController",
    "scrollPhysics",
    "autofillHints",
  ],
);
var _textFieldNoMaxLength = MXFunctionInvoke("TextField.noMaxLength", () => TextField.noMaxLength);
