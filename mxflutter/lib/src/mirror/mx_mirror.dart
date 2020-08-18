library mx_mirror;

import 'package:flutter/widgets.dart';

import '../mx_build_owner.dart';
import './src/mx_mirror_func.dart';

export 'src/mx_closure.dart';
export 'src/mx_common_function.dart';
export 'src/mx_function_invoke.dart';

/// 提供通过Json Map 调用 Dart 函数的能力
/// 通过调用 Dart 类的构造方法，实现Json Map 转 Dart 对象
/// 需要注册可以调用的函数
abstract class MXMirror {
  static MXMirror _instance;

  static MXMirror getInstance() {
    if (_instance == null) {
      _instance = MXMirrorImplements();
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

  /// 调用成员函数，通过 callback 返回结果
  void invokeWithCallback(Map jsonMap, void Function(dynamic result) callback,
      {MXJsonBuildOwner buildOwner});

  /// 调用成员函数。直接返回结果
  dynamic invoke(Map jsonMap,
      {MXJsonBuildOwner buildOwner, BuildContext context});

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
