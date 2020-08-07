//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/reorderable_list.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/time.dart';
import 'package:flutter/src/material/typography.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerMaterialLocalizationsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_defaultMaterialLocalizations.funName] = _defaultMaterialLocalizations;
  return m;
}
var _defaultMaterialLocalizations = MXFunctionInvoke(
    "DefaultMaterialLocalizations",
    (
    ) =>
      DefaultMaterialLocalizations(
    ),
);
