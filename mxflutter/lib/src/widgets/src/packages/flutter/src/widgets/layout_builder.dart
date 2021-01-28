//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/layout_builder.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerLayoutBuilderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_layoutBuilder.funName] = _layoutBuilder;
  return m;
}

var _layoutBuilder = MXFunctionInvoke(
  "LayoutBuilder",
  ({
    Key key,
    dynamic builder,
  }) =>
      LayoutBuilder(
    key: key,
    builder: null,
  ),
  [
    "key",
    "builder",
  ],
);
