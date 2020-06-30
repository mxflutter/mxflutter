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
