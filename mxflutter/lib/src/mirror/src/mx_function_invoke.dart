//  MXFlutterFramework
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../../mx_build_owner.dart';

/// Dart函数的映射定义。
class MXFunctionInvoke {
  /// 方法名。
  final String funName;

  /// 方法体。
  final Function fun;

  /// 持有的buildOwner.
  MXBuildOwner buildOwner;

  /// context.
  BuildContext context;

  /// 属性名列表。
  final List<String> propsName;

  /// 无需J2D转换的属性列表。
  final List<String> noJ2DProps;

  MXFunctionInvoke(this.funName, this.fun, [this.propsName, this.noJ2DProps]);

  /// 调用方法。
  /// argument: 命名参数。
  dynamic apply(Map argument) {
    return Function.apply(fun, [], argument);
  }
}
