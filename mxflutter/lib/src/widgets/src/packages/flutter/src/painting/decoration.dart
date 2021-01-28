//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/decoration.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/edge_insets.dart';
import 'package:flutter/src/painting/image_provider.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDecorationSeries() {
  var m = <String, MXFunctionInvoke>{};
  return m;
}
