//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/pickers/date_picker_common.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDatePickerCommonSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_datePickerEntryMode.funName] = _datePickerEntryMode;
  m[_datePickerMode.funName] = _datePickerMode;
  m[_dateTimeRange.funName] = _dateTimeRange;
  return m;
}

var _datePickerEntryMode = MXFunctionInvoke(
    "DatePickerEntryMode", ({String name, int index}) => MXDatePickerEntryMode.parse(name, index), ["name", "index"]);
var _datePickerMode = MXFunctionInvoke(
    "DatePickerMode", ({String name, int index}) => MXDatePickerMode.parse(name, index), ["name", "index"]);
var _dateTimeRange = MXFunctionInvoke(
  "DateTimeRange",
  ({
    DateTime start,
    DateTime end,
  }) =>
      DateTimeRange(
    start: start,
    end: end,
  ),
  [
    "start",
    "end",
  ],
);

class MXDatePickerEntryMode {
  static DatePickerEntryMode parse(String name, int index) {
    switch (name) {
      case 'DatePickerEntryMode.calendar':
        return DatePickerEntryMode.calendar;
      case 'DatePickerEntryMode.input':
        return DatePickerEntryMode.input;
    }
    return null;
  }
}

class MXDatePickerMode {
  static DatePickerMode parse(String name, int index) {
    switch (name) {
      case 'DatePickerMode.day':
        return DatePickerMode.day;
      case 'DatePickerMode.year':
        return DatePickerMode.year;
    }
    return null;
  }
}
