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
  m[alignment.funName] = alignment;
  m[alignmentDirectional.funName] = alignmentDirectional;
  m[textAlignVertical.funName] = textAlignVertical;
  return m;
}
var alignment = MXFunctionInvoke(
    "Alignment",
    ({
      dynamic x,
      dynamic y,
    }) =>
      Alignment(
      x,
      y,
    ),
);
var alignmentDirectional = MXFunctionInvoke(
    "AlignmentDirectional",
    ({
      dynamic start,
      dynamic y,
    }) =>
      AlignmentDirectional(
      start,
      y,
    ),
);
var textAlignVertical = MXFunctionInvoke(
    "TextAlignVertical",
    ({
      dynamic y,
    }) =>
      TextAlignVertical(
      y: y,
    ),
);
