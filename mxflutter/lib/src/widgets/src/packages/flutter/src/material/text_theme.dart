//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
    TextStyle display4,
    TextStyle display3,
    TextStyle display2,
    TextStyle display1,
    TextStyle headline,
    TextStyle title,
    TextStyle subhead,
    TextStyle subtitle,
    TextStyle body2,
    TextStyle body1,
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
    display4: display4,
    display3: display3,
    display2: display2,
    display1: display1,
    headline: headline,
    title: title,
    subhead: subhead,
    subtitle: subtitle,
    body2: body2,
    body1: body1,
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
    "display4",
    "display3",
    "display2",
    "display1",
    "headline",
    "title",
    "subhead",
    "subtitle",
    "body2",
    "body1",
  ],
);
