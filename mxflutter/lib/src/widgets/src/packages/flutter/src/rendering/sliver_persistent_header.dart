//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver_persistent_header.dart';


class MXProxySliverPersistentHeader {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[overScrollHeaderStretchConfiguration.funName] = overScrollHeaderStretchConfiguration;
    m[floatingHeaderSnapConfiguration.funName] = floatingHeaderSnapConfiguration;
    return m;
  }
  static var overScrollHeaderStretchConfiguration = MXFunctionInvoke(
      "OverScrollHeaderStretchConfiguration",
      ({
        dynamic stretchTriggerOffset = 100.0,
        dynamic onStretchTrigger,
      }) =>
        OverScrollHeaderStretchConfiguration(
        stretchTriggerOffset: stretchTriggerOffset?.toDouble(),
        onStretchTrigger: onStretchTrigger,
      ),
    );
  static var floatingHeaderSnapConfiguration = MXFunctionInvoke(
      "FloatingHeaderSnapConfiguration",
      ({
        TickerProvider vsync,
        Curve curve,
        Duration duration,
      }) =>
        FloatingHeaderSnapConfiguration(
        vsync: vsync,
        curve: curve,
        duration: duration,
      ),
    );
}
