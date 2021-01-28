//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/colors.dart';
import 'dart:ui';
import 'package:flutter/painting.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerColorsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_materialColor.funName] = _materialColor;
  m[_materialAccentColor.funName] = _materialAccentColor;
  m[_colorsTransparent.funName] = _colorsTransparent;
  m[_colorsBlack.funName] = _colorsBlack;
  m[_colorsBlack87.funName] = _colorsBlack87;
  m[_colorsBlack54.funName] = _colorsBlack54;
  m[_colorsBlack45.funName] = _colorsBlack45;
  m[_colorsBlack38.funName] = _colorsBlack38;
  m[_colorsBlack26.funName] = _colorsBlack26;
  m[_colorsBlack12.funName] = _colorsBlack12;
  m[_colorsWhite.funName] = _colorsWhite;
  m[_colorsWhite70.funName] = _colorsWhite70;
  m[_colorsWhite60.funName] = _colorsWhite60;
  m[_colorsWhite54.funName] = _colorsWhite54;
  m[_colorsWhite38.funName] = _colorsWhite38;
  m[_colorsWhite30.funName] = _colorsWhite30;
  m[_colorsWhite24.funName] = _colorsWhite24;
  m[_colorsWhite12.funName] = _colorsWhite12;
  m[_colorsWhite10.funName] = _colorsWhite10;
  m[_colorsRed.funName] = _colorsRed;
  m[_colorsRedAccent.funName] = _colorsRedAccent;
  m[_colorsPink.funName] = _colorsPink;
  m[_colorsPinkAccent.funName] = _colorsPinkAccent;
  m[_colorsPurple.funName] = _colorsPurple;
  m[_colorsPurpleAccent.funName] = _colorsPurpleAccent;
  m[_colorsDeepPurple.funName] = _colorsDeepPurple;
  m[_colorsDeepPurpleAccent.funName] = _colorsDeepPurpleAccent;
  m[_colorsIndigo.funName] = _colorsIndigo;
  m[_colorsIndigoAccent.funName] = _colorsIndigoAccent;
  m[_colorsBlue.funName] = _colorsBlue;
  m[_colorsBlueAccent.funName] = _colorsBlueAccent;
  m[_colorsLightBlue.funName] = _colorsLightBlue;
  m[_colorsLightBlueAccent.funName] = _colorsLightBlueAccent;
  m[_colorsCyan.funName] = _colorsCyan;
  m[_colorsCyanAccent.funName] = _colorsCyanAccent;
  m[_colorsTeal.funName] = _colorsTeal;
  m[_colorsTealAccent.funName] = _colorsTealAccent;
  m[_colorsGreen.funName] = _colorsGreen;
  m[_colorsGreenAccent.funName] = _colorsGreenAccent;
  m[_colorsLightGreen.funName] = _colorsLightGreen;
  m[_colorsLightGreenAccent.funName] = _colorsLightGreenAccent;
  m[_colorsLime.funName] = _colorsLime;
  m[_colorsLimeAccent.funName] = _colorsLimeAccent;
  m[_colorsYellow.funName] = _colorsYellow;
  m[_colorsYellowAccent.funName] = _colorsYellowAccent;
  m[_colorsAmber.funName] = _colorsAmber;
  m[_colorsAmberAccent.funName] = _colorsAmberAccent;
  m[_colorsOrange.funName] = _colorsOrange;
  m[_colorsOrangeAccent.funName] = _colorsOrangeAccent;
  m[_colorsDeepOrange.funName] = _colorsDeepOrange;
  m[_colorsDeepOrangeAccent.funName] = _colorsDeepOrangeAccent;
  m[_colorsBrown.funName] = _colorsBrown;
  m[_colorsGrey.funName] = _colorsGrey;
  m[_colorsBlueGrey.funName] = _colorsBlueGrey;
  m[_colorsPrimaries.funName] = _colorsPrimaries;
  m[_colorsAccents.funName] = _colorsAccents;
  return m;
}

var _materialColor = MXFunctionInvoke(
  "MaterialColor",
  ({
    int primary,
    dynamic swatch,
  }) =>
      MaterialColor(
    primary,
    toMapT<int, Color>(swatch),
  ),
  [
    "primary",
    "swatch",
  ],
);
var _materialAccentColor = MXFunctionInvoke(
  "MaterialAccentColor",
  ({
    int primary,
    dynamic swatch,
  }) =>
      MaterialAccentColor(
    primary,
    toMapT<int, Color>(swatch),
  ),
  [
    "primary",
    "swatch",
  ],
);
var _colorsTransparent = MXFunctionInvoke("Colors.transparent", () => Colors.transparent);
var _colorsBlack = MXFunctionInvoke("Colors.black", () => Colors.black);
var _colorsBlack87 = MXFunctionInvoke("Colors.black87", () => Colors.black87);
var _colorsBlack54 = MXFunctionInvoke("Colors.black54", () => Colors.black54);
var _colorsBlack45 = MXFunctionInvoke("Colors.black45", () => Colors.black45);
var _colorsBlack38 = MXFunctionInvoke("Colors.black38", () => Colors.black38);
var _colorsBlack26 = MXFunctionInvoke("Colors.black26", () => Colors.black26);
var _colorsBlack12 = MXFunctionInvoke("Colors.black12", () => Colors.black12);
var _colorsWhite = MXFunctionInvoke("Colors.white", () => Colors.white);
var _colorsWhite70 = MXFunctionInvoke("Colors.white70", () => Colors.white70);
var _colorsWhite60 = MXFunctionInvoke("Colors.white60", () => Colors.white60);
var _colorsWhite54 = MXFunctionInvoke("Colors.white54", () => Colors.white54);
var _colorsWhite38 = MXFunctionInvoke("Colors.white38", () => Colors.white38);
var _colorsWhite30 = MXFunctionInvoke("Colors.white30", () => Colors.white30);
var _colorsWhite24 = MXFunctionInvoke("Colors.white24", () => Colors.white24);
var _colorsWhite12 = MXFunctionInvoke("Colors.white12", () => Colors.white12);
var _colorsWhite10 = MXFunctionInvoke("Colors.white10", () => Colors.white10);
var _colorsRed = MXFunctionInvoke("Colors.red", () => Colors.red);
var _colorsRedAccent = MXFunctionInvoke("Colors.redAccent", () => Colors.redAccent);
var _colorsPink = MXFunctionInvoke("Colors.pink", () => Colors.pink);
var _colorsPinkAccent = MXFunctionInvoke("Colors.pinkAccent", () => Colors.pinkAccent);
var _colorsPurple = MXFunctionInvoke("Colors.purple", () => Colors.purple);
var _colorsPurpleAccent = MXFunctionInvoke("Colors.purpleAccent", () => Colors.purpleAccent);
var _colorsDeepPurple = MXFunctionInvoke("Colors.deepPurple", () => Colors.deepPurple);
var _colorsDeepPurpleAccent = MXFunctionInvoke("Colors.deepPurpleAccent", () => Colors.deepPurpleAccent);
var _colorsIndigo = MXFunctionInvoke("Colors.indigo", () => Colors.indigo);
var _colorsIndigoAccent = MXFunctionInvoke("Colors.indigoAccent", () => Colors.indigoAccent);
var _colorsBlue = MXFunctionInvoke("Colors.blue", () => Colors.blue);
var _colorsBlueAccent = MXFunctionInvoke("Colors.blueAccent", () => Colors.blueAccent);
var _colorsLightBlue = MXFunctionInvoke("Colors.lightBlue", () => Colors.lightBlue);
var _colorsLightBlueAccent = MXFunctionInvoke("Colors.lightBlueAccent", () => Colors.lightBlueAccent);
var _colorsCyan = MXFunctionInvoke("Colors.cyan", () => Colors.cyan);
var _colorsCyanAccent = MXFunctionInvoke("Colors.cyanAccent", () => Colors.cyanAccent);
var _colorsTeal = MXFunctionInvoke("Colors.teal", () => Colors.teal);
var _colorsTealAccent = MXFunctionInvoke("Colors.tealAccent", () => Colors.tealAccent);
var _colorsGreen = MXFunctionInvoke("Colors.green", () => Colors.green);
var _colorsGreenAccent = MXFunctionInvoke("Colors.greenAccent", () => Colors.greenAccent);
var _colorsLightGreen = MXFunctionInvoke("Colors.lightGreen", () => Colors.lightGreen);
var _colorsLightGreenAccent = MXFunctionInvoke("Colors.lightGreenAccent", () => Colors.lightGreenAccent);
var _colorsLime = MXFunctionInvoke("Colors.lime", () => Colors.lime);
var _colorsLimeAccent = MXFunctionInvoke("Colors.limeAccent", () => Colors.limeAccent);
var _colorsYellow = MXFunctionInvoke("Colors.yellow", () => Colors.yellow);
var _colorsYellowAccent = MXFunctionInvoke("Colors.yellowAccent", () => Colors.yellowAccent);
var _colorsAmber = MXFunctionInvoke("Colors.amber", () => Colors.amber);
var _colorsAmberAccent = MXFunctionInvoke("Colors.amberAccent", () => Colors.amberAccent);
var _colorsOrange = MXFunctionInvoke("Colors.orange", () => Colors.orange);
var _colorsOrangeAccent = MXFunctionInvoke("Colors.orangeAccent", () => Colors.orangeAccent);
var _colorsDeepOrange = MXFunctionInvoke("Colors.deepOrange", () => Colors.deepOrange);
var _colorsDeepOrangeAccent = MXFunctionInvoke("Colors.deepOrangeAccent", () => Colors.deepOrangeAccent);
var _colorsBrown = MXFunctionInvoke("Colors.brown", () => Colors.brown);
var _colorsGrey = MXFunctionInvoke("Colors.grey", () => Colors.grey);
var _colorsBlueGrey = MXFunctionInvoke("Colors.blueGrey", () => Colors.blueGrey);
var _colorsPrimaries = MXFunctionInvoke("Colors.primaries", () => Colors.primaries);
var _colorsAccents = MXFunctionInvoke("Colors.accents", () => Colors.accents);
