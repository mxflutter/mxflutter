//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'src/semantics/binding.dart';
import 'src/semantics/debug.dart';
import 'src/semantics/semantics.dart';
import 'src/semantics/semantics_service.dart';
import 'src/semantics/semantics_event.dart';


Map<String, MXFunctionInvoke> registerSemanticsLibrarySeries() {
  Map<String, MXFunctionInvoke> m = {};
  m.addAll(registerBindingSeries());
  m.addAll(registerDebugSeries());
  m.addAll(registerSemanticsSeries());
  m.addAll(registerSemanticsServiceSeries());
  m.addAll(registerSemanticsEventSeries());
  return m;
}
