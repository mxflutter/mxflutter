//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/pickers/date_picker_header.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDatePickerHeaderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_datePickerHeader.funName] = _datePickerHeader;
  return m;
}

var _datePickerHeader = MXFunctionInvoke(
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
    onIconPressed: createVoidCallbackClosure(_datePickerHeader.buildOwner, onIconPressed),
  ),
  [
    "key",
    "helpText",
    "titleText",
    "titleSemanticsLabel",
    "titleStyle",
    "orientation",
    "isShort",
    "icon",
    "iconTooltip",
    "onIconPressed",
  ],
);
