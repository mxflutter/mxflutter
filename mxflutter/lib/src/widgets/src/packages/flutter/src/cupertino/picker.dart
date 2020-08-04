//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/cupertino/picker.dart';


class MXProxyPicker {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[cupertinoPicker.funName] = cupertinoPicker;
    m[cupertinoPicker_builder.funName] = cupertinoPicker_builder;
    return m;
  }
  static var cupertinoPicker = MXFunctionInvoke(
      "CupertinoPicker",
      ({
        Key key,
        dynamic diameterRatio = 1.07,
        Color backgroundColor,
        dynamic offAxisFraction = 0.0,
        bool useMagnifier = false,
        dynamic magnification = 1.0,
        FixedExtentScrollController scrollController,
        dynamic squeeze = 1.45,
        dynamic itemExtent,
        dynamic onSelectedItemChanged,
        List<Widget> children,
        bool looping = false,
      }) =>
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
        onSelectedItemChanged: createValueChangedGenericClosure<int>(cupertinoPicker.buildOwner, onSelectedItemChanged),
        children: children,
        looping: looping,
      ),
    );
  static var cupertinoPicker_builder = MXFunctionInvoke(
    "cupertinoPicker.builder",
      ({
        Key key,
        dynamic diameterRatio = 1.07,
        Color backgroundColor,
        dynamic offAxisFraction = 0.0,
        bool useMagnifier = false,
        dynamic magnification = 1.0,
        FixedExtentScrollController scrollController,
        dynamic squeeze = 1.45,
        dynamic itemExtent,
        dynamic onSelectedItemChanged,
        dynamic itemBuilder,
        int childCount,
      }) =>
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
        onSelectedItemChanged: createValueChangedGenericClosure<int>(cupertinoPicker_builder.buildOwner, onSelectedItemChanged),
        itemBuilder: itemBuilder,
        childCount: childCount,
      ),
    );
}
