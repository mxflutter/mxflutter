//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/observer_list.dart';
import 'dart:collection';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerObserverListSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[observerList.funName] = observerList;
  m[hashedObserverList.funName] = hashedObserverList;
  return m;
}
var observerList = MXFunctionInvoke(
    "ObserverList",
    ({
    }) =>
      ObserverList(
    ),
);
var hashedObserverList = MXFunctionInvoke(
    "HashedObserverList",
    ({
    }) =>
      HashedObserverList(
    ),
);
