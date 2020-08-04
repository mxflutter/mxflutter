//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/switch.dart';


class MXProxySwitch {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[switch.funName] = switch;
    m[switch_adaptive.funName] = switch_adaptive;
    return m;
  }
  static var switch = MXFunctionInvoke(
      "Switch",
      ({
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
      }) =>
        Switch(
        key: key,
        value: value,
        onChanged: createValueChangedGenericClosure<bool>(switch.buildOwner, onChanged),
        activeColor: activeColor,
        activeTrackColor: activeTrackColor,
        inactiveThumbColor: inactiveThumbColor,
        inactiveTrackColor: inactiveTrackColor,
        activeThumbImage: activeThumbImage,
        onActiveThumbImageError: createVoidCallbackClosure(switch.buildOwner, onActiveThumbImageError),
        inactiveThumbImage: inactiveThumbImage,
        onInactiveThumbImageError: createVoidCallbackClosure(switch.buildOwner, onInactiveThumbImageError),
        materialTapTargetSize: materialTapTargetSize,
        dragStartBehavior: dragStartBehavior,
        focusColor: focusColor,
        hoverColor: hoverColor,
        focusNode: focusNode,
        autofocus: autofocus,
      ),
    );
  static var switch_adaptive = MXFunctionInvoke(
    "switch.adaptive",
      ({
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
      }) =>
        Switch.adaptive(
        key: key,
        value: value,
        onChanged: createValueChangedGenericClosure<bool>(switch_adaptive.buildOwner, onChanged),
        activeColor: activeColor,
        activeTrackColor: activeTrackColor,
        inactiveThumbColor: inactiveThumbColor,
        inactiveTrackColor: inactiveTrackColor,
        activeThumbImage: activeThumbImage,
        onActiveThumbImageError: createVoidCallbackClosure(switch_adaptive.buildOwner, onActiveThumbImageError),
        inactiveThumbImage: inactiveThumbImage,
        onInactiveThumbImageError: createVoidCallbackClosure(switch_adaptive.buildOwner, onInactiveThumbImageError),
        materialTapTargetSize: materialTapTargetSize,
        dragStartBehavior: dragStartBehavior,
        focusColor: focusColor,
        hoverColor: hoverColor,
        focusNode: focusNode,
        autofocus: autofocus,
      ),
    );
}
