//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/slider.dart';


class MXProxySlider {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[slider.funName] = slider;
    m[slider_adaptive.funName] = slider_adaptive;
    return m;
  }
  static var slider = MXFunctionInvoke(
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
        value: value?.toDouble(),
        onChanged: createValueChangedGenericClosure<double>(slider.buildOwner, onChanged),
        onChangeStart: createValueChangedGenericClosure<double>(slider.buildOwner, onChangeStart),
        onChangeEnd: createValueChangedGenericClosure<double>(slider.buildOwner, onChangeEnd),
        min: min?.toDouble(),
        max: max?.toDouble(),
        divisions: divisions,
        label: label,
        activeColor: activeColor,
        inactiveColor: inactiveColor,
        semanticFormatterCallback: createGenericValueGenericClosure<String, double>(slider.buildOwner, semanticFormatterCallback),
      ),
    );
  static var slider_adaptive = MXFunctionInvoke(
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
        value: value?.toDouble(),
        onChanged: createValueChangedGenericClosure<double>(slider_adaptive.buildOwner, onChanged),
        onChangeStart: createValueChangedGenericClosure<double>(slider_adaptive.buildOwner, onChangeStart),
        onChangeEnd: createValueChangedGenericClosure<double>(slider_adaptive.buildOwner, onChangeEnd),
        min: min?.toDouble(),
        max: max?.toDouble(),
        divisions: divisions,
        label: label,
        activeColor: activeColor,
        inactiveColor: inactiveColor,
        semanticFormatterCallback: createGenericValueGenericClosure<String, double>(slider_adaptive.buildOwner, semanticFormatterCallback),
      ),
    );
}
