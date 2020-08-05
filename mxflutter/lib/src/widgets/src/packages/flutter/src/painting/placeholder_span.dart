//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/placeholder_span.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/inline_span.dart';
import 'package:flutter/src/painting/text_painter.dart';
import 'package:flutter/src/painting/text_span.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'dart:math';
import 'package:flutter/src/painting/strut_style.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPlaceholderSpanSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_textSpan.funName] = _textSpan;
  m[_accumulator.funName] = _accumulator;
  m[_inlineSpanSemanticsInformation.funName] = _inlineSpanSemanticsInformation;
  m[_placeholderDimensions.funName] = _placeholderDimensions;
  m[_textWidthBasis.funName] = _textWidthBasis;
  m[_textPainter.funName] = _textPainter;
  return m;
}
var _textSpan = MXFunctionInvoke(
    "TextSpan",
    (
      {
      String text,
      List<InlineSpan> children,
      TextStyle style,
      GestureRecognizer recognizer,
      String semanticsLabel,
      }
    ) =>
      TextSpan(
      text: text,
      children: children,
      style: style,
      recognizer: recognizer,
      semanticsLabel: semanticsLabel,
    ),
);
var _accumulator = MXFunctionInvoke(
    "Accumulator",
    (
      {
      int value,
      }
    ) =>
      Accumulator(
      value,
    ),
);
var _inlineSpanSemanticsInformation = MXFunctionInvoke(
    "InlineSpanSemanticsInformation",
    (
      {
      String text,
      bool isPlaceholder = false,
      String semanticsLabel,
      GestureRecognizer recognizer,
      }
    ) =>
      InlineSpanSemanticsInformation(
      text,
      isPlaceholder: isPlaceholder,
      semanticsLabel: semanticsLabel,
      recognizer: recognizer,
    ),
);
var _placeholderDimensions = MXFunctionInvoke(
    "PlaceholderDimensions",
    (
      {
      Size size,
      PlaceholderAlignment alignment,
      TextBaseline baseline,
      double baselineOffset,
      }
    ) =>
      PlaceholderDimensions(
      size: size,
      alignment: alignment,
      baseline: baseline,
      baselineOffset: baselineOffset?.toDouble(),
    ),
);
var _textWidthBasis = MXFunctionInvoke(
    "TextWidthBasis",
    ({Map args}) => MXTextWidthBasis.parse(args),
  );
var _textPainter = MXFunctionInvoke(
    "TextPainter",
    (
      {
      InlineSpan text,
      TextAlign textAlign = TextAlign.start,
      TextDirection textDirection,
      double textScaleFactor = 1.0,
      int maxLines,
      String ellipsis,
      Locale locale,
      StrutStyle strutStyle,
      TextWidthBasis textWidthBasis = TextWidthBasis.parent,
      TextHeightBehavior textHeightBehavior,
      }
    ) =>
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
);
class MXTextWidthBasis {
  static Map str2VMap = {
    'TextWidthBasis.parent': TextWidthBasis.parent,
    'TextWidthBasis.longestLine': TextWidthBasis.longestLine,
  };
  static TextWidthBasis parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
