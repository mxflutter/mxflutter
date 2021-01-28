//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/sliver_persistent_header.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSliverPersistentHeaderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_sliverPersistentHeader.funName] = _sliverPersistentHeader;
  return m;
}

var _sliverPersistentHeader = MXFunctionInvoke(
  "SliverPersistentHeader",
  ({
    Key key,
    SliverPersistentHeaderDelegate delegate,
    bool pinned = false,
    bool floating = false,
  }) =>
      SliverPersistentHeader(
    key: key,
    delegate: delegate,
    pinned: pinned,
    floating: floating,
  ),
  [
    "key",
    "delegate",
    "pinned",
    "floating",
  ],
);
