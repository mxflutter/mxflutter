//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/localizations.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/date_picker.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerLocalizationsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_datePickerDateTimeOrder.funName] = _datePickerDateTimeOrder;
  m[_datePickerDateOrder.funName] = _datePickerDateOrder;
  m[_defaultCupertinoLocalizations.funName] = _defaultCupertinoLocalizations;
  m[_defaultCupertinoLocalizationsDelegate.funName] = _defaultCupertinoLocalizationsDelegate;
  return m;
}

var _datePickerDateTimeOrder = MXFunctionInvoke("DatePickerDateTimeOrder",
    ({String name, int index}) => MXDatePickerDateTimeOrder.parse(name, index), ["name", "index"]);
var _datePickerDateOrder = MXFunctionInvoke(
    "DatePickerDateOrder", ({String name, int index}) => MXDatePickerDateOrder.parse(name, index), ["name", "index"]);
var _defaultCupertinoLocalizations = MXFunctionInvoke(
  "DefaultCupertinoLocalizations",
  () => DefaultCupertinoLocalizations(),
  [],
);
var _defaultCupertinoLocalizationsDelegate =
    MXFunctionInvoke("DefaultCupertinoLocalizations.delegate", () => DefaultCupertinoLocalizations.delegate);

class MXDatePickerDateTimeOrder {
  static DatePickerDateTimeOrder parse(String name, int index) {
    switch (name) {
      case 'DatePickerDateTimeOrder.date_time_dayPeriod':
        return DatePickerDateTimeOrder.date_time_dayPeriod;
      case 'DatePickerDateTimeOrder.date_dayPeriod_time':
        return DatePickerDateTimeOrder.date_dayPeriod_time;
      case 'DatePickerDateTimeOrder.time_dayPeriod_date':
        return DatePickerDateTimeOrder.time_dayPeriod_date;
      case 'DatePickerDateTimeOrder.dayPeriod_time_date':
        return DatePickerDateTimeOrder.dayPeriod_time_date;
    }
    return null;
  }
}

class MXDatePickerDateOrder {
  static DatePickerDateOrder parse(String name, int index) {
    switch (name) {
      case 'DatePickerDateOrder.dmy':
        return DatePickerDateOrder.dmy;
      case 'DatePickerDateOrder.mdy':
        return DatePickerDateOrder.mdy;
      case 'DatePickerDateOrder.ymd':
        return DatePickerDateOrder.ymd;
      case 'DatePickerDateOrder.ydm':
        return DatePickerDateOrder.ydm;
    }
    return null;
  }
}
