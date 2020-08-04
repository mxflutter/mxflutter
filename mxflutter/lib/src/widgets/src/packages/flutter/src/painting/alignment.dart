//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/alignment.dart';


class MXProxyAlignment {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[alignment.funName] = alignment;
    m[alignmentDirectional.funName] = alignmentDirectional;
    m[textAlignVertical.funName] = textAlignVertical;
    return m;
  }
  static var alignment = MXFunctionInvoke(
      "Alignment",
      ({
        double x,
        double y,
      }) =>
        Alignment(
        x,
        y,
      ),
    );
  static var alignmentDirectional = MXFunctionInvoke(
      "AlignmentDirectional",
      ({
        double start,
        double y,
      }) =>
        AlignmentDirectional(
        start,
        y,
      ),
    );
  static var textAlignVertical = MXFunctionInvoke(
      "TextAlignVertical",
      ({
        dynamic y,
      }) =>
        TextAlignVertical(
        y: y?.toDouble(),
      ),
    );
}
