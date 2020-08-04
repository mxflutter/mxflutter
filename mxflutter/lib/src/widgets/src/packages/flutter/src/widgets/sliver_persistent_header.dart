//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/sliver_persistent_header.dart';


class MXProxySliverPersistentHeader {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[sliverPersistentHeader.funName] = sliverPersistentHeader;
    return m;
  }
  static var sliverPersistentHeader = MXFunctionInvoke(
      "SliverPersistentHeader",
      ({
        Key key,
        SliverPersistentHeaderDelegate delegate,
        bool pinned = false,
        bool floating = false,
      }) =>
        SliverPersistentHeader(
        key: key,
        delegate: delegate,
        pinned: pinned,
        floating: floating,
      ),
    );
}
