//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/viewport_offset.dart';


class MXProxyViewportOffset {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[scrollDirection.funName] = scrollDirection;
    return m;
  }
  static var scrollDirection = MXFunctionInvoke(
      "ScrollDirection",
      ({Map args}) => MXScrollDirection.parse(args),
  );
}
class MXScrollDirection {
  static Map str2VMap = {
    'ScrollDirection.idle': ScrollDirection.idle,
    'ScrollDirection.forward': ScrollDirection.forward,
    'ScrollDirection.reverse': ScrollDirection.reverse,
  };
  static ScrollDirection parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
