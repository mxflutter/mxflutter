//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'src/animation/listener_helpers.dart';
import 'src/animation/animation_controller.dart';
import 'src/animation/curves.dart';
import 'src/animation/tween_sequence.dart';


class MXProxyAnimation {
  static Map<String, MXFunctionInvoke> registerSeries() {
    Map<String, MXFunctionInvoke> m = {};
    m.addAll(MXProxyListenerHelpers.registerSeries());
    m.addAll(MXProxyAnimationController.registerSeries());
    m.addAll(MXProxyCurves.registerSeries());
    m.addAll(MXProxyTweenSequence.registerSeries());
    return m;
  }
}
