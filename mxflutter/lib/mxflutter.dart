//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.
library mxflutter;
import 'dart:async';
import 'package:flutter/services.dart';

export 'src/mx_js_framework.dart';
export 'src/mx_js_flutter_common.dart';


class Mxflutter {
  static const MethodChannel _channel =
      const MethodChannel('mxflutter');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
