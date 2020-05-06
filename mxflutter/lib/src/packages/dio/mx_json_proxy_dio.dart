//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
// ignore: implementation_imports
import 'package:dio/src/adapters/io_adapter.dart';

import '../../mx_json_to_dart.dart';
import '../../mx_build_owner.dart';

import '../../mx_js_flutter.dart';

class MXProxyRegisterHelperDioSeries {
  static Map<String, CreateJsonObjProxyFun> registerProxys() {
    Map<String, CreateJsonObjProxyFun> m = {};

    m.addAll(MXProxyDio.registerProxy());
    m.addAll(MXProxyBaseOptions.registerProxy());
    m.addAll(MXProxyOptions.registerProxy());
    m.addAll(MXProxyRequestOptions.registerProxy());

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
    BaseOptions options = mxj2d(null, jsonMap["options"]);
    var dio = Dio(options)
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
    invokeFunction(mirrorID, mirrorObj, funcName, args, callback: callback);
  }

  // 先写在一起跑通再说，后面再考虑把代码写得优雅些
  void invokeFunction(String mirrorID, Dio mirrorObj, String funcName, Map args,
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
    } else if (funcName == 'request') {
      String callbackStr = await request(mirrorID, mirrorObj, args);
      if (callback != null) {
        callback(callbackStr);
      }
      return;
    }
  }

  request(String mirrorID, Dio mirrorObj, Map args) async {
    if (args["options"] != null && (args["options"] as Map).length > 0) {
      args["options"]["owner_mirrorID"] = mirrorID;
    }

    var options = mxj2d(null, args["options"]);
    Response response = await mirrorObj.request(args["path"],
        options: options, queryParameters: args["queryParameters"],
        onSendProgress: (int count, int total) {
      MXJSFlutterLib.getInstance().invokeJSMirrorObj(
          mirrorID: mirrorID,
          callbackID: args["onSendProgress"],
          args: {"count": count, "total": total});
    }, onReceiveProgress: (int count, int total) {
      MXJSFlutterLib.getInstance().invokeJSMirrorObj(
          mirrorID: mirrorID,
          callbackID: args["onReceiveProgress"],
          args: {"count": count, "total": total});
    });

    return ResponseOBJtoJSON(response);
  }

  // ignore: non_constant_identifier_names
  String ResponseOBJtoJSON(Response response) {
    //class Response<T> {
    // Response({
    //   this.data,
    //   this.headers,
    //   this.request,
    //   this.isRedirect,
    //   this.statusCode,
    //   this.statusMessage,
    //   this.redirects,
    //   this.extra,
    // });

    var data = response.data;

    ResponseType respType = response.request.responseType;
    if (respType == ResponseType.bytes) {
      data = base64Encode(data);
    }

    Map jsonMap = {};
    jsonMap["data"] = response.data;
    jsonMap["headers"] = response.headers.map;
    jsonMap["isRedirect"] = response.isRedirect;
    jsonMap["statusCode"] = response.statusCode;
    jsonMap["statusMessage"] = response.statusMessage;
    //jsonMap["redirects"] = response.redirects;
    jsonMap["extra"] = response.extra;

    String sendStr = json.encode(jsonMap);
    return sendStr;
  }
}

class MXProxyBaseOptions extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "BaseOptions";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyBaseOptions()..init(className: regClassName)
    };
  }

  @override
  BaseOptions constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    ResponseType respType = MXResponseType.parse(jsonMap["responseType"],
        defaultValue: ResponseType.json);

    var widget = BaseOptions(
      method: mxj2d(bo, jsonMap["method"]),
      connectTimeout: mxj2d(bo, jsonMap["connectTimeout"]),
      receiveTimeout: mxj2d(bo, jsonMap["receiveTimeout"]),
      sendTimeout: mxj2d(bo, jsonMap["sendTimeout"]),
      baseUrl: mxj2d(bo, jsonMap["baseUrl"]),
      queryParameters: mxj2d(bo, jsonMap["queryParameters"]),
      extra: mxj2d(bo, jsonMap["extra"]),
      headers: mxj2d(bo, jsonMap["headers"]),
      responseType: respType,
      contentType: mxj2d(bo, jsonMap["contentType"]),
      validateStatus: mxj2d(bo, jsonMap["validateStatus"]),
      receiveDataWhenStatusError:
          mxj2d(bo, jsonMap["receiveDataWhenStatusError"], defaultValue: true),
      followRedirects:
          mxj2d(bo, jsonMap["followRedirects"], defaultValue: true),
      maxRedirects: mxj2d(bo, jsonMap["maxRedirects"], defaultValue: 5),
      // requestEncoder: mxj2d(bo, jsonMap["requestEncoder"]),
      // responseDecoder: mxj2d(bo, jsonMap["responseDecoder"]),
    );
    return widget;
  }
}

class MXProxyOptions extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "Options";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyOptions()..init(className: regClassName)
    };
  }

  @override
  Options constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    ResponseType respType = MXResponseType.parse(jsonMap["responseType"]);

    var widget = Options(
      method: mxj2d(bo, jsonMap["method"]),
      sendTimeout: mxj2d(bo, jsonMap["sendTimeout"]),
      receiveTimeout: mxj2d(bo, jsonMap["receiveTimeout"]),
      extra: mxj2d(bo, jsonMap["extra"]),
      headers: mxj2d(bo, jsonMap["headers"]),
      responseType: respType,
      contentType: mxj2d(bo, jsonMap["contentType"]),
      validateStatus: mxj2d(bo, jsonMap["validateStatus"]),
      receiveDataWhenStatusError:
          mxj2d(bo, jsonMap["receiveDataWhenStatusError"]),
      followRedirects: mxj2d(bo, jsonMap["followRedirects"]),
      maxRedirects: mxj2d(bo, jsonMap["maxRedirects"]),
      // requestEncoder: mxj2d(bo, jsonMap["requestEncoder"]),
      // responseDecoder: mxj2d(bo, jsonMap["responseDecoder"]),
    );
    return widget;
  }
}

class MXProxyRequestOptions extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "RequestOptions";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyRequestOptions()..init(className: regClassName)
    };
  }

  @override
  RequestOptions constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    ResponseType respType = MXResponseType.parse(jsonMap["responseType"]);

    var widget = RequestOptions(
      method: mxj2d(bo, jsonMap["method"]),
      sendTimeout: mxj2d(bo, jsonMap["sendTimeout"]),
      receiveTimeout: mxj2d(bo, jsonMap["receiveTimeout"]),
      connectTimeout: mxj2d(bo, jsonMap["connectTimeout"]),
      data: mxj2d(bo, jsonMap["data"]),
      path: mxj2d(bo, jsonMap["path"]),
      queryParameters: mxj2d(bo, jsonMap["queryParameters"]),
      baseUrl: mxj2d(bo, jsonMap["baseUrl"]),
      onReceiveProgress: (int count, int total) {
        MXJSFlutterLib.getInstance().invokeJSMirrorObj(
            mirrorID: jsonMap["owner_mirrorID"],
            callbackID: jsonMap["onReceiveProgress"],
            args: {"count": count, "total": total});
      },
      onSendProgress: (int count, int total) {
        MXJSFlutterLib.getInstance().invokeJSMirrorObj(
            mirrorID: jsonMap["owner_mirrorID"],
            callbackID: jsonMap["onSendProgress"],
            args: {"count": count, "total": total});
      },
      cancelToken: mxj2d(bo, jsonMap["cancelToken"]),
      extra: mxj2d(bo, jsonMap["extra"]),
      headers: mxj2d(bo, jsonMap["headers"]),
      responseType: respType,
      contentType: mxj2d(bo, jsonMap["contentType"]),
      //validateStatus: mxj2d(bo, jsonMap["validateStatus"]),
      receiveDataWhenStatusError:
          mxj2d(bo, jsonMap["receiveDataWhenStatusError"], defaultValue: true),
      followRedirects:
          mxj2d(bo, jsonMap["followRedirects"], defaultValue: true),
      maxRedirects: mxj2d(bo, jsonMap["maxRedirects"]),
      // requestEncoder: mxj2d(bo, jsonMap["requestEncoder"]),
      // responseDecoder: mxj2d(bo, jsonMap["responseDecoder"]),
    );
    return widget;
  }
}

class MXResponseType {
  static Map str2VMap = {
    "ResponseType.json": ResponseType.json,
    "ResponseType.stream": ResponseType.stream,
    "ResponseType.plain": ResponseType.plain,
    "ResponseType.bytes": ResponseType.bytes,
  };

  static ResponseType parse(Map valueMap, {ResponseType defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}
