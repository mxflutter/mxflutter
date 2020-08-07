//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/overscroll_indicator.dart';
import 'package:flutter/src/widgets/scroll_metrics.dart';
import 'package:flutter/src/widgets/scroll_simulation.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerScrollPhysicsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_scrollPhysics.funName] = _scrollPhysics;
  m[_bouncingScrollPhysics.funName] = _bouncingScrollPhysics;
  m[_clampingScrollPhysics.funName] = _clampingScrollPhysics;
  m[_alwaysScrollableScrollPhysics.funName] = _alwaysScrollableScrollPhysics;
  m[_neverScrollableScrollPhysics.funName] = _neverScrollableScrollPhysics;
  return m;
}
var _scrollPhysics = MXFunctionInvoke(
    "ScrollPhysics",
    (
      {
      ScrollPhysics parent,
      }
    ) =>
      ScrollPhysics(
      parent: parent,
    ),
);
var _bouncingScrollPhysics = MXFunctionInvoke(
    "BouncingScrollPhysics",
    (
      {
      ScrollPhysics parent,
      }
    ) =>
      BouncingScrollPhysics(
      parent: parent,
    ),
);
var _clampingScrollPhysics = MXFunctionInvoke(
    "ClampingScrollPhysics",
    (
      {
      ScrollPhysics parent,
      }
    ) =>
      ClampingScrollPhysics(
      parent: parent,
    ),
);
var _alwaysScrollableScrollPhysics = MXFunctionInvoke(
    "AlwaysScrollableScrollPhysics",
    (
      {
      ScrollPhysics parent,
      }
    ) =>
      AlwaysScrollableScrollPhysics(
      parent: parent,
    ),
);
var _neverScrollableScrollPhysics = MXFunctionInvoke(
    "NeverScrollableScrollPhysics",
    (
      {
      ScrollPhysics parent,
      }
    ) =>
      NeverScrollableScrollPhysics(
      parent: parent,
    ),
);
