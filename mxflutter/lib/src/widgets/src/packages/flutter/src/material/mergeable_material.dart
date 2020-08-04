//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/mergeable_material.dart';


class MXProxyMergeableMaterial {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[materialSlice.funName] = materialSlice;
    m[materialGap.funName] = materialGap;
    m[mergeableMaterial.funName] = mergeableMaterial;
    return m;
  }
  static var materialSlice = MXFunctionInvoke(
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
  static var materialGap = MXFunctionInvoke(
      "MaterialGap",
      ({
        LocalKey key,
        dynamic size = 16.0,
      }) =>
        MaterialGap(
        key: key,
        size: size?.toDouble(),
      ),
    );
  static var mergeableMaterial = MXFunctionInvoke(
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
}
