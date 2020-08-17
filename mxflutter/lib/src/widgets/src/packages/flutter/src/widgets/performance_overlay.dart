//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/performance_overlay.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPerformanceOverlaySeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_performanceOverlay.funName] = _performanceOverlay;
  m[_performanceOverlay_allEnabled.funName] = _performanceOverlay_allEnabled;
  return m;
}

var _performanceOverlay = MXFunctionInvoke(
  "PerformanceOverlay",
  ({
    Key key,
    int optionsMask = 0,
    int rasterizerThreshold = 0,
    bool checkerboardRasterCacheImages = false,
    bool checkerboardOffscreenLayers = false,
  }) =>
      PerformanceOverlay(
    key: key,
    optionsMask: optionsMask,
    rasterizerThreshold: rasterizerThreshold,
    checkerboardRasterCacheImages: checkerboardRasterCacheImages,
    checkerboardOffscreenLayers: checkerboardOffscreenLayers,
  ),
  [
    "key",
    "optionsMask",
    "rasterizerThreshold",
    "checkerboardRasterCacheImages",
    "checkerboardOffscreenLayers",
  ],
);
var _performanceOverlay_allEnabled = MXFunctionInvoke(
  "PerformanceOverlay.allEnabled",
  ({
    Key key,
    int rasterizerThreshold = 0,
    bool checkerboardRasterCacheImages = false,
    bool checkerboardOffscreenLayers = false,
  }) =>
      PerformanceOverlay.allEnabled(
    key: key,
    rasterizerThreshold: rasterizerThreshold,
    checkerboardRasterCacheImages: checkerboardRasterCacheImages,
    checkerboardOffscreenLayers: checkerboardOffscreenLayers,
  ),
  [
    "key",
    "rasterizerThreshold",
    "checkerboardRasterCacheImages",
    "checkerboardOffscreenLayers",
  ],
);
