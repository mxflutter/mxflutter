//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:meta/meta.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerMetaSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[immutable.funName] = immutable;
  m[required.funName] = required;
  return m;
}
var immutable = MXFunctionInvoke(
    "Immutable",
    ({
      String reason,
    }) =>
      Immutable(
      reason,
    ),
);
var required = MXFunctionInvoke(
    "Required",
    ({
      String reason,
    }) =>
      Required(
      reason,
    ),
);
