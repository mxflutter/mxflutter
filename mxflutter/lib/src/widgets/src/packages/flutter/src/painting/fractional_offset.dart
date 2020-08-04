//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/fractional_offset.dart';


class MXProxyFractionalOffset {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[fractionalOffset.funName] = fractionalOffset;
    m[fractionalOffset_fromOffsetAndSize.funName] = fractionalOffset_fromOffsetAndSize;
    m[fractionalOffset_fromOffsetAndRect.funName] = fractionalOffset_fromOffsetAndRect;
    return m;
  }
  static var fractionalOffset = MXFunctionInvoke(
      "FractionalOffset",
      ({
        double dx,
        double dy,
      }) =>
        FractionalOffset(
        dx,
        dy,
      ),
    );
  static var fractionalOffset_fromOffsetAndSize = MXFunctionInvoke(
    "fractionalOffset.fromOffsetAndSize",
      ({
        Offset offset,
        Size size,
      }) =>
        FractionalOffset.fromOffsetAndSize(
        offset,
        size,
      ),
    );
  static var fractionalOffset_fromOffsetAndRect = MXFunctionInvoke(
    "fractionalOffset.fromOffsetAndRect",
      ({
        Offset offset,
        Rect rect,
      }) =>
        FractionalOffset.fromOffsetAndRect(
        offset,
        rect,
      ),
    );
}
