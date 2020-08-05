//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/theme.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPickerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoPicker.funName] = _cupertinoPicker;
  m[_cupertinoPicker_builder.funName] = _cupertinoPicker_builder;
  return m;
}
var _cupertinoPicker = MXFunctionInvoke(
    "CupertinoPicker",
    (
      {
      Key key,
      double diameterRatio = 1.07,
      Color backgroundColor,
      double offAxisFraction = 0.0,
      bool useMagnifier = false,
      double magnification = 1.0,
      FixedExtentScrollController scrollController,
      double squeeze = 1.45,
      double itemExtent,
      dynamic onSelectedItemChanged,
      List<Widget> children,
      bool looping = false,
      }
    ) =>
      CupertinoPicker(
      key: key,
      diameterRatio: diameterRatio?.toDouble(),
      backgroundColor: backgroundColor,
      offAxisFraction: offAxisFraction?.toDouble(),
      useMagnifier: useMagnifier,
      magnification: magnification?.toDouble(),
      scrollController: scrollController,
      squeeze: squeeze?.toDouble(),
      itemExtent: itemExtent?.toDouble(),
      onSelectedItemChanged: createValueChangedGenericClosure<int>(_cupertinoPicker.buildOwner, onSelectedItemChanged),
      children: children,
      looping: looping,
    ),
);
var _cupertinoPicker_builder = MXFunctionInvoke(
  "cupertinoPicker.builder",
    (
      {
      Key key,
      double diameterRatio = 1.07,
      Color backgroundColor,
      double offAxisFraction = 0.0,
      bool useMagnifier = false,
      double magnification = 1.0,
      FixedExtentScrollController scrollController,
      double squeeze = 1.45,
      double itemExtent,
      dynamic onSelectedItemChanged,
      dynamic itemBuilder,
      int childCount,
      }
    ) =>
      CupertinoPicker.builder(
      key: key,
      diameterRatio: diameterRatio?.toDouble(),
      backgroundColor: backgroundColor,
      offAxisFraction: offAxisFraction?.toDouble(),
      useMagnifier: useMagnifier,
      magnification: magnification?.toDouble(),
      scrollController: scrollController,
      squeeze: squeeze?.toDouble(),
      itemExtent: itemExtent?.toDouble(),
      onSelectedItemChanged: createValueChangedGenericClosure<int>(_cupertinoPicker_builder.buildOwner, onSelectedItemChanged),
      itemBuilder: null,
      childCount: childCount,
    ),
);
