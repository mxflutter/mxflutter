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
  m[linearProgressIndicator.funName] = linearProgressIndicator;
  m[circularProgressIndicator.funName] = circularProgressIndicator;
  m[refreshProgressIndicator.funName] = refreshProgressIndicator;
  return m;
}
var linearProgressIndicator = MXFunctionInvoke(
    "LinearProgressIndicator",
    ({
      Key key,
      dynamic value,
      Color backgroundColor,
      Animation<Color> valueColor,
      String semanticsLabel,
      String semanticsValue,
    }) =>
      LinearProgressIndicator(
      key: key,
      value: value,
      backgroundColor: backgroundColor,
      valueColor: valueColor,
      semanticsLabel: semanticsLabel,
      semanticsValue: semanticsValue,
    ),
);
var circularProgressIndicator = MXFunctionInvoke(
    "CircularProgressIndicator",
    ({
      Key key,
      dynamic value,
      Color backgroundColor,
      Animation<Color> valueColor,
      dynamic strokeWidth = 4.0,
      String semanticsLabel,
      String semanticsValue,
    }) =>
      CircularProgressIndicator(
      key: key,
      value: value,
      backgroundColor: backgroundColor,
      valueColor: valueColor,
      strokeWidth: strokeWidth,
      semanticsLabel: semanticsLabel,
      semanticsValue: semanticsValue,
    ),
);
var refreshProgressIndicator = MXFunctionInvoke(
    "RefreshProgressIndicator",
    ({
      Key key,
      dynamic value,
      Color backgroundColor,
      Animation<Color> valueColor,
      dynamic strokeWidth = 2.0,
      String semanticsLabel,
      String semanticsValue,
    }) =>
      RefreshProgressIndicator(
      key: key,
      value: value,
      backgroundColor: backgroundColor,
      valueColor: valueColor,
      strokeWidth: strokeWidth,
      semanticsLabel: semanticsLabel,
      semanticsValue: semanticsValue,
    ),
);
