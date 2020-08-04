//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/placeholder_span.dart';
import 'package:flutter/src/painting/text_span.dart';
import 'package:flutter/src/painting/inline_span.dart';
import 'package:flutter/src/painting/text_painter.dart';


class MXProxyPlaceholderSpan {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[textSpan.funName] = textSpan;
    m[accumulator.funName] = accumulator;
    m[inlineSpanSemanticsInformation.funName] = inlineSpanSemanticsInformation;
    m[placeholderDimensions.funName] = placeholderDimensions;
    m[textWidthBasis.funName] = textWidthBasis;
    m[textPainter.funName] = textPainter;
    return m;
  }
  static var textSpan = MXFunctionInvoke(
      "TextSpan",
      ({
        String text,
        List<InlineSpan> children,
        TextStyle style,
        GestureRecognizer recognizer,
        String semanticsLabel,
      }) =>
        TextSpan(
        text: text,
        children: children,
        style: style,
        recognizer: recognizer,
        semanticsLabel: semanticsLabel,
      ),
    );
  static var accumulator = MXFunctionInvoke(
      "Accumulator",
      ({
        int _value,
      }) =>
        Accumulator(
        _value,
      ),
    );
  static var inlineSpanSemanticsInformation = MXFunctionInvoke(
      "InlineSpanSemanticsInformation",
      ({
        String text,
        bool isPlaceholder = false,
        String semanticsLabel,
        GestureRecognizer recognizer,
      }) =>
        InlineSpanSemanticsInformation(
        text,
        isPlaceholder: isPlaceholder,
        semanticsLabel: semanticsLabel,
        recognizer: recognizer,
      ),
    );
  static var placeholderDimensions = MXFunctionInvoke(
      "PlaceholderDimensions",
      ({
        Size size,
        PlaceholderAlignment alignment,
        TextBaseline baseline,
        dynamic baselineOffset,
      }) =>
        PlaceholderDimensions(
        size: size,
        alignment: alignment,
        baseline: baseline,
        baselineOffset: baselineOffset?.toDouble(),
      ),
    );
  static var textWidthBasis = MXFunctionInvoke(
      "TextWidthBasis",
      ({Map args}) => MXTextWidthBasis.parse(args),
  );
  static var textPainter = MXFunctionInvoke(
      "TextPainter",
      ({
        InlineSpan text,
        TextAlign textAlign = TextAlign.start,
        TextDirection textDirection,
        dynamic textScaleFactor = 1.0,
        int maxLines,
        String ellipsis,
        Locale locale,
        StrutStyle strutStyle,
        TextWidthBasis textWidthBasis = TextWidthBasis.parent,
        TextHeightBehavior textHeightBehavior,
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
    );
}
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
