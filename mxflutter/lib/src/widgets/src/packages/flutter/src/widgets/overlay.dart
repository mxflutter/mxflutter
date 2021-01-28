//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/overlay.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerOverlaySeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_overlayEntry.funName] = _overlayEntry;
  m[_overlay.funName] = _overlay;
  m[_overlayState.funName] = _overlayState;
  return m;
}

var _overlayEntry = MXFunctionInvoke(
  "OverlayEntry",
  ({
    dynamic builder,
    bool opaque = false,
    bool maintainState = false,
  }) =>
      OverlayEntry(
    builder: null,
    opaque: opaque,
    maintainState: maintainState,
  ),
  [
    "builder",
    "opaque",
    "maintainState",
  ],
);
var _overlay = MXFunctionInvoke(
  "Overlay",
  ({
    Key key,
    dynamic initialEntries = const <OverlayEntry>[],
  }) =>
      Overlay(
    key: key,
    initialEntries: toListT<OverlayEntry>(initialEntries),
  ),
  [
    "key",
    "initialEntries",
  ],
);
var _overlayState = MXFunctionInvoke(
  "OverlayState",
  () => OverlayState(),
  [],
);
