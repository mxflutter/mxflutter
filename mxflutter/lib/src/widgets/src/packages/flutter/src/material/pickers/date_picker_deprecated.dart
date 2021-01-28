//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/pickers/date_picker_deprecated.dart';
import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/pickers/date_picker_common.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDatePickerDeprecatedSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_dayPicker.funName] = _dayPicker;
  m[_monthPicker.funName] = _monthPicker;
  m[_yearPicker.funName] = _yearPicker;
  return m;
}

var _dayPicker = MXFunctionInvoke(
  "DayPicker",
  ({
    Key key,
    DateTime selectedDate,
    DateTime currentDate,
    dynamic onChanged,
    DateTime firstDate,
    DateTime lastDate,
    DateTime displayedMonth,
    dynamic selectableDayPredicate,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      DayPicker(
    key: key,
    selectedDate: selectedDate,
    currentDate: currentDate,
    onChanged: createValueChangedGenericClosure<DateTime>(_dayPicker.buildOwner, onChanged),
    firstDate: firstDate,
    lastDate: lastDate,
    displayedMonth: displayedMonth,
    selectableDayPredicate: null,
    dragStartBehavior: dragStartBehavior,
  ),
  [
    "key",
    "selectedDate",
    "currentDate",
    "onChanged",
    "firstDate",
    "lastDate",
    "displayedMonth",
    "selectableDayPredicate",
    "dragStartBehavior",
  ],
);
var _monthPicker = MXFunctionInvoke(
  "MonthPicker",
  ({
    Key key,
    DateTime selectedDate,
    dynamic onChanged,
    DateTime firstDate,
    DateTime lastDate,
    dynamic selectableDayPredicate,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      MonthPicker(
    key: key,
    selectedDate: selectedDate,
    onChanged: createValueChangedGenericClosure<DateTime>(_monthPicker.buildOwner, onChanged),
    firstDate: firstDate,
    lastDate: lastDate,
    selectableDayPredicate: null,
    dragStartBehavior: dragStartBehavior,
  ),
  [
    "key",
    "selectedDate",
    "onChanged",
    "firstDate",
    "lastDate",
    "selectableDayPredicate",
    "dragStartBehavior",
  ],
);
var _yearPicker = MXFunctionInvoke(
  "YearPicker",
  ({
    Key key,
    DateTime selectedDate,
    dynamic onChanged,
    DateTime firstDate,
    DateTime lastDate,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      YearPicker(
    key: key,
    selectedDate: selectedDate,
    onChanged: createValueChangedGenericClosure<DateTime>(_yearPicker.buildOwner, onChanged),
    firstDate: firstDate,
    lastDate: lastDate,
    dragStartBehavior: dragStartBehavior,
  ),
  [
    "key",
    "selectedDate",
    "onChanged",
    "firstDate",
    "lastDate",
    "dragStartBehavior",
  ],
);
