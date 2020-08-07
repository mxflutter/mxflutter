//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/typography.dart';
import 'package:flutter/foundation.dart' ;
import 'package:flutter/painting.dart' ;
import 'package:flutter/src/material/colors.dart' ;
import 'package:flutter/src/material/text_theme.dart' ;
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/typography.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTypographySeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_scriptCategory.funName] = _scriptCategory;
  m[_typography.funName] = _typography;
  m[_typography_material2014.funName] = _typography_material2014;
  m[_typography_material2018.funName] = _typography_material2018;
  m[_textTheme.funName] = _textTheme;
  return m;
}
var _scriptCategory = MXFunctionInvoke(
    "ScriptCategory",
    ({Map args}) => MXScriptCategory.parse(args),
  );
var _typography = MXFunctionInvoke(
    "Typography",
    (
      {
      TargetPlatform platform,
      TextTheme black,
      TextTheme white,
      TextTheme englishLike,
      TextTheme dense,
      TextTheme tall,
      }
    ) =>
      Typography(
      platform: platform,
      black: black,
      white: white,
      englishLike: englishLike,
      dense: dense,
      tall: tall,
    ),
);
var _typography_material2014 = MXFunctionInvoke(
  "Typography.material2014",
    (
      {
      TargetPlatform platform = TargetPlatform.android,
      TextTheme black,
      TextTheme white,
      TextTheme englishLike,
      TextTheme dense,
      TextTheme tall,
      }
    ) =>
      Typography.material2014(
      platform: platform,
      black: black,
      white: white,
      englishLike: englishLike,
      dense: dense,
      tall: tall,
    ),
);
var _typography_material2018 = MXFunctionInvoke(
  "Typography.material2018",
    (
      {
      TargetPlatform platform = TargetPlatform.android,
      TextTheme black,
      TextTheme white,
      TextTheme englishLike,
      TextTheme dense,
      TextTheme tall,
      }
    ) =>
      Typography.material2018(
      platform: platform,
      black: black,
      white: white,
      englishLike: englishLike,
      dense: dense,
      tall: tall,
    ),
);
var _textTheme = MXFunctionInvoke(
    "TextTheme",
    (
      {
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
      }
    ) =>
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
);
class MXScriptCategory {
  static Map str2VMap = {
    'ScriptCategory.englishLike': ScriptCategory.englishLike,
    'ScriptCategory.dense': ScriptCategory.dense,
    'ScriptCategory.tall': ScriptCategory.tall,
  };
  static ScriptCategory parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
