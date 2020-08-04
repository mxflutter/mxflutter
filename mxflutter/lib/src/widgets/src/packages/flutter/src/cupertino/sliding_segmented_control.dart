//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/cupertino/sliding_segmented_control.dart';


class MXProxySlidingSegmentedControl {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[cupertinoSlidingSegmentedControl.funName] = cupertinoSlidingSegmentedControl;
    return m;
  }
  static var cupertinoSlidingSegmentedControl = MXFunctionInvoke(
      "CupertinoSlidingSegmentedControl",
      ({
        Key key,
        Map<CupertinoSlidingSegmentedControl::T*, Widget> children,
        dynamic onValueChanged,
        dynamic groupValue,
        Color thumbColor,
        EdgeInsetsGeometry padding,
        Color backgroundColor,
      }) =>
        CupertinoSlidingSegmentedControl(
        key: key,
        children: children,
        onValueChanged: createValueChangedGenericClosure<TypeParameterType(CupertinoSlidingSegmentedControl::T>(cupertinoSlidingSegmentedControl.buildOwner, onValueChanged),
        groupValue: groupValue,
        thumbColor: thumbColor,
        padding: padding,
        backgroundColor: backgroundColor,
      ),
    );
}
