//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/_network_image_io.dart';
import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/binding.dart';
import 'package:flutter/src/painting/debug.dart';
import 'package:flutter/src/painting/image_provider.dart' as image_provider;
import 'package:flutter/src/painting/image_stream.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerNetworkImageIoSeries() {
  var m = <String, MXFunctionInvoke>{};
  return m;
}
