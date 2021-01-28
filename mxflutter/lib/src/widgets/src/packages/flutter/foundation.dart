//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import './src/foundation/annotations.dart';
import './src/foundation/assertions.dart';
import './src/foundation/basic_types.dart';
import './src/foundation/binding.dart';
import './src/foundation/bitfield.dart';
import './src/foundation/change_notifier.dart';
import './src/foundation/collections.dart';
import './src/foundation/consolidate_response.dart';
import './src/foundation/constants.dart';
import './src/foundation/debug.dart';
import './src/foundation/diagnostics.dart';
import './src/foundation/isolates.dart';
import './src/foundation/key.dart';
import './src/foundation/licenses.dart';
import './src/foundation/node.dart';
import './src/foundation/object.dart';
import './src/foundation/observer_list.dart';
import './src/foundation/platform.dart';
import './src/foundation/print.dart';
import './src/foundation/serialization.dart';
import './src/foundation/stack_frame.dart';
import './src/foundation/synchronous_future.dart';
import './src/foundation/unicode.dart';

Map<String, MXFunctionInvoke> registerFoundationLibrarySeries() {
  Map<String, MXFunctionInvoke> m = {};
  m.addAll(registerAnnotationsSeries());
  m.addAll(registerAssertionsSeries());
  m.addAll(registerBasicTypesSeries());
  m.addAll(registerBindingSeries());
  m.addAll(registerBitfieldSeries());
  m.addAll(registerChangeNotifierSeries());
  m.addAll(registerCollectionsSeries());
  m.addAll(registerConsolidateResponseSeries());
  m.addAll(registerConstantsSeries());
  m.addAll(registerDebugSeries());
  m.addAll(registerDiagnosticsSeries());
  m.addAll(registerIsolatesSeries());
  m.addAll(registerKeySeries());
  m.addAll(registerLicensesSeries());
  m.addAll(registerNodeSeries());
  m.addAll(registerObjectSeries());
  m.addAll(registerObserverListSeries());
  m.addAll(registerPlatformSeries());
  m.addAll(registerPrintSeries());
  m.addAll(registerSerializationSeries());
  m.addAll(registerStackFrameSeries());
  m.addAll(registerSynchronousFutureSeries());
  m.addAll(registerUnicodeSeries());
  return m;
}
