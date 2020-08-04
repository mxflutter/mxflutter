//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/pickers/date_picker_common.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDatePickerCommonSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[datePickerEntryMode.funName] = datePickerEntryMode;
  m[datePickerMode.funName] = datePickerMode;
  return m;
}
var datePickerEntryMode = MXFunctionInvoke(
    "DatePickerEntryMode",
    ({Map args}) => MXDatePickerEntryMode.parse(args),
  );
var datePickerMode = MXFunctionInvoke(
    "DatePickerMode",
    ({Map args}) => MXDatePickerMode.parse(args),
  );
class MXDatePickerEntryMode {
  static Map str2VMap = {
    'DatePickerEntryMode.calendar': DatePickerEntryMode.calendar,
    'DatePickerEntryMode.input': DatePickerEntryMode.input,
  };
  static DatePickerEntryMode parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXDatePickerMode {
  static Map str2VMap = {
    'DatePickerMode.day': DatePickerMode.day,
    'DatePickerMode.year': DatePickerMode.year,
  };
  static DatePickerMode parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
