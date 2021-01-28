//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/pickers/calendar_date_picker.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/divider.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/pickers/date_picker_common.dart';
import 'package:flutter/src/material/pickers/date_utils.dart' as utils;

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerCalendarDatePickerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_calendarDatePicker.funName] = _calendarDatePicker;
  return m;
}

var _calendarDatePicker = MXFunctionInvoke(
  "CalendarDatePicker",
  ({
    Key key,
    DateTime initialDate,
    DateTime firstDate,
    DateTime lastDate,
    DateTime currentDate,
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
    currentDate: currentDate,
    onDateChanged: createValueChangedGenericClosure<DateTime>(_calendarDatePicker.buildOwner, onDateChanged),
    onDisplayedMonthChanged:
        createValueChangedGenericClosure<DateTime>(_calendarDatePicker.buildOwner, onDisplayedMonthChanged),
    initialCalendarMode: initialCalendarMode,
    selectableDayPredicate: null,
  ),
  [
    "key",
    "initialDate",
    "firstDate",
    "lastDate",
    "currentDate",
    "onDateChanged",
    "onDisplayedMonthChanged",
    "initialCalendarMode",
    "selectableDayPredicate",
  ],
);
