//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/date_picker.dart';
import 'dart:math' as math;
import 'package:flutter/scheduler.dart' ;
import 'package:flutter/widgets.dart' ;
import 'package:flutter/src/cupertino/colors.dart' ;
import 'package:flutter/src/cupertino/localizations.dart' ;
import 'package:flutter/src/cupertino/picker.dart' ;
import 'package:flutter/src/cupertino/theme.dart' ;
import 'package:flutter/src/cupertino/localizations.dart';
import 'dart:async' ;
import 'package:flutter/foundation.dart' ;
import 'package:flutter/src/cupertino/date_picker.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDatePickerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoDatePickerMode.funName] = _cupertinoDatePickerMode;
  m[_cupertinoDatePicker.funName] = _cupertinoDatePicker;
  m[_cupertinoTimerPickerMode.funName] = _cupertinoTimerPickerMode;
  m[_cupertinoTimerPicker.funName] = _cupertinoTimerPicker;
  m[_datePickerDateTimeOrder.funName] = _datePickerDateTimeOrder;
  m[_datePickerDateOrder.funName] = _datePickerDateOrder;
  m[_cupertinoLocalizations.funName] = _cupertinoLocalizations;
  m[_defaultCupertinoLocalizations.funName] = _defaultCupertinoLocalizations;
  return m;
}
var _cupertinoDatePickerMode = MXFunctionInvoke(
    "CupertinoDatePickerMode",
    ({Map args}) => MXCupertinoDatePickerMode.parse(args),
  );
var _cupertinoDatePicker = MXFunctionInvoke(
    "CupertinoDatePicker",
    (
      {
      Key key,
      CupertinoDatePickerMode mode = CupertinoDatePickerMode.dateAndTime,
      dynamic onDateTimeChanged,
      DateTime initialDateTime,
      DateTime minimumDate,
      DateTime maximumDate,
      int minimumYear = 1,
      int maximumYear,
      int minuteInterval = 1,
      bool use24hFormat = false,
      Color backgroundColor,
      }
    ) =>
      CupertinoDatePicker(
      key: key,
      mode: mode,
      onDateTimeChanged: createValueChangedGenericClosure<DateTime>(_cupertinoDatePicker.buildOwner, onDateTimeChanged),
      initialDateTime: initialDateTime,
      minimumDate: minimumDate,
      maximumDate: maximumDate,
      minimumYear: minimumYear,
      maximumYear: maximumYear,
      minuteInterval: minuteInterval,
      use24hFormat: use24hFormat,
      backgroundColor: backgroundColor,
    ),
);
var _cupertinoTimerPickerMode = MXFunctionInvoke(
    "CupertinoTimerPickerMode",
    ({Map args}) => MXCupertinoTimerPickerMode.parse(args),
  );
var _cupertinoTimerPicker = MXFunctionInvoke(
    "CupertinoTimerPicker",
    (
      {
      Key key,
      CupertinoTimerPickerMode mode = CupertinoTimerPickerMode.hms,
      Duration initialTimerDuration,
      int minuteInterval = 1,
      int secondInterval = 1,
      AlignmentGeometry alignment,
      Color backgroundColor,
      dynamic onTimerDurationChanged,
      }
    ) =>
      CupertinoTimerPicker(
      key: key,
      mode: mode,
      initialTimerDuration: initialTimerDuration,
      minuteInterval: minuteInterval,
      secondInterval: secondInterval,
      alignment: alignment,
      backgroundColor: backgroundColor,
      onTimerDurationChanged: createValueChangedGenericClosure<Duration>(_cupertinoTimerPicker.buildOwner, onTimerDurationChanged),
    ),
);
var _datePickerDateTimeOrder = MXFunctionInvoke(
    "DatePickerDateTimeOrder",
    ({Map args}) => MXDatePickerDateTimeOrder.parse(args),
  );
var _datePickerDateOrder = MXFunctionInvoke(
    "DatePickerDateOrder",
    ({Map args}) => MXDatePickerDateOrder.parse(args),
  );
var _cupertinoLocalizations = MXFunctionInvoke(
    "CupertinoLocalizations",
    (
    ) =>
      CupertinoLocalizations(
    ),
);
var _defaultCupertinoLocalizations = MXFunctionInvoke(
    "DefaultCupertinoLocalizations",
    (
    ) =>
      DefaultCupertinoLocalizations(
    ),
);
class MXCupertinoDatePickerMode {
  static Map str2VMap = {
    'CupertinoDatePickerMode.time': CupertinoDatePickerMode.time,
    'CupertinoDatePickerMode.date': CupertinoDatePickerMode.date,
    'CupertinoDatePickerMode.dateAndTime': CupertinoDatePickerMode.dateAndTime,
  };
  static CupertinoDatePickerMode parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXCupertinoTimerPickerMode {
  static Map str2VMap = {
    'CupertinoTimerPickerMode.hm': CupertinoTimerPickerMode.hm,
    'CupertinoTimerPickerMode.ms': CupertinoTimerPickerMode.ms,
    'CupertinoTimerPickerMode.hms': CupertinoTimerPickerMode.hms,
  };
  static CupertinoTimerPickerMode parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
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
