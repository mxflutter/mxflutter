//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/performance_overlay.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/object.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPerformanceOverlaySeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_performanceOverlayOption.funName] = _performanceOverlayOption;
  m[_renderPerformanceOverlay.funName] = _renderPerformanceOverlay;
  return m;
}

var _performanceOverlayOption = MXFunctionInvoke("PerformanceOverlayOption",
    ({String name, int index}) => MXPerformanceOverlayOption.parse(name, index), ["name", "index"]);
var _renderPerformanceOverlay = MXFunctionInvoke(
  "RenderPerformanceOverlay",
  ({
    int optionsMask = 0,
    int rasterizerThreshold = 0,
    bool checkerboardRasterCacheImages = false,
    bool checkerboardOffscreenLayers = false,
  }) =>
      RenderPerformanceOverlay(
    optionsMask: optionsMask,
    rasterizerThreshold: rasterizerThreshold,
    checkerboardRasterCacheImages: checkerboardRasterCacheImages,
    checkerboardOffscreenLayers: checkerboardOffscreenLayers,
  ),
  [
    "optionsMask",
    "rasterizerThreshold",
    "checkerboardRasterCacheImages",
    "checkerboardOffscreenLayers",
  ],
);

class MXPerformanceOverlayOption {
  static PerformanceOverlayOption parse(String name, int index) {
    switch (name) {
      case 'PerformanceOverlayOption.displayRasterizerStatistics':
        return PerformanceOverlayOption.displayRasterizerStatistics;
      case 'PerformanceOverlayOption.visualizeRasterizerStatistics':
        return PerformanceOverlayOption.visualizeRasterizerStatistics;
      case 'PerformanceOverlayOption.displayEngineStatistics':
        return PerformanceOverlayOption.displayEngineStatistics;
      case 'PerformanceOverlayOption.visualizeEngineStatistics':
        return PerformanceOverlayOption.visualizeEngineStatistics;
    }
    return null;
  }
}
