//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/primary_scroll_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPrimaryScrollControllerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[primaryScrollController.funName] = primaryScrollController;
  m[primaryScrollController_none.funName] = primaryScrollController_none;
  return m;
}
var primaryScrollController = MXFunctionInvoke(
    "PrimaryScrollController",
    ({
      Key key,
      ScrollController controller,
      Widget child,
    }) =>
      PrimaryScrollController(
      key: key,
      controller: controller,
      child: child,
    ),
);
var primaryScrollController_none = MXFunctionInvoke(
  "primaryScrollController.none",
    ({
      Key key,
      Widget child,
    }) =>
      PrimaryScrollController.none(
      key: key,
      child: child,
    ),
);
