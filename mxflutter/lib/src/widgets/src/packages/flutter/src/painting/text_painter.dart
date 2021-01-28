//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/text_painter.dart';
import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/inline_span.dart';
import 'package:flutter/src/painting/placeholder_span.dart';
import 'package:flutter/src/painting/strut_style.dart';
import 'package:flutter/src/painting/text_span.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTextPainterSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_placeholderDimensions.funName] = _placeholderDimensions;
  m[_textWidthBasis.funName] = _textWidthBasis;
  m[_textPainter.funName] = _textPainter;
  return m;
}

var _placeholderDimensions = MXFunctionInvoke(
  "PlaceholderDimensions",
  ({
    ui.Size size,
    ui.PlaceholderAlignment alignment,
    ui.TextBaseline baseline,
    dynamic baselineOffset,
  }) =>
      PlaceholderDimensions(
    size: size,
    alignment: alignment,
    baseline: baseline,
    baselineOffset: baselineOffset?.toDouble(),
  ),
  [
    "size",
    "alignment",
    "baseline",
    "baselineOffset",
  ],
);
var _textWidthBasis = MXFunctionInvoke(
    "TextWidthBasis", ({String name, int index}) => MXTextWidthBasis.parse(name, index), ["name", "index"]);
var _textPainter = MXFunctionInvoke(
  "TextPainter",
  ({
    InlineSpan text,
    ui.TextAlign textAlign = TextAlign.start,
    ui.TextDirection textDirection,
    dynamic textScaleFactor = 1.0,
    int maxLines,
    String ellipsis,
    ui.Locale locale,
    StrutStyle strutStyle,
    TextWidthBasis textWidthBasis = TextWidthBasis.parent,
    ui.TextHeightBehavior textHeightBehavior,
  }) =>
      TextPainter(
    text: text,
    textAlign: textAlign,
    textDirection: textDirection,
    textScaleFactor: textScaleFactor?.toDouble(),
    maxLines: maxLines,
    ellipsis: ellipsis,
    locale: locale,
    strutStyle: strutStyle,
    textWidthBasis: textWidthBasis,
    textHeightBehavior: textHeightBehavior,
  ),
  [
    "text",
    "textAlign",
    "textDirection",
    "textScaleFactor",
    "maxLines",
    "ellipsis",
    "locale",
    "strutStyle",
    "textWidthBasis",
    "textHeightBehavior",
  ],
);

class MXTextWidthBasis {
  static TextWidthBasis parse(String name, int index) {
    switch (name) {
      case 'TextWidthBasis.parent':
        return TextWidthBasis.parent;
      case 'TextWidthBasis.longestLine':
        return TextWidthBasis.longestLine;
    }
    return null;
  }
}
