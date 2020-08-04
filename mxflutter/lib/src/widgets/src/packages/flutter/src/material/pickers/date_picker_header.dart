//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/pickers/date_picker_header.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDatePickerHeaderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[datePickerHeader.funName] = datePickerHeader;
  return m;
}
var datePickerHeader = MXFunctionInvoke(
    "DatePickerHeader",
    ({
      Key key,
      String helpText,
      String titleText,
      String titleSemanticsLabel,
      TextStyle titleStyle,
      Orientation orientation,
      bool isShort = false,
      IconData icon,
      String iconTooltip,
      dynamic onIconPressed,
    }) =>
      DatePickerHeader(
      key: key,
      helpText: helpText,
      titleText: titleText,
      titleSemanticsLabel: titleSemanticsLabel,
      titleStyle: titleStyle,
      orientation: orientation,
      isShort: isShort,
      icon: icon,
      iconTooltip: iconTooltip,
      onIconPressed: createVoidCallbackClosure(datePickerHeader.buildOwner, onIconPressed),
    ),
);
