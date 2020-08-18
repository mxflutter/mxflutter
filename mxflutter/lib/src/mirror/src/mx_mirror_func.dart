//  mx_mirror.dart
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../../mx_build_owner.dart';
import 'mx_function_invoke.dart';
import 'mx_mirror_object.dart';

class MXMirrorFunc {
  static MXMirrorFunc _instance;

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

  /// 通过Function.apply方法，生成Dart Object
  dynamic jsonToDartObj(Map jsonMap, {MXJsonBuildOwner buildOwner, BuildContext context}) {
    String funcName = _constructorFuncName(jsonMap);
    if (canInvoke(funcName)) {
      Map<String, dynamic> newJsonMap = Map.from(jsonMap);
      newJsonMap[constFuncStr] = funcName;
      return invoke(newJsonMap, buildOwner: buildOwner, context: context);
    }
    return null;
  }

  /// 调用Function.apply方法，通过 callback 返回结果
  void invokeWithCallback(Map jsonMap, void Function(dynamic result) callback, {MXJsonBuildOwner buildOwner}) {
    var result;
    String funcName = MXMirrorFunc.getInstance().objectFuncName(jsonMap);
    if (MXMirrorFunc.getInstance().canInvoke(funcName)) {
      Map<String, dynamic> newArgs = new Map<String, dynamic>();
      dynamic mirrorObj = MXMirrorObject.getInstance().mirrorObject(jsonMap[constMirrorIDStr]);
      newArgs[constMirrorObjStr] = mirrorObj;
      newArgs[constFuncStr] = funcName;
      newArgs.addAll(jsonMap["args"]);
      result = invoke(newArgs);
    }

    if (callback != null) {
        callback(result);
    }
  }

  /// 调用Function.apply方法。直接返回结果
  dynamic invoke(Map jsonMap, {MXJsonBuildOwner buildOwner, BuildContext context}) {
    // 首先判断是否存在mirrorObject
    var mirrorObject = MXMirrorObject.getInstance().mirrorObject(jsonMap[constMirrorIDStr]);
    if (mirrorObject != null) {
      return mirrorObject;
    }

    // 判断是否存在fun字段
    if (jsonMap[constFuncStr] == null) {
      return null;
    }

    String funcName = jsonMap[constFuncStr];
    _handleJsonData(jsonMap);
    MXFunctionInvoke fi = _funcName2FunMap[funcName];
    fi.buildOwner = buildOwner;
    fi.context = context;
    
    try {
      var namedArguments = <Symbol, dynamic>{};
      List propsName = fi.propsName;
      List noJ2DProps = fi.noJ2DProps;
      if (propsName != null) {
        for (var name in propsName) {
          // 参数为空，直接返回
          if (jsonMap[name] == null) {
            continue;
          }

          // 判断是否需要将属性进行转换
          if (noJ2DProps != null && noJ2DProps.contains(name)) {
            namedArguments[Symbol(name)] = jsonMap[name];
          } else {
            namedArguments[Symbol(name)] = _jsonToObject(jsonMap[name], buildOwner: buildOwner, context: context);
          }
        }
      }
      // 为方便处理，此处都使用命名参数，不用位置参数
      var result = fi.apply(namedArguments);
      fi.buildOwner = null;

      // 设置mirror对象
      MXMirrorObject.getInstance().addMirrorObject(jsonMap[constMirrorIDStr], result);

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
      List strList = name.split('.');
      return strList[0];
    }
    return className;
  }

  /// 处理Json数据
  void _handleJsonData(Map jsonMap) {
    // 移除框架添加的funcName
    jsonMap.remove(constFuncStr);

    // 针对枚举类型，把_name替换成name
    if (_isEnumType(jsonMap)) {
      jsonMap[constReplaceEnumNameStr] = jsonMap[constEnumNameStr];
      jsonMap.remove(constEnumNameStr);
    }
  }

  /// 将json转成Object
  dynamic _jsonToObject(dynamic json, {MXJsonBuildOwner buildOwner, BuildContext context}) {
    if (json is Map) {
      String funcName = json[constFuncStr];
      Map<String, dynamic> newJsonMap = Map.from(json);
      if (funcName == null) {
        funcName = _constructorFuncName(json);
        newJsonMap[constFuncStr] = funcName;
      }

      // 可以通过invoke转换
      if (canInvoke(funcName)) {
        var obj = invoke(newJsonMap, buildOwner: buildOwner, context: context);
        return obj;
      }
      // 不能通过invoke的，则遍历每个元素
      else {
        Map resultMap = {};
        json.forEach((k, v) {
          resultMap[k] = _jsonToObject(v, buildOwner: buildOwner, context: context);
        });
        return resultMap;
      }
    } else if (json is List) {
      List resultList = [];
      for (var element in json) {
        var object = _jsonToObject(element, buildOwner: buildOwner, context: context);
        resultList.add(object);
      }
      return resultList;
    } else {
      return json;
    }
  }

  /// 是否是枚举类型
  bool _isEnumType(Map jsonMap) {
    // 仅包含_name和index两个属性。如{"_name" : "TextAlign.right", "index" : 1}
    return jsonMap.keys.length == 2 &&
        jsonMap[constEnumNameStr] != null &&
        jsonMap[constEnumIndexStr] != null;
  }
}
