//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
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
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/shadows.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/material/toggleable.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSwitchSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_switch.funName] = _switch;
  m[_switchAdaptive.funName] = _switchAdaptive;
  return m;
}

var _switch = MXFunctionInvoke(
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
    MouseCursor mouseCursor,
    Color focusColor,
    Color hoverColor,
    FocusNode focusNode,
    bool autofocus = false,
  }) =>
      Switch(
    key: key,
    value: value,
    onChanged: createValueChangedGenericClosure<bool>(_switch.buildOwner, onChanged),
    activeColor: activeColor,
    activeTrackColor: activeTrackColor,
    inactiveThumbColor: inactiveThumbColor,
    inactiveTrackColor: inactiveTrackColor,
    activeThumbImage: activeThumbImage,
    onActiveThumbImageError:
        createVoidTwoParamsClosure<dynamic, StackTrace>(_switch.buildOwner, onActiveThumbImageError),
    inactiveThumbImage: inactiveThumbImage,
    onInactiveThumbImageError:
        createVoidTwoParamsClosure<dynamic, StackTrace>(_switch.buildOwner, onInactiveThumbImageError),
    materialTapTargetSize: materialTapTargetSize,
    dragStartBehavior: dragStartBehavior,
    mouseCursor: mouseCursor,
    focusColor: focusColor,
    hoverColor: hoverColor,
    focusNode: focusNode,
    autofocus: autofocus,
  ),
  [
    "key",
    "value",
    "onChanged",
    "activeColor",
    "activeTrackColor",
    "inactiveThumbColor",
    "inactiveTrackColor",
    "activeThumbImage",
    "onActiveThumbImageError",
    "inactiveThumbImage",
    "onInactiveThumbImageError",
    "materialTapTargetSize",
    "dragStartBehavior",
    "mouseCursor",
    "focusColor",
    "hoverColor",
    "focusNode",
    "autofocus",
  ],
);
var _switchAdaptive = MXFunctionInvoke(
  "Switch.adaptive",
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
    MouseCursor mouseCursor,
    Color focusColor,
    Color hoverColor,
    FocusNode focusNode,
    bool autofocus = false,
  }) =>
      Switch.adaptive(
    key: key,
    value: value,
    onChanged: createValueChangedGenericClosure<bool>(_switchAdaptive.buildOwner, onChanged),
    activeColor: activeColor,
    activeTrackColor: activeTrackColor,
    inactiveThumbColor: inactiveThumbColor,
    inactiveTrackColor: inactiveTrackColor,
    activeThumbImage: activeThumbImage,
    onActiveThumbImageError:
        createVoidTwoParamsClosure<dynamic, StackTrace>(_switchAdaptive.buildOwner, onActiveThumbImageError),
    inactiveThumbImage: inactiveThumbImage,
    onInactiveThumbImageError:
        createVoidTwoParamsClosure<dynamic, StackTrace>(_switchAdaptive.buildOwner, onInactiveThumbImageError),
    materialTapTargetSize: materialTapTargetSize,
    dragStartBehavior: dragStartBehavior,
    mouseCursor: mouseCursor,
    focusColor: focusColor,
    hoverColor: hoverColor,
    focusNode: focusNode,
    autofocus: autofocus,
  ),
  [
    "key",
    "value",
    "onChanged",
    "activeColor",
    "activeTrackColor",
    "inactiveThumbColor",
    "inactiveTrackColor",
    "activeThumbImage",
    "onActiveThumbImageError",
    "inactiveThumbImage",
    "onInactiveThumbImageError",
    "materialTapTargetSize",
    "dragStartBehavior",
    "mouseCursor",
    "focusColor",
    "hoverColor",
    "focusNode",
    "autofocus",
  ],
);
