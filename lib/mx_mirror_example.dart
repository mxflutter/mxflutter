//  MXMirrorExample.dart
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';

/// 向JS提供MXMirror example,
class MXMirrorExample {
  /// 向JS提供getMyAppName
  String getMyAppName(String platform, {String v}) {
    return "MyApp_$platform $v";
  }

  /// 向JS提供getMyData
  static String getMyData(String sameInfo, {String v,int v2}) {
    return "MyData_$sameInfo $v $v2";
  }

  /// 被调用的注册方法
  static void registerFunction() {
    // 构造方法
    var constructor = MXFunctionInvoke("MXMirrorExample", ({String mirrorID, String className, Map args}) =>
        MXMirrorExample(), ["mirrorID", "className", "args"]);
    
    // 实例方法
    var getMyAppName = MXFunctionInvoke("MXMirrorExample#getMyAppName", ({MXMirrorExample mirrorObj, String platform, String v}) =>
        mirrorObj.getMyAppName(platform, v: v), ["mirrorObj", "platform", "v"]);

    // 静态方法，可以不管mirrorObj
    var getMyData = MXFunctionInvoke("MXMirrorExample#getMyData", ({MXMirrorExample mirrorObj, String sameInfo, String v,int v2}) =>
        MXMirrorExample.getMyData(sameInfo, v: v, v2: v2), ["mirrorObj", "sameInfo", "v", "v2"]);

    Map<String, MXFunctionInvoke> funMap = {};
    funMap[constructor.funName] = constructor;
    funMap[getMyAppName.funName] = getMyAppName;
    funMap[getMyData.funName] = getMyData;

    // 注册定义的方法
    MXMirror.getInstance().registerFunctions(funMap);
  }
}