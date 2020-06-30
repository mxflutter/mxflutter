//  mx_json_proxy_material.dart
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:mxflutter/src/mx_function_invoke.dart';
import 'package:mxflutter/src/mx_closure.dart';
import 'package:mxflutter/src/mx_build_owner.dart';

class MXRegisterMeterialSeries {
  static Map<String, MXFunctionInvoke> registerSeries() {
    Map<String, MXFunctionInvoke> m = {};

    m[flatButton.funName] = flatButton;

    return m;
  }
}

var flatButton = MXFunctionInvoke(
  "FlatButton",
  ({
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
    @required Widget child,

    // 自定义参数
    MXJsonBuildOwner buildOwner,
  }) =>
      FlatButton(
    key: key,
    onPressed: createVoidCallbackClosure(buildOwner, onPressed),
    onLongPress: createVoidCallbackClosure(buildOwner, onLongPress),
    onHighlightChanged: createValueChangedGenericClosure<bool>(buildOwner, onHighlightChanged),
    textTheme: textTheme,
    textColor: textColor,
    disabledColor: disabledColor,
    color: color,
    disabledTextColor: disabledColor,
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
