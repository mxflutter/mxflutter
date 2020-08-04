//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/sliver_prototype_extent_list.dart';


class MXProxySliverPrototypeExtentList {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[sliverPrototypeExtentList.funName] = sliverPrototypeExtentList;
    return m;
  }
  static var sliverPrototypeExtentList = MXFunctionInvoke(
      "SliverPrototypeExtentList",
      ({
        Key key,
        SliverChildDelegate delegate,
        Widget prototypeItem,
      }) =>
        SliverPrototypeExtentList(
        key: key,
        delegate: delegate,
        prototypeItem: prototypeItem,
      ),
    );
}
