//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/gestures/force_press.dart';


class MXProxyForcePress {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[forcePressDetails.funName] = forcePressDetails;
    m[forcePressGestureRecognizer.funName] = forcePressGestureRecognizer;
    return m;
  }
  static var forcePressDetails = MXFunctionInvoke(
      "ForcePressDetails",
      ({
        Offset globalPosition,
        Offset localPosition,
        dynamic pressure,
      }) =>
        ForcePressDetails(
        globalPosition: globalPosition,
        localPosition: localPosition,
        pressure: pressure?.toDouble(),
      ),
    );
  static var forcePressGestureRecognizer = MXFunctionInvoke(
      "ForcePressGestureRecognizer",
      ({
        dynamic startPressure = 0.4,
        dynamic peakPressure = 0.85,
        dynamic interpolation,
        Object debugOwner,
        PointerDeviceKind kind,
      }) =>
        ForcePressGestureRecognizer(
        startPressure: startPressure?.toDouble(),
        peakPressure: peakPressure?.toDouble(),
        interpolation: interpolation,
        debugOwner: debugOwner,
        kind: kind,
      ),
    );
}
