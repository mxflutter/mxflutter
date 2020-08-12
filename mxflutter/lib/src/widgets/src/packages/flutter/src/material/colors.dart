//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[_colors_transparent.funName] = _colors_transparent;
  m[_colors_black.funName] = _colors_black;
  m[_colors_black87.funName] = _colors_black87;
  m[_colors_black54.funName] = _colors_black54;
  m[_colors_black45.funName] = _colors_black45;
  m[_colors_black38.funName] = _colors_black38;
  m[_colors_black26.funName] = _colors_black26;
  m[_colors_black12.funName] = _colors_black12;
  m[_colors_white.funName] = _colors_white;
  m[_colors_white70.funName] = _colors_white70;
  m[_colors_white60.funName] = _colors_white60;
  m[_colors_white54.funName] = _colors_white54;
  m[_colors_white38.funName] = _colors_white38;
  m[_colors_white30.funName] = _colors_white30;
  m[_colors_white24.funName] = _colors_white24;
  m[_colors_white12.funName] = _colors_white12;
  m[_colors_white10.funName] = _colors_white10;
  m[_colors_red.funName] = _colors_red;
  m[_colors_redAccent.funName] = _colors_redAccent;
  m[_colors_pink.funName] = _colors_pink;
  m[_colors_pinkAccent.funName] = _colors_pinkAccent;
  m[_colors_purple.funName] = _colors_purple;
  m[_colors_purpleAccent.funName] = _colors_purpleAccent;
  m[_colors_deepPurple.funName] = _colors_deepPurple;
  m[_colors_deepPurpleAccent.funName] = _colors_deepPurpleAccent;
  m[_colors_indigo.funName] = _colors_indigo;
  m[_colors_indigoAccent.funName] = _colors_indigoAccent;
  m[_colors_blue.funName] = _colors_blue;
  m[_colors_blueAccent.funName] = _colors_blueAccent;
  m[_colors_lightBlue.funName] = _colors_lightBlue;
  m[_colors_lightBlueAccent.funName] = _colors_lightBlueAccent;
  m[_colors_cyan.funName] = _colors_cyan;
  m[_colors_cyanAccent.funName] = _colors_cyanAccent;
  m[_colors_teal.funName] = _colors_teal;
  m[_colors_tealAccent.funName] = _colors_tealAccent;
  m[_colors_green.funName] = _colors_green;
  m[_colors_greenAccent.funName] = _colors_greenAccent;
  m[_colors_lightGreen.funName] = _colors_lightGreen;
  m[_colors_lightGreenAccent.funName] = _colors_lightGreenAccent;
  m[_colors_lime.funName] = _colors_lime;
  m[_colors_limeAccent.funName] = _colors_limeAccent;
  m[_colors_yellow.funName] = _colors_yellow;
  m[_colors_yellowAccent.funName] = _colors_yellowAccent;
  m[_colors_amber.funName] = _colors_amber;
  m[_colors_amberAccent.funName] = _colors_amberAccent;
  m[_colors_orange.funName] = _colors_orange;
  m[_colors_orangeAccent.funName] = _colors_orangeAccent;
  m[_colors_deepOrange.funName] = _colors_deepOrange;
  m[_colors_deepOrangeAccent.funName] = _colors_deepOrangeAccent;
  m[_colors_brown.funName] = _colors_brown;
  m[_colors_grey.funName] = _colors_grey;
  m[_colors_blueGrey.funName] = _colors_blueGrey;
  m[_colors_primaries.funName] = _colors_primaries;
  m[_colors_accents.funName] = _colors_accents;
  return m;
}
var _materialColor = MXFunctionInvoke(
    "MaterialColor",
    (
      {
      int primary,
      dynamic swatch,
      }
    ) =>
      MaterialColor(
      primary,
      toMapT<int, Color>(swatch),
    ),
);
var _materialAccentColor = MXFunctionInvoke(
    "MaterialAccentColor",
    (
      {
      int primary,
      dynamic swatch,
      }
    ) =>
      MaterialAccentColor(
      primary,
      toMapT<int, Color>(swatch),
    ),
);
var _colors_transparent = MXFunctionInvoke(
  "Colors.transparent",
    (
    ) =>
      Colors.transparent
);
var _colors_black = MXFunctionInvoke(
  "Colors.black",
    (
    ) =>
      Colors.black
);
var _colors_black87 = MXFunctionInvoke(
  "Colors.black87",
    (
    ) =>
      Colors.black87
);
var _colors_black54 = MXFunctionInvoke(
  "Colors.black54",
    (
    ) =>
      Colors.black54
);
var _colors_black45 = MXFunctionInvoke(
  "Colors.black45",
    (
    ) =>
      Colors.black45
);
var _colors_black38 = MXFunctionInvoke(
  "Colors.black38",
    (
    ) =>
      Colors.black38
);
var _colors_black26 = MXFunctionInvoke(
  "Colors.black26",
    (
    ) =>
      Colors.black26
);
var _colors_black12 = MXFunctionInvoke(
  "Colors.black12",
    (
    ) =>
      Colors.black12
);
var _colors_white = MXFunctionInvoke(
  "Colors.white",
    (
    ) =>
      Colors.white
);
var _colors_white70 = MXFunctionInvoke(
  "Colors.white70",
    (
    ) =>
      Colors.white70
);
var _colors_white60 = MXFunctionInvoke(
  "Colors.white60",
    (
    ) =>
      Colors.white60
);
var _colors_white54 = MXFunctionInvoke(
  "Colors.white54",
    (
    ) =>
      Colors.white54
);
var _colors_white38 = MXFunctionInvoke(
  "Colors.white38",
    (
    ) =>
      Colors.white38
);
var _colors_white30 = MXFunctionInvoke(
  "Colors.white30",
    (
    ) =>
      Colors.white30
);
var _colors_white24 = MXFunctionInvoke(
  "Colors.white24",
    (
    ) =>
      Colors.white24
);
var _colors_white12 = MXFunctionInvoke(
  "Colors.white12",
    (
    ) =>
      Colors.white12
);
var _colors_white10 = MXFunctionInvoke(
  "Colors.white10",
    (
    ) =>
      Colors.white10
);
var _colors_red = MXFunctionInvoke(
  "Colors.red",
    (
    ) =>
      Colors.red
);
var _colors_redAccent = MXFunctionInvoke(
  "Colors.redAccent",
    (
    ) =>
      Colors.redAccent
);
var _colors_pink = MXFunctionInvoke(
  "Colors.pink",
    (
    ) =>
      Colors.pink
);
var _colors_pinkAccent = MXFunctionInvoke(
  "Colors.pinkAccent",
    (
    ) =>
      Colors.pinkAccent
);
var _colors_purple = MXFunctionInvoke(
  "Colors.purple",
    (
    ) =>
      Colors.purple
);
var _colors_purpleAccent = MXFunctionInvoke(
  "Colors.purpleAccent",
    (
    ) =>
      Colors.purpleAccent
);
var _colors_deepPurple = MXFunctionInvoke(
  "Colors.deepPurple",
    (
    ) =>
      Colors.deepPurple
);
var _colors_deepPurpleAccent = MXFunctionInvoke(
  "Colors.deepPurpleAccent",
    (
    ) =>
      Colors.deepPurpleAccent
);
var _colors_indigo = MXFunctionInvoke(
  "Colors.indigo",
    (
    ) =>
      Colors.indigo
);
var _colors_indigoAccent = MXFunctionInvoke(
  "Colors.indigoAccent",
    (
    ) =>
      Colors.indigoAccent
);
var _colors_blue = MXFunctionInvoke(
  "Colors.blue",
    (
    ) =>
      Colors.blue
);
var _colors_blueAccent = MXFunctionInvoke(
  "Colors.blueAccent",
    (
    ) =>
      Colors.blueAccent
);
var _colors_lightBlue = MXFunctionInvoke(
  "Colors.lightBlue",
    (
    ) =>
      Colors.lightBlue
);
var _colors_lightBlueAccent = MXFunctionInvoke(
  "Colors.lightBlueAccent",
    (
    ) =>
      Colors.lightBlueAccent
);
var _colors_cyan = MXFunctionInvoke(
  "Colors.cyan",
    (
    ) =>
      Colors.cyan
);
var _colors_cyanAccent = MXFunctionInvoke(
  "Colors.cyanAccent",
    (
    ) =>
      Colors.cyanAccent
);
var _colors_teal = MXFunctionInvoke(
  "Colors.teal",
    (
    ) =>
      Colors.teal
);
var _colors_tealAccent = MXFunctionInvoke(
  "Colors.tealAccent",
    (
    ) =>
      Colors.tealAccent
);
var _colors_green = MXFunctionInvoke(
  "Colors.green",
    (
    ) =>
      Colors.green
);
var _colors_greenAccent = MXFunctionInvoke(
  "Colors.greenAccent",
    (
    ) =>
      Colors.greenAccent
);
var _colors_lightGreen = MXFunctionInvoke(
  "Colors.lightGreen",
    (
    ) =>
      Colors.lightGreen
);
var _colors_lightGreenAccent = MXFunctionInvoke(
  "Colors.lightGreenAccent",
    (
    ) =>
      Colors.lightGreenAccent
);
var _colors_lime = MXFunctionInvoke(
  "Colors.lime",
    (
    ) =>
      Colors.lime
);
var _colors_limeAccent = MXFunctionInvoke(
  "Colors.limeAccent",
    (
    ) =>
      Colors.limeAccent
);
var _colors_yellow = MXFunctionInvoke(
  "Colors.yellow",
    (
    ) =>
      Colors.yellow
);
var _colors_yellowAccent = MXFunctionInvoke(
  "Colors.yellowAccent",
    (
    ) =>
      Colors.yellowAccent
);
var _colors_amber = MXFunctionInvoke(
  "Colors.amber",
    (
    ) =>
      Colors.amber
);
var _colors_amberAccent = MXFunctionInvoke(
  "Colors.amberAccent",
    (
    ) =>
      Colors.amberAccent
);
var _colors_orange = MXFunctionInvoke(
  "Colors.orange",
    (
    ) =>
      Colors.orange
);
var _colors_orangeAccent = MXFunctionInvoke(
  "Colors.orangeAccent",
    (
    ) =>
      Colors.orangeAccent
);
var _colors_deepOrange = MXFunctionInvoke(
  "Colors.deepOrange",
    (
    ) =>
      Colors.deepOrange
);
var _colors_deepOrangeAccent = MXFunctionInvoke(
  "Colors.deepOrangeAccent",
    (
    ) =>
      Colors.deepOrangeAccent
);
var _colors_brown = MXFunctionInvoke(
  "Colors.brown",
    (
    ) =>
      Colors.brown
);
var _colors_grey = MXFunctionInvoke(
  "Colors.grey",
    (
    ) =>
      Colors.grey
);
var _colors_blueGrey = MXFunctionInvoke(
  "Colors.blueGrey",
    (
    ) =>
      Colors.blueGrey
);
var _colors_primaries = MXFunctionInvoke(
  "Colors.primaries",
    (
    ) =>
      Colors.primaries
);
var _colors_accents = MXFunctionInvoke(
  "Colors.accents",
    (
    ) =>
      Colors.accents
);
