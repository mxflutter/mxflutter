//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/tweens.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/painting.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTweensSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_fractionalOffsetTween.funName] = _fractionalOffsetTween;
  m[_alignmentTween.funName] = _alignmentTween;
  m[_alignmentGeometryTween.funName] = _alignmentGeometryTween;
  return m;
}

var _fractionalOffsetTween = MXFunctionInvoke(
  "FractionalOffsetTween",
  ({
    FractionalOffset begin,
    FractionalOffset end,
  }) =>
      FractionalOffsetTween(
    begin: begin,
    end: end,
  ),
  [
    "begin",
    "end",
  ],
);
var _alignmentTween = MXFunctionInvoke(
  "AlignmentTween",
  ({
    Alignment begin,
    Alignment end,
  }) =>
      AlignmentTween(
    begin: begin,
    end: end,
  ),
  [
    "begin",
    "end",
  ],
);
var _alignmentGeometryTween = MXFunctionInvoke(
  "AlignmentGeometryTween",
  ({
    AlignmentGeometry begin,
    AlignmentGeometry end,
  }) =>
      AlignmentGeometryTween(
    begin: begin,
    end: end,
  ),
  [
    "begin",
    "end",
  ],
);
