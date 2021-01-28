//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/paragraph.dart';
import 'dart:collection';
import 'dart:math' as math;
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/src/rendering/object.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerParagraphSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_textOverflow.funName] = _textOverflow;
  m[_textParentData.funName] = _textParentData;
  m[_renderParagraph.funName] = _renderParagraph;
  return m;
}

var _textOverflow = MXFunctionInvoke(
    "TextOverflow", ({String name, int index}) => MXTextOverflow.parse(name, index), ["name", "index"]);
var _textParentData = MXFunctionInvoke(
  "TextParentData",
  () => TextParentData(),
  [],
);
var _renderParagraph = MXFunctionInvoke(
  "RenderParagraph",
  ({
    InlineSpan text,
    ui.TextAlign textAlign = TextAlign.start,
    ui.TextDirection textDirection,
    bool softWrap = true,
    TextOverflow overflow = TextOverflow.clip,
    dynamic textScaleFactor = 1.0,
    int maxLines,
    ui.Locale locale,
    StrutStyle strutStyle,
    TextWidthBasis textWidthBasis = TextWidthBasis.parent,
    ui.TextHeightBehavior textHeightBehavior,
    bool applyTextScaleFactorToWidgetSpan = false,
    dynamic children,
  }) =>
      RenderParagraph(
    text,
    textAlign: textAlign,
    textDirection: textDirection,
    softWrap: softWrap,
    overflow: overflow,
    textScaleFactor: textScaleFactor?.toDouble(),
    maxLines: maxLines,
    locale: locale,
    strutStyle: strutStyle,
    textWidthBasis: textWidthBasis,
    textHeightBehavior: textHeightBehavior,
    applyTextScaleFactorToWidgetSpan: applyTextScaleFactorToWidgetSpan,
    children: toListT<RenderBox>(children),
  ),
  [
    "text",
    "textAlign",
    "textDirection",
    "softWrap",
    "overflow",
    "textScaleFactor",
    "maxLines",
    "locale",
    "strutStyle",
    "textWidthBasis",
    "textHeightBehavior",
    "applyTextScaleFactorToWidgetSpan",
    "children",
  ],
);

class MXTextOverflow {
  static TextOverflow parse(String name, int index) {
    switch (name) {
      case 'TextOverflow.clip':
        return TextOverflow.clip;
      case 'TextOverflow.fade':
        return TextOverflow.fade;
      case 'TextOverflow.ellipsis':
        return TextOverflow.ellipsis;
      case 'TextOverflow.visible':
        return TextOverflow.visible;
    }
    return null;
  }
}
