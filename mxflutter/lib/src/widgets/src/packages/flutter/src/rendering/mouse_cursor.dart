//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/mouse_cursor.dart';
import 'dart:async';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/rendering/mouse_tracking.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerMouseCursorSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_mouseCursorDefer.funName] = _mouseCursorDefer;
  m[_mouseCursorUncontrolled.funName] = _mouseCursorUncontrolled;
  m[_systemMouseCursorsNone.funName] = _systemMouseCursorsNone;
  m[_systemMouseCursorsBasic.funName] = _systemMouseCursorsBasic;
  m[_systemMouseCursorsClick.funName] = _systemMouseCursorsClick;
  m[_systemMouseCursorsText.funName] = _systemMouseCursorsText;
  m[_systemMouseCursorsForbidden.funName] = _systemMouseCursorsForbidden;
  m[_systemMouseCursorsGrab.funName] = _systemMouseCursorsGrab;
  m[_systemMouseCursorsGrabbing.funName] = _systemMouseCursorsGrabbing;
  m[_systemMouseCursorsHorizontalDoubleArrow.funName] = _systemMouseCursorsHorizontalDoubleArrow;
  m[_systemMouseCursorsVerticalDoubleArrow.funName] = _systemMouseCursorsVerticalDoubleArrow;
  return m;
}

var _mouseCursorDefer = MXFunctionInvoke("MouseCursor.defer", () => MouseCursor.defer);
var _mouseCursorUncontrolled = MXFunctionInvoke("MouseCursor.uncontrolled", () => MouseCursor.uncontrolled);
var _systemMouseCursorsNone = MXFunctionInvoke("SystemMouseCursors.none", () => SystemMouseCursors.none);
var _systemMouseCursorsBasic = MXFunctionInvoke("SystemMouseCursors.basic", () => SystemMouseCursors.basic);
var _systemMouseCursorsClick = MXFunctionInvoke("SystemMouseCursors.click", () => SystemMouseCursors.click);
var _systemMouseCursorsText = MXFunctionInvoke("SystemMouseCursors.text", () => SystemMouseCursors.text);
var _systemMouseCursorsForbidden = MXFunctionInvoke("SystemMouseCursors.forbidden", () => SystemMouseCursors.forbidden);
var _systemMouseCursorsGrab = MXFunctionInvoke("SystemMouseCursors.grab", () => SystemMouseCursors.grab);
var _systemMouseCursorsGrabbing = MXFunctionInvoke("SystemMouseCursors.grabbing", () => SystemMouseCursors.grabbing);
var _systemMouseCursorsHorizontalDoubleArrow =
    MXFunctionInvoke("SystemMouseCursors.horizontalDoubleArrow", () => SystemMouseCursors.horizontalDoubleArrow);
var _systemMouseCursorsVerticalDoubleArrow =
    MXFunctionInvoke("SystemMouseCursors.verticalDoubleArrow", () => SystemMouseCursors.verticalDoubleArrow);
