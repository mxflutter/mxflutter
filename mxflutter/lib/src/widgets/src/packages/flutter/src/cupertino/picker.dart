//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
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
  m[_cupertinoPickerBuilder.funName] = _cupertinoPickerBuilder;
  return m;
}

var _cupertinoPicker = MXFunctionInvoke(
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
    dynamic children,
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
    onSelectedItemChanged: createValueChangedGenericClosure<int>(_cupertinoPicker.buildOwner, onSelectedItemChanged),
    children: toListT<Widget>(children),
    looping: looping,
  ),
  [
    "key",
    "diameterRatio",
    "backgroundColor",
    "offAxisFraction",
    "useMagnifier",
    "magnification",
    "scrollController",
    "squeeze",
    "itemExtent",
    "onSelectedItemChanged",
    "children",
    "looping",
  ],
);
var _cupertinoPickerBuilder = MXFunctionInvoke(
  "CupertinoPicker.builder",
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
    onSelectedItemChanged:
        createValueChangedGenericClosure<int>(_cupertinoPickerBuilder.buildOwner, onSelectedItemChanged),
    itemBuilder: null,
    childCount: childCount,
  ),
  [
    "key",
    "diameterRatio",
    "backgroundColor",
    "offAxisFraction",
    "useMagnifier",
    "magnification",
    "scrollController",
    "squeeze",
    "itemExtent",
    "onSelectedItemChanged",
    "itemBuilder",
    "childCount",
  ],
);
