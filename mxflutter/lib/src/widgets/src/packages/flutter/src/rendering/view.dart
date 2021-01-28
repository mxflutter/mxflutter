//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/view.dart';
import 'dart:developer';
import 'dart:io';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/binding.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/mouse_tracking.dart';
import 'package:flutter/src/rendering/object.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerViewSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_viewConfiguration.funName] = _viewConfiguration;
  m[_renderView.funName] = _renderView;
  return m;
}

var _viewConfiguration = MXFunctionInvoke(
  "ViewConfiguration",
  ({
    ui.Size size = Size.zero,
    dynamic devicePixelRatio = 1.0,
  }) =>
      ViewConfiguration(
    size: size,
    devicePixelRatio: devicePixelRatio?.toDouble(),
  ),
  [
    "size",
    "devicePixelRatio",
  ],
);
var _renderView = MXFunctionInvoke(
  "RenderView",
  ({
    RenderBox child,
    ViewConfiguration configuration,
    ui.Window window,
  }) =>
      RenderView(
    child: child,
    configuration: configuration,
    window: window,
  ),
  [
    "child",
    "configuration",
    "window",
  ],
);
