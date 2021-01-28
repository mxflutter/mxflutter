//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/list_wheel_viewport.dart';
import 'dart:math' as math;
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
  m[_listWheelParentData.funName] = _listWheelParentData;
  m[_renderListWheelViewport.funName] = _renderListWheelViewport;
  m[_renderListWheelViewportDefaultDiameterRatio.funName] = _renderListWheelViewportDefaultDiameterRatio;
  m[_renderListWheelViewportDefaultPerspective.funName] = _renderListWheelViewportDefaultPerspective;
  m[_renderListWheelViewportDiameterRatioZeroMessage.funName] = _renderListWheelViewportDiameterRatioZeroMessage;
  m[_renderListWheelViewportPerspectiveTooHighMessage.funName] = _renderListWheelViewportPerspectiveTooHighMessage;
  m[_renderListWheelViewportClipBehaviorAndRenderChildrenOutsideViewportConflict.funName] =
      _renderListWheelViewportClipBehaviorAndRenderChildrenOutsideViewportConflict;
  return m;
}

var _listWheelParentData = MXFunctionInvoke(
  "ListWheelParentData",
  () => ListWheelParentData(),
  [],
);
var _renderListWheelViewport = MXFunctionInvoke(
  "RenderListWheelViewport",
  ({
    dynamic childManager,
    ViewportOffset offset,
    dynamic diameterRatio = 2.0,
    dynamic perspective = 0.003,
    dynamic offAxisFraction = 0.0,
    bool useMagnifier = false,
    dynamic magnification = 1.0,
    dynamic overAndUnderCenterOpacity = 1.0,
    dynamic itemExtent,
    dynamic squeeze = 1.0,
    bool renderChildrenOutsideViewport = false,
    Clip clipBehavior = Clip.none,
    dynamic children,
  }) =>
      RenderListWheelViewport(
    childManager: childManager,
    offset: offset,
    diameterRatio: diameterRatio?.toDouble(),
    perspective: perspective?.toDouble(),
    offAxisFraction: offAxisFraction?.toDouble(),
    useMagnifier: useMagnifier,
    magnification: magnification?.toDouble(),
    overAndUnderCenterOpacity: overAndUnderCenterOpacity?.toDouble(),
    itemExtent: itemExtent?.toDouble(),
    squeeze: squeeze?.toDouble(),
    renderChildrenOutsideViewport: renderChildrenOutsideViewport,
    clipBehavior: clipBehavior,
    children: toListT<RenderBox>(children),
  ),
  [
    "childManager",
    "offset",
    "diameterRatio",
    "perspective",
    "offAxisFraction",
    "useMagnifier",
    "magnification",
    "overAndUnderCenterOpacity",
    "itemExtent",
    "squeeze",
    "renderChildrenOutsideViewport",
    "clipBehavior",
    "children",
  ],
);
var _renderListWheelViewportDefaultDiameterRatio = MXFunctionInvoke(
    "RenderListWheelViewport.defaultDiameterRatio", () => RenderListWheelViewport.defaultDiameterRatio);
var _renderListWheelViewportDefaultPerspective =
    MXFunctionInvoke("RenderListWheelViewport.defaultPerspective", () => RenderListWheelViewport.defaultPerspective);
var _renderListWheelViewportDiameterRatioZeroMessage = MXFunctionInvoke(
    "RenderListWheelViewport.diameterRatioZeroMessage", () => RenderListWheelViewport.diameterRatioZeroMessage);
var _renderListWheelViewportPerspectiveTooHighMessage = MXFunctionInvoke(
    "RenderListWheelViewport.perspectiveTooHighMessage", () => RenderListWheelViewport.perspectiveTooHighMessage);
var _renderListWheelViewportClipBehaviorAndRenderChildrenOutsideViewportConflict = MXFunctionInvoke(
    "RenderListWheelViewport.clipBehaviorAndRenderChildrenOutsideViewportConflict",
    () => RenderListWheelViewport.clipBehaviorAndRenderChildrenOutsideViewportConflict);
