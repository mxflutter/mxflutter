//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'src/semantics/binding.dart';
import 'src/semantics/debug.dart';
import 'src/semantics/semantics.dart';
import 'src/semantics/semantics_service.dart';
import 'src/semantics/semantics_event.dart';


class MXProxySemantics {
  static Map<String, MXFunctionInvoke> registerSeries() {
    Map<String, MXFunctionInvoke> m = {};
    m.addAll(MXProxyBinding.registerSeries());
    m.addAll(MXProxyDebug.registerSeries());
    m.addAll(MXProxySemantics.registerSeries());
    m.addAll(MXProxySemanticsService.registerSeries());
    m.addAll(MXProxySemanticsEvent.registerSeries());
    return m;
  }
}
