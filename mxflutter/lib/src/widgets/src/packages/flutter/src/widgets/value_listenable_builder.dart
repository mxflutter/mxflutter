//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/value_listenable_builder.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerValueListenableBuilderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_valueListenableBuilder.funName] = _valueListenableBuilder;
  return m;
}

var _valueListenableBuilder = MXFunctionInvoke(
  "ValueListenableBuilder",
  ({
    Key key,
    ValueListenable<dynamic> valueListenable,
    dynamic builder,
    Widget child,
  }) =>
      ValueListenableBuilder(
    key: key,
    valueListenable: valueListenable,
    builder: null,
    child: child,
  ),
  [
    "key",
    "valueListenable",
    "builder",
    "child",
  ],
);
