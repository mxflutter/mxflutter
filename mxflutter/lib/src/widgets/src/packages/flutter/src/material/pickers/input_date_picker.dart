//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/pickers/input_date_picker.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/input_border.dart';
import 'package:flutter/src/material/input_decorator.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/text_form_field.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/pickers/date_picker_common.dart';
import 'package:flutter/src/material/pickers/date_utils.dart' as utils;

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerInputDatePickerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_inputDatePickerFormField.funName] = _inputDatePickerFormField;
  return m;
}

var _inputDatePickerFormField = MXFunctionInvoke(
  "InputDatePickerFormField",
  ({
    Key key,
    DateTime initialDate,
    DateTime firstDate,
    DateTime lastDate,
    dynamic onDateSubmitted,
    dynamic onDateSaved,
    dynamic selectableDayPredicate,
    String errorFormatText,
    String errorInvalidText,
    String fieldHintText,
    String fieldLabelText,
    bool autofocus = false,
  }) =>
      InputDatePickerFormField(
    key: key,
    initialDate: initialDate,
    firstDate: firstDate,
    lastDate: lastDate,
    onDateSubmitted: createValueChangedGenericClosure<DateTime>(_inputDatePickerFormField.buildOwner, onDateSubmitted),
    onDateSaved: createValueChangedGenericClosure<DateTime>(_inputDatePickerFormField.buildOwner, onDateSaved),
    selectableDayPredicate: null,
    errorFormatText: errorFormatText,
    errorInvalidText: errorInvalidText,
    fieldHintText: fieldHintText,
    fieldLabelText: fieldLabelText,
    autofocus: autofocus,
  ),
  [
    "key",
    "initialDate",
    "firstDate",
    "lastDate",
    "onDateSubmitted",
    "onDateSaved",
    "selectableDayPredicate",
    "errorFormatText",
    "errorInvalidText",
    "fieldHintText",
    "fieldLabelText",
    "autofocus",
  ],
);
