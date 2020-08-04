//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/slider.dart';
import 'dart:async';
import 'dart:math';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/slider_theme.dart';
import 'package:flutter/src/material/theme.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSliderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[slider.funName] = slider;
  m[slider_adaptive.funName] = slider_adaptive;
  return m;
}
var slider = MXFunctionInvoke(
    "Slider",
    ({
      Key key,
      dynamic value,
      dynamic onChanged,
      dynamic onChangeStart,
      dynamic onChangeEnd,
      dynamic min = 0.0,
      dynamic max = 1.0,
      int divisions,
      String label,
      Color activeColor,
      Color inactiveColor,
      dynamic semanticFormatterCallback,
    }) =>
      Slider(
      key: key,
      value: value,
      onChanged: createValueChangedGenericClosure<dynamic>(slider.buildOwner, onChanged),
      onChangeStart: createValueChangedGenericClosure<dynamic>(slider.buildOwner, onChangeStart),
      onChangeEnd: createValueChangedGenericClosure<dynamic>(slider.buildOwner, onChangeEnd),
      min: min,
      max: max,
      divisions: divisions,
      label: label,
      activeColor: activeColor,
      inactiveColor: inactiveColor,
      semanticFormatterCallback: createGenericValueGenericClosure<String, dynamic>(slider.buildOwner, semanticFormatterCallback),
    ),
);
var slider_adaptive = MXFunctionInvoke(
  "slider.adaptive",
    ({
      Key key,
      dynamic value,
      dynamic onChanged,
      dynamic onChangeStart,
      dynamic onChangeEnd,
      dynamic min = 0.0,
      dynamic max = 1.0,
      int divisions,
      String label,
      Color activeColor,
      Color inactiveColor,
      dynamic semanticFormatterCallback,
    }) =>
      Slider.adaptive(
      key: key,
      value: value,
      onChanged: createValueChangedGenericClosure<dynamic>(slider_adaptive.buildOwner, onChanged),
      onChangeStart: createValueChangedGenericClosure<dynamic>(slider_adaptive.buildOwner, onChangeStart),
      onChangeEnd: createValueChangedGenericClosure<dynamic>(slider_adaptive.buildOwner, onChangeEnd),
      min: min,
      max: max,
      divisions: divisions,
      label: label,
      activeColor: activeColor,
      inactiveColor: inactiveColor,
      semanticFormatterCallback: createGenericValueGenericClosure<String, dynamic>(slider_adaptive.buildOwner, semanticFormatterCallback),
    ),
);
