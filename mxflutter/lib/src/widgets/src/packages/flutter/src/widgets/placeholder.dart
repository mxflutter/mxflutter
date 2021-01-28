//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPlaceholderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_placeholder.funName] = _placeholder;
  return m;
}

var _placeholder = MXFunctionInvoke(
  "Placeholder",
  ({
    Key key,
    Color color = const Color(0xFF455A64),
    dynamic strokeWidth = 2.0,
    dynamic fallbackWidth = 400.0,
    dynamic fallbackHeight = 400.0,
  }) =>
      Placeholder(
    key: key,
    color: color,
    strokeWidth: strokeWidth?.toDouble(),
    fallbackWidth: fallbackWidth?.toDouble(),
    fallbackHeight: fallbackHeight?.toDouble(),
  ),
  [
    "key",
    "color",
    "strokeWidth",
    "fallbackWidth",
    "fallbackHeight",
  ],
);
