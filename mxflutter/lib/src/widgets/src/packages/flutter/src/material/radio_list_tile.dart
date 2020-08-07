//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/radio_list_tile.dart';
import 'package:flutter/widgets.dart' ;
import 'package:flutter/src/material/list_tile.dart' ;
import 'package:flutter/src/material/radio.dart' ;
import 'package:flutter/src/material/theme.dart' ;
import 'package:flutter/src/material/theme_data.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerRadioListTileSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_radioListTile.funName] = _radioListTile;
  return m;
}
var _radioListTile = MXFunctionInvoke(
    "RadioListTile",
    (
      {
      Key key,
      dynamic value,
      dynamic groupValue,
      dynamic onChanged,
      Color activeColor,
      Widget title,
      Widget subtitle,
      bool isThreeLine = false,
      bool dense,
      Widget secondary,
      bool selected = false,
      ListTileControlAffinity controlAffinity = ListTileControlAffinity.platform,
      }
    ) =>
      RadioListTile(
      key: key,
      value: value,
      groupValue: groupValue,
      onChanged: createValueChangedGenericClosure<dynamic>(_radioListTile.buildOwner, onChanged),
      activeColor: activeColor,
      title: title,
      subtitle: subtitle,
      isThreeLine: isThreeLine,
      dense: dense,
      secondary: secondary,
      selected: selected,
      controlAffinity: controlAffinity,
    ),
);
