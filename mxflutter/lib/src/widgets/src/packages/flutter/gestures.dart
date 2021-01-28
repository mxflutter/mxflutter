//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import './src/gestures/arena.dart';
import './src/gestures/binding.dart';
import './src/gestures/constants.dart';
import './src/gestures/converter.dart';
import './src/gestures/debug.dart';
import './src/gestures/drag.dart';
import './src/gestures/drag_details.dart';
import './src/gestures/eager.dart';
import './src/gestures/events.dart';
import './src/gestures/force_press.dart';
import './src/gestures/hit_test.dart';
import './src/gestures/long_press.dart';
import './src/gestures/lsq_solver.dart';
import './src/gestures/monodrag.dart';
import './src/gestures/multidrag.dart';
import './src/gestures/multitap.dart';
import './src/gestures/pointer_router.dart';
import './src/gestures/pointer_signal_resolver.dart';
import './src/gestures/recognizer.dart';
import './src/gestures/scale.dart';
import './src/gestures/tap.dart';
import './src/gestures/team.dart';
import './src/gestures/velocity_tracker.dart';

Map<String, MXFunctionInvoke> registerGesturesLibrarySeries() {
  Map<String, MXFunctionInvoke> m = {};
  m.addAll(registerArenaSeries());
  m.addAll(registerBindingSeries());
  m.addAll(registerConstantsSeries());
  m.addAll(registerConverterSeries());
  m.addAll(registerDebugSeries());
  m.addAll(registerDragSeries());
  m.addAll(registerDragDetailsSeries());
  m.addAll(registerEagerSeries());
  m.addAll(registerEventsSeries());
  m.addAll(registerForcePressSeries());
  m.addAll(registerHitTestSeries());
  m.addAll(registerLongPressSeries());
  m.addAll(registerLsqSolverSeries());
  m.addAll(registerMonodragSeries());
  m.addAll(registerMultidragSeries());
  m.addAll(registerMultitapSeries());
  m.addAll(registerPointerRouterSeries());
  m.addAll(registerPointerSignalResolverSeries());
  m.addAll(registerRecognizerSeries());
  m.addAll(registerScaleSeries());
  m.addAll(registerTapSeries());
  m.addAll(registerTeamSeries());
  m.addAll(registerVelocityTrackerSeries());
  return m;
}
