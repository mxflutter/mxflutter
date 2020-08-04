//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/popup_menu.dart';


class MXProxyPopupMenu {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[popupMenuDivider.funName] = popupMenuDivider;
    m[popupMenuItem.funName] = popupMenuItem;
    m[popupMenuItemState.funName] = popupMenuItemState;
    m[checkedPopupMenuItem.funName] = checkedPopupMenuItem;
    m[popupMenuButton.funName] = popupMenuButton;
    m[popupMenuButtonState.funName] = popupMenuButtonState;
    return m;
  }
  static var popupMenuDivider = MXFunctionInvoke(
      "PopupMenuDivider",
      ({
        Key key,
        dynamic height = 16.0,
      }) =>
        PopupMenuDivider(
        key: key,
        height: height?.toDouble(),
      ),
    );
  static var popupMenuItem = MXFunctionInvoke(
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
        height: height?.toDouble(),
        textStyle: textStyle,
        child: child,
      ),
    );
  static var popupMenuItemState = MXFunctionInvoke(
      "PopupMenuItemState",
      ({
      }) =>
        PopupMenuItemState(
      ),
    );
  static var checkedPopupMenuItem = MXFunctionInvoke(
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
  static var popupMenuButton = MXFunctionInvoke(
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
        itemBuilder: createGenericValueGenericClosure<List<PopupMenuEntry<PopupMenuButton::T>>, BuildContext>(popupMenuButton.buildOwner, itemBuilder),
        initialValue: initialValue,
        onSelected: createValueChangedGenericClosure<TypeParameterType(PopupMenuButton::T>(popupMenuButton.buildOwner, onSelected),
        onCanceled: createVoidCallbackClosure(popupMenuButton.buildOwner, onCanceled),
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
  static var popupMenuButtonState = MXFunctionInvoke(
      "PopupMenuButtonState",
      ({
      }) =>
        PopupMenuButtonState(
      ),
    );
}
