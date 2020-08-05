//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/alignment.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAlignmentSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_alignment.funName] = _alignment;
  m[_alignmentDirectional.funName] = _alignmentDirectional;
  m[_textAlignVertical.funName] = _textAlignVertical;
  return m;
}
var _alignment = MXFunctionInvoke(
    "Alignment",
    (
      {
      double x,
      double y,
      }
    ) =>
      Alignment(
      x,
      y,
    ),
);
var _alignmentDirectional = MXFunctionInvoke(
    "AlignmentDirectional",
    (
      {
      double start,
      double y,
      }
    ) =>
      AlignmentDirectional(
      start,
      y,
    ),
);
var _textAlignVertical = MXFunctionInvoke(
    "TextAlignVertical",
    (
      {
      double y,
      }
    ) =>
      TextAlignVertical(
      y: y?.toDouble(),
    ),
);
