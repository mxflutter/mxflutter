//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/widget_span.dart';
import 'dart:ui' as ui;
import 'package:flutter/painting.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerWidgetSpanSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_widgetSpan.funName] = _widgetSpan;
  return m;
}

var _widgetSpan = MXFunctionInvoke(
  "WidgetSpan",
  ({
    Widget child,
    ui.PlaceholderAlignment alignment = PlaceholderAlignment.bottom,
    ui.TextBaseline baseline,
    TextStyle style,
  }) =>
      WidgetSpan(
    child: child,
    alignment: alignment,
    baseline: baseline,
    style: style,
  ),
  [
    "child",
    "alignment",
    "baseline",
    "style",
  ],
);
