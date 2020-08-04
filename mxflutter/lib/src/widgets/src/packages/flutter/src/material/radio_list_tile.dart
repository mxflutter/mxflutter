//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/radio_list_tile.dart';


class MXProxyRadioListTile {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[radioListTile.funName] = radioListTile;
    return m;
  }
  static var radioListTile = MXFunctionInvoke(
      "RadioListTile",
      ({
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
      }) =>
        RadioListTile(
        key: key,
        value: value,
        groupValue: groupValue,
        onChanged: createValueChangedGenericClosure<TypeParameterType(RadioListTile::T>(radioListTile.buildOwner, onChanged),
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
}
