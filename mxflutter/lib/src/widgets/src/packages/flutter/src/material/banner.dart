//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/banner.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/banner_theme.dart';
import 'package:flutter/src/material/button_bar.dart';
import 'package:flutter/src/material/button_theme.dart';
import 'package:flutter/src/material/divider.dart';
import 'package:flutter/src/material/theme.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBannerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[materialBanner.funName] = materialBanner;
  return m;
}
var materialBanner = MXFunctionInvoke(
    "MaterialBanner",
    ({
      Key key,
      Widget content,
      TextStyle contentTextStyle,
      List<Widget> actions,
      Widget leading,
      Color backgroundColor,
      EdgeInsetsGeometry padding,
      EdgeInsetsGeometry leadingPadding,
      bool forceActionsBelow = false,
    }) =>
      MaterialBanner(
      key: key,
      content: content,
      contentTextStyle: contentTextStyle,
      actions: actions,
      leading: leading,
      backgroundColor: backgroundColor,
      padding: padding,
      leadingPadding: leadingPadding,
      forceActionsBelow: forceActionsBelow,
    ),
);
