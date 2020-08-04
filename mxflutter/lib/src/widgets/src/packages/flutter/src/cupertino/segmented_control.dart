//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/cupertino/segmented_control.dart';


class MXProxySegmentedControl {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[cupertinoSegmentedControl.funName] = cupertinoSegmentedControl;
    return m;
  }
  static var cupertinoSegmentedControl = MXFunctionInvoke(
      "CupertinoSegmentedControl",
      ({
        Key key,
        Map<CupertinoSegmentedControl::T*, Widget> children,
        dynamic onValueChanged,
        dynamic groupValue,
        Color unselectedColor,
        Color selectedColor,
        Color borderColor,
        Color pressedColor,
        EdgeInsetsGeometry padding,
      }) =>
        CupertinoSegmentedControl(
        key: key,
        children: children,
        onValueChanged: createValueChangedGenericClosure<TypeParameterType(CupertinoSegmentedControl::T>(cupertinoSegmentedControl.buildOwner, onValueChanged),
        groupValue: groupValue,
        unselectedColor: unselectedColor,
        selectedColor: selectedColor,
        borderColor: borderColor,
        pressedColor: pressedColor,
        padding: padding,
      ),
    );
}
