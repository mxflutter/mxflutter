//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/snack_bar.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_theme.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/flat_button.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'package:flutter/src/material/snack_bar_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSnackBarSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_snackBarClosedReason.funName] = _snackBarClosedReason;
  m[_snackBarAction.funName] = _snackBarAction;
  m[_snackBar.funName] = _snackBar;
  return m;
}
var _snackBarClosedReason = MXFunctionInvoke(
    "SnackBarClosedReason",
    ({Map args}) => MXSnackBarClosedReason.parse(args),
  );
var _snackBarAction = MXFunctionInvoke(
    "SnackBarAction",
    (
      {
      Key key,
      Color textColor,
      Color disabledTextColor,
      String label,
      dynamic onPressed,
      }
    ) =>
      SnackBarAction(
      key: key,
      textColor: textColor,
      disabledTextColor: disabledTextColor,
      label: label,
      onPressed: createVoidCallbackClosure(_snackBarAction.buildOwner, onPressed),
    ),
);
var _snackBar = MXFunctionInvoke(
    "SnackBar",
    (
      {
      Key key,
      Widget content,
      Color backgroundColor,
      dynamic elevation,
      ShapeBorder shape,
      SnackBarBehavior behavior,
      SnackBarAction action,
      Duration duration,
      Animation<double> animation,
      dynamic onVisible,
      }
    ) =>
      SnackBar(
      key: key,
      content: content,
      backgroundColor: backgroundColor,
      elevation: elevation?.toDouble(),
      shape: shape,
      behavior: behavior,
      action: action,
      duration: duration,
      animation: animation,
      onVisible: createVoidCallbackClosure(_snackBar.buildOwner, onVisible),
    ),
);
class MXSnackBarClosedReason {
  static Map str2VMap = {
    'SnackBarClosedReason.action': SnackBarClosedReason.action,
    'SnackBarClosedReason.dismiss': SnackBarClosedReason.dismiss,
    'SnackBarClosedReason.swipe': SnackBarClosedReason.swipe,
    'SnackBarClosedReason.hide': SnackBarClosedReason.hide,
    'SnackBarClosedReason.remove': SnackBarClosedReason.remove,
    'SnackBarClosedReason.timeout': SnackBarClosedReason.timeout,
  };
  static SnackBarClosedReason parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
