//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/popup_menu.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/divider.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/list_tile.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/popup_menu_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/tooltip.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPopupMenuSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_popupMenuDivider.funName] = _popupMenuDivider;
  m[_popupMenuItem.funName] = _popupMenuItem;
  m[_popupMenuItemState.funName] = _popupMenuItemState;
  m[_checkedPopupMenuItem.funName] = _checkedPopupMenuItem;
  m[_popupMenuButton.funName] = _popupMenuButton;
  m[_popupMenuButtonState.funName] = _popupMenuButtonState;
  return m;
}

var _popupMenuDivider = MXFunctionInvoke(
  "PopupMenuDivider",
  ({
    Key key,
    dynamic height = 16.0,
  }) =>
      PopupMenuDivider(
    key: key,
    height: height?.toDouble(),
  ),
  [
    "key",
    "height",
  ],
);
var _popupMenuItem = MXFunctionInvoke(
  "PopupMenuItem",
  ({
    Key key,
    dynamic value,
    bool enabled = true,
    dynamic height = 48.0,
    TextStyle textStyle,
    MouseCursor mouseCursor,
    Widget child,
  }) =>
      PopupMenuItem(
    key: key,
    value: value,
    enabled: enabled,
    height: height?.toDouble(),
    textStyle: textStyle,
    mouseCursor: mouseCursor,
    child: child,
  ),
  [
    "key",
    "value",
    "enabled",
    "height",
    "textStyle",
    "mouseCursor",
    "child",
  ],
);
var _popupMenuItemState = MXFunctionInvoke(
  "PopupMenuItemState",
  () => PopupMenuItemState(),
  [],
);
var _checkedPopupMenuItem = MXFunctionInvoke(
  "CheckedPopupMenuItem",
  ({
    Key key,
    dynamic value,
    bool checked = false,
    bool enabled = true,
    Widget child,
  }) =>
      CheckedPopupMenuItem(
    key: key,
    value: value,
    checked: checked,
    enabled: enabled,
    child: child,
  ),
  [
    "key",
    "value",
    "checked",
    "enabled",
    "child",
  ],
);
var _popupMenuButton = MXFunctionInvoke(
  "PopupMenuButton",
  ({
    Key key,
    dynamic itemBuilder,
    dynamic initialValue,
    dynamic onSelected,
    dynamic onCanceled,
    String tooltip,
    dynamic elevation,
    EdgeInsetsGeometry padding = const EdgeInsets.all(8.0),
    Widget child,
    Widget icon,
    Offset offset = Offset.zero,
    bool enabled = true,
    ShapeBorder shape,
    Color color,
    bool captureInheritedThemes = true,

    /// MX modified begin -add children
    dynamic children,

    /// MX modified end
  }) =>
      PopupMenuButton(
    key: key,

    /// MX modified begin -add builder function
    itemBuilder: (BuildContext context) {
      return toListT<PopupMenuEntry>(children);
    },

    /// MX modified end
    initialValue: initialValue,
    onSelected: createValueChangedGenericClosure<dynamic>(_popupMenuButton.buildOwner, onSelected),
    onCanceled: createVoidCallbackClosure(_popupMenuButton.buildOwner, onCanceled),
    tooltip: tooltip,
    elevation: elevation?.toDouble(),
    padding: padding,
    child: child,
    icon: icon,
    offset: offset,
    enabled: enabled,
    shape: shape,
    color: color,
    captureInheritedThemes: captureInheritedThemes,
  ),
  [
    "key",
    "itemBuilder",
    "initialValue",
    "onSelected",
    "onCanceled",
    "tooltip",
    "elevation",
    "padding",
    "child",
    "icon",
    "offset",
    "enabled",
    "shape",
    "color",
    "captureInheritedThemes",

    ///MX modified begin
    "children",

    ///MX modified end
  ],
);
var _popupMenuButtonState = MXFunctionInvoke(
  "PopupMenuButtonState",
  () => PopupMenuButtonState(),
  [],
);
