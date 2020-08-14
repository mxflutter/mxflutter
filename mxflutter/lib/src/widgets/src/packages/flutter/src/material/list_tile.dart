//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/list_tile.dart';
import 'dart:math' as math;
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/divider.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerListTileSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_listTileStyle.funName] = _listTileStyle;
  m[_listTileTheme.funName] = _listTileTheme;
  m[_listTileControlAffinity.funName] = _listTileControlAffinity;
  m[_listTile.funName] = _listTile;
  return m;
}

var _listTileStyle = MXFunctionInvoke(
  "ListTileStyle",
  ({String name, int index}) => MXListTileStyle.parse(name, index),
);
var _listTileTheme = MXFunctionInvoke(
  "ListTileTheme",
  ({
    Key key,
    bool dense = false,
    dynamic style = ListTileStyle.list,
    Color selectedColor,
    Color iconColor,
    Color textColor,
    EdgeInsetsGeometry contentPadding,
    Widget child,
  }) =>
      ListTileTheme(
    key: key,
    dense: dense,
    style: style,
    selectedColor: selectedColor,
    iconColor: iconColor,
    textColor: textColor,
    contentPadding: contentPadding,
    child: child,
  ),
);
var _listTileControlAffinity = MXFunctionInvoke(
  "ListTileControlAffinity",
  ({String name, int index}) => MXListTileControlAffinity.parse(name, index),
);
var _listTile = MXFunctionInvoke("ListTile", ({
  Key key,
  Widget leading,
  Widget title,
  Widget subtitle,
  Widget trailing,
  bool isThreeLine = false,
  bool dense,
  EdgeInsetsGeometry contentPadding,
  bool enabled = true,
  dynamic onTap,
  dynamic onLongPress,
  bool selected = false,
}) {
  print(createVoidCallbackClosure(_listTile.buildOwner, onTap));
  return ListTile(
    key: key,
    leading: leading,
    title: title,
    subtitle: subtitle,
    trailing: trailing,
    isThreeLine: isThreeLine,
    dense: dense,
    contentPadding: contentPadding,
    enabled: enabled,
    onTap: createVoidCallbackClosure(_listTile.buildOwner, onTap),
    onLongPress: createVoidCallbackClosure(_listTile.buildOwner, onLongPress),
    selected: selected,
  );
});

class MXListTileStyle {
  static ListTileStyle parse(String name, int index) {
    switch (name) {
      case 'ListTileStyle.list':
        return ListTileStyle.list;
      case 'ListTileStyle.drawer':
        return ListTileStyle.drawer;
    }
    return null;
  }
}

class MXListTileControlAffinity {
  static ListTileControlAffinity parse(String name, int index) {
    switch (name) {
      case 'ListTileControlAffinity.leading':
        return ListTileControlAffinity.leading;
      case 'ListTileControlAffinity.trailing':
        return ListTileControlAffinity.trailing;
      case 'ListTileControlAffinity.platform':
        return ListTileControlAffinity.platform;
    }
    return null;
  }
}
