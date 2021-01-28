//  MXFlutterFramework
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import '../mirror/mx_mirror.dart';
import '../widgets/mx_widgets.dart';
import '../widgets_patch/patches.dart';

/// 注册自动生成的widget方法。
void mxRegisterBuilderWidgetFunc() {
  // mx_dart_sdk.
  MXMirror.getInstance().registerFunctions(registerMxDartSdkSeries());

  // flutter/animation.
  MXMirror.getInstance().registerFunctions(registerAnimationLibrarySeries());
  // flutter/cupertino.
  MXMirror.getInstance().registerFunctions(registerCupertinoLibrarySeries());
  // flutter/foundation.
  MXMirror.getInstance().registerFunctions(registerFoundationLibrarySeries());
  // flutter/gestures.
  MXMirror.getInstance().registerFunctions(registerGesturesLibrarySeries());
  // flutter/material.
  MXMirror.getInstance().registerFunctions(registerMaterialLibrarySeries());
  // flutter/painting.
  MXMirror.getInstance().registerFunctions(registerPaintingLibrarySeries());
  // flutter/physics.
  MXMirror.getInstance().registerFunctions(registerPhysicsLibrarySeries());
  // flutter/rendering.
  MXMirror.getInstance().registerFunctions(registerRenderingLibrarySeries());
  // flutter/scheduler.
  MXMirror.getInstance().registerFunctions(registerSchedulerLibrarySeries());
  // flutter/semantics.
  MXMirror.getInstance().registerFunctions(registerSemanticsLibrarySeries());
  // flutter/services.
  MXMirror.getInstance().registerFunctions(registerServicesLibrarySeries());
  // flutter/widgets.
  MXMirror.getInstance().registerFunctions(registerWidgetsLibrarySeries());
  // vector_math/vector_math_64.
  MXMirror.getInstance().registerFunctions(registerVectorMath64Series());

  // 最后注册patch
  MXMirror.getInstance().registerFunctions(registerWidgetsPatch());
}
