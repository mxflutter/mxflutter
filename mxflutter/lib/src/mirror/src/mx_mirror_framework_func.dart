//  mx_mirror_function.dart
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'mx_mirror_common_func.dart';
import 'mx_mirror_widget_func.dart';

/// 注册框架方法
void registerMirrorFrameworkFunc() {
  // 注册自动生成的widget方法
  registerBuilderWidgetFunc();

  // 注册MXJSStatefulWidget和MXJSStatelessWidget方法
  registerStateWidgetFunc();

  // 注册第三方库widget方法
  registerThirdPartyWidgetFunc();

  // 注册通用方法
  registerMirrorCommonFunc();
}
