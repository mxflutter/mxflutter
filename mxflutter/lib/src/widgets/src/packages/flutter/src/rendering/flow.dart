//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/flow.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerFlowSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[flowParentData.funName] = flowParentData;
  m[renderFlow.funName] = renderFlow;
  return m;
}
var flowParentData = MXFunctionInvoke(
    "FlowParentData",
    ({
    }) =>
      FlowParentData(
    ),
);
var renderFlow = MXFunctionInvoke(
    "RenderFlow",
    ({
      List<RenderBox> children,
      FlowDelegate delegate,
    }) =>
      RenderFlow(
      children: children,
      delegate: delegate,
    ),
);
