//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/floating_action_button_location.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/scaffold.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerFloatingActionButtonLocationSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_floatingActionButtonLocationStartTop.funName] = _floatingActionButtonLocationStartTop;
  m[_floatingActionButtonLocationMiniStartTop.funName] = _floatingActionButtonLocationMiniStartTop;
  m[_floatingActionButtonLocationCenterTop.funName] = _floatingActionButtonLocationCenterTop;
  m[_floatingActionButtonLocationMiniCenterTop.funName] = _floatingActionButtonLocationMiniCenterTop;
  m[_floatingActionButtonLocationEndTop.funName] = _floatingActionButtonLocationEndTop;
  m[_floatingActionButtonLocationMiniEndTop.funName] = _floatingActionButtonLocationMiniEndTop;
  m[_floatingActionButtonLocationStartFloat.funName] = _floatingActionButtonLocationStartFloat;
  m[_floatingActionButtonLocationMiniStartFloat.funName] = _floatingActionButtonLocationMiniStartFloat;
  m[_floatingActionButtonLocationCenterFloat.funName] = _floatingActionButtonLocationCenterFloat;
  m[_floatingActionButtonLocationMiniCenterFloat.funName] = _floatingActionButtonLocationMiniCenterFloat;
  m[_floatingActionButtonLocationEndFloat.funName] = _floatingActionButtonLocationEndFloat;
  m[_floatingActionButtonLocationMiniEndFloat.funName] = _floatingActionButtonLocationMiniEndFloat;
  m[_floatingActionButtonLocationStartDocked.funName] = _floatingActionButtonLocationStartDocked;
  m[_floatingActionButtonLocationMiniStartDocked.funName] = _floatingActionButtonLocationMiniStartDocked;
  m[_floatingActionButtonLocationCenterDocked.funName] = _floatingActionButtonLocationCenterDocked;
  m[_floatingActionButtonLocationMiniCenterDocked.funName] = _floatingActionButtonLocationMiniCenterDocked;
  m[_floatingActionButtonLocationEndDocked.funName] = _floatingActionButtonLocationEndDocked;
  m[_floatingActionButtonLocationMiniEndDocked.funName] = _floatingActionButtonLocationMiniEndDocked;
  m[_floatingActionButtonAnimatorScaling.funName] = _floatingActionButtonAnimatorScaling;
  return m;
}

var _floatingActionButtonLocationStartTop =
    MXFunctionInvoke("FloatingActionButtonLocation.startTop", () => FloatingActionButtonLocation.startTop);
var _floatingActionButtonLocationMiniStartTop =
    MXFunctionInvoke("FloatingActionButtonLocation.miniStartTop", () => FloatingActionButtonLocation.miniStartTop);
var _floatingActionButtonLocationCenterTop =
    MXFunctionInvoke("FloatingActionButtonLocation.centerTop", () => FloatingActionButtonLocation.centerTop);
var _floatingActionButtonLocationMiniCenterTop =
    MXFunctionInvoke("FloatingActionButtonLocation.miniCenterTop", () => FloatingActionButtonLocation.miniCenterTop);
var _floatingActionButtonLocationEndTop =
    MXFunctionInvoke("FloatingActionButtonLocation.endTop", () => FloatingActionButtonLocation.endTop);
var _floatingActionButtonLocationMiniEndTop =
    MXFunctionInvoke("FloatingActionButtonLocation.miniEndTop", () => FloatingActionButtonLocation.miniEndTop);
var _floatingActionButtonLocationStartFloat =
    MXFunctionInvoke("FloatingActionButtonLocation.startFloat", () => FloatingActionButtonLocation.startFloat);
var _floatingActionButtonLocationMiniStartFloat =
    MXFunctionInvoke("FloatingActionButtonLocation.miniStartFloat", () => FloatingActionButtonLocation.miniStartFloat);
var _floatingActionButtonLocationCenterFloat =
    MXFunctionInvoke("FloatingActionButtonLocation.centerFloat", () => FloatingActionButtonLocation.centerFloat);
var _floatingActionButtonLocationMiniCenterFloat = MXFunctionInvoke(
    "FloatingActionButtonLocation.miniCenterFloat", () => FloatingActionButtonLocation.miniCenterFloat);
var _floatingActionButtonLocationEndFloat =
    MXFunctionInvoke("FloatingActionButtonLocation.endFloat", () => FloatingActionButtonLocation.endFloat);
var _floatingActionButtonLocationMiniEndFloat =
    MXFunctionInvoke("FloatingActionButtonLocation.miniEndFloat", () => FloatingActionButtonLocation.miniEndFloat);
var _floatingActionButtonLocationStartDocked =
    MXFunctionInvoke("FloatingActionButtonLocation.startDocked", () => FloatingActionButtonLocation.startDocked);
var _floatingActionButtonLocationMiniStartDocked = MXFunctionInvoke(
    "FloatingActionButtonLocation.miniStartDocked", () => FloatingActionButtonLocation.miniStartDocked);
var _floatingActionButtonLocationCenterDocked =
    MXFunctionInvoke("FloatingActionButtonLocation.centerDocked", () => FloatingActionButtonLocation.centerDocked);
var _floatingActionButtonLocationMiniCenterDocked = MXFunctionInvoke(
    "FloatingActionButtonLocation.miniCenterDocked", () => FloatingActionButtonLocation.miniCenterDocked);
var _floatingActionButtonLocationEndDocked =
    MXFunctionInvoke("FloatingActionButtonLocation.endDocked", () => FloatingActionButtonLocation.endDocked);
var _floatingActionButtonLocationMiniEndDocked =
    MXFunctionInvoke("FloatingActionButtonLocation.miniEndDocked", () => FloatingActionButtonLocation.miniEndDocked);
var _floatingActionButtonAnimatorScaling =
    MXFunctionInvoke("FloatingActionButtonAnimator.scaling", () => FloatingActionButtonAnimator.scaling);
