//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/dismissible.dart';


class MXProxyDismissible {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[dismissDirection.funName] = dismissDirection;
    m[dismissible.funName] = dismissible;
    return m;
  }
  static var dismissDirection = MXFunctionInvoke(
      "DismissDirection",
      ({Map args}) => MXDismissDirection.parse(args),
  );
  static var dismissible = MXFunctionInvoke(
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
        Duration resizeDuration,
        Map<DismissDirection*, double> dismissThresholds,
        Duration movementDuration,
        dynamic crossAxisEndOffset = 0.0,
        DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      }) =>
        Dismissible(
        key: key,
        child: child,
        background: background,
        secondaryBackground: secondaryBackground,
        confirmDismiss: createGenericValueGenericClosure<Future<bool>, DismissDirection>(dismissible.buildOwner, confirmDismiss),
        onResize: createVoidCallbackClosure(dismissible.buildOwner, onResize),
        onDismissed: createValueChangedGenericClosure<DismissDirection>(dismissible.buildOwner, onDismissed),
        direction: direction,
        resizeDuration: resizeDuration,
        dismissThresholds: dismissThresholds,
        movementDuration: movementDuration,
        crossAxisEndOffset: crossAxisEndOffset?.toDouble(),
        dragStartBehavior: dragStartBehavior,
      ),
    );
}
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
