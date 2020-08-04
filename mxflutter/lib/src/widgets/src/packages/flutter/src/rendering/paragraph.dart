//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/paragraph.dart';
import 'dart:collection';
import 'dart:math';
import 'dart:ui';
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
  m[textOverflow.funName] = textOverflow;
  m[textParentData.funName] = textParentData;
  m[renderParagraph.funName] = renderParagraph;
  return m;
}
var textOverflow = MXFunctionInvoke(
    "TextOverflow",
    ({Map args}) => MXTextOverflow.parse(args),
  );
var textParentData = MXFunctionInvoke(
    "TextParentData",
    ({
    }) =>
      TextParentData(
    ),
);
var renderParagraph = MXFunctionInvoke(
    "RenderParagraph",
    ({
      InlineSpan text,
      TextAlign textAlign = TextAlign.start,
      TextDirection textDirection,
      bool softWrap = true,
      TextOverflow overflow = TextOverflow.clip,
      dynamic textScaleFactor = 1.0,
      int maxLines,
      Locale locale,
      StrutStyle strutStyle,
      TextWidthBasis textWidthBasis = TextWidthBasis.parent,
      TextHeightBehavior textHeightBehavior,
      List<RenderBox> children,
    }) =>
      RenderParagraph(
      text,
      textAlign: textAlign,
      textDirection: textDirection,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      locale: locale,
      strutStyle: strutStyle,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      children: children,
    ),
);
class MXTextOverflow {
  static Map str2VMap = {
    'TextOverflow.clip': TextOverflow.clip,
    'TextOverflow.fade': TextOverflow.fade,
    'TextOverflow.ellipsis': TextOverflow.ellipsis,
    'TextOverflow.visible': TextOverflow.visible,
  };
  static TextOverflow parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
