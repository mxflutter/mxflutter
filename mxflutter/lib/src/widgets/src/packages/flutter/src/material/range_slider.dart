//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/range_slider.dart';
import 'dart:async';
import 'dart:math' as math;
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/slider_theme.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerRangeSliderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_rangeSlider.funName] = _rangeSlider;
  return m;
}

var _rangeSlider = MXFunctionInvoke(
  "RangeSlider",
  ({
    Key key,
    RangeValues values,
    dynamic onChanged,
    dynamic onChangeStart,
    dynamic onChangeEnd,
    dynamic min = 0.0,
    dynamic max = 1.0,
    int divisions,
    RangeLabels labels,
    ui.Color activeColor,
    ui.Color inactiveColor,
    dynamic semanticFormatterCallback,
  }) =>
      RangeSlider(
    key: key,
    values: values,
    onChanged: createValueChangedGenericClosure<RangeValues>(_rangeSlider.buildOwner, onChanged),
    onChangeStart: createValueChangedGenericClosure<RangeValues>(_rangeSlider.buildOwner, onChangeStart),
    onChangeEnd: createValueChangedGenericClosure<RangeValues>(_rangeSlider.buildOwner, onChangeEnd),
    min: min?.toDouble(),
    max: max?.toDouble(),
    divisions: divisions,
    labels: labels,
    activeColor: activeColor,
    inactiveColor: inactiveColor,
    semanticFormatterCallback: null,
  ),
  [
    "key",
    "values",
    "onChanged",
    "onChangeStart",
    "onChangeEnd",
    "min",
    "max",
    "divisions",
    "labels",
    "activeColor",
    "inactiveColor",
    "semanticFormatterCallback",
  ],
);
