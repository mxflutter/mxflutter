//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/switch_list_tile.dart';


class MXProxySwitchListTile {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[switchListTile.funName] = switchListTile;
    m[switchListTile_adaptive.funName] = switchListTile_adaptive;
    return m;
  }
  static var switchListTile = MXFunctionInvoke(
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
        onChanged: createValueChangedGenericClosure<bool>(switchListTile.buildOwner, onChanged),
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
    );
  static var switchListTile_adaptive = MXFunctionInvoke(
    "switchListTile.adaptive",
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
        onChanged: createValueChangedGenericClosure<bool>(switchListTile_adaptive.buildOwner, onChanged),
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
    );
}
