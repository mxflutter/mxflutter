//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/debug_overflow_indicator.dart';
import 'dart:math' as math;
import 'dart:ui' as ui;
import 'package:flutter/painting.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/stack.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDebugOverflowIndicatorSeries() {
  var m = <String, MXFunctionInvoke>{};
  return m;
}
