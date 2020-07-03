//  CustomJSApi.dart
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

// ignore: implementation_imports
import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:mxflutter/src/mirror/mx_function_invoke.dart';

typedef InvokeMirrorCallback = void Function(dynamic params);

/// 向JS提供CustomJSApi
class CustomJSApi {
  /// 注册方法
  static void registerFunction(Map<String, MXFunctionInvoke> funMap) {
    MXMirror.getInstance().addToFunctionMap(funMap);
  }

  /// 调用mirrorObj方法
  static void invoke(Map args,
      {InvokeMirrorCallback callback}) {
    var result = MXMirror.getInstance().invoke(args);
    if (callback != null) {
      callback(result);
    }
  }

  /// 是否可以调用改方法
  static bool canInvoke(String funcName) {
    return MXMirror.getInstance().canInvoke(funcName);
  }
}
