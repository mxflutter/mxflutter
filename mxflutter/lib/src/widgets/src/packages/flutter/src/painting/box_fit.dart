//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/box_fit.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBoxFitSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_boxFit.funName] = _boxFit;
  m[_fittedSizes.funName] = _fittedSizes;
  return m;
}

var _boxFit = MXFunctionInvoke("BoxFit", ({String name, int index}) => MXBoxFit.parse(name, index), ["name", "index"]);
var _fittedSizes = MXFunctionInvoke(
  "FittedSizes",
  ({
    Size source,
    Size destination,
  }) =>
      FittedSizes(
    source,
    destination,
  ),
  [
    "source",
    "destination",
  ],
);

class MXBoxFit {
  static BoxFit parse(String name, int index) {
    switch (name) {
      case 'BoxFit.fill':
        return BoxFit.fill;
      case 'BoxFit.contain':
        return BoxFit.contain;
      case 'BoxFit.cover':
        return BoxFit.cover;
      case 'BoxFit.fitWidth':
        return BoxFit.fitWidth;
      case 'BoxFit.fitHeight':
        return BoxFit.fitHeight;
      case 'BoxFit.none':
        return BoxFit.none;
      case 'BoxFit.scaleDown':
        return BoxFit.scaleDown;
    }
    return null;
  }
}
