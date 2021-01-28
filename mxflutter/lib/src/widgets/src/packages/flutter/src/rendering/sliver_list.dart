//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
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
  m[_renderSliverList.funName] = _renderSliverList;
  return m;
}

var _renderSliverList = MXFunctionInvoke(
  "RenderSliverList",
  ({
    RenderSliverBoxChildManager childManager,
  }) =>
      RenderSliverList(
    childManager: childManager,
  ),
  [
    "childManager",
  ],
);
