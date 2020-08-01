//  mx_mirror.dart
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mx_json_build_owner.dart';

class MXMirrorFunc {
  static MXMirrorFunc _instance;

  final constFuncStr = "funcName";
  final constClassStr = "className";
  final constConstructorStr = "constructorName";

  // funcName到Fun方法的映射表
  var _funcName2FunMap = <String, dynamic>{};

  static MXMirrorFunc getInstance() {
    if (_instance == null) {
      _instance = MXMirrorFunc._();
    }
    return _instance;
  }

  factory MXMirrorFunc() {
    return MXMirrorFunc.getInstance();
  }

  MXMirrorFunc._();

  /// 注册业务方法
  void registerBizFunction(Map<String, dynamic> functionMap) {
    if (functionMap == null || functionMap.isEmpty) {
      return;
    }

    _funcName2FunMap.addAll(functionMap);
  }

  /// 调用Function.apply方法，通过 callback 返回结果
  void invokeWithCallback(Map jsonMap, void Function(dynamic result) callback, { MXJsonBuildOwner buildOwner }) {
    var result = invoke(jsonMap, buildOwner: buildOwner);
    if (callback != null) {
      callback(result);
    }
  }

  /// 调用Function.apply方法。直接返回结果
  dynamic invoke(Map jsonMap, { MXJsonBuildOwner buildOwner }) {
    // 判断是否存在fun字段
    if (jsonMap[constFuncStr] == null) {
      return null;
    }

    String fun = jsonMap[constFuncStr];
    _removeHelpProperty(jsonMap);
    var fi = _funcName2FunMap[fun];
    fi.buildOwner = buildOwner;
    
    try {
      var namedArguments = <Symbol, dynamic>{};
      for (var name in jsonMap.keys) {
        namedArguments[Symbol(name)] = _jsonToDartObject(jsonMap[name], buildOwner: buildOwner);
      }
      // 为方便处理，此处都使用命名参数，不用位置参数
      var result = fi.apply(namedArguments);
      fi.buildOwner = null;

      return result;
    } catch (e) {
      // MXJSLog.error(
      //     "MXMirror.invoke, error:$e ; jsonMap: $jsonMap ");

      // 打印日志重新抛出
      rethrow;
    }
  }

  /// 判断是否可以调用方法
  bool canInvoke(String funcName) {
    return _funcName2FunMap[funcName] != null;
  }
  
  /// 获取对象方法名称 
  String objectFuncName(Map jsonMap) {
    var className = jsonMap[constClassStr];
    var funcName = jsonMap[constFuncStr];
    if (className == null || funcName == null) {
      return null;
    }

    return className + "_" + funcName;
  }
  
  /// 获取构造方法名称
  String constructorFuncName(Map jsonMap) {
    var className = jsonMap[constClassStr];
    var constructorName = jsonMap[constConstructorStr];
    if (className == null) {
      return null;
    }

    // 若 constructorName 不为空，则为静态方法。例如：Image.network
    if (constructorName != null) {
      return className + '.' + constructorName;
    }
    return className;
  }
  
  /// 移除func、className、constructorName等辅助字段
  void _removeHelpProperty(Map jsonMap) {
    jsonMap.remove(constFuncStr);
    jsonMap.remove(constClassStr);
    jsonMap.remove(constConstructorStr);
  }

  /// 将json装成flutter对象
  dynamic _jsonToDartObject(dynamic json, { MXJsonBuildOwner buildOwner }) {
    if (json is Map && canInvoke(json["funcName"])) {
      return invoke(json, buildOwner: buildOwner);
    } else if (json is List) {
      List list = [];
      for (var element in json) {
        var object = _jsonToDartObject(element, buildOwner: buildOwner);
        list.add(object);
      }
      return list;
    } else {
      return json;
    }
  }
}
