//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/constants.dart';
import 'package:flutter/src/cupertino/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerButtonSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoButton.funName] = _cupertinoButton;
  m[_cupertinoButtonFilled.funName] = _cupertinoButtonFilled;
  return m;
}

var _cupertinoButton = MXFunctionInvoke(
  "CupertinoButton",
  ({
    Key key,
    Widget child,
    EdgeInsetsGeometry padding,
    Color color,
    Color disabledColor = CupertinoColors.quaternarySystemFill,
    dynamic minSize = 44.0,
    dynamic pressedOpacity = 0.4,
    BorderRadius borderRadius = const BorderRadius.all(const Radius.circular(8.0)),
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
    onPressed: createVoidCallbackClosure(_cupertinoButton.buildOwner, onPressed),
  ),
  [
    "key",
    "child",
    "padding",
    "color",
    "disabledColor",
    "minSize",
    "pressedOpacity",
    "borderRadius",
    "onPressed",
  ],
);
var _cupertinoButtonFilled = MXFunctionInvoke(
  "CupertinoButton.filled",
  ({
    Key key,
    Widget child,
    EdgeInsetsGeometry padding,
    Color disabledColor = CupertinoColors.quaternarySystemFill,
    dynamic minSize = 44.0,
    dynamic pressedOpacity = 0.4,
    BorderRadius borderRadius = const BorderRadius.all(const Radius.circular(8.0)),
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
    onPressed: createVoidCallbackClosure(_cupertinoButtonFilled.buildOwner, onPressed),
  ),
  [
    "key",
    "child",
    "padding",
    "disabledColor",
    "minSize",
    "pressedOpacity",
    "borderRadius",
    "onPressed",
  ],
);
