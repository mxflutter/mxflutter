//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/segmented_control.dart';
import 'dart:collection';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSegmentedControlSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoSegmentedControl.funName] = _cupertinoSegmentedControl;
  return m;
}

var _cupertinoSegmentedControl = MXFunctionInvoke(
  "CupertinoSegmentedControl",
  ({
    Key key,
    dynamic children,
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
    children: toMapT<dynamic, Widget>(children),
    onValueChanged: createValueChangedGenericClosure<dynamic>(_cupertinoSegmentedControl.buildOwner, onValueChanged),
    groupValue: groupValue,
    unselectedColor: unselectedColor,
    selectedColor: selectedColor,
    borderColor: borderColor,
    pressedColor: pressedColor,
    padding: padding,
  ),
  [
    "key",
    "children",
    "onValueChanged",
    "groupValue",
    "unselectedColor",
    "selectedColor",
    "borderColor",
    "pressedColor",
    "padding",
  ],
);
