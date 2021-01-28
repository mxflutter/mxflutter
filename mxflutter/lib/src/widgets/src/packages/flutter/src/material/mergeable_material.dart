//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/mergeable_material.dart';
import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/divider.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/shadows.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerMergeableMaterialSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_materialSlice.funName] = _materialSlice;
  m[_materialGap.funName] = _materialGap;
  m[_mergeableMaterial.funName] = _mergeableMaterial;
  return m;
}

var _materialSlice = MXFunctionInvoke(
  "MaterialSlice",
  ({
    LocalKey key,
    Widget child,
  }) =>
      MaterialSlice(
    key: key,
    child: child,
  ),
  [
    "key",
    "child",
  ],
);
var _materialGap = MXFunctionInvoke(
  "MaterialGap",
  ({
    LocalKey key,
    dynamic size = 16.0,
  }) =>
      MaterialGap(
    key: key,
    size: size?.toDouble(),
  ),
  [
    "key",
    "size",
  ],
);
var _mergeableMaterial = MXFunctionInvoke(
  "MergeableMaterial",
  ({
    Key key,
    Axis mainAxis = Axis.vertical,
    int elevation = 2,
    bool hasDividers = false,
    dynamic children = const <MergeableMaterialItem>[],
    Color dividerColor,
  }) =>
      MergeableMaterial(
    key: key,
    mainAxis: mainAxis,
    elevation: elevation,
    hasDividers: hasDividers,
    children: toListT<MergeableMaterialItem>(children),
    dividerColor: dividerColor,
  ),
  [
    "key",
    "mainAxis",
    "elevation",
    "hasDividers",
    "children",
    "dividerColor",
  ],
);
