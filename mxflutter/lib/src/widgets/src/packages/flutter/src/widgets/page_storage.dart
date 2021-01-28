//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/page_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPageStorageSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_pageStorageKey.funName] = _pageStorageKey;
  m[_pageStorageBucket.funName] = _pageStorageBucket;
  m[_pageStorage.funName] = _pageStorage;
  return m;
}

var _pageStorageKey = MXFunctionInvoke(
  "PageStorageKey",
  ({
    dynamic value,
  }) =>
      PageStorageKey(
    value,
  ),
  [
    "value",
  ],
);
var _pageStorageBucket = MXFunctionInvoke(
  "PageStorageBucket",
  () => PageStorageBucket(),
  [],
);
var _pageStorage = MXFunctionInvoke(
  "PageStorage",
  ({
    Key key,
    PageStorageBucket bucket,
    Widget child,
  }) =>
      PageStorage(
    key: key,
    bucket: bucket,
    child: child,
  ),
  [
    "key",
    "bucket",
    "child",
  ],
);
