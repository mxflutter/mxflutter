//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import './src/animation/animation.dart';
import './src/animation/animation_controller.dart';
import './src/animation/animations.dart';
import './src/animation/curves.dart';
import './src/animation/listener_helpers.dart';
import './src/animation/tween.dart';
import './src/animation/tween_sequence.dart';

Map<String, MXFunctionInvoke> registerAnimationLibrarySeries() {
  Map<String, MXFunctionInvoke> m = {};
  m.addAll(registerAnimationSeries());
  m.addAll(registerAnimationControllerSeries());
  m.addAll(registerAnimationsSeries());
  m.addAll(registerCurvesSeries());
  m.addAll(registerListenerHelpersSeries());
  m.addAll(registerTweenSeries());
  m.addAll(registerTweenSequenceSeries());
  return m;
}
