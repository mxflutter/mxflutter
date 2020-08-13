//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/flat_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button.dart';
import 'package:flutter/src/material/button_theme.dart';
import 'package:flutter/src/material/material_button.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerFlatButtonSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_flatButton.funName] = _flatButton;
  m[_flatButton_icon.funName] = _flatButton_icon;
  return m;
}
var _flatButton = MXFunctionInvoke(
    "FlatButton",
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
      EdgeInsetsGeometry padding,
      VisualDensity visualDensity,
      ShapeBorder shape,
      Clip clipBehavior = Clip.none,
      FocusNode focusNode,
      bool autofocus = false,
      MaterialTapTargetSize materialTapTargetSize,
      Widget child,
      }
    ) =>
      FlatButton(
      key: key,
      onPressed: createVoidCallbackClosure(_flatButton.buildOwner, onPressed),
      onLongPress: createVoidCallbackClosure(_flatButton.buildOwner, onLongPress),
      onHighlightChanged: createValueChangedGenericClosure<bool>(_flatButton.buildOwner, onHighlightChanged),
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
      padding: padding,
      visualDensity: visualDensity,
      shape: shape,
      clipBehavior: clipBehavior,
      focusNode: focusNode,
      autofocus: autofocus,
      materialTapTargetSize: materialTapTargetSize,
      child: child,
    ),
);
var _flatButton_icon = MXFunctionInvoke(
  "FlatButton.icon",
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
      EdgeInsetsGeometry padding,
      ShapeBorder shape,
      /// MX modified begin
      Clip clipBehavior = Clip.none,
      /// MX modified begin
      FocusNode focusNode,
      /// MX modified begin
      bool autofocus = false,
      /// MX modified begin
      MaterialTapTargetSize materialTapTargetSize,
      Widget icon,
      Widget label,
      }
    ) =>
      FlatButton.icon(
      key: key,
      onPressed: createVoidCallbackClosure(_flatButton_icon.buildOwner, onPressed),
      onLongPress: createVoidCallbackClosure(_flatButton_icon.buildOwner, onLongPress),
      onHighlightChanged: createValueChangedGenericClosure<bool>(_flatButton_icon.buildOwner, onHighlightChanged),
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
      padding: padding,
      shape: shape,
      clipBehavior: clipBehavior,
      focusNode: focusNode,
      autofocus: autofocus,
      materialTapTargetSize: materialTapTargetSize,
      icon: icon,
      label: label,
    ),
);
