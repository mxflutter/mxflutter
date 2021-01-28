//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/pickers/date_picker_dialog.dart';
import 'dart:math' as math;
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_bar.dart';
import 'package:flutter/src/material/button_theme.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/dialog.dart';
import 'package:flutter/src/material/flat_button.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/pickers/calendar_date_picker.dart';
import 'package:flutter/src/material/pickers/date_picker_common.dart';
import 'package:flutter/src/material/pickers/date_picker_header.dart';
import 'package:flutter/src/material/pickers/date_utils.dart' as utils;
import 'package:flutter/src/material/pickers/input_date_picker.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDatePickerDialogSeries() {
  var m = <String, MXFunctionInvoke>{};
  return m;
}
