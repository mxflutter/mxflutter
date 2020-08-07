//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  return m;
}
var _datePickerDateTimeOrder = MXFunctionInvoke(
    "DatePickerDateTimeOrder",
    ({Map args}) => MXDatePickerDateTimeOrder.parse(args),
  );
var _datePickerDateOrder = MXFunctionInvoke(
    "DatePickerDateOrder",
    ({Map args}) => MXDatePickerDateOrder.parse(args),
  );
var _defaultCupertinoLocalizations = MXFunctionInvoke(
    "DefaultCupertinoLocalizations",
    (
    ) =>
      DefaultCupertinoLocalizations(
    ),
);
class MXDatePickerDateTimeOrder {
  static Map str2VMap = {
    'DatePickerDateTimeOrder.date_time_dayPeriod': DatePickerDateTimeOrder.date_time_dayPeriod,
    'DatePickerDateTimeOrder.date_dayPeriod_time': DatePickerDateTimeOrder.date_dayPeriod_time,
    'DatePickerDateTimeOrder.time_dayPeriod_date': DatePickerDateTimeOrder.time_dayPeriod_date,
    'DatePickerDateTimeOrder.dayPeriod_time_date': DatePickerDateTimeOrder.dayPeriod_time_date,
  };
  static DatePickerDateTimeOrder parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXDatePickerDateOrder {
  static Map str2VMap = {
    'DatePickerDateOrder.dmy': DatePickerDateOrder.dmy,
    'DatePickerDateOrder.mdy': DatePickerDateOrder.mdy,
    'DatePickerDateOrder.ymd': DatePickerDateOrder.ymd,
    'DatePickerDateOrder.ydm': DatePickerDateOrder.ydm,
  };
  static DatePickerDateOrder parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
