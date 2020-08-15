//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[_timeOfDay_hoursPerDay.funName] = _timeOfDay_hoursPerDay;
  m[_timeOfDay_hoursPerPeriod.funName] = _timeOfDay_hoursPerPeriod;
  m[_timeOfDay_minutesPerHour.funName] = _timeOfDay_minutesPerHour;
  m[_timeOfDay_now.funName] = _timeOfDay_now;
  m[_timeOfDay_fromDateTime.funName] = _timeOfDay_fromDateTime;
  m[_timeOfDayFormat.funName] = _timeOfDayFormat;
  m[_hourFormat.funName] = _hourFormat;
  return m;
}

var _dayPeriod = MXFunctionInvoke(
  "DayPeriod",
  ({String name, int index}) => MXDayPeriod.parse(name, index),
);
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
var _timeOfDay_hoursPerDay =
    MXFunctionInvoke("TimeOfDay.hoursPerDay", () => TimeOfDay.hoursPerDay);
var _timeOfDay_hoursPerPeriod = MXFunctionInvoke(
    "TimeOfDay.hoursPerPeriod", () => TimeOfDay.hoursPerPeriod);
var _timeOfDay_minutesPerHour = MXFunctionInvoke(
    "TimeOfDay.minutesPerHour", () => TimeOfDay.minutesPerHour);
var _timeOfDay_now = MXFunctionInvoke(
  "TimeOfDay.now",
  () => TimeOfDay.now(),
  [],
);
var _timeOfDay_fromDateTime = MXFunctionInvoke(
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
  "TimeOfDayFormat",
  ({String name, int index}) => MXTimeOfDayFormat.parse(name, index),
);
var _hourFormat = MXFunctionInvoke(
  "HourFormat",
  ({String name, int index}) => MXHourFormat.parse(name, index),
);

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
