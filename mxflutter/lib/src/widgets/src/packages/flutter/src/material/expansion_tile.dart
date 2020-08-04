//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/expansion_tile.dart';


class MXProxyExpansionTile {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[expansionTile.funName] = expansionTile;
    return m;
  }
  static var expansionTile = MXFunctionInvoke(
      "ExpansionTile",
      ({
        Key key,
        Widget leading,
        Widget title,
        Widget subtitle,
        Color backgroundColor,
        dynamic onExpansionChanged,
        List<Widget> children,
        Widget trailing,
        bool initiallyExpanded = false,
      }) =>
        ExpansionTile(
        key: key,
        leading: leading,
        title: title,
        subtitle: subtitle,
        backgroundColor: backgroundColor,
        onExpansionChanged: createValueChangedGenericClosure<bool>(expansionTile.buildOwner, onExpansionChanged),
        children: children,
        trailing: trailing,
        initiallyExpanded: initiallyExpanded,
      ),
    );
}
