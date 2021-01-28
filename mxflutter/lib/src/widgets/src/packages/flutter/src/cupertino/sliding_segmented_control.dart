//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/sliding_segmented_control.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSlidingSegmentedControlSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoSlidingSegmentedControl.funName] = _cupertinoSlidingSegmentedControl;
  return m;
}

var _cupertinoSlidingSegmentedControl = MXFunctionInvoke(
  "CupertinoSlidingSegmentedControl",
  ({
    Key key,
    dynamic children,
    dynamic onValueChanged,
    dynamic groupValue,
    Color thumbColor =
        const CupertinoDynamicColor.withBrightness(color: const Color(0xFFFFFFFF), darkColor: const Color(0xFF636366)),
    EdgeInsetsGeometry padding = const EdgeInsets.symmetric(vertical: 2.0, horizontal: 3.0),
    Color backgroundColor = CupertinoColors.tertiarySystemFill,
  }) =>
      CupertinoSlidingSegmentedControl(
    key: key,
    children: toMapT<dynamic, Widget>(children),
    onValueChanged:
        createValueChangedGenericClosure<dynamic>(_cupertinoSlidingSegmentedControl.buildOwner, onValueChanged),
    groupValue: groupValue,
    thumbColor: thumbColor,
    padding: padding,
    backgroundColor: backgroundColor,
  ),
  [
    "key",
    "children",
    "onValueChanged",
    "groupValue",
    "thumbColor",
    "padding",
    "backgroundColor",
  ],
);
