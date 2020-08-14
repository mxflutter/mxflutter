//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/raised_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button.dart';
import 'package:flutter/src/material/button_theme.dart';
import 'package:flutter/src/material/material_button.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerRaisedButtonSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_raisedButton.funName] = _raisedButton;
  m[_raisedButton_icon.funName] = _raisedButton_icon;
  return m;
}
var _raisedButton = MXFunctionInvoke(
    "RaisedButton",
    (
      {
      Key key,
      dynamic onPressed,
      dynamic onLongPress,
      dynamic onHighlightChanged,
      ButtonTextTheme textTheme,
      Color textColor,
      Color disabledTextColor,
      Color color,
      Color disabledColor,
      Color focusColor,
      Color hoverColor,
      Color highlightColor,
      Color splashColor,
      Brightness colorBrightness,
      dynamic elevation,
      dynamic focusElevation,
      dynamic hoverElevation,
      dynamic highlightElevation,
      dynamic disabledElevation,
      EdgeInsetsGeometry padding,
      VisualDensity visualDensity,
      ShapeBorder shape,
      Clip clipBehavior = Clip.none,
      FocusNode focusNode,
      bool autofocus = false,
      MaterialTapTargetSize materialTapTargetSize,
      Duration animationDuration,
      Widget child,
      }
    ) =>
      RaisedButton(
      key: key,
      onPressed: createVoidCallbackClosure(_raisedButton.buildOwner, onPressed),
      onLongPress: createVoidCallbackClosure(_raisedButton.buildOwner, onLongPress),
      onHighlightChanged: createValueChangedGenericClosure<bool>(_raisedButton.buildOwner, onHighlightChanged),
      textTheme: textTheme,
      textColor: textColor,
      disabledTextColor: disabledTextColor,
      color: color,
      disabledColor: disabledColor,
      focusColor: focusColor,
      hoverColor: hoverColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
      colorBrightness: colorBrightness,
      elevation: elevation?.toDouble(),
      focusElevation: focusElevation?.toDouble(),
      hoverElevation: hoverElevation?.toDouble(),
      highlightElevation: highlightElevation?.toDouble(),
      disabledElevation: disabledElevation?.toDouble(),
      padding: padding,
      visualDensity: visualDensity,
      shape: shape,
      clipBehavior: clipBehavior,
      focusNode: focusNode,
      autofocus: autofocus,
      materialTapTargetSize: materialTapTargetSize,
      animationDuration: animationDuration,
      child: child,
    ),
);
var _raisedButton_icon = MXFunctionInvoke(
  "RaisedButton.icon",
    (
      {
      Key key,
      dynamic onPressed,
      dynamic onLongPress,
      dynamic onHighlightChanged,
      ButtonTextTheme textTheme,
      Color textColor,
      Color disabledTextColor,
      Color color,
      Color disabledColor,
      Color focusColor,
      Color hoverColor,
      Color highlightColor,
      Color splashColor,
      Brightness colorBrightness,
      dynamic elevation,
      dynamic highlightElevation,
      dynamic disabledElevation,
      ShapeBorder shape,
      Clip clipBehavior,
      FocusNode focusNode,
      bool autofocus,
      EdgeInsetsGeometry padding,
      MaterialTapTargetSize materialTapTargetSize,
      Duration animationDuration,
      Widget icon,
      Widget label,
      }
    ) =>
      RaisedButton.icon(
      key: key,
      onPressed: createVoidCallbackClosure(_raisedButton_icon.buildOwner, onPressed),
      onLongPress: createVoidCallbackClosure(_raisedButton_icon.buildOwner, onLongPress),
      onHighlightChanged: createValueChangedGenericClosure<bool>(_raisedButton_icon.buildOwner, onHighlightChanged),
      textTheme: textTheme,
      textColor: textColor,
      disabledTextColor: disabledTextColor,
      color: color,
      disabledColor: disabledColor,
      focusColor: focusColor,
      hoverColor: hoverColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
      colorBrightness: colorBrightness,
      elevation: elevation?.toDouble(),
      highlightElevation: highlightElevation?.toDouble(),
      disabledElevation: disabledElevation?.toDouble(),
      shape: shape,
      clipBehavior: clipBehavior,
      focusNode: focusNode,
      autofocus: autofocus,
      padding: padding,
      materialTapTargetSize: materialTapTargetSize,
      animationDuration: animationDuration,
      icon: icon,
      label: label,
    ),
);
