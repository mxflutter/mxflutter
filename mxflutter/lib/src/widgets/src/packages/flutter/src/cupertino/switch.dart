//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/cupertino/switch.dart';


class MXProxySwitch {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[cupertinoSwitch.funName] = cupertinoSwitch;
    return m;
  }
  static var cupertinoSwitch = MXFunctionInvoke(
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
}
