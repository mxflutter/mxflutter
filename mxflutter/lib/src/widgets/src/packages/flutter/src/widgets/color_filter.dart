//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/color_filter.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerColorFilterSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_colorFiltered.funName] = _colorFiltered;
  return m;
}

var _colorFiltered = MXFunctionInvoke(
  "ColorFiltered",
  ({
    ColorFilter colorFilter,
    Widget child,
    Key key,
  }) =>
      ColorFiltered(
    colorFilter: colorFilter,
    child: child,
    key: key,
  ),
  [
    "colorFilter",
    "child",
    "key",
  ],
);
