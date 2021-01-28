//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/icon_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/icon_theme_data.dart';
import 'package:flutter/src/widgets/inherited_theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerIconThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_iconTheme.funName] = _iconTheme;
  return m;
}

var _iconTheme = MXFunctionInvoke(
  "IconTheme",
  ({
    Key key,
    IconThemeData data,
    Widget child,
  }) =>
      IconTheme(
    key: key,
    data: data,
    child: child,
  ),
  [
    "key",
    "data",
    "child",
  ],
);
