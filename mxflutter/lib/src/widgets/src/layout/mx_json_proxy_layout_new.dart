//  mx_json_proxy_layout.dart
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:mxflutter/src/mirror/mx_mirror.dart';

Map<String, MXFunctionInvoke> registerLayoutSeries() {
  var m = <String, MXFunctionInvoke>{};

  m[stack.funName] = stack;
  m[stackFit.funName] = stackFit;

  return m;
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

var stackFit = MXFunctionInvoke(
  "StackFit",
  ({Map args}) => MXStackFit.parse(args),
);

var stack = MXFunctionInvoke(
  "Stack",
  ({
    Key key,
    AlignmentDirectional alignment = AlignmentDirectional.topStart,
    textDirection,
    dynamic fit = StackFit.loose,
    Overflow overflow = Overflow.clip,
    List<dynamic> children = const <dynamic>[],
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
