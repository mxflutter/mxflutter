//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/range_slider.dart';


class MXProxyRangeSlider {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[rangeSlider.funName] = rangeSlider;
    return m;
  }
  static var rangeSlider = MXFunctionInvoke(
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
        Color activeColor,
        Color inactiveColor,
        dynamic semanticFormatterCallback,
      }) =>
        RangeSlider(
        key: key,
        values: values,
        onChanged: createValueChangedGenericClosure<RangeValues>(rangeSlider.buildOwner, onChanged),
        onChangeStart: createValueChangedGenericClosure<RangeValues>(rangeSlider.buildOwner, onChangeStart),
        onChangeEnd: createValueChangedGenericClosure<RangeValues>(rangeSlider.buildOwner, onChangeEnd),
        min: min?.toDouble(),
        max: max?.toDouble(),
        divisions: divisions,
        labels: labels,
        activeColor: activeColor,
        inactiveColor: inactiveColor,
        semanticFormatterCallback: createGenericValueGenericClosure<String, RangeValues>(rangeSlider.buildOwner, semanticFormatterCallback),
      ),
    );
}
