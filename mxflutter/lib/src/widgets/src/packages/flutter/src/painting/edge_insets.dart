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
  m[edgeInsets_fromLTRB.funName] = edgeInsets_fromLTRB;
  m[edgeInsets_all.funName] = edgeInsets_all;
  m[edgeInsets_only.funName] = edgeInsets_only;
  m[edgeInsets_symmetric.funName] = edgeInsets_symmetric;
  m[edgeInsets_fromWindowPadding.funName] = edgeInsets_fromWindowPadding;
  m[edgeInsetsDirectional_fromSTEB.funName] = edgeInsetsDirectional_fromSTEB;
  m[edgeInsetsDirectional_only.funName] = edgeInsetsDirectional_only;
  return m;
}
var edgeInsets_fromLTRB = MXFunctionInvoke(
  "edgeInsets.fromLTRB",
    ({
      dynamic left,
      dynamic top,
      dynamic right,
      dynamic bottom,
    }) =>
      EdgeInsets.fromLTRB(
      left,
      top,
      right,
      bottom,
    ),
);
var edgeInsets_all = MXFunctionInvoke(
  "edgeInsets.all",
    ({
      dynamic value,
    }) =>
      EdgeInsets.all(
      value,
    ),
);
var edgeInsets_only = MXFunctionInvoke(
  "edgeInsets.only",
    ({
      dynamic left = 0.0,
      dynamic top = 0.0,
      dynamic right = 0.0,
      dynamic bottom = 0.0,
    }) =>
      EdgeInsets.only(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
    ),
);
var edgeInsets_symmetric = MXFunctionInvoke(
  "edgeInsets.symmetric",
    ({
      dynamic vertical = 0.0,
      dynamic horizontal = 0.0,
    }) =>
      EdgeInsets.symmetric(
      vertical: vertical,
      horizontal: horizontal,
    ),
);
var edgeInsets_fromWindowPadding = MXFunctionInvoke(
  "edgeInsets.fromWindowPadding",
    ({
      WindowPadding padding,
      dynamic devicePixelRatio,
    }) =>
      EdgeInsets.fromWindowPadding(
      padding,
      devicePixelRatio,
    ),
);
var edgeInsetsDirectional_fromSTEB = MXFunctionInvoke(
  "edgeInsetsDirectional.fromSTEB",
    ({
      dynamic start,
      dynamic top,
      dynamic end,
      dynamic bottom,
    }) =>
      EdgeInsetsDirectional.fromSTEB(
      start,
      top,
      end,
      bottom,
    ),
);
var edgeInsetsDirectional_only = MXFunctionInvoke(
  "edgeInsetsDirectional.only",
    ({
      dynamic start = 0.0,
      dynamic top = 0.0,
      dynamic end = 0.0,
      dynamic bottom = 0.0,
    }) =>
      EdgeInsetsDirectional.only(
      start: start,
      top: top,
      end: end,
      bottom: bottom,
    ),
);
