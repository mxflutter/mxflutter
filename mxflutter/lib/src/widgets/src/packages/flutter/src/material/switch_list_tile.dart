//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/switch_list_tile.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/list_tile.dart';
import 'package:flutter/src/material/switch.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSwitchListTileSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_switchListTile.funName] = _switchListTile;
  m[_switchListTileAdaptive.funName] = _switchListTileAdaptive;
  return m;
}

var _switchListTile = MXFunctionInvoke(
  "SwitchListTile",
  ({
    Key key,
    bool value,
    dynamic onChanged,
    Color activeColor,
    Color activeTrackColor,
    Color inactiveThumbColor,
    Color inactiveTrackColor,
    ImageProvider<dynamic> activeThumbImage,
    ImageProvider<dynamic> inactiveThumbImage,
    Widget title,
    Widget subtitle,
    bool isThreeLine = false,
    bool dense,
    EdgeInsetsGeometry contentPadding,
    Widget secondary,
    bool selected = false,
  }) =>
      SwitchListTile(
    key: key,
    value: value,
    onChanged: createValueChangedGenericClosure<bool>(
        _switchListTile.buildOwner, onChanged),
    activeColor: activeColor,
    activeTrackColor: activeTrackColor,
    inactiveThumbColor: inactiveThumbColor,
    inactiveTrackColor: inactiveTrackColor,
    activeThumbImage: activeThumbImage,
    inactiveThumbImage: inactiveThumbImage,
    title: title,
    subtitle: subtitle,
    isThreeLine: isThreeLine,
    dense: dense,
    contentPadding: contentPadding,
    secondary: secondary,
    selected: selected,
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
    "inactiveThumbImage",
    "title",
    "subtitle",
    "isThreeLine",
    "dense",
    "contentPadding",
    "secondary",
    "selected",
  ],
);
var _switchListTileAdaptive = MXFunctionInvoke(
  "SwitchListTile.adaptive",
  ({
    Key key,
    bool value,
    dynamic onChanged,
    Color activeColor,
    Color activeTrackColor,
    Color inactiveThumbColor,
    Color inactiveTrackColor,
    ImageProvider<dynamic> activeThumbImage,
    ImageProvider<dynamic> inactiveThumbImage,
    Widget title,
    Widget subtitle,
    bool isThreeLine = false,
    bool dense,
    EdgeInsetsGeometry contentPadding,
    Widget secondary,
    bool selected = false,
  }) =>
      SwitchListTile.adaptive(
    key: key,
    value: value,
    onChanged: createValueChangedGenericClosure<bool>(
        _switchListTileAdaptive.buildOwner, onChanged),
    activeColor: activeColor,
    activeTrackColor: activeTrackColor,
    inactiveThumbColor: inactiveThumbColor,
    inactiveTrackColor: inactiveTrackColor,
    activeThumbImage: activeThumbImage,
    inactiveThumbImage: inactiveThumbImage,
    title: title,
    subtitle: subtitle,
    isThreeLine: isThreeLine,
    dense: dense,
    contentPadding: contentPadding,
    secondary: secondary,
    selected: selected,
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
    "inactiveThumbImage",
    "title",
    "subtitle",
    "isThreeLine",
    "dense",
    "contentPadding",
    "secondary",
    "selected",
  ],
);
