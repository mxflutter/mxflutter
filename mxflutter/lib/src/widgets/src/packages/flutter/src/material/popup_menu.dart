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
  m[popupMenuDivider.funName] = popupMenuDivider;
  m[popupMenuItem.funName] = popupMenuItem;
  m[popupMenuItemState.funName] = popupMenuItemState;
  m[checkedPopupMenuItem.funName] = checkedPopupMenuItem;
  m[popupMenuButton.funName] = popupMenuButton;
  m[popupMenuButtonState.funName] = popupMenuButtonState;
  return m;
}
var popupMenuDivider = MXFunctionInvoke(
    "PopupMenuDivider",
    ({
      Key key,
      dynamic height = 16.0,
    }) =>
      PopupMenuDivider(
      key: key,
      height: height,
    ),
);
var popupMenuItem = MXFunctionInvoke(
    "PopupMenuItem",
    ({
      Key key,
      dynamic value,
      bool enabled = true,
      dynamic height = 48.0,
      TextStyle textStyle,
      Widget child,
    }) =>
      PopupMenuItem(
      key: key,
      value: value,
      enabled: enabled,
      height: height,
      textStyle: textStyle,
      child: child,
    ),
);
var popupMenuItemState = MXFunctionInvoke(
    "PopupMenuItemState",
    ({
    }) =>
      PopupMenuItemState(
    ),
);
var checkedPopupMenuItem = MXFunctionInvoke(
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
);
var popupMenuButton = MXFunctionInvoke(
    "PopupMenuButton",
    ({
      Key key,
      dynamic itemBuilder,
      dynamic initialValue,
      dynamic onSelected,
      dynamic onCanceled,
      String tooltip,
      dynamic elevation,
      EdgeInsetsGeometry padding,
      Widget child,
      Widget icon,
      Offset offset,
      bool enabled = true,
      ShapeBorder shape,
      Color color,
      bool captureInheritedThemes = true,
    }) =>
      PopupMenuButton(
      key: key,
      itemBuilder: createGenericValueGenericClosure<dynamic, BuildContext>(popupMenuButton.buildOwner, itemBuilder),
      initialValue: initialValue,
      onSelected: createValueChangedGenericClosure<dynamic>(popupMenuButton.buildOwner, onSelected),
      onCanceled: createVoidCallbackClosure(popupMenuButton.buildOwner, onCanceled),
      tooltip: tooltip,
      elevation: elevation,
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
var popupMenuButtonState = MXFunctionInvoke(
    "PopupMenuButtonState",
    ({
    }) =>
      PopupMenuButtonState(
    ),
);
