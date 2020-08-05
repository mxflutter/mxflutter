//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/shadows.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/material/toggleable.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSwitchSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_switch.funName] = _switch;
  m[_switch_adaptive.funName] = _switch_adaptive;
  return m;
}
var _switch = MXFunctionInvoke(
    "Switch",
    (
      {
      Key key,
      bool value,
      dynamic onChanged,
      Color activeColor,
      Color activeTrackColor,
      Color inactiveThumbColor,
      Color inactiveTrackColor,
      ImageProvider<dynamic> activeThumbImage,
      dynamic onActiveThumbImageError,
      ImageProvider<dynamic> inactiveThumbImage,
      dynamic onInactiveThumbImageError,
      MaterialTapTargetSize materialTapTargetSize,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      Color focusColor,
      Color hoverColor,
      FocusNode focusNode,
      bool autofocus = false,
      }
    ) =>
      Switch(
      key: key,
      value: value,
      onChanged: createValueChangedGenericClosure<bool>(_switch.buildOwner, onChanged),
      activeColor: activeColor,
      activeTrackColor: activeTrackColor,
      inactiveThumbColor: inactiveThumbColor,
      inactiveTrackColor: inactiveTrackColor,
      activeThumbImage: activeThumbImage,
      onActiveThumbImageError: null,
      inactiveThumbImage: inactiveThumbImage,
      onInactiveThumbImageError: null,
      materialTapTargetSize: materialTapTargetSize,
      dragStartBehavior: dragStartBehavior,
      focusColor: focusColor,
      hoverColor: hoverColor,
      focusNode: focusNode,
      autofocus: autofocus,
    ),
);
var _switch_adaptive = MXFunctionInvoke(
  "switch.adaptive",
    (
      {
      Key key,
      bool value,
      dynamic onChanged,
      Color activeColor,
      Color activeTrackColor,
      Color inactiveThumbColor,
      Color inactiveTrackColor,
      ImageProvider<dynamic> activeThumbImage,
      dynamic onActiveThumbImageError,
      ImageProvider<dynamic> inactiveThumbImage,
      dynamic onInactiveThumbImageError,
      MaterialTapTargetSize materialTapTargetSize,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      Color focusColor,
      Color hoverColor,
      FocusNode focusNode,
      bool autofocus = false,
      }
    ) =>
      Switch.adaptive(
      key: key,
      value: value,
      onChanged: createValueChangedGenericClosure<bool>(_switch_adaptive.buildOwner, onChanged),
      activeColor: activeColor,
      activeTrackColor: activeTrackColor,
      inactiveThumbColor: inactiveThumbColor,
      inactiveTrackColor: inactiveTrackColor,
      activeThumbImage: activeThumbImage,
      onActiveThumbImageError: null,
      inactiveThumbImage: inactiveThumbImage,
      onInactiveThumbImageError: null,
      materialTapTargetSize: materialTapTargetSize,
      dragStartBehavior: dragStartBehavior,
      focusColor: focusColor,
      hoverColor: hoverColor,
      focusNode: focusNode,
      autofocus: autofocus,
    ),
);
