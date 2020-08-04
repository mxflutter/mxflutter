//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:collection/src/queue_list.dart';


class MXProxyQueueList {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[queueList.funName] = queueList;
    m[queueList_from.funName] = queueList_from;
    m[queueList_.funName] = queueList_;
    return m;
  }
  static var queueList = MXFunctionInvoke(
      "QueueList",
      ({
        int initialCapacity,
      }) =>
        QueueList(
        initialCapacity,
      ),
    );
  static var queueList_from = MXFunctionInvoke(
    "queueList.from",
      ({
        Iterable<E> source,
      }) =>
        QueueList.from(
        source,
      ),
    );
  static var queueList_ = MXFunctionInvoke(
    "queueList.",
      ({
      }) =>
        QueueList.(
      ),
    );
}
