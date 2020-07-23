//  mx_mirror.dart
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mx_build_owner.dart';
import 'mx_mirror_common_register.dart';
import 'mx_mirror_widget_register.dart';

typedef InvokeMirrorCallback = void Function(dynamic result);

String constFuncStr = "funcName";
String constClassStr = "className";

class MXMirror {
  static MXMirror _instance;

  // funcName到Fun方法的映射表
  var _funcName2FunMap = {};
  
  // mirrorId到Object的映射表
  var _id2ObjectMap = {};

  static MXMirror getInstance() {
    if (_instance == null) {
      _instance = MXMirror._();
    }
    return _instance;
  }

  factory MXMirror() {
    return MXMirror.getInstance();
  }

  MXMirror._();

  /// 获取irrorID
  String getMirrorID(Map jsonMap) {
    dynamic mirrorID = jsonMap["mirrorID"];
    return mirrorID;
  }

  /// 获取Mirror对象
  dynamic getMirrorObject(dynamic mirrorID) {
    if (mirrorID == null) {
      return;
    }
    return _id2ObjectMap[mirrorID];
  }

  /// 添加Mirror对象
  void addMirrorObject(dynamic mirrorID, dynamic mirrorObj) {
    if (mirrorID == null || mirrorObj == null) {
      return;
    }

    _id2ObjectMap[mirrorID] = mirrorObj;
  }

  /// 移除Mirror对象
  void removeMirrorObject(dynamic mirrorID) {
    _id2ObjectMap.remove(mirrorID);
  }

  /// 移除Mirror对象列表
  void removeMirrorObjectList(List mirrorIDList) {
    for (var mirrorID in mirrorIDList) {
      _id2ObjectMap.remove(mirrorID);
    }
  }

  /// 移除所有Mirror对象
  void clearAllMirrorObjects() {
    _id2ObjectMap.clear();
  }

  /// 注册框架方法
  void registerFrameworkFunctions() {
    // 注册widget方法
    MXMirrorWidgetRegister.registerWidgetFunc();

    // 注册通用方法
    MXMirrorCommonRegister.registerCommonFunc();
  }

  /// 注册业务方法
  void registerBizFunction(Map<String, dynamic> functionMap) {
    if (functionMap == null || functionMap.isEmpty) {
      return;
    }

    _funcName2FunMap.addAll(functionMap);
  }

  /// 调用Function.apply方法，通过 callback 返回结果
  void invokeWithCallback(Map jsonMap, InvokeMirrorCallback callback, { MXJsonBuildOwner buildOwner }) {
    dynamic result = invoke(jsonMap, buildOwner: buildOwner);
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
    // 移除fun字段
    jsonMap.remove(constFuncStr);
    dynamic fi = _funcName2FunMap[fun];
    fi.buildOwner = buildOwner;
    
    try {
      Map<Symbol, dynamic> namedArguments = {};
      for (String name in jsonMap.keys) {
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

  String getObjectFuncName(Map jsonMap) {
    String className = jsonMap[constClassStr];
    String funcName = jsonMap[constFuncStr];
    if (className == null || funcName == null) {
      return null;
    }

    return className + "_" + funcName;
  }

  /// 将json装成flutter对象
  dynamic _jsonToDartObject(dynamic json, { MXJsonBuildOwner buildOwner }) {
    if (json is Map && canInvoke(json["funcName"])) {
      return invoke(json, buildOwner: buildOwner);
    } else if (json is List) {
      List list = [];
      json.forEach((element) {
        var object = _jsonToDartObject(element, buildOwner: buildOwner);
        list.add(object);
      });
      return list;
    } else {
      return json;
    }
  }
}
