//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/image_filter.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerImageFilterSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[imageFiltered.funName] = imageFiltered;
  return m;
}
var imageFiltered = MXFunctionInvoke(
    "ImageFiltered",
    ({
      Key key,
      ImageFilter imageFilter,
      Widget child,
    }) =>
      ImageFiltered(
      key: key,
      imageFilter: imageFilter,
      child: child,
    ),
);
