//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/page_scaffold.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPageScaffoldSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoPageScaffold.funName] = _cupertinoPageScaffold;
  return m;
}

var _cupertinoPageScaffold = MXFunctionInvoke(
  "CupertinoPageScaffold",
  ({
    Key key,
    ObstructingPreferredSizeWidget navigationBar,
    Color backgroundColor,
    bool resizeToAvoidBottomInset = true,
    Widget child,
  }) =>
      CupertinoPageScaffold(
    key: key,
    navigationBar: navigationBar,
    backgroundColor: backgroundColor,
    resizeToAvoidBottomInset: resizeToAvoidBottomInset,
    child: child,
  ),
  [
    "key",
    "navigationBar",
    "backgroundColor",
    "resizeToAvoidBottomInset",
    "child",
  ],
);
