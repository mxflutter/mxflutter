//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/selectable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/material/feedback.dart';
import 'package:flutter/src/material/text_selection.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSelectableTextSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_selectableText.funName] = _selectableText;
  m[_selectableTextRich.funName] = _selectableTextRich;
  return m;
}

var _selectableText = MXFunctionInvoke(
  "SelectableText",
  ({
    String data,
    Key key,
    FocusNode focusNode,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    dynamic textScaleFactor,
    bool showCursor = false,
    bool autofocus = false,
    ToolbarOptions toolbarOptions,
    int minLines,
    int maxLines,
    dynamic cursorWidth = 2.0,
    Radius cursorRadius,
    Color cursorColor,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool enableInteractiveSelection = true,
    dynamic onTap,
    ScrollPhysics scrollPhysics,
    TextHeightBehavior textHeightBehavior,
    TextWidthBasis textWidthBasis,
  }) =>
      SelectableText(
    data,
    key: key,
    focusNode: focusNode,
    style: style,
    strutStyle: strutStyle,
    textAlign: textAlign,
    textDirection: textDirection,
    textScaleFactor: textScaleFactor?.toDouble(),
    showCursor: showCursor,
    autofocus: autofocus,
    toolbarOptions: toolbarOptions,
    minLines: minLines,
    maxLines: maxLines,
    cursorWidth: cursorWidth?.toDouble(),
    cursorRadius: cursorRadius,
    cursorColor: cursorColor,
    dragStartBehavior: dragStartBehavior,
    enableInteractiveSelection: enableInteractiveSelection,
    onTap: createVoidCallbackClosure(_selectableText.buildOwner, onTap),
    scrollPhysics: scrollPhysics,
    textHeightBehavior: textHeightBehavior,
    textWidthBasis: textWidthBasis,
  ),
  [
    "data",
    "key",
    "focusNode",
    "style",
    "strutStyle",
    "textAlign",
    "textDirection",
    "textScaleFactor",
    "showCursor",
    "autofocus",
    "toolbarOptions",
    "minLines",
    "maxLines",
    "cursorWidth",
    "cursorRadius",
    "cursorColor",
    "dragStartBehavior",
    "enableInteractiveSelection",
    "onTap",
    "scrollPhysics",
    "textHeightBehavior",
    "textWidthBasis",
  ],
);
var _selectableTextRich = MXFunctionInvoke(
  "SelectableText.rich",
  ({
    TextSpan textSpan,
    Key key,
    FocusNode focusNode,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    dynamic textScaleFactor,
    bool showCursor = false,
    bool autofocus = false,
    ToolbarOptions toolbarOptions,
    int minLines,
    int maxLines,
    dynamic cursorWidth = 2.0,
    Radius cursorRadius,
    Color cursorColor,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool enableInteractiveSelection = true,
    dynamic onTap,
    ScrollPhysics scrollPhysics,
    TextHeightBehavior textHeightBehavior,
    TextWidthBasis textWidthBasis,
  }) =>
      SelectableText.rich(
    textSpan,
    key: key,
    focusNode: focusNode,
    style: style,
    strutStyle: strutStyle,
    textAlign: textAlign,
    textDirection: textDirection,
    textScaleFactor: textScaleFactor?.toDouble(),
    showCursor: showCursor,
    autofocus: autofocus,
    toolbarOptions: toolbarOptions,
    minLines: minLines,
    maxLines: maxLines,
    cursorWidth: cursorWidth?.toDouble(),
    cursorRadius: cursorRadius,
    cursorColor: cursorColor,
    dragStartBehavior: dragStartBehavior,
    enableInteractiveSelection: enableInteractiveSelection,
    onTap: createVoidCallbackClosure(_selectableTextRich.buildOwner, onTap),
    scrollPhysics: scrollPhysics,
    textHeightBehavior: textHeightBehavior,
    textWidthBasis: textWidthBasis,
  ),
  [
    "textSpan",
    "key",
    "focusNode",
    "style",
    "strutStyle",
    "textAlign",
    "textDirection",
    "textScaleFactor",
    "showCursor",
    "autofocus",
    "toolbarOptions",
    "minLines",
    "maxLines",
    "cursorWidth",
    "cursorRadius",
    "cursorColor",
    "dragStartBehavior",
    "enableInteractiveSelection",
    "onTap",
    "scrollPhysics",
    "textHeightBehavior",
    "textWidthBasis",
  ],
);
