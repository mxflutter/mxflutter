//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/image_filter.dart';


class MXProxyImageFilter {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[imageFiltered.funName] = imageFiltered;
    return m;
  }
  static var imageFiltered = MXFunctionInvoke(
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
}
