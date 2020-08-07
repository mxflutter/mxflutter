//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/toggleable.dart';
import 'package:flutter/animation.dart' ;
import 'package:flutter/foundation.dart' ;
import 'package:flutter/gestures.dart' ;
import 'package:flutter/rendering.dart' ;
import 'package:flutter/scheduler.dart' ;
import 'package:flutter/src/material/constants.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerToggleableSeries() {
  var m = <String, MXFunctionInvoke>{};
  return m;
}
