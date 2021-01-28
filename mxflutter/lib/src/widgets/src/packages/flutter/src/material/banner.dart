//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
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
  m[_materialBanner.funName] = _materialBanner;
  return m;
}

var _materialBanner = MXFunctionInvoke(
  "MaterialBanner",
  ({
    Key key,
    Widget content,
    TextStyle contentTextStyle,
    dynamic actions,
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
    actions: toListT<Widget>(actions),
    leading: leading,
    backgroundColor: backgroundColor,
    padding: padding,
    leadingPadding: leadingPadding,
    forceActionsBelow: forceActionsBelow,
  ),
  [
    "key",
    "content",
    "contentTextStyle",
    "actions",
    "leading",
    "backgroundColor",
    "padding",
    "leadingPadding",
    "forceActionsBelow",
  ],
);
