//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/automatic_keep_alive.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/notification_listener.dart';
import 'package:flutter/src/widgets/sliver.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAutomaticKeepAliveSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_automaticKeepAlive.funName] = _automaticKeepAlive;
  m[_keepAliveNotification.funName] = _keepAliveNotification;
  m[_keepAliveHandle.funName] = _keepAliveHandle;
  return m;
}

var _automaticKeepAlive = MXFunctionInvoke(
  "AutomaticKeepAlive",
  ({
    Key key,
    Widget child,
  }) =>
      AutomaticKeepAlive(
    key: key,
    child: child,
  ),
  [
    "key",
    "child",
  ],
);
var _keepAliveNotification = MXFunctionInvoke(
  "KeepAliveNotification",
  ({
    dynamic handle,
  }) =>
      KeepAliveNotification(
    handle,
  ),
  [
    "handle",
  ],
);
var _keepAliveHandle = MXFunctionInvoke(
  "KeepAliveHandle",
  () => KeepAliveHandle(),
  [],
);
