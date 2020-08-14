//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/outline_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_theme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/material_button.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/raised_button.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerOutlineButtonSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_outlineButton.funName] = _outlineButton;
  m[_outlineButton_icon.funName] = _outlineButton_icon;
  return m;
}
var _outlineButton = MXFunctionInvoke(
    "OutlineButton",
    (
      {
      Key key,
      dynamic onPressed,
      dynamic onLongPress,
      ButtonTextTheme textTheme,
      Color textColor,
      Color disabledTextColor,
      Color color,
      Color focusColor,
      Color hoverColor,
      Color highlightColor,
      Color splashColor,
      dynamic highlightElevation,
      BorderSide borderSide,
      Color disabledBorderColor,
      Color highlightedBorderColor,
      EdgeInsetsGeometry padding,
      VisualDensity visualDensity,
      ShapeBorder shape,
      Clip clipBehavior = Clip.none,
      FocusNode focusNode,
      bool autofocus = false,
      Widget child,
      }
    ) =>
      OutlineButton(
      key: key,
      onPressed: createVoidCallbackClosure(_outlineButton.buildOwner, onPressed),
      onLongPress: createVoidCallbackClosure(_outlineButton.buildOwner, onLongPress),
      textTheme: textTheme,
      textColor: textColor,
      disabledTextColor: disabledTextColor,
      color: color,
      focusColor: focusColor,
      hoverColor: hoverColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
      highlightElevation: highlightElevation?.toDouble(),
      borderSide: borderSide,
      disabledBorderColor: disabledBorderColor,
      highlightedBorderColor: highlightedBorderColor,
      padding: padding,
      visualDensity: visualDensity,
      shape: shape,
      clipBehavior: clipBehavior,
      focusNode: focusNode,
      autofocus: autofocus,
      child: child,
    ),
);
var _outlineButton_icon = MXFunctionInvoke(
  "OutlineButton.icon",
    (
      {
      Key key,
      dynamic onPressed,
      dynamic onLongPress,
      ButtonTextTheme textTheme,
      Color textColor,
      Color disabledTextColor,
      Color color,
      Color focusColor,
      Color hoverColor,
      Color highlightColor,
      Color splashColor,
      dynamic highlightElevation,
      Color highlightedBorderColor,
      Color disabledBorderColor,
      BorderSide borderSide,
      EdgeInsetsGeometry padding,
      VisualDensity visualDensity,
      ShapeBorder shape,
      Clip clipBehavior,
      FocusNode focusNode,
      bool autofocus,
      Widget icon,
      Widget label,
      }
    ) =>
      OutlineButton.icon(
      key: key,
      onPressed: createVoidCallbackClosure(_outlineButton_icon.buildOwner, onPressed),
      onLongPress: createVoidCallbackClosure(_outlineButton_icon.buildOwner, onLongPress),
      textTheme: textTheme,
      textColor: textColor,
      disabledTextColor: disabledTextColor,
      color: color,
      focusColor: focusColor,
      hoverColor: hoverColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
      highlightElevation: highlightElevation?.toDouble(),
      highlightedBorderColor: highlightedBorderColor,
      disabledBorderColor: disabledBorderColor,
      borderSide: borderSide,
      padding: padding,
      visualDensity: visualDensity,
      shape: shape,
      clipBehavior: clipBehavior,
      focusNode: focusNode,
      autofocus: autofocus,
      icon: icon,
      label: label,
    ),
);
