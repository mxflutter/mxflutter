//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/pickers/pickers.dart';
import 'package:flutter/src/material/pickers/calendar_date_picker.dart';
import 'package:flutter/src/material/pickers/date_picker_common.dart';
import 'package:flutter/src/material/pickers/date_picker_deprecated.dart';
import 'package:flutter/src/material/pickers/date_picker_dialog.dart';
import 'package:flutter/src/material/pickers/date_range_picker_dialog.dart';
import 'package:flutter/src/material/pickers/input_date_picker.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPickersSeries() {
  var m = <String, MXFunctionInvoke>{};
  return m;
}
