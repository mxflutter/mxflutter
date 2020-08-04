//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/pickers/input_date_picker.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/input_border.dart';
import 'package:flutter/src/material/input_decorator.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/text_field.dart';
import 'package:flutter/src/material/text_form_field.dart';
import 'package:flutter/src/material/pickers/date_picker_common.dart';
import 'package:flutter/src/material/pickers/date_utils.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerInputDatePickerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[inputDatePickerFormField.funName] = inputDatePickerFormField;
  return m;
}
var inputDatePickerFormField = MXFunctionInvoke(
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
      onDateSubmitted: createValueChangedGenericClosure<DateTime>(inputDatePickerFormField.buildOwner, onDateSubmitted),
      onDateSaved: createValueChangedGenericClosure<DateTime>(inputDatePickerFormField.buildOwner, onDateSaved),
      selectableDayPredicate: createGenericValueGenericClosure<bool, DateTime>(inputDatePickerFormField.buildOwner, selectableDayPredicate),
      errorFormatText: errorFormatText,
      errorInvalidText: errorInvalidText,
      fieldHintText: fieldHintText,
      fieldLabelText: fieldLabelText,
      autofocus: autofocus,
    ),
);
