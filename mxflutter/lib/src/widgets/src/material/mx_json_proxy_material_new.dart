//  mx_json_proxy_material.dart
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:mxflutter/src/mirror/mx_mirror.dart';

class MXRegisterMaterialSeries {
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
  }) =>
      FlatButton(
    key: key,
    onPressed: createVoidCallbackClosure(flatButton.buildOwner, onPressed),
    onLongPress: createVoidCallbackClosure(flatButton.buildOwner, onLongPress),
    onHighlightChanged: createValueChangedGenericClosure<bool>(flatButton.buildOwner, onHighlightChanged),
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
