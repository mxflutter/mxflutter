//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'dart:convert';
import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import '../mx_common.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerWidgetsPatches() {
  var m = <String, MXFunctionInvoke>{};
  m[_mediaQueryOf.funName] = _mediaQueryOf;
  m[_iconThemeOf.funName] = _iconThemeOf;
  return m;
}

var _mediaQueryOf = MXFunctionInvoke(
  "MediaQuery#of",
  ({BuildContext context, bool nullOk = false}) {
    var data = MediaQuery.of(context, nullOk: nullOk);
    return jsonEncode(MXUtil.cMediaQueryDataToJson(data));
  },
  ["context", "nullOk"],
);

var _iconThemeOf = MXFunctionInvoke(
  "IconTheme#of",
  ({BuildContext context}) {
    var data = IconTheme.of(context);
    return jsonEncode(MXUtil.cIconThemeDataToJson(data));
  },
  ["context"],
);
