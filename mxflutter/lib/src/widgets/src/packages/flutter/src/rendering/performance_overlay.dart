//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/performance_overlay.dart';
import 'package:flutter/src/rendering/box.dart' ;
import 'package:flutter/src/rendering/layer.dart' ;
import 'package:flutter/src/rendering/object.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPerformanceOverlaySeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_performanceOverlayOption.funName] = _performanceOverlayOption;
  m[_renderPerformanceOverlay.funName] = _renderPerformanceOverlay;
  return m;
}
var _performanceOverlayOption = MXFunctionInvoke(
    "PerformanceOverlayOption",
    ({Map args}) => MXPerformanceOverlayOption.parse(args),
  );
var _renderPerformanceOverlay = MXFunctionInvoke(
    "RenderPerformanceOverlay",
    (
      {
      int optionsMask = 0,
      int rasterizerThreshold = 0,
      bool checkerboardRasterCacheImages = false,
      bool checkerboardOffscreenLayers = false,
      }
    ) =>
      RenderPerformanceOverlay(
      optionsMask: optionsMask,
      rasterizerThreshold: rasterizerThreshold,
      checkerboardRasterCacheImages: checkerboardRasterCacheImages,
      checkerboardOffscreenLayers: checkerboardOffscreenLayers,
    ),
);
class MXPerformanceOverlayOption {
  static Map str2VMap = {
    'PerformanceOverlayOption.displayRasterizerStatistics': PerformanceOverlayOption.displayRasterizerStatistics,
    'PerformanceOverlayOption.visualizeRasterizerStatistics': PerformanceOverlayOption.visualizeRasterizerStatistics,
    'PerformanceOverlayOption.displayEngineStatistics': PerformanceOverlayOption.displayEngineStatistics,
    'PerformanceOverlayOption.visualizeEngineStatistics': PerformanceOverlayOption.visualizeEngineStatistics,
  };
  static PerformanceOverlayOption parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
