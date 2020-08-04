//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/switch.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/thumb_painter.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSwitchSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[cupertinoSwitch.funName] = cupertinoSwitch;
  return m;
}
var cupertinoSwitch = MXFunctionInvoke(
    "CupertinoSwitch",
    ({
      Key key,
      bool value,
      dynamic onChanged,
      Color activeColor,
      Color trackColor,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    }) =>
      CupertinoSwitch(
      key: key,
      value: value,
      onChanged: createValueChangedGenericClosure<bool>(cupertinoSwitch.buildOwner, onChanged),
      activeColor: activeColor,
      trackColor: trackColor,
      dragStartBehavior: dragStartBehavior,
    ),
);
