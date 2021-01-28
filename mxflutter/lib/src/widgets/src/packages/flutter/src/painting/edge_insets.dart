//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/edge_insets.dart';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerEdgeInsetsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_edgeInsetsGeometryInfinity.funName] = _edgeInsetsGeometryInfinity;
  m[_edgeInsetsZero.funName] = _edgeInsetsZero;
  m[_edgeInsetsFromLTRB.funName] = _edgeInsetsFromLTRB;
  m[_edgeInsetsAll.funName] = _edgeInsetsAll;
  m[_edgeInsetsOnly.funName] = _edgeInsetsOnly;
  m[_edgeInsetsSymmetric.funName] = _edgeInsetsSymmetric;
  m[_edgeInsetsFromWindowPadding.funName] = _edgeInsetsFromWindowPadding;
  m[_edgeInsetsDirectionalZero.funName] = _edgeInsetsDirectionalZero;
  m[_edgeInsetsDirectionalFromSTEB.funName] = _edgeInsetsDirectionalFromSTEB;
  m[_edgeInsetsDirectionalOnly.funName] = _edgeInsetsDirectionalOnly;
  return m;
}

var _edgeInsetsGeometryInfinity = MXFunctionInvoke("EdgeInsetsGeometry.infinity", () => EdgeInsetsGeometry.infinity);
var _edgeInsetsZero = MXFunctionInvoke("EdgeInsets.zero", () => EdgeInsets.zero);
var _edgeInsetsFromLTRB = MXFunctionInvoke(
  "EdgeInsets.fromLTRB",
  ({
    dynamic left,
    dynamic top,
    dynamic right,
    dynamic bottom,
  }) =>
      EdgeInsets.fromLTRB(
    left?.toDouble(),
    top?.toDouble(),
    right?.toDouble(),
    bottom?.toDouble(),
  ),
  [
    "left",
    "top",
    "right",
    "bottom",
  ],
);
var _edgeInsetsAll = MXFunctionInvoke(
  "EdgeInsets.all",
  ({
    dynamic value,
  }) =>
      EdgeInsets.all(
    value?.toDouble(),
  ),
  [
    "value",
  ],
);
var _edgeInsetsOnly = MXFunctionInvoke(
  "EdgeInsets.only",
  ({
    dynamic left = 0.0,
    dynamic top = 0.0,
    dynamic right = 0.0,
    dynamic bottom = 0.0,
  }) =>
      EdgeInsets.only(
    left: left?.toDouble(),
    top: top?.toDouble(),
    right: right?.toDouble(),
    bottom: bottom?.toDouble(),
  ),
  [
    "left",
    "top",
    "right",
    "bottom",
  ],
);
var _edgeInsetsSymmetric = MXFunctionInvoke(
  "EdgeInsets.symmetric",
  ({
    dynamic vertical = 0.0,
    dynamic horizontal = 0.0,
  }) =>
      EdgeInsets.symmetric(
    vertical: vertical?.toDouble(),
    horizontal: horizontal?.toDouble(),
  ),
  [
    "vertical",
    "horizontal",
  ],
);
var _edgeInsetsFromWindowPadding = MXFunctionInvoke(
  "EdgeInsets.fromWindowPadding",
  ({
    ui.WindowPadding padding,
    dynamic devicePixelRatio,
  }) =>
      EdgeInsets.fromWindowPadding(
    padding,
    devicePixelRatio?.toDouble(),
  ),
  [
    "padding",
    "devicePixelRatio",
  ],
);
var _edgeInsetsDirectionalZero = MXFunctionInvoke("EdgeInsetsDirectional.zero", () => EdgeInsetsDirectional.zero);
var _edgeInsetsDirectionalFromSTEB = MXFunctionInvoke(
  "EdgeInsetsDirectional.fromSTEB",
  ({
    dynamic start,
    dynamic top,
    dynamic end,
    dynamic bottom,
  }) =>
      EdgeInsetsDirectional.fromSTEB(
    start?.toDouble(),
    top?.toDouble(),
    end?.toDouble(),
    bottom?.toDouble(),
  ),
  [
    "start",
    "top",
    "end",
    "bottom",
  ],
);
var _edgeInsetsDirectionalOnly = MXFunctionInvoke(
  "EdgeInsetsDirectional.only",
  ({
    dynamic start = 0.0,
    dynamic top = 0.0,
    dynamic end = 0.0,
    dynamic bottom = 0.0,
  }) =>
      EdgeInsetsDirectional.only(
    start: start?.toDouble(),
    top: top?.toDouble(),
    end: end?.toDouble(),
    bottom: bottom?.toDouble(),
  ),
  [
    "start",
    "top",
    "end",
    "bottom",
  ],
);
