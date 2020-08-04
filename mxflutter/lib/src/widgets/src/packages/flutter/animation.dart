//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'src/animation/listener_helpers.dart';
import 'src/animation/animation_controller.dart';
import 'src/animation/curves.dart';
import 'src/animation/tween_sequence.dart';


Map<String, MXFunctionInvoke> registerAnimationSeries() {
  Map<String, MXFunctionInvoke> m = {};
  m.addAll(registerListenerHelpersSeries());
  m.addAll(registerAnimationControllerSeries());
  m.addAll(registerCurvesSeries());
  m.addAll(registerTweenSequenceSeries());
  return m;
}
