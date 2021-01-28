//  MXFlutterFramework
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

/// List模板方法。
List<T> toListT<T>(list) {
  if (list == null) {
    return null;
  }
  return List<T>.from(list);
}

/// 转Map<S, T>类型。
Map<S, T> toMapT<S, T>(Map map) {
  if (map == null) {
    return null;
  }
  // dynamic result = map?.map((k, v) {
  //   if (S == int && k is String) {
  //     return MapEntry<int, T>(int.parse(k), v);
  //   }
  //   return MapEntry<S, T>(k, v);
  // });

  // 上述写法会报错，先改用下面这种实现吧。
  var result = <S, T>{};
  for (var key in map.keys) {
    if (S == int && key is String) {
      dynamic intKey = int.parse(key);
      result[intKey] = map[key];
    } else {
      result[key] = map[key];
    }
  }
  return result;
}

/// 转Map<int, T>类型。
Map<int, T> toMapIntT<T>(Map map) {
  if (map == null) {
    return null;
  }
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

/// 转Map<String, T>类型。
Map<String, T> toMapStringT<T>(Map map) {
  if (map == null) {
    return null;
  }
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
