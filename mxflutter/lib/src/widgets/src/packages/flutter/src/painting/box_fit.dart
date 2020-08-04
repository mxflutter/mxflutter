//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/box_fit.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBoxFitSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[boxFit.funName] = boxFit;
  m[fittedSizes.funName] = fittedSizes;
  return m;
}
var boxFit = MXFunctionInvoke(
    "BoxFit",
    ({Map args}) => MXBoxFit.parse(args),
  );
var fittedSizes = MXFunctionInvoke(
    "FittedSizes",
    ({
      Size source,
      Size destination,
    }) =>
      FittedSizes(
      source,
      destination,
    ),
);
class MXBoxFit {
  static Map str2VMap = {
    'BoxFit.fill': BoxFit.fill,
    'BoxFit.contain': BoxFit.contain,
    'BoxFit.cover': BoxFit.cover,
    'BoxFit.fitWidth': BoxFit.fitWidth,
    'BoxFit.fitHeight': BoxFit.fitHeight,
    'BoxFit.none': BoxFit.none,
    'BoxFit.scaleDown': BoxFit.scaleDown,
  };
  static BoxFit parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
