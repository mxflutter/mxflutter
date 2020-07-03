//  CustomJSApiExample.dart
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/custom_js_api.dart';
import 'package:mxflutter/src/mirror/mx_function_invoke.dart';

/// 向JS提供CustomJSApi example,
class CustomJSApiExample {
  /// 向JS提供getMyAppName
  static String getMyAppName(String platform, {String v}) {
    return "MyApp_$platform $v";
  }

  /// 向JS提供getMyData
  static String getMyData(String sameInfo, {String v,int v2}) {
    return "MyData_$sameInfo $v $v2";
  }

  /// 被调用的注册方法
  static void registerFunction() {
    // 构造方法
    var constructor = MXFunctionInvoke("CustomJSApiExample", ({String mirrorID, String className, Map args}) =>
        CustomJSApiExample());
    
    // 示例方法1
    var getMyAppName = MXFunctionInvoke("getMyAppName", ({CustomJSApiExample mirrorObj, String platform, String v}) =>
        CustomJSApiExample.getMyAppName(platform, v: v));

    // 示例方法2
    var getMyData = MXFunctionInvoke("getMyData", ({CustomJSApiExample mirrorObj, String sameInfo, String v,int v2}) =>
        CustomJSApiExample.getMyData(sameInfo, v: v, v2: v2));

    Map<String, MXFunctionInvoke> funMap = {};
    funMap[constructor.funName] = constructor;
    funMap[getMyAppName.funName] = getMyAppName;
    funMap[getMyData.funName] = getMyData;

    // 注册定义的方法
    CustomJSApi.registerFunction(funMap);
  }
}