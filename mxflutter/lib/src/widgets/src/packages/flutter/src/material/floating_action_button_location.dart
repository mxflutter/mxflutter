//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[_floatingActionButtonLocationEndFloat.funName] =
      _floatingActionButtonLocationEndFloat;
  m[_floatingActionButtonLocationCenterFloat.funName] =
      _floatingActionButtonLocationCenterFloat;
  m[_floatingActionButtonLocationEndDocked.funName] =
      _floatingActionButtonLocationEndDocked;
  m[_floatingActionButtonLocationCenterDocked.funName] =
      _floatingActionButtonLocationCenterDocked;
  m[_floatingActionButtonLocationStartTop.funName] =
      _floatingActionButtonLocationStartTop;
  m[_floatingActionButtonLocationMiniStartTop.funName] =
      _floatingActionButtonLocationMiniStartTop;
  m[_floatingActionButtonLocationEndTop.funName] =
      _floatingActionButtonLocationEndTop;
  m[_floatingActionButtonAnimatorScaling.funName] =
      _floatingActionButtonAnimatorScaling;
  return m;
}

var _floatingActionButtonLocationEndFloat = MXFunctionInvoke(
    "FloatingActionButtonLocation.endFloat",
    () => FloatingActionButtonLocation.endFloat);
var _floatingActionButtonLocationCenterFloat = MXFunctionInvoke(
    "FloatingActionButtonLocation.centerFloat",
    () => FloatingActionButtonLocation.centerFloat);
var _floatingActionButtonLocationEndDocked = MXFunctionInvoke(
    "FloatingActionButtonLocation.endDocked",
    () => FloatingActionButtonLocation.endDocked);
var _floatingActionButtonLocationCenterDocked = MXFunctionInvoke(
    "FloatingActionButtonLocation.centerDocked",
    () => FloatingActionButtonLocation.centerDocked);
var _floatingActionButtonLocationStartTop = MXFunctionInvoke(
    "FloatingActionButtonLocation.startTop",
    () => FloatingActionButtonLocation.startTop);
var _floatingActionButtonLocationMiniStartTop = MXFunctionInvoke(
    "FloatingActionButtonLocation.miniStartTop",
    () => FloatingActionButtonLocation.miniStartTop);
var _floatingActionButtonLocationEndTop = MXFunctionInvoke(
    "FloatingActionButtonLocation.endTop",
    () => FloatingActionButtonLocation.endTop);
var _floatingActionButtonAnimatorScaling = MXFunctionInvoke(
    "FloatingActionButtonAnimator.scaling",
    () => FloatingActionButtonAnimator.scaling);
