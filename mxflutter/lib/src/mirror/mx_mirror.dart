//  mx_mirror.dart
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mx_json_proxy_image_new.dart';
import 'package:mxflutter/src/mx_json_proxy_material_new.dart';
import 'package:mxflutter/src/mx_json_proxy_layout_new.dart';
import 'package:mxflutter/src/mx_build_owner.dart';

String constFunString = "funcName";

/// MXMirror系统接口类
class MXMirror {
  static MXMirror _instance;

  /// String到Dart 函数的映射表
  var _funName2FunMap = {};

  static MXMirror getInstance() {
    if (_instance == null) {
      _instance = MXMirror._();
    }
    return _instance;
  }

  factory MXMirror() {
    return MXMirror.getInstance();
  }

  MXMirror._() {
    /// 注册方法
    _registerFunctions();
  }

  /// 注册方法
  _registerFunctions() {
    /// 注册widget方法
    _registerWidgetFunction();

    /// 注册通用方法
    _registerCommonFunction();
  }

  /// 注册widget方法
  _registerWidgetFunction() {
    /// Image
    addToFunctionMap(MXRegisterImageSeries.registerSeries());

    /// Meterial
    addToFunctionMap(MXRegisterMeterialSeries.registerSeries());

    /// Layout
    addToFunctionMap(MXRegisterLayoutSeries.registerSeries());
  }

  /// 注册通用方法
  _registerCommonFunction() {}

  /// 添加到方法映射表
  void addToFunctionMap(Map<String, dynamic> functionMap) {
    if (functionMap == null || functionMap.isEmpty) {
      return;
    }

    _funName2FunMap.addAll(functionMap);
  }

  /// 调用Function.apply方法
  invoke(Map jsonMap, { MXJsonBuildOwner buildOwner }) {
    /// 判断是否存在fun字段
    if (jsonMap[constFunString] == null) {
      return;
    }

    String fun = jsonMap[constFunString];
    // 移除fun字段
    jsonMap.remove(constFunString);
    dynamic fi = _funName2FunMap[fun];
    fi.buildOwner = buildOwner;
    var result = fi.apply(jsonMap);
    fi.buildOwner = null;
    return result;
  }

  bool canInvoke(String funcName) {
    return _funName2FunMap[funcName] != null;
  }
}
