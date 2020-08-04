//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/cupertino/text_selection.dart';


class MXProxyTextSelection {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[cupertinoTextSelectionToolbar_.funName] = cupertinoTextSelectionToolbar_;
    return m;
  }
  static var cupertinoTextSelectionToolbar_ = MXFunctionInvoke(
    "cupertinoTextSelectionToolbar.",
      ({
        Key key,
        dynamic barTopY,
        dynamic arrowTipX,
        bool isArrowPointingDown,
        Widget child,
      }) =>
        CupertinoTextSelectionToolbar.(
        key: key,
        barTopY: barTopY?.toDouble(),
        arrowTipX: arrowTipX?.toDouble(),
        isArrowPointingDown: isArrowPointingDown,
        child: child,
      ),
    );
}
