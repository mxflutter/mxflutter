//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/toggleable.dart';
import 'package:flutter/animation.dart' ;
import 'package:flutter/foundation.dart' ;
import 'package:flutter/gestures.dart' ;
import 'package:flutter/rendering.dart' ;
import 'package:flutter/scheduler.dart' ;
import 'package:flutter/src/material/constants.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerToggleableSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_renderToggleable.funName] = _renderToggleable;
  return m;
}
var _renderToggleable = MXFunctionInvoke(
    "RenderToggleable",
    (
      {
      bool value,
      bool tristate = false,
      Color activeColor,
      Color inactiveColor,
      Color hoverColor,
      Color focusColor,
      dynamic onChanged,
      BoxConstraints additionalConstraints,
      TickerProvider vsync,
      bool hasFocus = false,
      bool hovering = false,
      }
    ) =>
      RenderToggleable(
      value: value,
      tristate: tristate,
      activeColor: activeColor,
      inactiveColor: inactiveColor,
      hoverColor: hoverColor,
      focusColor: focusColor,
      onChanged: createValueChangedGenericClosure<bool>(_renderToggleable.buildOwner, onChanged),
      additionalConstraints: additionalConstraints,
      vsync: vsync,
      hasFocus: hasFocus,
      hovering: hovering,
    ),
);
