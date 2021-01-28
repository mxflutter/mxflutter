//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:collection/src/queue_list.dart';
import 'dart:collection';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerQueueListSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_queueList.funName] = _queueList;
  m[_queueListFrom.funName] = _queueListFrom;
  return m;
}

var _queueList = MXFunctionInvoke(
  "QueueList",
  ({
    int initialCapacity,
  }) =>
      QueueList(
    initialCapacity,
  ),
  [
    "initialCapacity",
  ],
);
var _queueListFrom = MXFunctionInvoke(
  "QueueList.from",
  ({
    Iterable<dynamic> source,
  }) =>
      QueueList.from(
    source,
  ),
  [
    "source",
  ],
);
