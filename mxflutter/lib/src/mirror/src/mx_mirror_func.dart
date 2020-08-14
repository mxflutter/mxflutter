//  mx_mirror.dart
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import '../../mx_json_build_owner.dart';
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

  /// 调用Function.apply方法，通过 callback 返回结果
  void invokeWithCallback(Map jsonMap, void Function(dynamic result) callback,
      {MXJsonBuildOwner buildOwner}) {
    var result = invoke(jsonMap, buildOwner: buildOwner);
    if (callback != null) {
      callback(result);
    }
  }

  /// 调用Function.apply方法。直接返回结果
  dynamic invoke(Map jsonMap, {MXJsonBuildOwner buildOwner}) {
    // 判断是否存在fun字段
    if (jsonMap[constFuncStr] == null) {
      return null;
    }

    String funcName = jsonMap[constFuncStr];
    _removeUselessProperty(jsonMap);
    MXFunctionInvoke fi = _funcName2FunMap[funcName];
    fi.buildOwner = buildOwner;
    
    try {
      var namedArguments = <Symbol, dynamic>{};
      List noJ2DProps = fi.noJ2DProps;
      for (var name in jsonMap.keys) {
        /// TODO:mirrorID不添加到namedArguments里面
        if (name == constMirrorIDStr) {
          continue;
        }

        // 判断是否需要将属性进行转换
        if (noJ2DProps != null && noJ2DProps.contains(name)) {
          namedArguments[Symbol(name)] = jsonMap[name];
        } else {
          namedArguments[Symbol(name)] = _jsonToDartObject(jsonMap[name], buildOwner: buildOwner);
        }
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

    return className + "#" + funcName;
  }

  /// 获取构造方法名称
  String constructorFuncName(Map jsonMap) {
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

  /// 移除func、className、constructorName等字段
  void _removeUselessProperty(Map jsonMap) {
    jsonMap.remove(constFuncStr);
    jsonMap.remove(constClassStr);
    jsonMap.remove(constConstructorStr);

    // TODO:移除enableProfile
    jsonMap.remove("enableProfile");

    // 针对枚举类型，把_name替换成name
    if (_isEnumType(jsonMap)) {
      jsonMap[constReplaceEnumNameStr] = jsonMap[constEnumNameStr];
      jsonMap.remove(constEnumNameStr);
    }
  }

  /// 将json装成flutter对象
  dynamic _jsonToDartObject(dynamic json, {MXJsonBuildOwner buildOwner}) {
    if (json is Map) {
      String funcName = json[constFuncStr];
      Map<String, dynamic> newJsonMap = Map.from(json);
      if (funcName == null) {
        funcName = constructorFuncName(json);
        newJsonMap[constFuncStr] = funcName;
      }

      // 可以通过invoke转换
      if (canInvoke(funcName)) {
        var obj = invoke(newJsonMap, buildOwner: buildOwner);
        MXMirrorObject.getInstance().addMirrorObject(newJsonMap["mirrorID"], obj);
        return obj;
      }
      // 不能通过invoke的，则遍历每个元素
      else {
        Map resultMap = {};
        json.forEach((k, v) {
          resultMap[k] = _jsonToDartObject(v, buildOwner: buildOwner);
        });
        return resultMap;
      }
    } else if (json is List) {
      List resultList = [];
      for (var element in json) {
        var object = _jsonToDartObject(element, buildOwner: buildOwner);
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
