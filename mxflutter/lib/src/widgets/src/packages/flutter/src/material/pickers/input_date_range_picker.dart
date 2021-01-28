//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/pickers/input_date_range_picker.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/input_border.dart';
import 'package:flutter/src/material/input_decorator.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/text_field.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/pickers/date_utils.dart' as utils;

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerInputDateRangePickerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_inputDateRangePicker.funName] = _inputDateRangePicker;
  m[_inputDateRangePickerState.funName] = _inputDateRangePickerState;
  return m;
}

var _inputDateRangePicker = MXFunctionInvoke(
  "InputDateRangePicker",
  ({
    Key key,
    DateTime initialStartDate,
    DateTime initialEndDate,
    DateTime firstDate,
    DateTime lastDate,
    dynamic onStartDateChanged,
    dynamic onEndDateChanged,
    String helpText,
    String errorFormatText,
    String errorInvalidText,
    String errorInvalidRangeText,
    String fieldStartHintText,
    String fieldEndHintText,
    String fieldStartLabelText,
    String fieldEndLabelText,
    bool autofocus = false,
    bool autovalidate = false,
  }) =>
      InputDateRangePicker(
    key: key,
    initialStartDate: initialStartDate,
    initialEndDate: initialEndDate,
    firstDate: firstDate,
    lastDate: lastDate,
    onStartDateChanged:
        createValueChangedGenericClosure<DateTime>(_inputDateRangePicker.buildOwner, onStartDateChanged),
    onEndDateChanged: createValueChangedGenericClosure<DateTime>(_inputDateRangePicker.buildOwner, onEndDateChanged),
    helpText: helpText,
    errorFormatText: errorFormatText,
    errorInvalidText: errorInvalidText,
    errorInvalidRangeText: errorInvalidRangeText,
    fieldStartHintText: fieldStartHintText,
    fieldEndHintText: fieldEndHintText,
    fieldStartLabelText: fieldStartLabelText,
    fieldEndLabelText: fieldEndLabelText,
    autofocus: autofocus,
    autovalidate: autovalidate,
  ),
  [
    "key",
    "initialStartDate",
    "initialEndDate",
    "firstDate",
    "lastDate",
    "onStartDateChanged",
    "onEndDateChanged",
    "helpText",
    "errorFormatText",
    "errorInvalidText",
    "errorInvalidRangeText",
    "fieldStartHintText",
    "fieldEndHintText",
    "fieldStartLabelText",
    "fieldEndLabelText",
    "autofocus",
    "autovalidate",
  ],
);
var _inputDateRangePickerState = MXFunctionInvoke(
  "InputDateRangePickerState",
  () => InputDateRangePickerState(),
  [],
);
