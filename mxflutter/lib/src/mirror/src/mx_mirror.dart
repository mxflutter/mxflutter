//  MXFlutterFramework
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../../mx_build_owner.dart';
import '../../mx_common.dart';
import '../../mx_js_bridge.dart';
import 'mx_function_invoke.dart';
import 'mx_mirror_object.dart';

/// 提供通过Json Map 调用 Dart 函数的能力。
/// 通过调用 Dart 类的构造方法，实现Json Map 转 Dart 对象。
/// 需要注册可以调用的函数。
abstract class MXMirror {
  /// 单例实例。
  static MXMirror _instance;

  /// 获取单例。
  static MXMirror getInstance() {
    if (_instance == null) {
      _instance = _MXMirrorImplements();
    }
    return _instance;
  }

  /// 注册可以通过JS调用的方法。
  void registerFunctions(Map<String, dynamic> functionMap);

  /// 通过 Json Map 生成Dart Object。
  /// 通过函数映射表，找到构造函数，调用生成Dart Object。
  /// Map 里如果带mirrorId 字段，则会加入到MirrogObj管理其生命周期，如果不带则由外部管理。
  dynamic jsonToDartObj(Map jsonMap, {MXBuildOwner buildOwner, BuildContext context});

  /// 调用函数，直接返回结果。
  dynamic invokeFunction(Map jsonMap, {MXBuildOwner buildOwner});

  /// 调用函数，通过 callback 返回结果。
  void invokeFunctionWithCallback(Map jsonMap, void Function(dynamic result) callback, {MXBuildOwner buildOwner});

//  /// 调用函数。直接返回结果。
//  dynamic invoke(Map jsonMap,
//      {MXJsonBuildOwner buildOwner, BuildContext context});

  /// 获取 Map 中的 mirrorId。
  String mirrorId(Map jsonMap);

  /// 通过 mirrorId 获取Mirror对象。
  dynamic findMirrorObject(dynamic mirrorId);

  /// 添加Mirror Dart 对象。
  void addMirrorObject(dynamic mirrorId, dynamic mirrorObj);

  /// 移除Mirror对象。
  void removeMirrorObject(dynamic mirrorId);

  /// 移除Mirror对象列表。
  void removeMirrorObjectList(List mirrorIdList);

  /// 移除所有Mirror对象。
  void clearAllMirrorObjects();

  /// Flutter->JS。
  void invokeJSMirrorObj({dynamic mirrorID, String functionName, String callbackID, dynamic args});

  /// Flutter->JS。调用JS Mirror模块的注册funcName方法。
  void invokeJSMirrorFuncNameMethod({String functionName, dynamic args});
}

class _MXMirrorImplements extends MXMirror with MXMirrorObjectMgr {
  /// 方法名字符串。
  final _funcNameStr = "funcName";

  /// 类名字符串。
  final _classNameStr = "className";

  /// 构造方法名字符串。
  final _constructorNameStr = "constructorName";

  /// 枚举名字符串。
  final _enumNameStr = "_name";

  /// 需替代的枚举名字符串。
  final _replaceEnumNameStr = "name";

  /// 枚举index字符串。
  final _enumIndexStr = "index";

  /// mirrorID字符串。
  final _mirrorIDStr = "mirrorID";

  /// mirrorObj字符串。
  final _mirrorObjStr = "mirrorObj";

  /// mx前缀字符串。
  final _mxPrefixStr = "__mx_";

  /// funcName到Fun方法的映射表。
  var _funcName2FunMap = <String, MXFunctionInvoke>{};

  /// funcName到Fun方法的映射表,用过的函数缓存下来。
  var _funcName2FunMapCache = <String, MXFunctionInvoke>{};

  /// 注册可以通过JS调用的方法。
  void registerFunctions(Map<String, dynamic> functionMap) {
    if (functionMap == null || functionMap.isEmpty) {
      return;
    }

    _funcName2FunMap.addAll(functionMap);
  }

  /// 通过 Json Map 生成Dart Object。
  /// 通过函数映射表，找到构造函数，调用生成Dart Object。
  /// Map 里如果带mirrorId 字段，则会加入到MirrogObj管理其生命周期，如果不带则由外部管理。
  dynamic jsonToDartObj(dynamic jsonObj, {MXBuildOwner buildOwner, BuildContext context}) {
    if (jsonObj is Map) {
      Map jsonMap = jsonObj;

      // 尝试转换成DartObj。
      var dartObj = _map2DartObject(jsonMap, buildOwner: buildOwner, context: context);
      if (dartObj != null) {
        return dartObj;
      }

      // 当作普通Map对象，递归转换Map的元素。
      Map resultMap = <dynamic, dynamic>{};
      jsonMap.forEach((k, v) {
        resultMap[k] = jsonToDartObj(v, buildOwner: buildOwner, context: context);
      });
      return resultMap;
    } else if (jsonObj is List) {
      List resultList = <dynamic>[];
      for (var element in jsonObj) {
        var object = jsonToDartObj(element, buildOwner: buildOwner, context: context);
        resultList.add(object);
      }
      return resultList;
    } else if (jsonObj is String && _isTSEnumJsonString(jsonObj)) {
      Map jsonMap = json.decode(jsonObj);
      return _map2DartObject(jsonMap, buildOwner: buildOwner, context: context);
    } else {
      return jsonObj;
    }
  }

  /// 调用函数，直返返回结果。
  /// 调用成员函数，第一个参数是 [_mirrorObjStr]。
  dynamic invokeFunction(Map jsonMap, {MXBuildOwner buildOwner}) {
    var result;
    String funcName = objectFuncName(jsonMap);
    Map args = jsonMap["args"] ?? {};

    // 获取mirrorObj
    dynamic mirrorObj = args[_mirrorObjStr];
    if (mirrorObj == null) {
      mirrorObj = findMirrorObject(jsonMap[_mirrorIDStr]);
      if (mirrorObj != null) {
        args[_mirrorObjStr] = mirrorObj;
      }
    }

    // 判断fi是否为空。
    MXFunctionInvoke fi = _funcInvokeWithFuncName(funcName);
    if (fi == null) {
      MXJSLog.error("MXMirror.invokeFunction, error: fi is null; jsonMap: $jsonMap ");
      return;
    }

    // 判断mirrorObj是否为空。
    if (fi.propsName.contains(_mirrorObjStr) && mirrorObj == null) {
      MXJSLog.error("MXMirror.invokeFunction, error: mirrorObj is null; jsonMap: $jsonMap ");
      return;
    }

    result = _invoke(funcName, args, buildOwner: buildOwner);
    return result;
  }

  /// 调用函数，通过 callback 返回结果。
  /// 调用成员函数，第一个参数是 [_mirrorObjStr]。
  void invokeFunctionWithCallback(Map jsonMap, void Function(dynamic result) callback, {MXBuildOwner buildOwner}) {
    final result = invokeFunction(jsonMap, buildOwner: buildOwner);
    if (callback != null) {
      callback(result);
    }
  }

  /// 判断是否可以调用方法。
  bool canInvoke(String funcName) {
    return _funcName2FunMap[funcName] != null;
  }

  /// 获取对象方法名称。
  String objectFuncName(Map jsonMap) {
    var className = jsonMap[_classNameStr];
    var funcName = jsonMap[_funcNameStr];

    if (className == null && funcName == null) {
      return null;
    } else if (className == null && funcName != null) {
      return funcName;
    }

    return '$className#$funcName';
  }

  /// Flutter->JS，调用MirroObj方法。
  void invokeJSMirrorObj({dynamic mirrorID, String functionName, String callbackID, dynamic args}) async {
    Map callInfo = {"mirrorID": mirrorID, "funcName": functionName, "callbackID": callbackID, "args": args};

    MethodCall jsMethodCall = MethodCall("invokeJSMirrorObj", callInfo);
    MXJSBridge.getInstance().invokeJSCommonChannel(jsMethodCall);
  }

  /// Flutter->JS。调用JS Mirror模块的注册funcName方法。
  void invokeJSMirrorFuncNameMethod({String functionName, dynamic args}) async {
    Map callInfo = {"funcName": functionName, "args": args};

    MethodCall jsMethodCall = MethodCall("invokeJSMirrorFuncNameMethod", callInfo);
    MXJSBridge.getInstance().invokeJSCommonChannel(jsMethodCall);
  }

  dynamic _map2DartObject(Map jsonMap, {MXBuildOwner buildOwner, BuildContext context}) {
    // 首先判断是否存在mirrorObjec缓存。
    String mirrorId = jsonMap[_mirrorIDStr];
    if (mirrorId != null) {
      var mirrorObject = findMirrorObject(mirrorId);
      if (mirrorObject != null) {
        return mirrorObject;
      }
    }

    // 尝试转换成DartObj。
    String funcName = jsonMap[_funcNameStr];
    bool isEnum = _isEnumType(jsonMap);
    if (funcName == null) {
      funcName = _constructorFuncName(jsonMap);
      if (funcName == null) {
        return null;
      }
    }

    var obj = _invoke(funcName, jsonMap, buildOwner: buildOwner, context: context);

    // 移除枚举对象临时添加的name字段。
    if (isEnum) {
      _removeReplaceEnumNameStr(jsonMap);
    }

    // 如果设置mirror对象。
    if (mirrorId != null) {
      addMirrorObject(mirrorId, obj);

      // 保持到buildOwnerNode一份，当buildOwnerNode管理的Element dispose时，释放mirrorObj。
      buildOwner?.addMirrorObjectId(mirrorId);
    }
    return obj;
  }

  /// 调用函数。直接返回结果。
  dynamic _invoke(String funcName, Map argsMap, {MXBuildOwner buildOwner, BuildContext context}) {
    // 判断是否存在fun字段
    if (funcName == null) {
      return null;
    }

    MXFunctionInvoke fi = _funcInvokeWithFuncName(funcName);
    if (fi == null) {
      return null;
    }

    try {
      var namedArguments = <Symbol, dynamic>{};

      // 如果没有参数校验列表，则使用传进来的Map的，由调用者保证
      List propsName = fi.propsName ?? [];
      List noJ2DProps = fi.noJ2DProps;
      argsMap = argsMap ?? {};

      for (var name in propsName) {
        if (!argsMap.containsKey(name)) {
          continue;
        }

        // 移除ts侧添加的mx前缀，转成真正的名称。
        String convertName = name;
        if (name.startsWith(_mxPrefixStr)) {
          convertName = name.replaceFirst(_mxPrefixStr, "");
        }

        // 判断是否需要将属性进行转换。
        if (noJ2DProps != null && noJ2DProps.contains(name)) {
          namedArguments[Symbol(convertName)] = argsMap[name];
        } else {
          namedArguments[Symbol(convertName)] = jsonToDartObj(argsMap[name], buildOwner: buildOwner, context: context);
        }
      }

      // 保存原参数。此处是为了解决同一类型的widget嵌套时，导致的buildOwner和context的覆盖问题。
      MXBuildOwner originBuildOwner = fi.buildOwner;
      BuildContext originContext = fi.context;
      fi.buildOwner = buildOwner;
      fi.context = context;

      var result = fi.apply(namedArguments);

      // 重新赋值原参数。
      fi.buildOwner = originBuildOwner;
      fi.context = originContext;

      return result;
    } catch (e) {
      MXJSLog.error("MXMirror.invoke, error:$e ; jsonMap: $argsMap ");

      // 打印日志重新抛出。
      rethrow;
    }
  }

  /// 获取构造方法名称。
  String _constructorFuncName(Map jsonMap) {
    var className = jsonMap[_classNameStr];

    // className不为空。
    if (className != null) {
      var constructorName = jsonMap[_constructorNameStr];
      // 若 constructorName 不为空，则为静态方法。例如：Image.network。
      if (constructorName != null) {
        return '$className.$constructorName';
      }
      return className;
    }
    // 枚举。
    else if (_isEnumType(jsonMap)) {
      String name = jsonMap[_enumNameStr];
      _addReplaceEnumNameStr(jsonMap, name);
      List strList = name.split('.');
      return strList[0];
    }
    return className;
  }

  /// 是否是枚举类型。
  bool _isEnumType(Map jsonMap) {
    // 仅包含_name和index两个属性。如{"_name" : "TextAlign.right", "index" : 1}。
    return jsonMap.keys.length == 2 && jsonMap[_enumNameStr] != null && jsonMap[_enumIndexStr] != null;
  }

  /// 是否是TS枚举Json字符串。
  bool _isTSEnumJsonString(String jsonString) {
    // TS枚举字符串，包含"{"、"_name: "、"index: "、"}"四个字符串。
    return jsonString.contains("{") &&
        jsonString.contains("\"_name\": ") &&
        jsonString.contains("\"index\": ") &&
        jsonString.contains("}");
  }

  /// 给枚举对象添加临时的name属性。
  void _addReplaceEnumNameStr(Map jsonMap, String name) {
    jsonMap[_replaceEnumNameStr] = name;
  }

  /// 移除枚举对象临时添加的name属性。
  void _removeReplaceEnumNameStr(Map jsonMap) {
    jsonMap.remove(_replaceEnumNameStr);
  }

  // 通过funcName获取functionInvoke
  MXFunctionInvoke _funcInvokeWithFuncName(String funcName) {
    MXFunctionInvoke fi = _funcName2FunMapCache[funcName];
    if (fi == null) {
      fi = _funcName2FunMap[funcName];
      if (fi == null) {
        return null;
      }
      _funcName2FunMapCache[funcName] = fi;
    }
    return fi;
  }
}
