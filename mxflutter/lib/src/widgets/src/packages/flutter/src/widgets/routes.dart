//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/routes.dart';
import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/src/widgets/actions.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/modal_barrier.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/overlay.dart';
import 'package:flutter/src/widgets/page_storage.dart';
import 'package:flutter/src/widgets/transitions.dart';

// MX Modified begin
import 'package:mxflutter/src/mx_flutter.dart';
import 'dart:convert';
// MX Modified end

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerRoutesSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_localHistoryEntry.funName] = _localHistoryEntry;
  m[_routeObserver.funName] = _routeObserver;
  // MX Modified begin
  m[_modalRouteOf.funName] = _modalRouteOf;
  // MX Modified end
  return m;
}

var _localHistoryEntry = MXFunctionInvoke(
  "LocalHistoryEntry",
  ({
    dynamic onRemove,
  }) =>
      LocalHistoryEntry(
    onRemove: createVoidCallbackClosure(_localHistoryEntry.buildOwner, onRemove),
  ),
  [
    "onRemove",
  ],
);
var _routeObserver = MXFunctionInvoke(
  "RouteObserver",
  () => RouteObserver(),
  [],
);
// MX Modified begin。TODO:
var _modalRouteOf = MXFunctionInvoke(
  "ModalRoute.of",
  ({String widgetElementID}) {
    // 通过widgetElementID查询buildContext
    BuildContext context = MXJSFlutter.getInstance().currentApp.queryElementBuildContext(widgetElementID);
    if (context == null) {
      return null;
    }

    RouteSettings settings = ModalRoute.of(context).settings;
    Map settingsMap = {"name": settings.name, "arguments": settings.arguments};
    // 目前仅传递settings参数
    Map resultMap = {"settings": settingsMap};
    String resultStr = json.encode(resultMap);
    return resultStr;
  },
  ["widgetElementID"],
);
// MX Modified end
