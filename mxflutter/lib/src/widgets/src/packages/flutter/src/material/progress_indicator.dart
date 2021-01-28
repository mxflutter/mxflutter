//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/progress_indicator.dart';
import 'dart:math' as math;
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
  ({
    Key key,
    dynamic value,
    Color backgroundColor,
    Animation<Color> valueColor,
    dynamic minHeight,
    String semanticsLabel,
    String semanticsValue,
  }) =>
      LinearProgressIndicator(
    key: key,
    value: value?.toDouble(),
    backgroundColor: backgroundColor,
    valueColor: valueColor,
    minHeight: minHeight?.toDouble(),
    semanticsLabel: semanticsLabel,
    semanticsValue: semanticsValue,
  ),
  [
    "key",
    "value",
    "backgroundColor",
    "valueColor",
    "minHeight",
    "semanticsLabel",
    "semanticsValue",
  ],
);
var _circularProgressIndicator = MXFunctionInvoke(
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
    value: value?.toDouble(),
    backgroundColor: backgroundColor,
    valueColor: valueColor,
    strokeWidth: strokeWidth?.toDouble(),
    semanticsLabel: semanticsLabel,
    semanticsValue: semanticsValue,
  ),
  [
    "key",
    "value",
    "backgroundColor",
    "valueColor",
    "strokeWidth",
    "semanticsLabel",
    "semanticsValue",
  ],
);
var _refreshProgressIndicator = MXFunctionInvoke(
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
    value: value?.toDouble(),
    backgroundColor: backgroundColor,
    valueColor: valueColor,
    strokeWidth: strokeWidth?.toDouble(),
    semanticsLabel: semanticsLabel,
    semanticsValue: semanticsValue,
  ),
  [
    "key",
    "value",
    "backgroundColor",
    "valueColor",
    "strokeWidth",
    "semanticsLabel",
    "semanticsValue",
  ],
);
