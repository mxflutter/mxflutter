//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/sliver_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/sliver_multi_box_adaptor.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSliverListSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[renderSliverList.funName] = renderSliverList;
  return m;
}
var renderSliverList = MXFunctionInvoke(
    "RenderSliverList",
    ({
      RenderSliverBoxChildManager childManager,
    }) =>
      RenderSliverList(
      childManager: childManager,
    ),
);
