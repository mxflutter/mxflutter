//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:meta/meta.dart';
import 'package:flutter/src/foundation/assertions.dart';
import 'package:flutter/src/foundation/basic_types.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/foundation/observer_list.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerChangeNotifierSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_listenableMerge.funName] = _listenableMerge;
  m[_changeNotifier.funName] = _changeNotifier;
  m[_valueNotifier.funName] = _valueNotifier;
  return m;
}

var _listenableMerge = MXFunctionInvoke(
  "Listenable.merge",
  ({
    dynamic listenables,
  }) =>
      Listenable.merge(
    toListT<Listenable>(listenables),
  ),
  [
    "listenables",
  ],
);
var _changeNotifier = MXFunctionInvoke(
  "ChangeNotifier",
  () => ChangeNotifier(),
  [],
);
var _valueNotifier = MXFunctionInvoke(
  "ValueNotifier",
  ({
    dynamic value,
  }) =>
      ValueNotifier(
    value,
  ),
  [
    "value",
  ],
);
