//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/card.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/card_theme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerCardSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_card.funName] = _card;
  return m;
}

var _card = MXFunctionInvoke(
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
  [
    "key",
    "color",
    "shadowColor",
    "elevation",
    "shape",
    "borderOnForeground",
    "margin",
    "clipBehavior",
    "child",
    "semanticContainer",
  ],
);
