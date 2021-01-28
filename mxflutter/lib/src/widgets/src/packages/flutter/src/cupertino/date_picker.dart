//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/date_picker.dart';
import 'dart:math' as math;
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/localizations.dart';
import 'package:flutter/src/cupertino/picker.dart';
import 'package:flutter/src/cupertino/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDatePickerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoDatePickerMode.funName] = _cupertinoDatePickerMode;
  m[_cupertinoDatePicker.funName] = _cupertinoDatePicker;
  m[_cupertinoTimerPickerMode.funName] = _cupertinoTimerPickerMode;
  m[_cupertinoTimerPicker.funName] = _cupertinoTimerPicker;
  return m;
}

var _cupertinoDatePickerMode = MXFunctionInvoke("CupertinoDatePickerMode",
    ({String name, int index}) => MXCupertinoDatePickerMode.parse(name, index), ["name", "index"]);
var _cupertinoDatePicker = MXFunctionInvoke(
  "CupertinoDatePicker",
  ({
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
  }) =>
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
  [
    "key",
    "mode",
    "onDateTimeChanged",
    "initialDateTime",
    "minimumDate",
    "maximumDate",
    "minimumYear",
    "maximumYear",
    "minuteInterval",
    "use24hFormat",
    "backgroundColor",
  ],
);
var _cupertinoTimerPickerMode = MXFunctionInvoke("CupertinoTimerPickerMode",
    ({String name, int index}) => MXCupertinoTimerPickerMode.parse(name, index), ["name", "index"]);
var _cupertinoTimerPicker = MXFunctionInvoke(
  "CupertinoTimerPicker",
  ({
    Key key,
    CupertinoTimerPickerMode mode = CupertinoTimerPickerMode.hms,
    Duration initialTimerDuration = Duration.zero,
    int minuteInterval = 1,
    int secondInterval = 1,
    AlignmentGeometry alignment = Alignment.center,
    Color backgroundColor,
    dynamic onTimerDurationChanged,
  }) =>
      CupertinoTimerPicker(
    key: key,
    mode: mode,
    initialTimerDuration: initialTimerDuration,
    minuteInterval: minuteInterval,
    secondInterval: secondInterval,
    alignment: alignment,
    backgroundColor: backgroundColor,
    onTimerDurationChanged:
        createValueChangedGenericClosure<Duration>(_cupertinoTimerPicker.buildOwner, onTimerDurationChanged),
  ),
  [
    "key",
    "mode",
    "initialTimerDuration",
    "minuteInterval",
    "secondInterval",
    "alignment",
    "backgroundColor",
    "onTimerDurationChanged",
  ],
);

class MXCupertinoDatePickerMode {
  static CupertinoDatePickerMode parse(String name, int index) {
    switch (name) {
      case 'CupertinoDatePickerMode.time':
        return CupertinoDatePickerMode.time;
      case 'CupertinoDatePickerMode.date':
        return CupertinoDatePickerMode.date;
      case 'CupertinoDatePickerMode.dateAndTime':
        return CupertinoDatePickerMode.dateAndTime;
    }
    return null;
  }
}

class MXCupertinoTimerPickerMode {
  static CupertinoTimerPickerMode parse(String name, int index) {
    switch (name) {
      case 'CupertinoTimerPickerMode.hm':
        return CupertinoTimerPickerMode.hm;
      case 'CupertinoTimerPickerMode.ms':
        return CupertinoTimerPickerMode.ms;
      case 'CupertinoTimerPickerMode.hms':
        return CupertinoTimerPickerMode.hms;
    }
    return null;
  }
}
