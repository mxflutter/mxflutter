//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/safe_area.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/media_query.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSafeAreaSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_safeArea.funName] = _safeArea;
  m[_sliverSafeArea.funName] = _sliverSafeArea;
  return m;
}
var _safeArea = MXFunctionInvoke(
    "SafeArea",
    (
      {
      Key key,
      bool left = true,
      bool top = true,
      bool right = true,
      bool bottom = true,
      EdgeInsets minimum = EdgeInsets.zero,
      bool maintainBottomViewPadding = false,
      Widget child,
      }
    ) =>
      SafeArea(
      key: key,
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      minimum: minimum,
      maintainBottomViewPadding: maintainBottomViewPadding,
      child: child,
    ),
);
var _sliverSafeArea = MXFunctionInvoke(
    "SliverSafeArea",
    (
      {
      Key key,
      bool left = true,
      bool top = true,
      bool right = true,
      bool bottom = true,
      EdgeInsets minimum = EdgeInsets.zero,
      Widget sliver,
      }
    ) =>
      SliverSafeArea(
      key: key,
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      minimum: minimum,
      sliver: sliver,
    ),
);
