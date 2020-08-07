//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:meta/meta.dart' ;
import 'package:flutter/src/foundation/assertions.dart' ;
import 'package:flutter/src/foundation/basic_types.dart' ;
import 'package:flutter/src/foundation/diagnostics.dart' ;
import 'package:flutter/src/foundation/observer_list.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerChangeNotifierSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_listenable.funName] = _listenable;
  m[_listenable_merge.funName] = _listenable_merge;
  m[_valueListenable.funName] = _valueListenable;
  m[_changeNotifier.funName] = _changeNotifier;
  m[_valueNotifier.funName] = _valueNotifier;
  return m;
}
var _listenable = MXFunctionInvoke(
    "Listenable",
    (
    ) =>
      Listenable(
    ),
);
var _listenable_merge = MXFunctionInvoke(
  "Listenable.merge",
    (
      {
      List<Listenable> listenables,
      }
    ) =>
      Listenable.merge(
      listenables,
    ),
);
var _valueListenable = MXFunctionInvoke(
    "ValueListenable",
    (
    ) =>
      ValueListenable(
    ),
);
var _changeNotifier = MXFunctionInvoke(
    "ChangeNotifier",
    (
    ) =>
      ChangeNotifier(
    ),
);
var _valueNotifier = MXFunctionInvoke(
    "ValueNotifier",
    (
      {
      dynamic value,
      }
    ) =>
      ValueNotifier(
      value,
    ),
);
