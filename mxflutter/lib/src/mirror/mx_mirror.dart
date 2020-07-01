//  mx_mirror.dart
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mx_json_proxy_image_new.dart';
import 'package:mxflutter/src/mx_json_proxy_material_new.dart';
import 'package:mxflutter/src/mx_json_proxy_layout_new.dart';
import 'package:mxflutter/src/mx_build_owner.dart';

String constFunString = "mxFun";

/// MXMirror系统接口类
class MXMirror {
  static MXMirror _instance;

  /// String到Dart 函数的映射表
  var funName2FunMap = {};

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
    registerFunctions();
  }

  /// 注册方法
  registerFunctions() {
    /// 注册widget方法
    registerWidgetFunction();

    /// 注册通用方法
    registerCommonFunction();
  }

  /// 注册widget方法
  registerWidgetFunction() {
    /// Image
    addToFunctionMap(MXRegisterImageSeries.registerSeries());

    /// Meterial
    addToFunctionMap(MXRegisterMeterialSeries.registerSeries());

    /// Layout
    addToFunctionMap(MXRegisterLayoutSeries.registerSeries());
  }

  /// 注册通用方法
  registerCommonFunction() {}

  /// 添加到方法映射表
  void addToFunctionMap(Map<String, dynamic> functionMap) {
    if (functionMap == null || functionMap.isEmpty) {
      return;
    }

    funName2FunMap.addAll(functionMap);
  }

  /// 调用方法
  invokeWidget(Map jsonMap, MXJsonBuildOwner buildOwner) {
    /// 判断是否存在fun字段
    if (jsonMap[constFunString] == null) {
      return;
    }

    String fun = jsonMap[constFunString];
    // 移除fun字段
    jsonMap.remove(constFunString);
    dynamic fi = funName2FunMap[fun];
    fi.buildOwner = buildOwner;
    var result = fi.apply(jsonMap);
    fi.buildOwner = null;
    return result;
  }

  bool canInvoke(Map jsonMap) {
    String fun = jsonMap[constFunString];
    return funName2FunMap[fun] != null;
  }
}
