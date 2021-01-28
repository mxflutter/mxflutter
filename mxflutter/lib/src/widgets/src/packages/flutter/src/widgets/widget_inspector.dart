//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/widget_inspector.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:developer' as developer;
import 'dart:math' as math;
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/widgets/app.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/gesture_detector.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerWidgetInspectorSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_widgetInspector.funName] = _widgetInspector;
  m[_inspectorSelection.funName] = _inspectorSelection;
  m[_inspectorSerializationDelegate.funName] = _inspectorSerializationDelegate;
  return m;
}

var _widgetInspector = MXFunctionInvoke(
  "WidgetInspector",
  ({
    Key key,
    Widget child,
    dynamic selectButtonBuilder,
  }) =>
      WidgetInspector(
    key: key,
    child: child,
    selectButtonBuilder: null,
  ),
  [
    "key",
    "child",
    "selectButtonBuilder",
  ],
);
var _inspectorSelection = MXFunctionInvoke(
  "InspectorSelection",
  () => InspectorSelection(),
  [],
);
var _inspectorSerializationDelegate = MXFunctionInvoke(
  "InspectorSerializationDelegate",
  ({
    String groupName,
    bool summaryTree = false,
    int maxDescendentsTruncatableNode = -1,
    bool expandPropertyValues = true,
    int subtreeDepth = 1,
    bool includeProperties = false,
    WidgetInspectorService service,
    dynamic addAdditionalPropertiesCallback,
  }) =>
      InspectorSerializationDelegate(
    groupName: groupName,
    summaryTree: summaryTree,
    maxDescendentsTruncatableNode: maxDescendentsTruncatableNode,
    expandPropertyValues: expandPropertyValues,
    subtreeDepth: subtreeDepth,
    includeProperties: includeProperties,
    service: service,
    addAdditionalPropertiesCallback: null,
  ),
  [
    "groupName",
    "summaryTree",
    "maxDescendentsTruncatableNode",
    "expandPropertyValues",
    "subtreeDepth",
    "includeProperties",
    "service",
    "addAdditionalPropertiesCallback",
  ],
);
