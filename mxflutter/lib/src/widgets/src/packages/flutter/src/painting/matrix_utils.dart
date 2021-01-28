//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/matrix_utils.dart';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/painting/basic_types.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerMatrixUtilsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_transformProperty.funName] = _transformProperty;
  return m;
}

var _transformProperty = MXFunctionInvoke(
  "TransformProperty",
  ({
    String name,
    Matrix4 value,
    bool showName = true,
    Object defaultValue = kNoDefaultValue,
    DiagnosticLevel level = DiagnosticLevel.info,
  }) =>
      TransformProperty(
    name,
    value,
    showName: showName,
    defaultValue: defaultValue,
    level: level,
  ),
  [
    "name",
    "value",
    "showName",
    "defaultValue",
    "level",
  ],
);
