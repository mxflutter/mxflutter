//  mx_json_proxy_layout.dart
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:mxflutter/src/mx_function_invoke.dart';
import 'package:mxflutter/src/mx_common_function.dart';
import 'package:mxflutter/src/mx_build_owner.dart';

class MXRegisterLayoutSeries {
  static Map<String, MXFunctionInvoke> registerSeries() {
    Map<String, MXFunctionInvoke> m = {};

    m[stack.funName] = stack;

    return m;
  }
}

class MXStackFit {
  static Map str2VMap = {
    "StackFit.loose": StackFit.loose,
    "StackFit.expand": StackFit.expand,
    "StackFit.passthrough": StackFit.passthrough,
  };

  static StackFit parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  } 
}

var stack = MXFunctionInvoke(
  "Stack",
  ({
    Key key,
    AlignmentDirectional alignment = AlignmentDirectional.topStart,
    textDirection,
    dynamic fit = StackFit.loose,
    Overflow overflow = Overflow.clip,
    List<dynamic> children = const <dynamic>[],

    // 自定义参数
    MXJsonBuildOwner buildOwner,
  }) =>
      Stack(
    key: key,
    alignment: alignment,
    textDirection: textDirection,
    fit: MXStackFit.parse(fit),
    overflow: overflow,
    children: toListT<Widget>(children),
  ),
);
