//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/inline_span.dart';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/text_painter.dart';
import 'package:flutter/src/painting/text_span.dart';
import 'package:flutter/src/painting/text_style.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerInlineSpanSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_accumulator.funName] = _accumulator;
  m[_inlineSpanSemanticsInformation.funName] = _inlineSpanSemanticsInformation;
  m[_inlineSpanSemanticsInformationPlaceholder.funName] = _inlineSpanSemanticsInformationPlaceholder;
  return m;
}

var _accumulator = MXFunctionInvoke(
  "Accumulator",
  ({
    int value,
  }) =>
      Accumulator(
    value,
  ),
  [
    "value",
  ],
);
var _inlineSpanSemanticsInformation = MXFunctionInvoke(
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
  [
    "text",
    "isPlaceholder",
    "semanticsLabel",
    "recognizer",
  ],
);
var _inlineSpanSemanticsInformationPlaceholder =
    MXFunctionInvoke("InlineSpanSemanticsInformation.placeholder", () => InlineSpanSemanticsInformation.placeholder);
