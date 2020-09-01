//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/sliver_prototype_extent_list.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/sliver.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSliverPrototypeExtentListSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_sliverPrototypeExtentList.funName] = _sliverPrototypeExtentList;
  return m;
}

var _sliverPrototypeExtentList = MXFunctionInvoke(
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
  [
    "key",
    "delegate",
    "prototypeItem",
  ],
);
