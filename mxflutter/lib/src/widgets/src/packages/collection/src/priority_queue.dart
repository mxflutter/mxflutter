//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:collection/src/priority_queue.dart';
import 'dart:collection';
import 'package:collection/src/utils.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPriorityQueueSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_heapPriorityQueue.funName] = _heapPriorityQueue;
  return m;
}
var _heapPriorityQueue = MXFunctionInvoke(
    "HeapPriorityQueue",
    (
      {
      dynamic comparison,
      }
    ) =>
      HeapPriorityQueue(
      comparison,
    ),
);
