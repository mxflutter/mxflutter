//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/list_wheel_viewport.dart';


class MXProxyListWheelViewport {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[listWheelParentData.funName] = listWheelParentData;
    m[renderListWheelViewport.funName] = renderListWheelViewport;
    return m;
  }
  static var listWheelParentData = MXFunctionInvoke(
      "ListWheelParentData",
      ({
      }) =>
        ListWheelParentData(
      ),
    );
  static var renderListWheelViewport = MXFunctionInvoke(
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
        diameterRatio: diameterRatio?.toDouble(),
        perspective: perspective?.toDouble(),
        offAxisFraction: offAxisFraction?.toDouble(),
        useMagnifier: useMagnifier,
        magnification: magnification?.toDouble(),
        overAndUnderCenterOpacity: overAndUnderCenterOpacity?.toDouble(),
        itemExtent: itemExtent?.toDouble(),
        squeeze: squeeze?.toDouble(),
        clipToSize: clipToSize,
        renderChildrenOutsideViewport: renderChildrenOutsideViewport,
        children: children,
      ),
    );
}
