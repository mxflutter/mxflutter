//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/pickers/calendar_date_range_picker.dart';
import 'dart:math' as math;
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/divider.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/pickers/date_utils.dart' as utils;

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerCalendarDateRangePickerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_calendarDateRangePicker.funName] = _calendarDateRangePicker;
  return m;
}

var _calendarDateRangePicker = MXFunctionInvoke(
  "CalendarDateRangePicker",
  ({
    Key key,
    DateTime initialStartDate,
    DateTime initialEndDate,
    DateTime firstDate,
    DateTime lastDate,
    DateTime currentDate,
    dynamic onStartDateChanged,
    dynamic onEndDateChanged,
  }) =>
      CalendarDateRangePicker(
    key: key,
    initialStartDate: initialStartDate,
    initialEndDate: initialEndDate,
    firstDate: firstDate,
    lastDate: lastDate,
    currentDate: currentDate,
    onStartDateChanged:
        createValueChangedGenericClosure<DateTime>(_calendarDateRangePicker.buildOwner, onStartDateChanged),
    onEndDateChanged: createValueChangedGenericClosure<DateTime>(_calendarDateRangePicker.buildOwner, onEndDateChanged),
  ),
  [
    "key",
    "initialStartDate",
    "initialEndDate",
    "firstDate",
    "lastDate",
    "currentDate",
    "onStartDateChanged",
    "onEndDateChanged",
  ],
);
