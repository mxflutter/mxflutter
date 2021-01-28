//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/debug.dart';
import 'dart:io';
import 'dart:ui';
import 'package:flutter/foundation.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDebugSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_imageSizeInfo.funName] = _imageSizeInfo;
  return m;
}

var _imageSizeInfo = MXFunctionInvoke(
  "ImageSizeInfo",
  ({
    String source,
    Size displaySize,
    Size imageSize,
  }) =>
      ImageSizeInfo(
    source: source,
    displaySize: displaySize,
    imageSize: imageSize,
  ),
  [
    "source",
    "displaySize",
    "imageSize",
  ],
);
