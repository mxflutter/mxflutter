//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/reorderable_list.dart';
import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerReorderableListSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_reorderableListView.funName] = _reorderableListView;
  return m;
}

var _reorderableListView = MXFunctionInvoke(
  "ReorderableListView",
  ({
    Key key,
    Widget header,
    dynamic children,
    dynamic onReorder,
    ScrollController scrollController,
    Axis scrollDirection = Axis.vertical,
    EdgeInsets padding,
    bool reverse = false,
  }) =>
      ReorderableListView(
    key: key,
    header: header,
    children: toListT<Widget>(children),
    onReorder: createVoidTwoParamsClosure<int, int>(_reorderableListView.buildOwner, onReorder),
    scrollController: scrollController,
    scrollDirection: scrollDirection,
    padding: padding,
    reverse: reverse,
  ),
  [
    "key",
    "header",
    "children",
    "onReorder",
    "scrollController",
    "scrollDirection",
    "padding",
    "reverse",
  ],
);
