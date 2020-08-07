//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
    (
      {
      Key key,
      Map<dynamic, Widget> children,
      dynamic onValueChanged,
      dynamic groupValue,
      Color thumbColor,
      EdgeInsetsGeometry padding,
      Color backgroundColor,
      }
    ) =>
      CupertinoSlidingSegmentedControl(
      key: key,
      children: children,
      onValueChanged: createValueChangedGenericClosure<dynamic>(_cupertinoSlidingSegmentedControl.buildOwner, onValueChanged),
      groupValue: groupValue,
      thumbColor: thumbColor,
      padding: padding,
      backgroundColor: backgroundColor,
    ),
);
