//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/edge_insets.dart';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerEdgeInsetsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_edgeInsets_fromLTRB.funName] = _edgeInsets_fromLTRB;
  m[_edgeInsets_all.funName] = _edgeInsets_all;
  m[_edgeInsets_only.funName] = _edgeInsets_only;
  m[_edgeInsets_symmetric.funName] = _edgeInsets_symmetric;
  m[_edgeInsets_fromWindowPadding.funName] = _edgeInsets_fromWindowPadding;
  m[_edgeInsetsDirectional_fromSTEB.funName] = _edgeInsetsDirectional_fromSTEB;
  m[_edgeInsetsDirectional_only.funName] = _edgeInsetsDirectional_only;
  return m;
}
var _edgeInsets_fromLTRB = MXFunctionInvoke(
  "EdgeInsets.fromLTRB",
    (
      {
      dynamic left,
      dynamic top,
      dynamic right,
      dynamic bottom,
      }
    ) =>
      EdgeInsets.fromLTRB(
      left?.toDouble(),
      top?.toDouble(),
      right?.toDouble(),
      bottom?.toDouble(),
    ),
);
var _edgeInsets_all = MXFunctionInvoke(
  "EdgeInsets.all",
    (
      {
      dynamic value,
      }
    ) =>
      EdgeInsets.all(
      value?.toDouble(),
    ),
);
var _edgeInsets_only = MXFunctionInvoke(
  "EdgeInsets.only",
    (
      {
      dynamic left = 0.0,
      dynamic top = 0.0,
      dynamic right = 0.0,
      dynamic bottom = 0.0,
      }
    ) =>
      EdgeInsets.only(
      left: left?.toDouble(),
      top: top?.toDouble(),
      right: right?.toDouble(),
      bottom: bottom?.toDouble(),
    ),
);
var _edgeInsets_symmetric = MXFunctionInvoke(
  "EdgeInsets.symmetric",
    (
      {
      dynamic vertical = 0.0,
      dynamic horizontal = 0.0,
      }
    ) =>
      EdgeInsets.symmetric(
      vertical: vertical?.toDouble(),
      horizontal: horizontal?.toDouble(),
    ),
);
var _edgeInsets_fromWindowPadding = MXFunctionInvoke(
  "EdgeInsets.fromWindowPadding",
    (
      {
      ui.WindowPadding padding,
      dynamic devicePixelRatio,
      }
    ) =>
      EdgeInsets.fromWindowPadding(
      padding,
      devicePixelRatio?.toDouble(),
    ),
);
var _edgeInsetsDirectional_fromSTEB = MXFunctionInvoke(
  "EdgeInsetsDirectional.fromSTEB",
    (
      {
      dynamic start,
      dynamic top,
      dynamic end,
      dynamic bottom,
      }
    ) =>
      EdgeInsetsDirectional.fromSTEB(
      start?.toDouble(),
      top?.toDouble(),
      end?.toDouble(),
      bottom?.toDouble(),
    ),
);
var _edgeInsetsDirectional_only = MXFunctionInvoke(
  "EdgeInsetsDirectional.only",
    (
      {
      dynamic start = 0.0,
      dynamic top = 0.0,
      dynamic end = 0.0,
      dynamic bottom = 0.0,
      }
    ) =>
      EdgeInsetsDirectional.only(
      start: start?.toDouble(),
      top: top?.toDouble(),
      end: end?.toDouble(),
      bottom: bottom?.toDouble(),
    ),
);
