//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
    (
      {
      Widget child,
      ui.PlaceholderAlignment alignment = PlaceholderAlignment.bottom,
      ui.TextBaseline baseline,
      TextStyle style,
      }
    ) =>
      WidgetSpan(
      child: child,
      alignment: alignment,
      baseline: baseline,
      style: style,
    ),
);
