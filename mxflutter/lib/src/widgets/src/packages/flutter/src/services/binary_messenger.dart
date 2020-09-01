//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/binary_messenger.dart';
import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/binding.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBinaryMessengerSeries() {
  var m = <String, MXFunctionInvoke>{};
  return m;
}
