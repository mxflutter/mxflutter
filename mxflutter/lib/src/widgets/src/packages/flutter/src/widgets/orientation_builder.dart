//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/orientation_builder.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/layout_builder.dart';
import 'package:flutter/src/widgets/media_query.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerOrientationBuilderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_orientationBuilder.funName] = _orientationBuilder;
  return m;
}

var _orientationBuilder = MXFunctionInvoke(
  "OrientationBuilder",
  ({
    Key key,
    dynamic builder,
  }) =>
      OrientationBuilder(
    key: key,
    builder: null,
  ),
  [
    "key",
    "builder",
  ],
);
