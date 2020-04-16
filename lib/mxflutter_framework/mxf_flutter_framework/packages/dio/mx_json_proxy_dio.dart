//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:flutter/material.dart';
import '../../mx_json_to_dart.dart';
import '../../mx_build_owner.dart';
import 'package:dio/dio.dart';
import 'package:dio/src/adapters/io_adapter.dart';

class MXProxyRegisterHelperDioSeries {
  static Map<String, CreateJsonObjProxyFun> registerProxys() {
    Map<String, CreateJsonObjProxyFun> m = {};

    m.addAll(MXProxyDio.registerProxy());

    return m;
  }
}

class MXProxyDio extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "Dio";

    ///**@@@  3 替换类构造函数
    return {regClassName: () => MXProxyDio()..init(className: regClassName)};
  }

  @override
  Dio constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var dio = Dio()
      ..interceptors.add(LogInterceptor())
      ..httpClientAdapter = createAdapter();
    return dio;
  }

  //mirrorObj 为一个Dio类的实例对象，把调用对象方法，路由到代理类
  @override
  void jsInvokeMirrorObjFunction(
      String mirrorID, dynamic mirrorObj, String funcName, Map args,
      {InvokeCallback callback}) {
    if (mirrorObj == null || !(mirrorObj is Dio)) {
      return;
    }
    invokeFunction(mirrorObj, funcName, args, callback: callback);
  }

  // 先写在一起跑通再说，后面再考虑把代码写得优雅些
  void invokeFunction(Dio mirrorObj, String funcName, Map args,
      {InvokeCallback callback}) async {
    if (funcName == 'get') {
      Response response = await mirrorObj.get(args['path']);
      if (callback != null) {
        callback(response.data);
      }
      return;
    } else if (funcName == 'post') {
      Response response = await mirrorObj.post(args['path']);
      if (callback != null) {
        callback(response.data);
      }
      return;
    }
  }
}
