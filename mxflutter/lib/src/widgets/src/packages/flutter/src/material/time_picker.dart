//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/time_picker.dart';
import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_bar.dart';
import 'package:flutter/src/material/button_theme.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/curves.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/dialog.dart';
import 'package:flutter/src/material/feedback.dart';
import 'package:flutter/src/material/flat_button.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/input_border.dart';
import 'package:flutter/src/material/input_decorator.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/text_form_field.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/material/time.dart';
import 'package:flutter/src/material/time_picker_theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTimePickerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_timePickerEntryMode.funName] = _timePickerEntryMode;
  return m;
}

var _timePickerEntryMode = MXFunctionInvoke(
    "TimePickerEntryMode", ({String name, int index}) => MXTimePickerEntryMode.parse(name, index), ["name", "index"]);

class MXTimePickerEntryMode {
  static TimePickerEntryMode parse(String name, int index) {
    switch (name) {
      case 'TimePickerEntryMode.dial':
        return TimePickerEntryMode.dial;
      case 'TimePickerEntryMode.input':
        return TimePickerEntryMode.input;
    }
    return null;
  }
}
