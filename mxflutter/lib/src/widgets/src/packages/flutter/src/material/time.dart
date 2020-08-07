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
  m[_timeOfDay_now.funName] = _timeOfDay_now;
  m[_timeOfDay_fromDateTime.funName] = _timeOfDay_fromDateTime;
  m[_timeOfDayFormat.funName] = _timeOfDayFormat;
  m[_hourFormat.funName] = _hourFormat;
  return m;
}
var _dayPeriod = MXFunctionInvoke(
    "DayPeriod",
    ({Map args}) => MXDayPeriod.parse(args),
  );
var _timeOfDay = MXFunctionInvoke(
    "TimeOfDay",
    (
      {
      int hour,
      int minute,
      }
    ) =>
      TimeOfDay(
      hour: hour,
      minute: minute,
    ),
);
var _timeOfDay_now = MXFunctionInvoke(
  "TimeOfDay.now",
    (
    ) =>
      TimeOfDay.now(
    ),
);
var _timeOfDay_fromDateTime = MXFunctionInvoke(
  "TimeOfDay.fromDateTime",
    (
      {
      DateTime time,
      }
    ) =>
      TimeOfDay.fromDateTime(
      time,
    ),
);
var _timeOfDayFormat = MXFunctionInvoke(
    "TimeOfDayFormat",
    ({Map args}) => MXTimeOfDayFormat.parse(args),
  );
var _hourFormat = MXFunctionInvoke(
    "HourFormat",
    ({Map args}) => MXHourFormat.parse(args),
  );
class MXDayPeriod {
  static Map str2VMap = {
    'DayPeriod.am': DayPeriod.am,
    'DayPeriod.pm': DayPeriod.pm,
  };
  static DayPeriod parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXTimeOfDayFormat {
  static Map str2VMap = {
    'TimeOfDayFormat.HH_colon_mm': TimeOfDayFormat.HH_colon_mm,
    'TimeOfDayFormat.HH_dot_mm': TimeOfDayFormat.HH_dot_mm,
    'TimeOfDayFormat.frenchCanadian': TimeOfDayFormat.frenchCanadian,
    'TimeOfDayFormat.H_colon_mm': TimeOfDayFormat.H_colon_mm,
    'TimeOfDayFormat.h_colon_mm_space_a': TimeOfDayFormat.h_colon_mm_space_a,
    'TimeOfDayFormat.a_space_h_colon_mm': TimeOfDayFormat.a_space_h_colon_mm,
  };
  static TimeOfDayFormat parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXHourFormat {
  static Map str2VMap = {
    'HourFormat.HH': HourFormat.HH,
    'HourFormat.H': HourFormat.H,
    'HourFormat.h': HourFormat.h,
  };
  static HourFormat parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
