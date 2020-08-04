//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:collection/src/combined_wrappers/combined_map.dart';
import 'dart:collection';
import 'package:collection/src/combined_wrappers/combined_iterable.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerCombinedMapSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[combinedMapView.funName] = combinedMapView;
  return m;
}
var combinedMapView = MXFunctionInvoke(
    "CombinedMapView",
    ({
      Iterable<Map<CombinedMapView::K, CombinedMapView::V>> _maps,
    }) =>
      CombinedMapView(
      _maps,
    ),
);
