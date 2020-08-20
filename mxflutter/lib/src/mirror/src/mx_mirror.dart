//  mx_mirror.dart
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../../mx_build_owner.dart';
import 'mx_function_invoke.dart';
import 'mx_mirror_object.dart';
import '../mx_mirror.dart';

/// 提供通过Json Map 调用 Dart 函数的能力
/// 通过调用 Dart 类的构造方法，实现Json Map 转 Dart 对象
/// 需要注册可以调用的函数
abstract class MXMirror {
  static MXMirror _instance;

  static MXMirror getInstance() {
    if (_instance == null) {
      _instance = _MXMirrorImplements();
    }
    return _instance;
  }

  /// 注册可以通过JS调用的方法
  void registerFunctions(Map<String, dynamic> functionMap);

  /// 通过 Json Map 生成Dart Object
  /// 通过函数映射表，找到构造函数，调用生成Dart Object
  /// Map 里如果带mirrorId 字段，则会加入到MirrogObj管理其生命周期，如果不带则由外部管理
  dynamic jsonToDartObj(Map jsonMap,
      {MXJsonBuildOwner buildOwner, BuildContext context});

  /// 调用函数，通过 callback 返回结果
  void invokeWithCallback(Map jsonMap, void Function(dynamic result) callback,
      {MXJsonBuildOwner buildOwner});

//  /// 调用函数。直接返回结果
//  dynamic invoke(Map jsonMap,
//      {MXJsonBuildOwner buildOwner, BuildContext context});

  /// 获取 Map 中的 mirrorId
  String mirrorId(Map jsonMap);

  /// 通过 mirrorId 获取Mirror对象
  dynamic findMirrorObject(dynamic mirrorId);

  /// 添加Mirror Dart 对象
  void addMirrorObject(dynamic mirrorId, dynamic mirrorObj);

  /// 移除Mirror对象
  void removeMirrorObject(dynamic mirrorId);

  /// 移除Mirror对象列表
  void removeMirrorObjectList(List mirrorIdList);

  /// 移除所有Mirror对象
  void clearAllMirrorObjects();
}

class _MXMirrorImplements extends MXMirror with MXMirrorObjectMgr {
  final constFuncStr = "funcName";
  final constClassStr = "className";
  final constConstructorStr = "constructorName";
  final constEnumNameStr = "_name";
  final constReplaceEnumNameStr = "name";
  final constEnumIndexStr = "index";
  final constMirrorIDStr = "mirrorID";
  final constMirrorObjStr = "mirrorObj";

  // funcName到Fun方法的映射表
  var _funcName2FunMap = <String, MXFunctionInvoke>{};

  /// 注册可以通过JS调用的方法
  void registerFunctions(Map<String, dynamic> functionMap) {
    if (functionMap == null || functionMap.isEmpty) {
      return;
    }

    _funcName2FunMap.addAll(functionMap);
  }

  /// 通过 Json Map 生成Dart Object
  /// 通过函数映射表，找到构造函数，调用生成Dart Object
  /// Map 里如果带mirrorId 字段，则会加入到MirrogObj管理其生命周期，如果不带则由外部管理
  dynamic jsonToDartObj(dynamic json,
      {MXJsonBuildOwner buildOwner, BuildContext context}) {
    if (json is Map) {
      Map jsonMap = json;

      // 尝试转换成DartObj
      var dartObj =
          _map2DartObject(jsonMap, buildOwner: buildOwner, context: context);
      if (dartObj != null) {
        return dartObj;
      }

      // 当作普通Map对象，递归转换Map的元素
      Map resultMap = {};
      jsonMap.forEach((k, v) {
        resultMap[k] =
            jsonToDartObj(v, buildOwner: buildOwner, context: context);
      });
      return resultMap;
    } else if (json is List) {
      List resultList = [];
      for (var element in json) {
        var object =
            jsonToDartObj(element, buildOwner: buildOwner, context: context);
        resultList.add(object);
      }
      return resultList;
    } else {
      return json;
    }
  }

  _map2DartObject(Map jsonMap,
      {MXJsonBuildOwner buildOwner, BuildContext context}) {
    // 首先判断是否存在mirrorObjec缓存
    String mirrorId = jsonMap[constMirrorIDStr];
    if (mirrorId != null) {
      var mirrorObject = findMirrorObject(mirrorId);
      if (mirrorObject != null) {
        return mirrorObject;
      }
    }

    // 尝试转换成DartObj
    String funcName = jsonMap[constFuncStr];
    if (funcName == null) {
      funcName = _constructorFuncName(jsonMap);
      if (funcName == null) {
        return null;
      }
    }

    var obj =
        _invoke(funcName, jsonMap, buildOwner: buildOwner, context: context);
    // 如果设置mirror对象

    if (mirrorId != null) {
      addMirrorObject(mirrorId, obj);
    }
    return obj;
  }

  /// 调用函数，通过 callback 返回结果
  /// 调用成员函数，第一个参数是 constMirrorObjStr
  void invokeWithCallback(Map jsonMap, void Function(dynamic result) callback,
      {MXJsonBuildOwner buildOwner}) {
    var result;
    String funcName = objectFuncName(jsonMap);
    Map args = jsonMap["args"];

    dynamic mirrorObj = findMirrorObject(jsonMap[constMirrorIDStr]);
    if (mirrorObj != null) {
      args[constMirrorObjStr] = mirrorObj;
    }

    result = _invoke(funcName, args);

    if (callback != null) {
      callback(result);
    }
  }

  /// 调用函数。直接返回结果
  dynamic _invoke(String funcName, Map argsMap,
      {MXJsonBuildOwner buildOwner, BuildContext context}) {
    // 判断是否存在fun字段
    if (funcName == null) {
      return null;
    }

    MXFunctionInvoke fi = _funcName2FunMap[funcName];
    if (fi == null) {
      return null;
    }

    fi.buildOwner = buildOwner;
    fi.context = context;

    try {
      var namedArguments = <Symbol, dynamic>{};

      // 如果没有参数校验列表，则使用传进来的Map的，由调用者保证
      List propsName = fi.propsName ?? [];
      List noJ2DProps = fi.noJ2DProps;

      for (var name in propsName) {
        if (argsMap[name] == null) {
          continue;
        }

        // 判断是否需要将属性进行转换
        if (noJ2DProps != null && noJ2DProps.contains(name)) {
          namedArguments[Symbol(name)] = argsMap[name];
        } else {
          namedArguments[Symbol(name)] = jsonToDartObj(argsMap[name],
              buildOwner: buildOwner, context: context);
        }
      }

      var result = fi.apply(namedArguments);
      fi.buildOwner = null;
      fi.context = null;
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

    if (className == null && funcName != null) {
      return funcName;
    }

    return className + "#" + funcName;
  }

  /// 获取构造方法名称
  String _constructorFuncName(Map jsonMap) {
    var className = jsonMap[constClassStr];

    // className不为空
    if (className != null) {
      var constructorName = jsonMap[constConstructorStr];
      // 若 constructorName 不为空，则为静态方法。例如：Image.network
      if (constructorName != null) {
        return className + '.' + constructorName;
      }
      return className;
    }
    // 枚举
    else if (_isEnumType(jsonMap)) {
      String name = jsonMap[constEnumNameStr];
      jsonMap[constReplaceEnumNameStr] = name;

      List strList = name.split('.');
      return strList[0];
    }
    return className;
  }

  /// 是否是枚举类型
  bool _isEnumType(Map jsonMap) {
    // 仅包含_name和index两个属性。如{"_name" : "TextAlign.right", "index" : 1}
    return jsonMap.keys.length == 2 &&
        jsonMap[constEnumNameStr] != null &&
        jsonMap[constEnumIndexStr] != null;
  }
}
