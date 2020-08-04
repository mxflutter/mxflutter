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
  m[queueList.funName] = queueList;
  m[queueList_from.funName] = queueList_from;
  return m;
}
var queueList = MXFunctionInvoke(
    "QueueList",
    ({
      int initialCapacity,
    }) =>
      QueueList(
      initialCapacity,
    ),
);
var queueList_from = MXFunctionInvoke(
  "queueList.from",
    ({
      Iterable<E> source,
    }) =>
      QueueList.from(
      source,
    ),
);
