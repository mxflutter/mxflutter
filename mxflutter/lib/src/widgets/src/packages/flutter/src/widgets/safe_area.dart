//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/safe_area.dart';


class MXProxySafeArea {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[safeArea.funName] = safeArea;
    m[sliverSafeArea.funName] = sliverSafeArea;
    return m;
  }
  static var safeArea = MXFunctionInvoke(
      "SafeArea",
      ({
        Key key,
        bool left = true,
        bool top = true,
        bool right = true,
        bool bottom = true,
        EdgeInsets minimum,
        bool maintainBottomViewPadding = false,
        Widget child,
      }) =>
        SafeArea(
        key: key,
        left: left,
        top: top,
        right: right,
        bottom: bottom,
        minimum: minimum,
        maintainBottomViewPadding: maintainBottomViewPadding,
        child: child,
      ),
    );
  static var sliverSafeArea = MXFunctionInvoke(
      "SliverSafeArea",
      ({
        Key key,
        bool left = true,
        bool top = true,
        bool right = true,
        bool bottom = true,
        EdgeInsets minimum,
        Widget sliver,
      }) =>
        SliverSafeArea(
        key: key,
        left: left,
        top: top,
        right: right,
        bottom: bottom,
        minimum: minimum,
        sliver: sliver,
      ),
    );
}
