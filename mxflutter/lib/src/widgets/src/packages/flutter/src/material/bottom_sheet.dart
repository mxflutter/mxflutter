//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/bottom_sheet.dart';
import 'dart:async';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/bottom_sheet_theme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/curves.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBottomSheetSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_bottomSheet.funName] = _bottomSheet;
  return m;
}

var _bottomSheet = MXFunctionInvoke(
  "BottomSheet",
  ({
    Key key,
    AnimationController animationController,
    bool enableDrag = true,
    dynamic onDragStart,
    dynamic onDragEnd,
    Color backgroundColor,
    dynamic elevation,
    ShapeBorder shape,
    Clip clipBehavior,
    dynamic onClosing,
    dynamic builder,
  }) =>
      BottomSheet(
    key: key,
    animationController: animationController,
    enableDrag: enableDrag,
    onDragStart: createValueChangedGenericClosure<DragStartDetails>(_bottomSheet.buildOwner, onDragStart),
    onDragEnd: createValueChangedGenericClosure<DragEndDetails>(_bottomSheet.buildOwner, onDragEnd),
    backgroundColor: backgroundColor,
    elevation: elevation?.toDouble(),
    shape: shape,
    clipBehavior: clipBehavior,
    onClosing: createVoidCallbackClosure(_bottomSheet.buildOwner, onClosing),
    builder: null,
  ),
  [
    "key",
    "animationController",
    "enableDrag",
    "onDragStart",
    "onDragEnd",
    "backgroundColor",
    "elevation",
    "shape",
    "clipBehavior",
    "onClosing",
    "builder",
  ],
);
