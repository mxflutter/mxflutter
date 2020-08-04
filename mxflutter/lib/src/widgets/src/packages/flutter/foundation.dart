//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'src/foundation/annotations.dart';
import 'src/foundation/debug.dart';
import 'src/foundation/basic_types.dart';
import 'src/foundation/binding.dart';
import 'src/foundation/_bitfield_web.dart';
import 'src/foundation/change_notifier.dart';
import 'src/foundation/collections.dart';
import 'src/foundation/consolidate_response.dart';
import 'src/foundation/constants.dart';
import 'src/foundation/_isolates_web.dart';
import 'src/foundation/key.dart';
import 'src/foundation/licenses.dart';
import 'src/foundation/node.dart';
import 'src/foundation/object.dart';
import 'src/foundation/observer_list.dart';
import 'src/foundation/_platform_web.dart';
import 'src/foundation/print.dart';
import 'src/foundation/profile.dart';
import 'src/foundation/serialization.dart';
import 'src/foundation/stack_frame.dart';
import 'src/foundation/synchronous_future.dart';
import 'src/foundation/unicode.dart';


Map<String, MXFunctionInvoke> registerFoundationSeries() {
  Map<String, MXFunctionInvoke> m = {};
  m.addAll(registerAnnotationsSeries());
  m.addAll(registerDebugSeries());
  m.addAll(registerBasicTypesSeries());
  m.addAll(registerBindingSeries());
  m.addAll(registerBitfieldWebSeries());
  m.addAll(registerChangeNotifierSeries());
  m.addAll(registerCollectionsSeries());
  m.addAll(registerConsolidateResponseSeries());
  m.addAll(registerConstantsSeries());
  m.addAll(registerIsolatesWebSeries());
  m.addAll(registerKeySeries());
  m.addAll(registerLicensesSeries());
  m.addAll(registerNodeSeries());
  m.addAll(registerObjectSeries());
  m.addAll(registerObserverListSeries());
  m.addAll(registerPlatformWebSeries());
  m.addAll(registerPrintSeries());
  m.addAll(registerProfileSeries());
  m.addAll(registerSerializationSeries());
  m.addAll(registerStackFrameSeries());
  m.addAll(registerSynchronousFutureSeries());
  m.addAll(registerUnicodeSeries());
  return m;
}
