//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
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
  m[_typographyBlackMountainView.funName] = _typographyBlackMountainView;
  m[_typographyWhiteMountainView.funName] = _typographyWhiteMountainView;
  m[_typographyBlackRedmond.funName] = _typographyBlackRedmond;
  m[_typographyWhiteRedmond.funName] = _typographyWhiteRedmond;
  m[_typographyBlackHelsinki.funName] = _typographyBlackHelsinki;
  m[_typographyWhiteHelsinki.funName] = _typographyWhiteHelsinki;
  m[_typographyBlackCupertino.funName] = _typographyBlackCupertino;
  m[_typographyWhiteCupertino.funName] = _typographyWhiteCupertino;
  m[_typographyEnglishLike2014.funName] = _typographyEnglishLike2014;
  m[_typographyEnglishLike2018.funName] = _typographyEnglishLike2018;
  m[_typographyDense2014.funName] = _typographyDense2014;
  m[_typographyDense2018.funName] = _typographyDense2018;
  m[_typographyTall2014.funName] = _typographyTall2014;
  m[_typographyTall2018.funName] = _typographyTall2018;
  m[_typography.funName] = _typography;
  m[_typographyMaterial2014.funName] = _typographyMaterial2014;
  m[_typographyMaterial2018.funName] = _typographyMaterial2018;
  return m;
}

var _scriptCategory = MXFunctionInvoke(
    "ScriptCategory", ({String name, int index}) => MXScriptCategory.parse(name, index), ["name", "index"]);
var _typographyBlackMountainView = MXFunctionInvoke("Typography.blackMountainView", () => Typography.blackMountainView);
var _typographyWhiteMountainView = MXFunctionInvoke("Typography.whiteMountainView", () => Typography.whiteMountainView);
var _typographyBlackRedmond = MXFunctionInvoke("Typography.blackRedmond", () => Typography.blackRedmond);
var _typographyWhiteRedmond = MXFunctionInvoke("Typography.whiteRedmond", () => Typography.whiteRedmond);
var _typographyBlackHelsinki = MXFunctionInvoke("Typography.blackHelsinki", () => Typography.blackHelsinki);
var _typographyWhiteHelsinki = MXFunctionInvoke("Typography.whiteHelsinki", () => Typography.whiteHelsinki);
var _typographyBlackCupertino = MXFunctionInvoke("Typography.blackCupertino", () => Typography.blackCupertino);
var _typographyWhiteCupertino = MXFunctionInvoke("Typography.whiteCupertino", () => Typography.whiteCupertino);
var _typographyEnglishLike2014 = MXFunctionInvoke("Typography.englishLike2014", () => Typography.englishLike2014);
var _typographyEnglishLike2018 = MXFunctionInvoke("Typography.englishLike2018", () => Typography.englishLike2018);
var _typographyDense2014 = MXFunctionInvoke("Typography.dense2014", () => Typography.dense2014);
var _typographyDense2018 = MXFunctionInvoke("Typography.dense2018", () => Typography.dense2018);
var _typographyTall2014 = MXFunctionInvoke("Typography.tall2014", () => Typography.tall2014);
var _typographyTall2018 = MXFunctionInvoke("Typography.tall2018", () => Typography.tall2018);
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
var _typographyMaterial2014 = MXFunctionInvoke(
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
var _typographyMaterial2018 = MXFunctionInvoke(
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
