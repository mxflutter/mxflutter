//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/gestures/tap.dart';


class MXProxyTap {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[tapDownDetails.funName] = tapDownDetails;
    m[tapUpDetails.funName] = tapUpDetails;
    m[tapGestureRecognizer.funName] = tapGestureRecognizer;
    return m;
  }
  static var tapDownDetails = MXFunctionInvoke(
      "TapDownDetails",
      ({
        Offset globalPosition,
        Offset localPosition,
        PointerDeviceKind kind,
      }) =>
        TapDownDetails(
        globalPosition: globalPosition,
        localPosition: localPosition,
        kind: kind,
      ),
    );
  static var tapUpDetails = MXFunctionInvoke(
      "TapUpDetails",
      ({
        Offset globalPosition,
        Offset localPosition,
      }) =>
        TapUpDetails(
        globalPosition: globalPosition,
        localPosition: localPosition,
      ),
    );
  static var tapGestureRecognizer = MXFunctionInvoke(
      "TapGestureRecognizer",
      ({
        Object debugOwner,
      }) =>
        TapGestureRecognizer(
        debugOwner: debugOwner,
      ),
    );
}
