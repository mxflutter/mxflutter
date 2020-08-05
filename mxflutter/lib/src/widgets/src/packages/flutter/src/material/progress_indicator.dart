//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/progress_indicator.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/theme.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerProgressIndicatorSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_linearProgressIndicator.funName] = _linearProgressIndicator;
  m[_circularProgressIndicator.funName] = _circularProgressIndicator;
  m[_refreshProgressIndicator.funName] = _refreshProgressIndicator;
  return m;
}
var _linearProgressIndicator = MXFunctionInvoke(
    "LinearProgressIndicator",
    (
      {
      Key key,
      double value,
      Color backgroundColor,
      Animation<Color> valueColor,
      String semanticsLabel,
      String semanticsValue,
      }
    ) =>
      LinearProgressIndicator(
      key: key,
      value: value?.toDouble(),
      backgroundColor: backgroundColor,
      valueColor: valueColor,
      semanticsLabel: semanticsLabel,
      semanticsValue: semanticsValue,
    ),
);
var _circularProgressIndicator = MXFunctionInvoke(
    "CircularProgressIndicator",
    (
      {
      Key key,
      double value,
      Color backgroundColor,
      Animation<Color> valueColor,
      double strokeWidth = 4.0,
      String semanticsLabel,
      String semanticsValue,
      }
    ) =>
      CircularProgressIndicator(
      key: key,
      value: value?.toDouble(),
      backgroundColor: backgroundColor,
      valueColor: valueColor,
      strokeWidth: strokeWidth?.toDouble(),
      semanticsLabel: semanticsLabel,
      semanticsValue: semanticsValue,
    ),
);
var _refreshProgressIndicator = MXFunctionInvoke(
    "RefreshProgressIndicator",
    (
      {
      Key key,
      double value,
      Color backgroundColor,
      Animation<Color> valueColor,
      double strokeWidth = 2.0,
      String semanticsLabel,
      String semanticsValue,
      }
    ) =>
      RefreshProgressIndicator(
      key: key,
      value: value?.toDouble(),
      backgroundColor: backgroundColor,
      valueColor: valueColor,
      strokeWidth: strokeWidth?.toDouble(),
      semanticsLabel: semanticsLabel,
      semanticsValue: semanticsValue,
    ),
);
