//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/annotated_region.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAnnotatedRegionSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_annotatedRegion.funName] = _annotatedRegion;
  return m;
}

var _annotatedRegion = MXFunctionInvoke(
  "AnnotatedRegion",
  ({
    Key key,
    Widget child,
    dynamic value,
    bool sized = true,
  }) =>
      AnnotatedRegion(
    key: key,
    child: child,
    value: value,
    sized: sized,
  ),
  [
    "key",
    "child",
    "value",
    "sized",
  ],
);
