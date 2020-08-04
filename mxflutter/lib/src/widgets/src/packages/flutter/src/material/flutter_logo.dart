//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/flutter_logo.dart';


class MXProxyFlutterLogo {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[flutterLogo.funName] = flutterLogo;
    return m;
  }
  static var flutterLogo = MXFunctionInvoke(
      "FlutterLogo",
      ({
        Key key,
        dynamic size,
        MaterialColor colors,
        Color textColor,
        FlutterLogoStyle style = FlutterLogoStyle.markOnly,
        Duration duration,
        Curve curve,
      }) =>
        FlutterLogo(
        key: key,
        size: size?.toDouble(),
        colors: colors,
        textColor: textColor,
        style: style,
        duration: duration,
        curve: curve,
      ),
    );
}
