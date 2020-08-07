//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/decoration.dart';
import 'package:flutter/foundation.dart' ;
import 'package:flutter/src/painting/basic_types.dart' ;
import 'package:flutter/src/painting/edge_insets.dart' ;
import 'package:flutter/src/painting/image_provider.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDecorationSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_decoration.funName] = _decoration;
  m[_boxPainter.funName] = _boxPainter;
  return m;
}
var _decoration = MXFunctionInvoke(
    "Decoration",
    (
    ) =>
      Decoration(
    ),
);
var _boxPainter = MXFunctionInvoke(
    "BoxPainter",
    (
      {
      dynamic onChanged,
      }
    ) =>
      BoxPainter(
      onChanged: createVoidCallbackClosure(_boxPainter.buildOwner, onChanged),
    ),
);
