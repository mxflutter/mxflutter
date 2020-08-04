//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/pickers/calendar_date_picker.dart';


class MXProxyCalendarDatePicker {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[calendarDatePicker.funName] = calendarDatePicker;
    return m;
  }
  static var calendarDatePicker = MXFunctionInvoke(
      "CalendarDatePicker",
      ({
        Key key,
        DateTime initialDate,
        DateTime firstDate,
        DateTime lastDate,
        dynamic onDateChanged,
        dynamic onDisplayedMonthChanged,
        DatePickerMode initialCalendarMode = DatePickerMode.day,
        dynamic selectableDayPredicate,
      }) =>
        CalendarDatePicker(
        key: key,
        initialDate: initialDate,
        firstDate: firstDate,
        lastDate: lastDate,
        onDateChanged: createValueChangedGenericClosure<DateTime>(calendarDatePicker.buildOwner, onDateChanged),
        onDisplayedMonthChanged: createValueChangedGenericClosure<DateTime>(calendarDatePicker.buildOwner, onDisplayedMonthChanged),
        initialCalendarMode: initialCalendarMode,
        selectableDayPredicate: createGenericValueGenericClosure<bool, DateTime>(calendarDatePicker.buildOwner, selectableDayPredicate),
      ),
    );
}
