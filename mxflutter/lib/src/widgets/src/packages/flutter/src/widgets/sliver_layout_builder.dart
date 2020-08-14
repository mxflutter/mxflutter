//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/sliver_layout_builder.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/layout_builder.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSliverLayoutBuilderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_sliverLayoutBuilder.funName] = _sliverLayoutBuilder;
  return m;
}
var _sliverLayoutBuilder = MXFunctionInvoke(
    "SliverLayoutBuilder",
    (
      {
      Key key,
      dynamic builder,
      }
    ) =>
      SliverLayoutBuilder(
      key: key,
      builder: null,
    ),
);
