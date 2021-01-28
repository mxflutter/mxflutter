//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/font_loader.dart';
import 'dart:async';
import 'dart:typed_data';
import 'dart:ui';
import 'package:flutter/foundation.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerFontLoaderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_fontLoader.funName] = _fontLoader;
  return m;
}

var _fontLoader = MXFunctionInvoke(
  "FontLoader",
  ({
    String family,
  }) =>
      FontLoader(
    family,
  ),
  [
    "family",
  ],
);
