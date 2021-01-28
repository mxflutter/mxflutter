//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/size_changed_layout_notifier.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/notification_listener.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSizeChangedLayoutNotifierSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_sizeChangedLayoutNotification.funName] = _sizeChangedLayoutNotification;
  m[_sizeChangedLayoutNotifier.funName] = _sizeChangedLayoutNotifier;
  return m;
}

var _sizeChangedLayoutNotification = MXFunctionInvoke(
  "SizeChangedLayoutNotification",
  () => SizeChangedLayoutNotification(),
  [],
);
var _sizeChangedLayoutNotifier = MXFunctionInvoke(
  "SizeChangedLayoutNotifier",
  ({
    Key key,
    Widget child,
  }) =>
      SizeChangedLayoutNotifier(
    key: key,
    child: child,
  ),
  [
    "key",
    "child",
  ],
);
