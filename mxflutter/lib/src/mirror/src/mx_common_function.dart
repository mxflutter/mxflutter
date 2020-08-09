//  mx_common_function.dart
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

/// List模板方法
List<T> toListT<T>(list) {
  if (list == null) {
    return null;
  }
  return List<T>.from(list);
}

///TODO:此处还有问题
Map<T, S> toMapT<T, S>(Map map) {
  Map<T, S> result = map?.map((k, v) {
    return MapEntry<T, S>(k, v);
  });
  return result;
}

/// 转Map<int, T>类型
Map<int, T> toMapIntT<T>(Map map) {
  Map<int, T> result = map?.map((k, v) {
    if (v.runtimeType == T) {
      return MapEntry<int, T>(int.parse(k), v);
    } else {
      // MXJSLog.error(
      //     "toMapIntT: value type is different from T type, value type is $v.runtimeType, T type is $T");
      return null;
    }
  });
  return result;
}

/// 转Map<String, T>类型
Map<String, T> toMapStringT<T>(Map map) {
  Map<String, T> result = map?.map((k, v) {
    if (v.runtimeType == T) {
      return MapEntry<String, T>(k, v);
    } else {
      // MXJSLog.error(
      //     "toMapStringT: value type is different from T type, value type is $v.runtimeType, T type is $T");
      return null;
    }
  });
  return result;
}
