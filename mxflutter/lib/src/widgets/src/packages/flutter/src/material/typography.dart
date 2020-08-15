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
  m[_typography_blackMountainView.funName] = _typography_blackMountainView;
  m[_typography_whiteMountainView.funName] = _typography_whiteMountainView;
  m[_typography_blackRedmond.funName] = _typography_blackRedmond;
  m[_typography_whiteRedmond.funName] = _typography_whiteRedmond;
  m[_typography_blackHelsinki.funName] = _typography_blackHelsinki;
  m[_typography_whiteHelsinki.funName] = _typography_whiteHelsinki;
  m[_typography_blackCupertino.funName] = _typography_blackCupertino;
  m[_typography_whiteCupertino.funName] = _typography_whiteCupertino;
  m[_typography_englishLike2014.funName] = _typography_englishLike2014;
  m[_typography_englishLike2018.funName] = _typography_englishLike2018;
  m[_typography_dense2014.funName] = _typography_dense2014;
  m[_typography_dense2018.funName] = _typography_dense2018;
  m[_typography_tall2014.funName] = _typography_tall2014;
  m[_typography_tall2018.funName] = _typography_tall2018;
  m[_typography.funName] = _typography;
  m[_typography_material2014.funName] = _typography_material2014;
  m[_typography_material2018.funName] = _typography_material2018;
  return m;
}

var _scriptCategory = MXFunctionInvoke(
  "ScriptCategory",
  ({String name, int index}) => MXScriptCategory.parse(name, index),
);
var _typography_blackMountainView = MXFunctionInvoke(
    "Typography.blackMountainView", () => Typography.blackMountainView);
var _typography_whiteMountainView = MXFunctionInvoke(
    "Typography.whiteMountainView", () => Typography.whiteMountainView);
var _typography_blackRedmond =
    MXFunctionInvoke("Typography.blackRedmond", () => Typography.blackRedmond);
var _typography_whiteRedmond =
    MXFunctionInvoke("Typography.whiteRedmond", () => Typography.whiteRedmond);
var _typography_blackHelsinki = MXFunctionInvoke(
    "Typography.blackHelsinki", () => Typography.blackHelsinki);
var _typography_whiteHelsinki = MXFunctionInvoke(
    "Typography.whiteHelsinki", () => Typography.whiteHelsinki);
var _typography_blackCupertino = MXFunctionInvoke(
    "Typography.blackCupertino", () => Typography.blackCupertino);
var _typography_whiteCupertino = MXFunctionInvoke(
    "Typography.whiteCupertino", () => Typography.whiteCupertino);
var _typography_englishLike2014 = MXFunctionInvoke(
    "Typography.englishLike2014", () => Typography.englishLike2014);
var _typography_englishLike2018 = MXFunctionInvoke(
    "Typography.englishLike2018", () => Typography.englishLike2018);
var _typography_dense2014 =
    MXFunctionInvoke("Typography.dense2014", () => Typography.dense2014);
var _typography_dense2018 =
    MXFunctionInvoke("Typography.dense2018", () => Typography.dense2018);
var _typography_tall2014 =
    MXFunctionInvoke("Typography.tall2014", () => Typography.tall2014);
var _typography_tall2018 =
    MXFunctionInvoke("Typography.tall2018", () => Typography.tall2018);
var _typography = MXFunctionInvoke(
  "Typography",
  ({
    TargetPlatform platform,
    TextTheme black,
    TextTheme white,
    TextTheme englishLike,
    TextTheme dense,
    TextTheme tall,
  }) =>
      Typography(
    platform: platform,
    black: black,
    white: white,
    englishLike: englishLike,
    dense: dense,
    tall: tall,
  ),
  [
    "platform",
    "black",
    "white",
    "englishLike",
    "dense",
    "tall",
  ],
);
var _typography_material2014 = MXFunctionInvoke(
  "Typography.material2014",
  ({
    TargetPlatform platform = TargetPlatform.android,
    TextTheme black,
    TextTheme white,
    TextTheme englishLike,
    TextTheme dense,
    TextTheme tall,
  }) =>
      Typography.material2014(
    platform: platform,
    black: black,
    white: white,
    englishLike: englishLike,
    dense: dense,
    tall: tall,
  ),
  [
    "platform",
    "black",
    "white",
    "englishLike",
    "dense",
    "tall",
  ],
);
var _typography_material2018 = MXFunctionInvoke(
  "Typography.material2018",
  ({
    TargetPlatform platform = TargetPlatform.android,
    TextTheme black,
    TextTheme white,
    TextTheme englishLike,
    TextTheme dense,
    TextTheme tall,
  }) =>
      Typography.material2018(
    platform: platform,
    black: black,
    white: white,
    englishLike: englishLike,
    dense: dense,
    tall: tall,
  ),
  [
    "platform",
    "black",
    "white",
    "englishLike",
    "dense",
    "tall",
  ],
);

class MXScriptCategory {
  static ScriptCategory parse(String name, int index) {
    switch (name) {
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
