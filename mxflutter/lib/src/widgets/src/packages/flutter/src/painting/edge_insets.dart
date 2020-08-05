//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/edge_insets.dart';
import 'dart:ui';
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
  "edgeInsets.fromLTRB",
    (
      {
      double left,
      double top,
      double right,
      double bottom,
      }
    ) =>
      EdgeInsets.fromLTRB(
      left,
      top,
      right,
      bottom,
    ),
);
var _edgeInsets_all = MXFunctionInvoke(
  "edgeInsets.all",
    (
      {
      double value,
      }
    ) =>
      EdgeInsets.all(
      value,
    ),
);
var _edgeInsets_only = MXFunctionInvoke(
  "edgeInsets.only",
    (
      {
      double left = 0.0,
      double top = 0.0,
      double right = 0.0,
      double bottom = 0.0,
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
  "edgeInsets.symmetric",
    (
      {
      double vertical = 0.0,
      double horizontal = 0.0,
      }
    ) =>
      EdgeInsets.symmetric(
      vertical: vertical?.toDouble(),
      horizontal: horizontal?.toDouble(),
    ),
);
var _edgeInsets_fromWindowPadding = MXFunctionInvoke(
  "edgeInsets.fromWindowPadding",
    (
      {
      WindowPadding padding,
      double devicePixelRatio,
      }
    ) =>
      EdgeInsets.fromWindowPadding(
      padding,
      devicePixelRatio,
    ),
);
var _edgeInsetsDirectional_fromSTEB = MXFunctionInvoke(
  "edgeInsetsDirectional.fromSTEB",
    (
      {
      double start,
      double top,
      double end,
      double bottom,
      }
    ) =>
      EdgeInsetsDirectional.fromSTEB(
      start,
      top,
      end,
      bottom,
    ),
);
var _edgeInsetsDirectional_only = MXFunctionInvoke(
  "edgeInsetsDirectional.only",
    (
      {
      double start = 0.0,
      double top = 0.0,
      double end = 0.0,
      double bottom = 0.0,
      }
    ) =>
      EdgeInsetsDirectional.only(
      start: start?.toDouble(),
      top: top?.toDouble(),
      end: end?.toDouble(),
      bottom: bottom?.toDouble(),
    ),
);
