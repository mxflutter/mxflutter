//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
    (
      {
      Key key,
      dynamic height = 16.0,
      }
    ) =>
      PopupMenuDivider(
      key: key,
      height: height?.toDouble(),
    ),
);
var _popupMenuItem = MXFunctionInvoke(
    "PopupMenuItem",
    (
      {
      Key key,
      dynamic value,
      bool enabled = true,
      dynamic height = 48.0,
      TextStyle textStyle,
      Widget child,
      }
    ) =>
      PopupMenuItem(
      key: key,
      value: value,
      enabled: enabled,
      height: height?.toDouble(),
      textStyle: textStyle,
      child: child,
    ),
);
var _popupMenuItemState = MXFunctionInvoke(
    "PopupMenuItemState",
    (
    ) =>
      PopupMenuItemState(
    ),
);
var _checkedPopupMenuItem = MXFunctionInvoke(
    "CheckedPopupMenuItem",
    (
      {
      Key key,
      dynamic value,
      bool checked = false,
      bool enabled = true,
      Widget child,
      }
    ) =>
      CheckedPopupMenuItem(
      key: key,
      value: value,
      checked: checked,
      enabled: enabled,
      child: child,
    ),
);
var _popupMenuButton = MXFunctionInvoke(
    "PopupMenuButton",
    (
      {
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
      }
    ) =>
      PopupMenuButton(
      key: key,
      itemBuilder: null,
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
);
var _popupMenuButtonState = MXFunctionInvoke(
    "PopupMenuButtonState",
    (
    ) =>
      PopupMenuButtonState(
    ),
);
