//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/interactive_viewer.dart';
import 'dart:math' as math;
import 'package:flutter/gestures.dart';
import 'package:flutter/physics.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/gesture_detector.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerInteractiveViewerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_interactiveViewer.funName] = _interactiveViewer;
  m[_transformationController.funName] = _transformationController;
  return m;
}

var _interactiveViewer = MXFunctionInvoke(
  "InteractiveViewer",
  ({
    Key key,
    bool alignPanAxis = false,
    EdgeInsets boundaryMargin = EdgeInsets.zero,
    bool constrained = true,
    dynamic maxScale = 2.5,
    dynamic minScale = 0.8,
    dynamic onInteractionEnd,
    dynamic onInteractionStart,
    dynamic onInteractionUpdate,
    bool panEnabled = true,
    bool scaleEnabled = true,
    TransformationController transformationController,
    Widget child,
  }) =>
      InteractiveViewer(
    key: key,
    alignPanAxis: alignPanAxis,
    boundaryMargin: boundaryMargin,
    constrained: constrained,
    maxScale: maxScale?.toDouble(),
    minScale: minScale?.toDouble(),
    onInteractionEnd:
        createValueChangedGenericClosure<ScaleEndDetails>(_interactiveViewer.buildOwner, onInteractionEnd),
    onInteractionStart:
        createValueChangedGenericClosure<ScaleStartDetails>(_interactiveViewer.buildOwner, onInteractionStart),
    onInteractionUpdate:
        createValueChangedGenericClosure<ScaleUpdateDetails>(_interactiveViewer.buildOwner, onInteractionUpdate),
    panEnabled: panEnabled,
    scaleEnabled: scaleEnabled,
    transformationController: transformationController,
    child: child,
  ),
  [
    "key",
    "alignPanAxis",
    "boundaryMargin",
    "constrained",
    "maxScale",
    "minScale",
    "onInteractionEnd",
    "onInteractionStart",
    "onInteractionUpdate",
    "panEnabled",
    "scaleEnabled",
    "transformationController",
    "child",
  ],
);
var _transformationController = MXFunctionInvoke(
  "TransformationController",
  ({
    Matrix4 value,
  }) =>
      TransformationController(
    value,
  ),
  [
    "value",
  ],
);
