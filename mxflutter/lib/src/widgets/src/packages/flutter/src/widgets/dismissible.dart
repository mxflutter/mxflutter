//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/dismissible.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/widgets/automatic_keep_alive.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/gesture_detector.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/src/widgets/transitions.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDismissibleSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_dismissDirection.funName] = _dismissDirection;
  m[_dismissible.funName] = _dismissible;
  return m;
}
var _dismissDirection = MXFunctionInvoke(
    "DismissDirection",
    ({Map args}) => MXDismissDirection.parse(args),
  );
var _dismissible = MXFunctionInvoke(
    "Dismissible",
    (
      {
      Key key,
      Widget child,
      Widget background,
      Widget secondaryBackground,
      dynamic confirmDismiss,
      dynamic onResize,
      dynamic onDismissed,
      DismissDirection direction = DismissDirection.horizontal,
      Duration resizeDuration,
      Map<DismissDirection, double> dismissThresholds,
      Duration movementDuration,
      dynamic crossAxisEndOffset = 0.0,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      }
    ) =>
      Dismissible(
      key: key,
      child: child,
      background: background,
      secondaryBackground: secondaryBackground,
      confirmDismiss: null,
      onResize: createVoidCallbackClosure(_dismissible.buildOwner, onResize),
      onDismissed: createValueChangedGenericClosure<DismissDirection>(_dismissible.buildOwner, onDismissed),
      direction: direction,
      resizeDuration: resizeDuration,
      dismissThresholds: dismissThresholds,
      movementDuration: movementDuration,
      crossAxisEndOffset: crossAxisEndOffset?.toDouble(),
      dragStartBehavior: dragStartBehavior,
    ),
);
class MXDismissDirection {
  static Map str2VMap = {
    'DismissDirection.vertical': DismissDirection.vertical,
    'DismissDirection.horizontal': DismissDirection.horizontal,
    'DismissDirection.endToStart': DismissDirection.endToStart,
    'DismissDirection.startToEnd': DismissDirection.startToEnd,
    'DismissDirection.up': DismissDirection.up,
    'DismissDirection.down': DismissDirection.down,
  };
  static DismissDirection parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
