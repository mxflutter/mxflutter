//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import './src/scheduler/binding.dart';
import './src/scheduler/debug.dart';
import './src/scheduler/priority.dart';
import './src/scheduler/ticker.dart';

Map<String, MXFunctionInvoke> registerSchedulerLibrarySeries() {
  Map<String, MXFunctionInvoke> m = {};
  m.addAll(registerBindingSeries());
  m.addAll(registerDebugSeries());
  m.addAll(registerPrioritySeries());
  m.addAll(registerTickerSeries());
  return m;
}
