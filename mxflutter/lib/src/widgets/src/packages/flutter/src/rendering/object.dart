//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/object.dart';
import 'dart:developer';
import 'dart:ui' as ui;
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/semantics.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/binding.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/src/rendering/layer.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerObjectSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_parentData.funName] = _parentData;
  m[_paintingContext.funName] = _paintingContext;
  m[_paintingContextRepaintCompositedChild.funName] = _paintingContextRepaintCompositedChild;
  m[_paintingContextDebugInstrumentRepaintCompositedChild.funName] =
      _paintingContextDebugInstrumentRepaintCompositedChild;
  m[_pipelineOwner.funName] = _pipelineOwner;
  m[_flutterErrorDetailsForRendering.funName] = _flutterErrorDetailsForRendering;
  m[_diagnosticsDebugCreator.funName] = _diagnosticsDebugCreator;
  return m;
}

var _parentData = MXFunctionInvoke(
  "ParentData",
  () => ParentData(),
  [],
);
var _paintingContext = MXFunctionInvoke(
  "PaintingContext",
  ({
    ContainerLayer containerLayer,
    ui.Rect estimatedBounds,
  }) =>
      PaintingContext(
    containerLayer,
    estimatedBounds,
  ),
  [
    "containerLayer",
    "estimatedBounds",
  ],
);
var _paintingContextRepaintCompositedChild = MXFunctionInvoke(
  "PaintingContext.repaintCompositedChild",
  ({
    RenderObject child,
    bool debugAlsoPaintedParent = false,
  }) =>
      PaintingContext.repaintCompositedChild(
    child,
    debugAlsoPaintedParent: debugAlsoPaintedParent,
  ),
  [
    "child",
    "debugAlsoPaintedParent",
  ],
);
var _paintingContextDebugInstrumentRepaintCompositedChild = MXFunctionInvoke(
  "PaintingContext.debugInstrumentRepaintCompositedChild",
  ({
    RenderObject child,
    bool debugAlsoPaintedParent = false,
    PaintingContext customContext,
  }) =>
      PaintingContext.debugInstrumentRepaintCompositedChild(
    child,
    debugAlsoPaintedParent: debugAlsoPaintedParent,
    customContext: customContext,
  ),
  [
    "child",
    "debugAlsoPaintedParent",
    "customContext",
  ],
);
var _pipelineOwner = MXFunctionInvoke(
  "PipelineOwner",
  ({
    dynamic onNeedVisualUpdate,
    dynamic onSemanticsOwnerCreated,
    dynamic onSemanticsOwnerDisposed,
  }) =>
      PipelineOwner(
    onNeedVisualUpdate: createVoidCallbackClosure(_pipelineOwner.buildOwner, onNeedVisualUpdate),
    onSemanticsOwnerCreated: createVoidCallbackClosure(_pipelineOwner.buildOwner, onSemanticsOwnerCreated),
    onSemanticsOwnerDisposed: createVoidCallbackClosure(_pipelineOwner.buildOwner, onSemanticsOwnerDisposed),
  ),
  [
    "onNeedVisualUpdate",
    "onSemanticsOwnerCreated",
    "onSemanticsOwnerDisposed",
  ],
);
var _flutterErrorDetailsForRendering = MXFunctionInvoke(
  "FlutterErrorDetailsForRendering",
  ({
    dynamic exception,
    StackTrace stack,
    String library,
    DiagnosticsNode context,
    RenderObject renderObject,
    dynamic informationCollector,
    bool silent = false,
  }) =>
      FlutterErrorDetailsForRendering(
    exception: exception,
    stack: stack,
    library: library,
    context: context,
    renderObject: renderObject,
    informationCollector: null,
    silent: silent,
  ),
  [
    "exception",
    "stack",
    "library",
    "context",
    "renderObject",
    "informationCollector",
    "silent",
  ],
);
var _diagnosticsDebugCreator = MXFunctionInvoke(
  "DiagnosticsDebugCreator",
  ({
    Object value,
  }) =>
      DiagnosticsDebugCreator(
    value,
  ),
  [
    "value",
  ],
);
