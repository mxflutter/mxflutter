//  mx_mirror_function.dart
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'mx_mirror_common_func.dart';
import 'mx_mirror_widget_func.dart';

/// 注册框架方法
void registerMirrorFrameworkFunc() {
  // 注册widget方法
  registerMirrorWidgetFunc();

  // 注册通用方法
  registerMirrorCommonFunc();
}
