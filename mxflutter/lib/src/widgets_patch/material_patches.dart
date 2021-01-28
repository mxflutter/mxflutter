//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'dart:convert';
import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import '../mx_common.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerMaterialPatches() {
  var m = <String, MXFunctionInvoke>{};
  m[_themeOf.funName] = _themeOf;
  return m;
}

var _themeOf = MXFunctionInvoke(
  "Theme#of",
  ({BuildContext context, bool shadowThemeOnly = false}) {
    var themeData = Theme.of(context, shadowThemeOnly: shadowThemeOnly);
    return jsonEncode(MXUtil.cThemeDataToJson(themeData));
  },
  ["context", "shadowThemeOnly"],
);
