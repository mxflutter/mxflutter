//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/modal_barrier.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/gesture_detector.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/transitions.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerModalBarrierSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_modalBarrier.funName] = _modalBarrier;
  m[_animatedModalBarrier.funName] = _animatedModalBarrier;
  return m;
}

var _modalBarrier = MXFunctionInvoke(
  "ModalBarrier",
  ({
    Key key,
    Color color,
    bool dismissible = true,
    String semanticsLabel,
    bool barrierSemanticsDismissible = true,
  }) =>
      ModalBarrier(
    key: key,
    color: color,
    dismissible: dismissible,
    semanticsLabel: semanticsLabel,
    barrierSemanticsDismissible: barrierSemanticsDismissible,
  ),
  [
    "key",
    "color",
    "dismissible",
    "semanticsLabel",
    "barrierSemanticsDismissible",
  ],
);
var _animatedModalBarrier = MXFunctionInvoke(
  "AnimatedModalBarrier",
  ({
    Key key,
    Animation<Color> color,
    bool dismissible = true,
    String semanticsLabel,
    bool barrierSemanticsDismissible,
  }) =>
      AnimatedModalBarrier(
    key: key,
    color: color,
    dismissible: dismissible,
    semanticsLabel: semanticsLabel,
    barrierSemanticsDismissible: barrierSemanticsDismissible,
  ),
  [
    "key",
    "color",
    "dismissible",
    "semanticsLabel",
    "barrierSemanticsDismissible",
  ],
);
