//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'src/gestures/arena.dart';
import 'src/gestures/binding.dart';
import 'src/gestures/constants.dart';
import 'src/gestures/converter.dart';
import 'src/gestures/debug.dart';
import 'src/gestures/drag.dart';
import 'src/gestures/drag_details.dart';
import 'src/gestures/eager.dart';
import 'src/gestures/events.dart';
import 'src/gestures/force_press.dart';
import 'src/gestures/hit_test.dart';
import 'src/gestures/long_press.dart';
import 'src/gestures/lsq_solver.dart';
import 'src/gestures/monodrag.dart';
import 'src/gestures/multidrag.dart';
import 'src/gestures/multitap.dart';
import 'src/gestures/pointer_router.dart';
import 'src/gestures/pointer_signal_resolver.dart';
import 'src/gestures/recognizer.dart';
import 'src/gestures/scale.dart';
import 'src/gestures/tap.dart';
import 'src/gestures/team.dart';
import 'src/gestures/velocity_tracker.dart';


class MXProxyGestures {
  static Map<String, MXFunctionInvoke> registerSeries() {
    Map<String, MXFunctionInvoke> m = {};
    m.addAll(MXProxyArena.registerSeries());
    m.addAll(MXProxyBinding.registerSeries());
    m.addAll(MXProxyConstants.registerSeries());
    m.addAll(MXProxyConverter.registerSeries());
    m.addAll(MXProxyDebug.registerSeries());
    m.addAll(MXProxyDrag.registerSeries());
    m.addAll(MXProxyDragDetails.registerSeries());
    m.addAll(MXProxyEager.registerSeries());
    m.addAll(MXProxyEvents.registerSeries());
    m.addAll(MXProxyForcePress.registerSeries());
    m.addAll(MXProxyHitTest.registerSeries());
    m.addAll(MXProxyLongPress.registerSeries());
    m.addAll(MXProxyLsqSolver.registerSeries());
    m.addAll(MXProxyMonodrag.registerSeries());
    m.addAll(MXProxyMultidrag.registerSeries());
    m.addAll(MXProxyMultitap.registerSeries());
    m.addAll(MXProxyPointerRouter.registerSeries());
    m.addAll(MXProxyPointerSignalResolver.registerSeries());
    m.addAll(MXProxyRecognizer.registerSeries());
    m.addAll(MXProxyScale.registerSeries());
    m.addAll(MXProxyTap.registerSeries());
    m.addAll(MXProxyTeam.registerSeries());
    m.addAll(MXProxyVelocityTracker.registerSeries());
    return m;
  }
}
