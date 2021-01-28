//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/time.dart';
import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/material_localizations.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTimeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_dayPeriod.funName] = _dayPeriod;
  m[_timeOfDay.funName] = _timeOfDay;
  m[_timeOfDayHoursPerDay.funName] = _timeOfDayHoursPerDay;
  m[_timeOfDayHoursPerPeriod.funName] = _timeOfDayHoursPerPeriod;
  m[_timeOfDayMinutesPerHour.funName] = _timeOfDayMinutesPerHour;
  m[_timeOfDayNow.funName] = _timeOfDayNow;
  m[_timeOfDayFromDateTime.funName] = _timeOfDayFromDateTime;
  m[_timeOfDayFormat.funName] = _timeOfDayFormat;
  m[_hourFormat.funName] = _hourFormat;
  return m;
}

var _dayPeriod =
    MXFunctionInvoke("DayPeriod", ({String name, int index}) => MXDayPeriod.parse(name, index), ["name", "index"]);
var _timeOfDay = MXFunctionInvoke(
  "TimeOfDay",
  ({
    int hour,
    int minute,
  }) =>
      TimeOfDay(
    hour: hour,
    minute: minute,
  ),
  [
    "hour",
    "minute",
  ],
);
var _timeOfDayHoursPerDay = MXFunctionInvoke("TimeOfDay.hoursPerDay", () => TimeOfDay.hoursPerDay);
var _timeOfDayHoursPerPeriod = MXFunctionInvoke("TimeOfDay.hoursPerPeriod", () => TimeOfDay.hoursPerPeriod);
var _timeOfDayMinutesPerHour = MXFunctionInvoke("TimeOfDay.minutesPerHour", () => TimeOfDay.minutesPerHour);
var _timeOfDayNow = MXFunctionInvoke(
  "TimeOfDay.now",
  () => TimeOfDay.now(),
  [],
);
var _timeOfDayFromDateTime = MXFunctionInvoke(
  "TimeOfDay.fromDateTime",
  ({
    DateTime time,
  }) =>
      TimeOfDay.fromDateTime(
    time,
  ),
  [
    "time",
  ],
);
var _timeOfDayFormat = MXFunctionInvoke(
    "TimeOfDayFormat", ({String name, int index}) => MXTimeOfDayFormat.parse(name, index), ["name", "index"]);
var _hourFormat =
    MXFunctionInvoke("HourFormat", ({String name, int index}) => MXHourFormat.parse(name, index), ["name", "index"]);

class MXDayPeriod {
  static DayPeriod parse(String name, int index) {
    switch (name) {
      case 'DayPeriod.am':
        return DayPeriod.am;
      case 'DayPeriod.pm':
        return DayPeriod.pm;
    }
    return null;
  }
}

class MXTimeOfDayFormat {
  static TimeOfDayFormat parse(String name, int index) {
    switch (name) {
      case 'TimeOfDayFormat.HH_colon_mm':
        return TimeOfDayFormat.HH_colon_mm;
      case 'TimeOfDayFormat.HH_dot_mm':
        return TimeOfDayFormat.HH_dot_mm;
      case 'TimeOfDayFormat.frenchCanadian':
        return TimeOfDayFormat.frenchCanadian;
      case 'TimeOfDayFormat.H_colon_mm':
        return TimeOfDayFormat.H_colon_mm;
      case 'TimeOfDayFormat.h_colon_mm_space_a':
        return TimeOfDayFormat.h_colon_mm_space_a;
      case 'TimeOfDayFormat.a_space_h_colon_mm':
        return TimeOfDayFormat.a_space_h_colon_mm;
    }
    return null;
  }
}

class MXHourFormat {
  static HourFormat parse(String name, int index) {
    switch (name) {
      case 'HourFormat.HH':
        return HourFormat.HH;
      case 'HourFormat.H':
        return HourFormat.H;
      case 'HourFormat.h':
        return HourFormat.h;
    }
    return null;
  }
}
