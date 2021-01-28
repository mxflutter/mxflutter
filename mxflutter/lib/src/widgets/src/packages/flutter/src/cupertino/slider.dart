//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/slider.dart';
import 'dart:math' as math;
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/theme.dart';
import 'package:flutter/src/cupertino/thumb_painter.dart';
// MX modified beigin 多import了一个material.dart
import 'package:flutter/material.dart';
// MX modified end

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSliderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoSlider.funName] = _cupertinoSlider;
  return m;
}

var _cupertinoSlider = MXFunctionInvoke(
  "CupertinoSlider",
  ({
    Key key,
    dynamic value,
    dynamic onChanged,
    dynamic onChangeStart,
    dynamic onChangeEnd,
    dynamic min = 0.0,
    dynamic max = 1.0,
    int divisions,
    Color activeColor,
    Color thumbColor = Colors.white,
  }) =>
      CupertinoSlider(
    key: key,
    value: value?.toDouble(),
    onChanged: createValueChangedGenericClosure<dynamic>(_cupertinoSlider.buildOwner, onChanged),
    onChangeStart: createValueChangedGenericClosure<dynamic>(_cupertinoSlider.buildOwner, onChangeStart),
    onChangeEnd: createValueChangedGenericClosure<dynamic>(_cupertinoSlider.buildOwner, onChangeEnd),
    min: min?.toDouble(),
    max: max?.toDouble(),
    divisions: divisions,
    activeColor: activeColor,
    thumbColor: thumbColor,
  ),
  [
    "key",
    "value",
    "onChanged",
    "onChangeStart",
    "onChangeEnd",
    "min",
    "max",
    "divisions",
    "activeColor",
    "thumbColor",
  ],
);
