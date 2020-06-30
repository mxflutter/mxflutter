//  mx_function_invoke.dart
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mx_mirror_j2d.dart';

/// Dart函数的映射定义
class MXFunctionInvoke {
  MXFunctionInvoke(this.funName, this.fun);

  String funName;
  Function fun;

  apply(Map<String, dynamic> jsonMap) {
    Map<Symbol, dynamic> namedArguments = {};
    for (String name in jsonMap.keys) {
      namedArguments[Symbol(name)] =
          MXMirrorJ2D.getInstance().jsonToDartObject(jsonMap[name]);
    }
    return Function.apply(this.fun, [], namedArguments);
  }
}
