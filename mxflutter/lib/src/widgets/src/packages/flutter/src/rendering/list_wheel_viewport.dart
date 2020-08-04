//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/list_wheel_viewport.dart';
import 'dart:math';
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/viewport.dart';
import 'package:flutter/src/rendering/viewport_offset.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerListWheelViewportSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[listWheelParentData.funName] = listWheelParentData;
  m[renderListWheelViewport.funName] = renderListWheelViewport;
  return m;
}
var listWheelParentData = MXFunctionInvoke(
    "ListWheelParentData",
    ({
    }) =>
      ListWheelParentData(
    ),
);
var renderListWheelViewport = MXFunctionInvoke(
    "RenderListWheelViewport",
    ({
      ListWheelChildManager childManager,
      ViewportOffset offset,
      dynamic diameterRatio = 2.0,
      dynamic perspective = 0.003,
      dynamic offAxisFraction = 0.0,
      bool useMagnifier = false,
      dynamic magnification = 1.0,
      dynamic overAndUnderCenterOpacity = 1.0,
      dynamic itemExtent,
      dynamic squeeze = 1.0,
      bool clipToSize = true,
      bool renderChildrenOutsideViewport = false,
      List<RenderBox> children,
    }) =>
      RenderListWheelViewport(
      childManager: childManager,
      offset: offset,
      diameterRatio: diameterRatio,
      perspective: perspective,
      offAxisFraction: offAxisFraction,
      useMagnifier: useMagnifier,
      magnification: magnification,
      overAndUnderCenterOpacity: overAndUnderCenterOpacity,
      itemExtent: itemExtent,
      squeeze: squeeze,
      clipToSize: clipToSize,
      renderChildrenOutsideViewport: renderChildrenOutsideViewport,
      children: children,
    ),
);
