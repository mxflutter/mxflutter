//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/cupertino/button.dart';


class MXProxyButton {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[cupertinoButton.funName] = cupertinoButton;
    m[cupertinoButton_filled.funName] = cupertinoButton_filled;
    return m;
  }
  static var cupertinoButton = MXFunctionInvoke(
      "CupertinoButton",
      ({
        Key key,
        Widget child,
        EdgeInsetsGeometry padding,
        Color color,
        Color disabledColor,
        dynamic minSize = 44.0,
        dynamic pressedOpacity = 0.4,
        BorderRadius borderRadius,
        dynamic onPressed,
      }) =>
        CupertinoButton(
        key: key,
        child: child,
        padding: padding,
        color: color,
        disabledColor: disabledColor,
        minSize: minSize?.toDouble(),
        pressedOpacity: pressedOpacity?.toDouble(),
        borderRadius: borderRadius,
        onPressed: createVoidCallbackClosure(cupertinoButton.buildOwner, onPressed),
      ),
    );
  static var cupertinoButton_filled = MXFunctionInvoke(
    "cupertinoButton.filled",
      ({
        Key key,
        Widget child,
        EdgeInsetsGeometry padding,
        Color disabledColor,
        dynamic minSize = 44.0,
        dynamic pressedOpacity = 0.4,
        BorderRadius borderRadius,
        dynamic onPressed,
      }) =>
        CupertinoButton.filled(
        key: key,
        child: child,
        padding: padding,
        disabledColor: disabledColor,
        minSize: minSize?.toDouble(),
        pressedOpacity: pressedOpacity?.toDouble(),
        borderRadius: borderRadius,
        onPressed: createVoidCallbackClosure(cupertinoButton_filled.buildOwner, onPressed),
      ),
    );
}
