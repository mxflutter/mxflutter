//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/context_menu.dart';
import 'dart:math' as math;
import 'dart:ui' as ui;
import 'package:flutter/gestures.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerContextMenuSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoContextMenu.funName] = _cupertinoContextMenu;
  return m;
}

var _cupertinoContextMenu = MXFunctionInvoke(
  "CupertinoContextMenu",
  ({
    Key key,
    dynamic actions,
    Widget child,
    dynamic previewBuilder,
  }) =>
      CupertinoContextMenu(
    key: key,
    actions: toListT<Widget>(actions),
    child: child,
    previewBuilder: null,
  ),
  [
    "key",
    "actions",
    "child",
    "previewBuilder",
  ],
);
