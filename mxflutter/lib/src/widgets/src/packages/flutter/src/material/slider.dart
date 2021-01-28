//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/slider.dart';
import 'dart:async';
import 'dart:math' as math;
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/slider_theme.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSliderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_slider.funName] = _slider;
  m[_sliderAdaptive.funName] = _sliderAdaptive;
  return m;
}

var _slider = MXFunctionInvoke(
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
    MouseCursor mouseCursor,
    dynamic semanticFormatterCallback,
    FocusNode focusNode,
    bool autofocus = false,
  }) =>
      Slider(
    key: key,
    value: value?.toDouble(),
    onChanged: createValueChangedGenericClosure<dynamic>(_slider.buildOwner, onChanged),
    onChangeStart: createValueChangedGenericClosure<dynamic>(_slider.buildOwner, onChangeStart),
    onChangeEnd: createValueChangedGenericClosure<dynamic>(_slider.buildOwner, onChangeEnd),
    min: min?.toDouble(),
    max: max?.toDouble(),
    divisions: divisions,
    label: label,
    activeColor: activeColor,
    inactiveColor: inactiveColor,
    mouseCursor: mouseCursor,
    semanticFormatterCallback: null,
    focusNode: focusNode,
    autofocus: autofocus,
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
    "label",
    "activeColor",
    "inactiveColor",
    "mouseCursor",
    "semanticFormatterCallback",
    "focusNode",
    "autofocus",
  ],
);
var _sliderAdaptive = MXFunctionInvoke(
  "Slider.adaptive",
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
    MouseCursor mouseCursor,
    Color activeColor,
    Color inactiveColor,
    dynamic semanticFormatterCallback,
    FocusNode focusNode,
    bool autofocus = false,
  }) =>
      Slider.adaptive(
    key: key,
    value: value?.toDouble(),
    onChanged: createValueChangedGenericClosure<dynamic>(_sliderAdaptive.buildOwner, onChanged),
    onChangeStart: createValueChangedGenericClosure<dynamic>(_sliderAdaptive.buildOwner, onChangeStart),
    onChangeEnd: createValueChangedGenericClosure<dynamic>(_sliderAdaptive.buildOwner, onChangeEnd),
    min: min?.toDouble(),
    max: max?.toDouble(),
    divisions: divisions,
    label: label,
    mouseCursor: mouseCursor,
    activeColor: activeColor,
    inactiveColor: inactiveColor,
    semanticFormatterCallback: null,
    focusNode: focusNode,
    autofocus: autofocus,
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
    "label",
    "mouseCursor",
    "activeColor",
    "inactiveColor",
    "semanticFormatterCallback",
    "focusNode",
    "autofocus",
  ],
);
