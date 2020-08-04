//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/expand_icon.dart';


class MXProxyExpandIcon {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[expandIcon.funName] = expandIcon;
    return m;
  }
  static var expandIcon = MXFunctionInvoke(
      "ExpandIcon",
      ({
        Key key,
        bool isExpanded = false,
        dynamic size = 24.0,
        dynamic onPressed,
        EdgeInsetsGeometry padding,
        Color color,
        Color disabledColor,
        Color expandedColor,
      }) =>
        ExpandIcon(
        key: key,
        isExpanded: isExpanded,
        size: size?.toDouble(),
        onPressed: createValueChangedGenericClosure<bool>(expandIcon.buildOwner, onPressed),
        padding: padding,
        color: color,
        disabledColor: disabledColor,
        expandedColor: expandedColor,
      ),
    );
}
