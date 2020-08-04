//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/card.dart';


class MXProxyCard {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[card.funName] = card;
    return m;
  }
  static var card = MXFunctionInvoke(
      "Card",
      ({
        Key key,
        Color color,
        Color shadowColor,
        dynamic elevation,
        ShapeBorder shape,
        bool borderOnForeground = true,
        EdgeInsetsGeometry margin,
        Clip clipBehavior,
        Widget child,
        bool semanticContainer = true,
      }) =>
        Card(
        key: key,
        color: color,
        shadowColor: shadowColor,
        elevation: elevation?.toDouble(),
        shape: shape,
        borderOnForeground: borderOnForeground,
        margin: margin,
        clipBehavior: clipBehavior,
        child: child,
        semanticContainer: semanticContainer,
      ),
    );
}
