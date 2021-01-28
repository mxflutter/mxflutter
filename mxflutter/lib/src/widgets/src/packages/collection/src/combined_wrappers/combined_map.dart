//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:collection/src/combined_wrappers/combined_map.dart';
import 'dart:collection';
import 'package:collection/src/combined_wrappers/combined_iterable.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerCombinedMapSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_combinedMapView.funName] = _combinedMapView;
  return m;
}

var _combinedMapView = MXFunctionInvoke(
  "CombinedMapView",
  ({
    Iterable<Map<dynamic, dynamic>> maps,
  }) =>
      CombinedMapView(
    maps,
  ),
  [
    "maps",
  ],
);
