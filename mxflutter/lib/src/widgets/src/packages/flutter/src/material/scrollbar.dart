//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/scrollbar.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerScrollbarSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_scrollbar.funName] = _scrollbar;
  return m;
}

var _scrollbar = MXFunctionInvoke(
  "Scrollbar",
  ({
    Key key,
    Widget child,
    ScrollController controller,
    bool isAlwaysShown = false,
  }) =>
      Scrollbar(
    key: key,
    child: child,
    controller: controller,
    isAlwaysShown: isAlwaysShown,
  ),
  [
    "key",
    "child",
    "controller",
    "isAlwaysShown",
  ],
);
