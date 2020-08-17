//  mx_function_invoke.dart
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:flutter/widgets.dart';
import '../../mx_build_owner.dart';


/// Dart函数的映射定义
class MXFunctionInvoke {
  String funName;
  Function fun;
  MXJsonBuildOwner buildOwner;
  BuildContext context;
  List<String> propsName;
  List<String> noJ2DProps;

  MXFunctionInvoke(this.funName, this.fun, [this.propsName, this.noJ2DProps]);

  /// 调用方法
  /// argument: 命名参数
  dynamic apply(Map argment) {
    return Function.apply(this.fun, [], argment);
  }
}
