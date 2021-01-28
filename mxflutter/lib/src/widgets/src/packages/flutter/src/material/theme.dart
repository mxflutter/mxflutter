//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/material/typography.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_theme.funName] = _theme;
  m[_themeDataTween.funName] = _themeDataTween;
  m[_animatedTheme.funName] = _animatedTheme;
  return m;
}

var _theme = MXFunctionInvoke(
  "Theme",
  ({
    Key key,
    ThemeData data,
    bool isMaterialAppTheme = false,
    Widget child,
  }) =>
      Theme(
    key: key,
    data: data,
    isMaterialAppTheme: isMaterialAppTheme,
    child: child,
  ),
  [
    "key",
    "data",
    "isMaterialAppTheme",
    "child",
  ],
);
var _themeDataTween = MXFunctionInvoke(
  "ThemeDataTween",
  ({
    ThemeData begin,
    ThemeData end,
  }) =>
      ThemeDataTween(
    begin: begin,
    end: end,
  ),
  [
    "begin",
    "end",
  ],
);
var _animatedTheme = MXFunctionInvoke(
  "AnimatedTheme",
  ({
    Key key,
    ThemeData data,
    bool isMaterialAppTheme = false,
    Curve curve = Curves.linear,
    Duration duration = kThemeAnimationDuration,
    dynamic onEnd,
    Widget child,
  }) =>
      AnimatedTheme(
    key: key,
    data: data,
    isMaterialAppTheme: isMaterialAppTheme,
    curve: curve,
    duration: duration,
    onEnd: createVoidCallbackClosure(_animatedTheme.buildOwner, onEnd),
    child: child,
  ),
  [
    "key",
    "data",
    "isMaterialAppTheme",
    "curve",
    "duration",
    "onEnd",
    "child",
  ],
);
