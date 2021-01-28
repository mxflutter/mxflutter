//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import '../mirror/mx_mirror.dart';
import 'material_patches.dart';
import 'widgets_patches.dart';

Map<String, MXFunctionInvoke> registerWidgetsPatch() {
  Map<String, MXFunctionInvoke> m = {};
  m.addAll(registerMaterialPatches());
  m.addAll(registerWidgetsPatches());
  return m;
}
