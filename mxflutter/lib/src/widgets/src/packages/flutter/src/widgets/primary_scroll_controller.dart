//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/primary_scroll_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPrimaryScrollControllerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_primaryScrollController.funName] = _primaryScrollController;
  m[_primaryScrollControllerNone.funName] = _primaryScrollControllerNone;
  return m;
}

var _primaryScrollController = MXFunctionInvoke(
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
  [
    "key",
    "controller",
    "child",
  ],
);
var _primaryScrollControllerNone = MXFunctionInvoke(
  "PrimaryScrollController.none",
  ({
    Key key,
    Widget child,
  }) =>
      PrimaryScrollController.none(
    key: key,
    child: child,
  ),
  [
    "key",
    "child",
  ],
);
