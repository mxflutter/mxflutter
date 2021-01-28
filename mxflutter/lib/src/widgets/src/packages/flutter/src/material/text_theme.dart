//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/material/typography.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTextThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_textTheme.funName] = _textTheme;
  return m;
}

var _textTheme = MXFunctionInvoke(
  "TextTheme",
  ({
    TextStyle headline1,
    TextStyle headline2,
    TextStyle headline3,
    TextStyle headline4,
    TextStyle headline5,
    TextStyle headline6,
    TextStyle subtitle1,
    TextStyle subtitle2,
    TextStyle bodyText1,
    TextStyle bodyText2,
    TextStyle caption,
    TextStyle button,
    TextStyle overline,
  }) =>
      TextTheme(
    headline1: headline1,
    headline2: headline2,
    headline3: headline3,
    headline4: headline4,
    headline5: headline5,
    headline6: headline6,
    subtitle1: subtitle1,
    subtitle2: subtitle2,
    bodyText1: bodyText1,
    bodyText2: bodyText2,
    caption: caption,
    button: button,
    overline: overline,
  ),
  [
    "headline1",
    "headline2",
    "headline3",
    "headline4",
    "headline5",
    "headline6",
    "subtitle1",
    "subtitle2",
    "bodyText1",
    "bodyText2",
    "caption",
    "button",
    "overline",
  ],
);
