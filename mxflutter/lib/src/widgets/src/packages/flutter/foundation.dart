//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
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


class MXProxyFoundation {
  static Map<String, MXFunctionInvoke> registerSeries() {
    Map<String, MXFunctionInvoke> m = {};
    m.addAll(MXProxyAnnotations.registerSeries());
    m.addAll(MXProxyDebug.registerSeries());
    m.addAll(MXProxyBasicTypes.registerSeries());
    m.addAll(MXProxyBinding.registerSeries());
    m.addAll(MXProxyBitfieldWeb.registerSeries());
    m.addAll(MXProxyChangeNotifier.registerSeries());
    m.addAll(MXProxyCollections.registerSeries());
    m.addAll(MXProxyConsolidateResponse.registerSeries());
    m.addAll(MXProxyConstants.registerSeries());
    m.addAll(MXProxyIsolatesWeb.registerSeries());
    m.addAll(MXProxyKey.registerSeries());
    m.addAll(MXProxyLicenses.registerSeries());
    m.addAll(MXProxyNode.registerSeries());
    m.addAll(MXProxyObject.registerSeries());
    m.addAll(MXProxyObserverList.registerSeries());
    m.addAll(MXProxyPlatformWeb.registerSeries());
    m.addAll(MXProxyPrint.registerSeries());
    m.addAll(MXProxyProfile.registerSeries());
    m.addAll(MXProxySerialization.registerSeries());
    m.addAll(MXProxyStackFrame.registerSeries());
    m.addAll(MXProxySynchronousFuture.registerSeries());
    m.addAll(MXProxyUnicode.registerSeries());
    return m;
  }
}
