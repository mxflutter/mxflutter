//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/preferred_size.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPreferredSizeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_preferredSize.funName] = _preferredSize;
  return m;
}

var _preferredSize = MXFunctionInvoke(
  "PreferredSize",
  ({
    Key key,
    Widget child,
    Size preferredSize,
  }) =>
      PreferredSize(
    key: key,
    child: child,
    preferredSize: preferredSize,
  ),
  [
    "key",
    "child",
    "preferredSize",
  ],
);
