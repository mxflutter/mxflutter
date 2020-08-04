//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[changeNotifier.funName] = changeNotifier;
  m[valueNotifier.funName] = valueNotifier;
  return m;
}
var changeNotifier = MXFunctionInvoke(
    "ChangeNotifier",
    ({
    }) =>
      ChangeNotifier(
    ),
);
var valueNotifier = MXFunctionInvoke(
    "ValueNotifier",
    ({
      dynamic _value,
    }) =>
      ValueNotifier(
      _value,
    ),
);
