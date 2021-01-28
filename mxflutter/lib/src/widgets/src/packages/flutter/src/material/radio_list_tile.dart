//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/radio_list_tile.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/list_tile.dart';
import 'package:flutter/src/material/radio.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerRadioListTileSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_radioListTile.funName] = _radioListTile;
  return m;
}

var _radioListTile = MXFunctionInvoke(
  "RadioListTile",
  ({
    Key key,
    dynamic value,
    dynamic groupValue,
    dynamic onChanged,
    bool toggleable = false,
    Color activeColor,
    Widget title,
    Widget subtitle,
    bool isThreeLine = false,
    bool dense,
    Widget secondary,
    bool selected = false,
    dynamic controlAffinity = ListTileControlAffinity.platform,
    bool autofocus = false,
  }) =>
      RadioListTile(
    key: key,
    value: value,
    groupValue: groupValue,
    onChanged: createValueChangedGenericClosure<dynamic>(_radioListTile.buildOwner, onChanged),
    toggleable: toggleable,
    activeColor: activeColor,
    title: title,
    subtitle: subtitle,
    isThreeLine: isThreeLine,
    dense: dense,
    secondary: secondary,
    selected: selected,
    controlAffinity: controlAffinity,
    autofocus: autofocus,
  ),
  [
    "key",
    "value",
    "groupValue",
    "onChanged",
    "toggleable",
    "activeColor",
    "title",
    "subtitle",
    "isThreeLine",
    "dense",
    "secondary",
    "selected",
    "controlAffinity",
    "autofocus",
  ],
);
