//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/animated_icons.dart';


class MXProxyAnimatedIcons {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[animatedIcon.funName] = animatedIcon;
    return m;
  }
  static var animatedIcon = MXFunctionInvoke(
      "AnimatedIcon",
      ({
        Key key,
        AnimatedIconData icon,
        Animation<double> progress,
        Color color,
        dynamic size,
        String semanticLabel,
        TextDirection textDirection,
      }) =>
        AnimatedIcon(
        key: key,
        icon: icon,
        progress: progress,
        color: color,
        size: size?.toDouble(),
        semanticLabel: semanticLabel,
        textDirection: textDirection,
      ),
    );
}
