//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/typography.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/text_theme.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTypographySeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_scriptCategory.funName] = _scriptCategory;
  m[_typography.funName] = _typography;
  m[_typography_material2014.funName] = _typography_material2014;
  m[_typography_material2018.funName] = _typography_material2018;
  return m;
}
var _scriptCategory = MXFunctionInvoke(
    "ScriptCategory",
    ({String name, int index}) => MXScriptCategory.parse(name, index),
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
      TargetPlatform platform =  TargetPlatform.android,
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
class MXScriptCategory {
  static ScriptCategory parse(String name, int index) {
    switch(name) {
      case 'ScriptCategory.englishLike': 
       return ScriptCategory.englishLike;
      case 'ScriptCategory.dense': 
       return ScriptCategory.dense;
      case 'ScriptCategory.tall': 
       return ScriptCategory.tall;
    }
    return null;
  }
}
