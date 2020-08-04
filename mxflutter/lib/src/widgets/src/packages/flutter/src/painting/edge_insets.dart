//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/edge_insets.dart';


class MXProxyEdgeInsets {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
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
  static var edgeInsets_fromLTRB = MXFunctionInvoke(
    "edgeInsets.fromLTRB",
      ({
        double left,
        double top,
        double right,
        double bottom,
      }) =>
        EdgeInsets.fromLTRB(
        left,
        top,
        right,
        bottom,
      ),
    );
  static var edgeInsets_all = MXFunctionInvoke(
    "edgeInsets.all",
      ({
        double value,
      }) =>
        EdgeInsets.all(
        value,
      ),
    );
  static var edgeInsets_only = MXFunctionInvoke(
    "edgeInsets.only",
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
    );
  static var edgeInsets_symmetric = MXFunctionInvoke(
    "edgeInsets.symmetric",
      ({
        dynamic vertical = 0.0,
        dynamic horizontal = 0.0,
      }) =>
        EdgeInsets.symmetric(
        vertical: vertical?.toDouble(),
        horizontal: horizontal?.toDouble(),
      ),
    );
  static var edgeInsets_fromWindowPadding = MXFunctionInvoke(
    "edgeInsets.fromWindowPadding",
      ({
        WindowPadding padding,
        double devicePixelRatio,
      }) =>
        EdgeInsets.fromWindowPadding(
        padding,
        devicePixelRatio,
      ),
    );
  static var edgeInsetsDirectional_fromSTEB = MXFunctionInvoke(
    "edgeInsetsDirectional.fromSTEB",
      ({
        double start,
        double top,
        double end,
        double bottom,
      }) =>
        EdgeInsetsDirectional.fromSTEB(
        start,
        top,
        end,
        bottom,
      ),
    );
  static var edgeInsetsDirectional_only = MXFunctionInvoke(
    "edgeInsetsDirectional.only",
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
    );
}
