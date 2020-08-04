//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/arc.dart';


class MXProxyArc {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[materialPointArcTween.funName] = materialPointArcTween;
    m[materialRectArcTween.funName] = materialRectArcTween;
    m[materialRectCenterArcTween.funName] = materialRectCenterArcTween;
    return m;
  }
  static var materialPointArcTween = MXFunctionInvoke(
      "MaterialPointArcTween",
      ({
        Offset begin,
        Offset end,
      }) =>
        MaterialPointArcTween(
        begin: begin,
        end: end,
      ),
    );
  static var materialRectArcTween = MXFunctionInvoke(
      "MaterialRectArcTween",
      ({
        Rect begin,
        Rect end,
      }) =>
        MaterialRectArcTween(
        begin: begin,
        end: end,
      ),
    );
  static var materialRectCenterArcTween = MXFunctionInvoke(
      "MaterialRectCenterArcTween",
      ({
        Rect begin,
        Rect end,
      }) =>
        MaterialRectCenterArcTween(
        begin: begin,
        end: end,
      ),
    );
}
