//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
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
    "DismissDirection", ({String name, int index}) => MXDismissDirection.parse(name, index), ["name", "index"]);
var _dismissible = MXFunctionInvoke(
  "Dismissible",
  ({
    Key key,
    Widget child,
    Widget background,
    Widget secondaryBackground,
    dynamic confirmDismiss,
    dynamic onResize,
    dynamic onDismissed,
    DismissDirection direction = DismissDirection.horizontal,

    /// MX modified begin -change init
    Duration resizeDuration = const Duration(milliseconds: 300),

    /// MX modified end
    dynamic dismissThresholds = const <DismissDirection, double>{},
    Duration movementDuration = const Duration(milliseconds: 200),
    dynamic crossAxisEndOffset = 0.0,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
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
    dismissThresholds: toMapT<DismissDirection, double>(dismissThresholds),
    movementDuration: movementDuration,
    crossAxisEndOffset: crossAxisEndOffset?.toDouble(),
    dragStartBehavior: dragStartBehavior,
  ),
  [
    "key",
    "child",
    "background",
    "secondaryBackground",
    "confirmDismiss",
    "onResize",
    "onDismissed",
    "direction",
    "resizeDuration",
    "dismissThresholds",
    "movementDuration",
    "crossAxisEndOffset",
    "dragStartBehavior",
  ],
);

class MXDismissDirection {
  static DismissDirection parse(String name, int index) {
    switch (name) {
      case 'DismissDirection.vertical':
        return DismissDirection.vertical;
      case 'DismissDirection.horizontal':
        return DismissDirection.horizontal;
      case 'DismissDirection.endToStart':
        return DismissDirection.endToStart;
      case 'DismissDirection.startToEnd':
        return DismissDirection.startToEnd;
      case 'DismissDirection.up':
        return DismissDirection.up;
      case 'DismissDirection.down':
        return DismissDirection.down;
    }
    return null;
  }
}
