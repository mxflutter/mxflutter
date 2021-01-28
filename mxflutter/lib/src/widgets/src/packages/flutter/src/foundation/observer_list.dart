//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/observer_list.dart';
import 'dart:collection';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerObserverListSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_observerList.funName] = _observerList;
  m[_hashedObserverList.funName] = _hashedObserverList;
  return m;
}

var _observerList = MXFunctionInvoke(
  "ObserverList",
  () => ObserverList(),
  [],
);
var _hashedObserverList = MXFunctionInvoke(
  "HashedObserverList",
  () => HashedObserverList(),
  [],
);
