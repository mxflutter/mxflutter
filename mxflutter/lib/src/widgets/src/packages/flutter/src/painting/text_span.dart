//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/text_span.dart';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/inline_span.dart';
import 'package:flutter/src/painting/text_painter.dart';
import 'package:flutter/src/painting/text_style.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTextSpanSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_textSpan.funName] = _textSpan;
  return m;
}

var _textSpan = MXFunctionInvoke(
  "TextSpan",
  ({
    String text,
    dynamic children,
    TextStyle style,
    GestureRecognizer recognizer,
    String semanticsLabel,
  }) =>
      TextSpan(
    text: text,
    children: toListT<InlineSpan>(children),
    style: style,
    recognizer: recognizer,
    semanticsLabel: semanticsLabel,
  ),
  [
    "text",
    "children",
    "style",
    "recognizer",
    "semanticsLabel",
  ],
);
