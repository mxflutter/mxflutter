//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/system_channels.dart';
import 'dart:ui';
import 'package:flutter/src/services/message_codecs.dart';
import 'package:flutter/src/services/platform_channel.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSystemChannelsSeries() {
  var m = <String, MXFunctionInvoke>{};
  return m;
}
