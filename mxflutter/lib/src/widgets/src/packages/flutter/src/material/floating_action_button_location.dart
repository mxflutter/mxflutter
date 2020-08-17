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
  m[_floatingActionButtonLocation_endFloat.funName] =
      _floatingActionButtonLocation_endFloat;
  m[_floatingActionButtonLocation_centerFloat.funName] =
      _floatingActionButtonLocation_centerFloat;
  m[_floatingActionButtonLocation_endDocked.funName] =
      _floatingActionButtonLocation_endDocked;
  m[_floatingActionButtonLocation_centerDocked.funName] =
      _floatingActionButtonLocation_centerDocked;
  m[_floatingActionButtonLocation_startTop.funName] =
      _floatingActionButtonLocation_startTop;
  m[_floatingActionButtonLocation_miniStartTop.funName] =
      _floatingActionButtonLocation_miniStartTop;
  m[_floatingActionButtonLocation_endTop.funName] =
      _floatingActionButtonLocation_endTop;
  m[_floatingActionButtonAnimator_scaling.funName] =
      _floatingActionButtonAnimator_scaling;
  return m;
}

var _floatingActionButtonLocation_endFloat = MXFunctionInvoke(
    "FloatingActionButtonLocation.endFloat",
    () => FloatingActionButtonLocation.endFloat);
var _floatingActionButtonLocation_centerFloat = MXFunctionInvoke(
    "FloatingActionButtonLocation.centerFloat",
    () => FloatingActionButtonLocation.centerFloat);
var _floatingActionButtonLocation_endDocked = MXFunctionInvoke(
    "FloatingActionButtonLocation.endDocked",
    () => FloatingActionButtonLocation.endDocked);
var _floatingActionButtonLocation_centerDocked = MXFunctionInvoke(
    "FloatingActionButtonLocation.centerDocked",
    () => FloatingActionButtonLocation.centerDocked);
var _floatingActionButtonLocation_startTop = MXFunctionInvoke(
    "FloatingActionButtonLocation.startTop",
    () => FloatingActionButtonLocation.startTop);
var _floatingActionButtonLocation_miniStartTop = MXFunctionInvoke(
    "FloatingActionButtonLocation.miniStartTop",
    () => FloatingActionButtonLocation.miniStartTop);
var _floatingActionButtonLocation_endTop = MXFunctionInvoke(
    "FloatingActionButtonLocation.endTop",
    () => FloatingActionButtonLocation.endTop);
var _floatingActionButtonAnimator_scaling = MXFunctionInvoke(
    "FloatingActionButtonAnimator.scaling",
    () => FloatingActionButtonAnimator.scaling);
