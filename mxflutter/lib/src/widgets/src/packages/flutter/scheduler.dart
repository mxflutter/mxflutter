//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'src/scheduler/binding.dart';
import 'src/scheduler/debug.dart';
import 'src/scheduler/priority.dart';
import 'src/scheduler/ticker.dart';


class MXProxyScheduler {
  static Map<String, MXFunctionInvoke> registerSeries() {
    Map<String, MXFunctionInvoke> m = {};
    m.addAll(MXProxyBinding.registerSeries());
    m.addAll(MXProxyDebug.registerSeries());
    m.addAll(MXProxyPriority.registerSeries());
    m.addAll(MXProxyTicker.registerSeries());
    return m;
  }
}
