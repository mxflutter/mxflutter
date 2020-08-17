//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/notification_listener.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerNotificationListenerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_notificationListener.funName] = _notificationListener;
  m[_layoutChangedNotification.funName] = _layoutChangedNotification;
  return m;
}

var _notificationListener = MXFunctionInvoke(
  "NotificationListener",
  ({
    Key key,
    Widget child,
    dynamic onNotification,
  }) =>
      NotificationListener(
    key: key,
    child: child,
    onNotification: null,
  ),
  [
    "key",
    "child",
    "onNotification",
  ],
);
var _layoutChangedNotification = MXFunctionInvoke(
  "LayoutChangedNotification",
  () => LayoutChangedNotification(),
  [],
);
