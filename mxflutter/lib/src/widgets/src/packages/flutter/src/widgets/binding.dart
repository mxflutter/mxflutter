//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'dart:async';
import 'dart:developer' as developer;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/app.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/widget_inspector.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBindingSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_renderObjectToWidgetAdapter.funName] = _renderObjectToWidgetAdapter;
  m[_renderObjectToWidgetElement.funName] = _renderObjectToWidgetElement;
  m[_widgetsFlutterBinding.funName] = _widgetsFlutterBinding;
  return m;
}

var _renderObjectToWidgetAdapter = MXFunctionInvoke(
  "RenderObjectToWidgetAdapter",
  ({
    Widget child,
    RenderObjectWithChildMixin<RenderObject> container,
    String debugShortDescription,
  }) =>
      RenderObjectToWidgetAdapter(
    child: child,
    container: container,
    debugShortDescription: debugShortDescription,
  ),
  [
    "child",
    "container",
    "debugShortDescription",
  ],
);
var _renderObjectToWidgetElement = MXFunctionInvoke(
  "RenderObjectToWidgetElement",
  ({
    RenderObjectToWidgetAdapter<RenderObject> widget,
  }) =>
      RenderObjectToWidgetElement(
    widget,
  ),
  [
    "__mx_widget",
  ],
);
var _widgetsFlutterBinding = MXFunctionInvoke(
  "WidgetsFlutterBinding",
  () => WidgetsFlutterBinding(),
  [],
);
