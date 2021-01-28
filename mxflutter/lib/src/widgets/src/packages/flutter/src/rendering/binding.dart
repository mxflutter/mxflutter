//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/binding.dart';
import 'dart:async';
import 'dart:developer';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/src/rendering/mouse_tracking.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/view.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBindingSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_renderingFlutterBinding.funName] = _renderingFlutterBinding;
  return m;
}

var _renderingFlutterBinding = MXFunctionInvoke(
  "RenderingFlutterBinding",
  ({
    RenderBox root,
  }) =>
      RenderingFlutterBinding(
    root: root,
  ),
  [
    "root",
  ],
);
