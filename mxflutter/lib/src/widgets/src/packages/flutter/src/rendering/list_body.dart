//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/list_body.dart';


class MXProxyListBody {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[listBodyParentData.funName] = listBodyParentData;
    m[renderListBody.funName] = renderListBody;
    return m;
  }
  static var listBodyParentData = MXFunctionInvoke(
      "ListBodyParentData",
      ({
      }) =>
        ListBodyParentData(
      ),
    );
  static var renderListBody = MXFunctionInvoke(
      "RenderListBody",
      ({
        List<RenderBox> children,
        AxisDirection axisDirection = AxisDirection.down,
      }) =>
        RenderListBody(
        children: children,
        axisDirection: axisDirection,
      ),
    );
}
