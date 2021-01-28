//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/editable.dart';
import 'dart:math' as math;
import 'dart:ui' as ui;
import 'package:characters/characters.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/viewport_offset.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerEditableSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_selectionChangedCause.funName] = _selectionChangedCause;
  m[_textSelectionPoint.funName] = _textSelectionPoint;
  m[_renderEditable.funName] = _renderEditable;
  return m;
}

var _selectionChangedCause = MXFunctionInvoke("SelectionChangedCause",
    ({String name, int index}) => MXSelectionChangedCause.parse(name, index), ["name", "index"]);
var _textSelectionPoint = MXFunctionInvoke(
  "TextSelectionPoint",
  ({
    ui.Offset point,
    ui.TextDirection direction,
  }) =>
      TextSelectionPoint(
    point,
    direction,
  ),
  [
    "point",
    "direction",
  ],
);
var _renderEditable = MXFunctionInvoke(
  "RenderEditable",
  ({
    TextSpan text,
    ui.TextDirection textDirection,
    ui.TextAlign textAlign = TextAlign.start,
    ui.Color cursorColor,
    ui.Color backgroundCursorColor,
    ValueNotifier<bool> showCursor,
    bool hasFocus,
    LayerLink startHandleLayerLink,
    LayerLink endHandleLayerLink,
    int maxLines = 1,
    int minLines,
    bool expands = false,
    StrutStyle strutStyle,
    ui.Color selectionColor,
    dynamic textScaleFactor = 1.0,
    TextSelection selection,
    ViewportOffset offset,
    dynamic onSelectionChanged,
    dynamic onCaretChanged,
    bool ignorePointer = false,
    bool readOnly = false,
    bool forceLine = true,
    ui.TextHeightBehavior textHeightBehavior,
    TextWidthBasis textWidthBasis = TextWidthBasis.parent,
    String obscuringCharacter = '•',
    bool obscureText = false,
    ui.Locale locale,
    dynamic cursorWidth = 1.0,
    ui.Radius cursorRadius,
    bool paintCursorAboveText = false,
    ui.Offset cursorOffset,
    dynamic devicePixelRatio = 1.0,

    /// MX modified begin -add ui.
    ui.BoxHeightStyle selectionHeightStyle = ui.BoxHeightStyle.tight,
    ui.BoxWidthStyle selectionWidthStyle = ui.BoxWidthStyle.tight,

    /// MX modified end
    bool enableInteractiveSelection,
    EdgeInsets floatingCursorAddedMargin = const EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 5.0),
    ui.TextRange promptRectRange,
    ui.Color promptRectColor,
    ui.Clip clipBehavior = Clip.hardEdge,
    TextSelectionDelegate textSelectionDelegate,
  }) =>
      RenderEditable(
    text: text,
    textDirection: textDirection,
    textAlign: textAlign,
    cursorColor: cursorColor,
    backgroundCursorColor: backgroundCursorColor,
    showCursor: showCursor,
    hasFocus: hasFocus,
    startHandleLayerLink: startHandleLayerLink,
    endHandleLayerLink: endHandleLayerLink,
    maxLines: maxLines,
    minLines: minLines,
    expands: expands,
    strutStyle: strutStyle,
    selectionColor: selectionColor,
    textScaleFactor: textScaleFactor?.toDouble(),
    selection: selection,
    offset: offset,
    onSelectionChanged: createVoidThreeParamsClosure<TextSelection, RenderEditable, SelectionChangedCause>(
        _renderEditable.buildOwner, onSelectionChanged),
    onCaretChanged: createValueChangedGenericClosure<Rect>(_renderEditable.buildOwner, onCaretChanged),
    ignorePointer: ignorePointer,
    readOnly: readOnly,
    forceLine: forceLine,
    textHeightBehavior: textHeightBehavior,
    textWidthBasis: textWidthBasis,
    obscuringCharacter: obscuringCharacter,
    obscureText: obscureText,
    locale: locale,
    cursorWidth: cursorWidth?.toDouble(),
    cursorRadius: cursorRadius,
    paintCursorAboveText: paintCursorAboveText,
    cursorOffset: cursorOffset,
    devicePixelRatio: devicePixelRatio?.toDouble(),
    selectionHeightStyle: selectionHeightStyle,
    selectionWidthStyle: selectionWidthStyle,
    enableInteractiveSelection: enableInteractiveSelection,
    floatingCursorAddedMargin: floatingCursorAddedMargin,
    promptRectRange: promptRectRange,
    promptRectColor: promptRectColor,
    clipBehavior: clipBehavior,
    textSelectionDelegate: textSelectionDelegate,
  ),
  [
    "text",
    "textDirection",
    "textAlign",
    "cursorColor",
    "backgroundCursorColor",
    "showCursor",
    "hasFocus",
    "startHandleLayerLink",
    "endHandleLayerLink",
    "maxLines",
    "minLines",
    "expands",
    "strutStyle",
    "selectionColor",
    "textScaleFactor",
    "selection",
    "offset",
    "onSelectionChanged",
    "onCaretChanged",
    "ignorePointer",
    "readOnly",
    "forceLine",
    "textHeightBehavior",
    "textWidthBasis",
    "obscuringCharacter",
    "obscureText",
    "locale",
    "cursorWidth",
    "cursorRadius",
    "paintCursorAboveText",
    "cursorOffset",
    "devicePixelRatio",
    "selectionHeightStyle",
    "selectionWidthStyle",
    "enableInteractiveSelection",
    "floatingCursorAddedMargin",
    "promptRectRange",
    "promptRectColor",
    "clipBehavior",
    "textSelectionDelegate",
  ],
);

class MXSelectionChangedCause {
  static SelectionChangedCause parse(String name, int index) {
    switch (name) {
      case 'SelectionChangedCause.tap':
        return SelectionChangedCause.tap;
      case 'SelectionChangedCause.doubleTap':
        return SelectionChangedCause.doubleTap;
      case 'SelectionChangedCause.longPress':
        return SelectionChangedCause.longPress;
      case 'SelectionChangedCause.forcePress':
        return SelectionChangedCause.forcePress;
      case 'SelectionChangedCause.keyboard':
        return SelectionChangedCause.keyboard;
      case 'SelectionChangedCause.drag':
        return SelectionChangedCause.drag;
    }
    return null;
  }
}
