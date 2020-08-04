//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/checkbox_list_tile.dart';


class MXProxyCheckboxListTile {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[checkboxListTile.funName] = checkboxListTile;
    return m;
  }
  static var checkboxListTile = MXFunctionInvoke(
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
        ListTileControlAffinity controlAffinity = ListTileControlAffinity.platform,
      }) =>
        CheckboxListTile(
        key: key,
        value: value,
        onChanged: createValueChangedGenericClosure<bool>(checkboxListTile.buildOwner, onChanged),
        activeColor: activeColor,
        checkColor: checkColor,
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
