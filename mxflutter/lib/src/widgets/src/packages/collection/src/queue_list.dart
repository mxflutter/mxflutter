//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:collection/src/queue_list.dart';
import 'dart:collection';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerQueueListSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_queueList.funName] = _queueList;
  m[_queueList_from.funName] = _queueList_from;
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
var _queueList_from = MXFunctionInvoke(
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
