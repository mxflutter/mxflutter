//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/scroll_position.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/gesture_detector.dart';
import 'package:flutter/src/widgets/page_storage.dart';
import 'package:flutter/src/widgets/scroll_activity.dart';
import 'package:flutter/src/widgets/scroll_context.dart';
import 'package:flutter/src/widgets/scroll_metrics.dart';
import 'package:flutter/src/widgets/scroll_notification.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerScrollPositionSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_scrollPositionAlignmentPolicy.funName] = _scrollPositionAlignmentPolicy;
  return m;
}

var _scrollPositionAlignmentPolicy = MXFunctionInvoke("ScrollPositionAlignmentPolicy",
    ({String name, int index}) => MXScrollPositionAlignmentPolicy.parse(name, index), ["name", "index"]);

class MXScrollPositionAlignmentPolicy {
  static ScrollPositionAlignmentPolicy parse(String name, int index) {
    switch (name) {
      case 'ScrollPositionAlignmentPolicy.explicit':
        return ScrollPositionAlignmentPolicy.explicit;
      case 'ScrollPositionAlignmentPolicy.keepVisibleAtEnd':
        return ScrollPositionAlignmentPolicy.keepVisibleAtEnd;
      case 'ScrollPositionAlignmentPolicy.keepVisibleAtStart':
        return ScrollPositionAlignmentPolicy.keepVisibleAtStart;
    }
    return null;
  }
}
