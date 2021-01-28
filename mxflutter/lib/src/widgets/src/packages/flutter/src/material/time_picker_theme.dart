//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/time_picker_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/input_decorator.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTimePickerThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_timePickerThemeData.funName] = _timePickerThemeData;
  m[_timePickerTheme.funName] = _timePickerTheme;
  return m;
}

var _timePickerThemeData = MXFunctionInvoke(
  "TimePickerThemeData",
  ({
    Color backgroundColor,
    Color hourMinuteTextColor,
    Color hourMinuteColor,
    Color dayPeriodTextColor,
    Color dayPeriodColor,
    Color dialHandColor,
    Color dialBackgroundColor,
    Color dialTextColor,
    Color entryModeIconColor,
    TextStyle hourMinuteTextStyle,
    TextStyle dayPeriodTextStyle,
    TextStyle helpTextStyle,
    ShapeBorder shape,
    ShapeBorder hourMinuteShape,
    OutlinedBorder dayPeriodShape,
    BorderSide dayPeriodBorderSide,
    InputDecorationTheme inputDecorationTheme,
  }) =>
      TimePickerThemeData(
    backgroundColor: backgroundColor,
    hourMinuteTextColor: hourMinuteTextColor,
    hourMinuteColor: hourMinuteColor,
    dayPeriodTextColor: dayPeriodTextColor,
    dayPeriodColor: dayPeriodColor,
    dialHandColor: dialHandColor,
    dialBackgroundColor: dialBackgroundColor,
    dialTextColor: dialTextColor,
    entryModeIconColor: entryModeIconColor,
    hourMinuteTextStyle: hourMinuteTextStyle,
    dayPeriodTextStyle: dayPeriodTextStyle,
    helpTextStyle: helpTextStyle,
    shape: shape,
    hourMinuteShape: hourMinuteShape,
    dayPeriodShape: dayPeriodShape,
    dayPeriodBorderSide: dayPeriodBorderSide,
    inputDecorationTheme: inputDecorationTheme,
  ),
  [
    "backgroundColor",
    "hourMinuteTextColor",
    "hourMinuteColor",
    "dayPeriodTextColor",
    "dayPeriodColor",
    "dialHandColor",
    "dialBackgroundColor",
    "dialTextColor",
    "entryModeIconColor",
    "hourMinuteTextStyle",
    "dayPeriodTextStyle",
    "helpTextStyle",
    "shape",
    "hourMinuteShape",
    "dayPeriodShape",
    "dayPeriodBorderSide",
    "inputDecorationTheme",
  ],
);
var _timePickerTheme = MXFunctionInvoke(
  "TimePickerTheme",
  ({
    Key key,
    TimePickerThemeData data,
    Widget child,
  }) =>
      TimePickerTheme(
    key: key,
    data: data,
    child: child,
  ),
  [
    "key",
    "data",
    "child",
  ],
);
