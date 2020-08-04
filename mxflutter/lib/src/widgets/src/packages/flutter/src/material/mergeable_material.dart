//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[materialSlice.funName] = materialSlice;
  m[materialGap.funName] = materialGap;
  m[mergeableMaterial.funName] = mergeableMaterial;
  return m;
}
var materialSlice = MXFunctionInvoke(
    "MaterialSlice",
    ({
      LocalKey key,
      Widget child,
    }) =>
      MaterialSlice(
      key: key,
      child: child,
    ),
);
var materialGap = MXFunctionInvoke(
    "MaterialGap",
    ({
      LocalKey key,
      dynamic size = 16.0,
    }) =>
      MaterialGap(
      key: key,
      size: size,
    ),
);
var mergeableMaterial = MXFunctionInvoke(
    "MergeableMaterial",
    ({
      Key key,
      Axis mainAxis = Axis.vertical,
      int elevation = 2,
      bool hasDividers = false,
      List<MergeableMaterialItem> children,
    }) =>
      MergeableMaterial(
      key: key,
      mainAxis: mainAxis,
      elevation: elevation,
      hasDividers: hasDividers,
      children: children,
    ),
);
