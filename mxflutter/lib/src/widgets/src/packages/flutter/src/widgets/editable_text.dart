//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/editable_text.dart';
import 'dart:async';
import 'dart:math' as math;
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/autofill.dart';
import 'package:flutter/src/widgets/automatic_keep_alive.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/constants.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/localizations.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scrollable.dart';
import 'package:flutter/src/widgets/text.dart';
import 'package:flutter/src/widgets/text_selection.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerEditableTextSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_textEditingController.funName] = _textEditingController;
  m[_textEditingControllerFromValue.funName] = _textEditingControllerFromValue;
  m[_toolbarOptions.funName] = _toolbarOptions;
  m[_editableText.funName] = _editableText;
  m[_editableTextState.funName] = _editableTextState;
  return m;
}

var _textEditingController = MXFunctionInvoke(
  "TextEditingController",
  ({
    String text,
  }) =>
      TextEditingController(
    text: text,
  ),
  [
    "text",
  ],
);
var _textEditingControllerFromValue = MXFunctionInvoke(
  "TextEditingController.fromValue",
  ({
    TextEditingValue value,
  }) =>
      TextEditingController.fromValue(
    value,
  ),
  [
    "value",
  ],
);
var _toolbarOptions = MXFunctionInvoke(
  "ToolbarOptions",
  ({
    bool copy = false,
    bool cut = false,
    bool paste = false,
    bool selectAll = false,
  }) =>
      ToolbarOptions(
    copy: copy,
    cut: cut,
    paste: paste,
    selectAll: selectAll,
  ),
  [
    "copy",
    "cut",
    "paste",
    "selectAll",
  ],
);
var _editableText = MXFunctionInvoke(
  "EditableText",
  ({
    Key key,
    TextEditingController controller,
    FocusNode focusNode,
    bool readOnly = false,
    String obscuringCharacter = '•',
    bool obscureText = false,
    bool autocorrect = true,
    SmartDashesType smartDashesType,
    SmartQuotesType smartQuotesType,
    bool enableSuggestions = true,
    TextStyle style,
    StrutStyle strutStyle,
    ui.Color cursorColor,
    ui.Color backgroundCursorColor,
    ui.TextAlign textAlign = TextAlign.start,
    ui.TextDirection textDirection,
    ui.Locale locale,
    dynamic textScaleFactor,
    int maxLines = 1,
    int minLines,
    bool expands = false,
    bool forceLine = true,
    ui.TextHeightBehavior textHeightBehavior,
    TextWidthBasis textWidthBasis = TextWidthBasis.parent,
    bool autofocus = false,
    bool showCursor,
    bool showSelectionHandles = false,
    ui.Color selectionColor,
    TextSelectionControls selectionControls,
    TextInputType keyboardType,
    TextInputAction textInputAction,
    TextCapitalization textCapitalization = TextCapitalization.none,
    dynamic onChanged,
    dynamic onEditingComplete,
    dynamic onSubmitted,
    dynamic onSelectionChanged,
    dynamic onSelectionHandleTapped,
    dynamic inputFormatters,
    MouseCursor mouseCursor,
    bool rendererIgnoresPointer = false,
    dynamic cursorWidth = 2.0,
    ui.Radius cursorRadius,
    bool cursorOpacityAnimates = false,
    ui.Offset cursorOffset,
    bool paintCursorAboveText = false,

    /// MX modified begin 增加UI.
    ui.BoxHeightStyle selectionHeightStyle = ui.BoxHeightStyle.tight,
    ui.BoxWidthStyle selectionWidthStyle = ui.BoxWidthStyle.tight,

    /// MX modified end
    EdgeInsets scrollPadding = const EdgeInsets.all(20.0),
    ui.Brightness keyboardAppearance = Brightness.light,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool enableInteractiveSelection = true,
    ScrollController scrollController,
    ScrollPhysics scrollPhysics,
    ui.Color autocorrectionTextRectColor,
    ToolbarOptions toolbarOptions = const ToolbarOptions(copy: true, cut: true, selectAll: true, paste: true),
    Iterable<String> autofillHints,
    ui.Clip clipBehavior = Clip.hardEdge,
  }) =>
      EditableText(
    key: key,
    controller: controller,
    focusNode: focusNode,
    readOnly: readOnly,
    obscuringCharacter: obscuringCharacter,
    obscureText: obscureText,
    autocorrect: autocorrect,
    smartDashesType: smartDashesType,
    smartQuotesType: smartQuotesType,
    enableSuggestions: enableSuggestions,
    style: style,
    strutStyle: strutStyle,
    cursorColor: cursorColor,
    backgroundCursorColor: backgroundCursorColor,
    textAlign: textAlign,
    textDirection: textDirection,
    locale: locale,
    textScaleFactor: textScaleFactor?.toDouble(),
    maxLines: maxLines,
    minLines: minLines,
    expands: expands,
    forceLine: forceLine,
    textHeightBehavior: textHeightBehavior,
    textWidthBasis: textWidthBasis,
    autofocus: autofocus,
    showCursor: showCursor,
    showSelectionHandles: showSelectionHandles,
    selectionColor: selectionColor,
    selectionControls: selectionControls,
    keyboardType: keyboardType,
    textInputAction: textInputAction,
    textCapitalization: textCapitalization,
    onChanged: createValueChangedGenericClosure<String>(_editableText.buildOwner, onChanged),
    onEditingComplete: createVoidCallbackClosure(_editableText.buildOwner, onEditingComplete),
    onSubmitted: createValueChangedGenericClosure<String>(_editableText.buildOwner, onSubmitted),
    onSelectionChanged:
        createVoidTwoParamsClosure<TextSelection, SelectionChangedCause>(_editableText.buildOwner, onSelectionChanged),
    onSelectionHandleTapped: createVoidCallbackClosure(_editableText.buildOwner, onSelectionHandleTapped),
    inputFormatters: toListT<TextInputFormatter>(inputFormatters),
    mouseCursor: mouseCursor,
    rendererIgnoresPointer: rendererIgnoresPointer,
    cursorWidth: cursorWidth?.toDouble(),
    cursorRadius: cursorRadius,
    cursorOpacityAnimates: cursorOpacityAnimates,
    cursorOffset: cursorOffset,
    paintCursorAboveText: paintCursorAboveText,
    selectionHeightStyle: selectionHeightStyle,
    selectionWidthStyle: selectionWidthStyle,
    scrollPadding: scrollPadding,
    keyboardAppearance: keyboardAppearance,
    dragStartBehavior: dragStartBehavior,
    enableInteractiveSelection: enableInteractiveSelection,
    scrollController: scrollController,
    scrollPhysics: scrollPhysics,
    autocorrectionTextRectColor: autocorrectionTextRectColor,
    toolbarOptions: toolbarOptions,
    autofillHints: autofillHints,
    clipBehavior: clipBehavior,
  ),
  [
    "key",
    "controller",
    "focusNode",
    "readOnly",
    "obscuringCharacter",
    "obscureText",
    "autocorrect",
    "smartDashesType",
    "smartQuotesType",
    "enableSuggestions",
    "style",
    "strutStyle",
    "cursorColor",
    "backgroundCursorColor",
    "textAlign",
    "textDirection",
    "locale",
    "textScaleFactor",
    "maxLines",
    "minLines",
    "expands",
    "forceLine",
    "textHeightBehavior",
    "textWidthBasis",
    "autofocus",
    "showCursor",
    "showSelectionHandles",
    "selectionColor",
    "selectionControls",
    "keyboardType",
    "textInputAction",
    "textCapitalization",
    "onChanged",
    "onEditingComplete",
    "onSubmitted",
    "onSelectionChanged",
    "onSelectionHandleTapped",
    "inputFormatters",
    "mouseCursor",
    "rendererIgnoresPointer",
    "cursorWidth",
    "cursorRadius",
    "cursorOpacityAnimates",
    "cursorOffset",
    "paintCursorAboveText",
    "selectionHeightStyle",
    "selectionWidthStyle",
    "scrollPadding",
    "keyboardAppearance",
    "dragStartBehavior",
    "enableInteractiveSelection",
    "scrollController",
    "scrollPhysics",
    "autocorrectionTextRectColor",
    "toolbarOptions",
    "autofillHints",
    "clipBehavior",
  ],
);
var _editableTextState = MXFunctionInvoke(
  "EditableTextState",
  () => EditableTextState(),
  [],
);
