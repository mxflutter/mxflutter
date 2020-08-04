//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/tweens.dart';


class MXProxyTweens {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[fractionalOffsetTween.funName] = fractionalOffsetTween;
    m[alignmentTween.funName] = alignmentTween;
    m[alignmentGeometryTween.funName] = alignmentGeometryTween;
    return m;
  }
  static var fractionalOffsetTween = MXFunctionInvoke(
      "FractionalOffsetTween",
      ({
        FractionalOffset begin,
        FractionalOffset end,
      }) =>
        FractionalOffsetTween(
        begin: begin,
        end: end,
      ),
    );
  static var alignmentTween = MXFunctionInvoke(
      "AlignmentTween",
      ({
        Alignment begin,
        Alignment end,
      }) =>
        AlignmentTween(
        begin: begin,
        end: end,
      ),
    );
  static var alignmentGeometryTween = MXFunctionInvoke(
      "AlignmentGeometryTween",
      ({
        AlignmentGeometry begin,
        AlignmentGeometry end,
      }) =>
        AlignmentGeometryTween(
        begin: begin,
        end: end,
      ),
    );
}
