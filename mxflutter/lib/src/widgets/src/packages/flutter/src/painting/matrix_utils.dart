//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/matrix_utils.dart';


class MXProxyMatrixUtils {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[matrixUtils_.funName] = matrixUtils_;
    m[transformProperty.funName] = transformProperty;
    return m;
  }
  static var matrixUtils_ = MXFunctionInvoke(
    "matrixUtils.",
      ({
      }) =>
        MatrixUtils.(
      ),
    );
  static var transformProperty = MXFunctionInvoke(
      "TransformProperty",
      ({
        String name,
        Matrix4 value,
        bool showName = true,
        Object defaultValue,
        DiagnosticLevel level = DiagnosticLevel.info,
      }) =>
        TransformProperty(
        name,
        value,
        showName: showName,
        defaultValue: defaultValue,
        level: level,
      ),
    );
}
