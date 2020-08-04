//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/pickers/date_picker_deprecated.dart';


class MXProxyDatePickerDeprecated {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[dayPicker.funName] = dayPicker;
    m[monthPicker.funName] = monthPicker;
    m[yearPicker.funName] = yearPicker;
    return m;
  }
  static var dayPicker = MXFunctionInvoke(
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
        onChanged: createValueChangedGenericClosure<DateTime>(dayPicker.buildOwner, onChanged),
        firstDate: firstDate,
        lastDate: lastDate,
        displayedMonth: displayedMonth,
        selectableDayPredicate: createGenericValueGenericClosure<bool, DateTime>(dayPicker.buildOwner, selectableDayPredicate),
        dragStartBehavior: dragStartBehavior,
      ),
    );
  static var monthPicker = MXFunctionInvoke(
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
        onChanged: createValueChangedGenericClosure<DateTime>(monthPicker.buildOwner, onChanged),
        firstDate: firstDate,
        lastDate: lastDate,
        selectableDayPredicate: createGenericValueGenericClosure<bool, DateTime>(monthPicker.buildOwner, selectableDayPredicate),
        dragStartBehavior: dragStartBehavior,
      ),
    );
  static var yearPicker = MXFunctionInvoke(
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
        onChanged: createValueChangedGenericClosure<DateTime>(yearPicker.buildOwner, onChanged),
        firstDate: firstDate,
        lastDate: lastDate,
        dragStartBehavior: dragStartBehavior,
      ),
    );
}
