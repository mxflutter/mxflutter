//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/checkbox_list_tile.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/checkbox.dart';
import 'package:flutter/src/material/list_tile.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerCheckboxListTileSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_checkboxListTile.funName] = _checkboxListTile;
  return m;
}

var _checkboxListTile = MXFunctionInvoke(
  "CheckboxListTile",
  ({
    Key key,
    bool value,
    dynamic onChanged,
    Color activeColor,
    Color checkColor,
    Widget title,
    Widget subtitle,
    bool isThreeLine = false,
    bool dense,
    Widget secondary,
    bool selected = false,
    dynamic controlAffinity = ListTileControlAffinity.platform,
    bool autofocus = false,
    EdgeInsetsGeometry contentPadding,
    bool tristate = false,
  }) =>
      CheckboxListTile(
    key: key,
    value: value,
    onChanged: createValueChangedGenericClosure<bool>(_checkboxListTile.buildOwner, onChanged),
    activeColor: activeColor,
    checkColor: checkColor,
    title: title,
    subtitle: subtitle,
    isThreeLine: isThreeLine,
    dense: dense,
    secondary: secondary,
    selected: selected,
    controlAffinity: controlAffinity,
    autofocus: autofocus,
    contentPadding: contentPadding,
    tristate: tristate,
  ),
  [
    "key",
    "value",
    "onChanged",
    "activeColor",
    "checkColor",
    "title",
    "subtitle",
    "isThreeLine",
    "dense",
    "secondary",
    "selected",
    "controlAffinity",
    "autofocus",
    "contentPadding",
    "tristate",
  ],
);
