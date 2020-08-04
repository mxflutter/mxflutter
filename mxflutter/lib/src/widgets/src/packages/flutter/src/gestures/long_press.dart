//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/gestures/long_press.dart';


class MXProxyLongPress {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[longPressStartDetails.funName] = longPressStartDetails;
    m[longPressMoveUpdateDetails.funName] = longPressMoveUpdateDetails;
    m[longPressEndDetails.funName] = longPressEndDetails;
    m[longPressGestureRecognizer.funName] = longPressGestureRecognizer;
    return m;
  }
  static var longPressStartDetails = MXFunctionInvoke(
      "LongPressStartDetails",
      ({
        Offset globalPosition,
        Offset localPosition,
      }) =>
        LongPressStartDetails(
        globalPosition: globalPosition,
        localPosition: localPosition,
      ),
    );
  static var longPressMoveUpdateDetails = MXFunctionInvoke(
      "LongPressMoveUpdateDetails",
      ({
        Offset globalPosition,
        Offset localPosition,
        Offset offsetFromOrigin,
        Offset localOffsetFromOrigin,
      }) =>
        LongPressMoveUpdateDetails(
        globalPosition: globalPosition,
        localPosition: localPosition,
        offsetFromOrigin: offsetFromOrigin,
        localOffsetFromOrigin: localOffsetFromOrigin,
      ),
    );
  static var longPressEndDetails = MXFunctionInvoke(
      "LongPressEndDetails",
      ({
        Offset globalPosition,
        Offset localPosition,
        Velocity velocity,
      }) =>
        LongPressEndDetails(
        globalPosition: globalPosition,
        localPosition: localPosition,
        velocity: velocity,
      ),
    );
  static var longPressGestureRecognizer = MXFunctionInvoke(
      "LongPressGestureRecognizer",
      ({
        Duration duration,
        dynamic postAcceptSlopTolerance,
        PointerDeviceKind kind,
        Object debugOwner,
      }) =>
        LongPressGestureRecognizer(
        duration: duration,
        postAcceptSlopTolerance: postAcceptSlopTolerance?.toDouble(),
        kind: kind,
        debugOwner: debugOwner,
      ),
    );
}
