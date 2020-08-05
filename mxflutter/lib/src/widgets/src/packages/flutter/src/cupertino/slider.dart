//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/slider.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/theme.dart';
import 'package:flutter/src/cupertino/thumb_painter.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSliderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoSlider.funName] = _cupertinoSlider;
  return m;
}
var _cupertinoSlider = MXFunctionInvoke(
    "CupertinoSlider",
    (
      {
      Key key,
      double value,
      dynamic onChanged,
      dynamic onChangeStart,
      dynamic onChangeEnd,
      double min = 0.0,
      double max = 1.0,
      int divisions,
      Color activeColor,
      Color thumbColor,
      }
    ) =>
      CupertinoSlider(
      key: key,
      value: value?.toDouble(),
      onChanged: createValueChangedGenericClosure<double>(_cupertinoSlider.buildOwner, onChanged),
      onChangeStart: createValueChangedGenericClosure<double>(_cupertinoSlider.buildOwner, onChangeStart),
      onChangeEnd: createValueChangedGenericClosure<double>(_cupertinoSlider.buildOwner, onChangeEnd),
      min: min?.toDouble(),
      max: max?.toDouble(),
      divisions: divisions,
      activeColor: activeColor,
      thumbColor: thumbColor,
    ),
);
