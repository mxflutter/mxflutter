//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/animated_size.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
// MX Modified begin
import 'package:mxflutter/src/mx_mixin.dart';
// MX Modified end

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAnimatedSizeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_animatedSize.funName] = _animatedSize;
  return m;
}

// MX modified end
var _animatedSize = MXFunctionInvoke(
  "AnimatedSize",
  ({
    Key key,
    Widget child,
    AlignmentGeometry alignment = Alignment.center,
    Curve curve = Curves.linear,
    Duration duration,
    Duration reverseDuration,
    TickerProvider vsync,
  }) {
    var tickVsync;
    if (_animatedSize.buildOwner.state is MXSingleTickerMixinWidgetState) {
      tickVsync = _animatedSize.buildOwner.state as MXSingleTickerMixinWidgetState;
    } else if (_animatedSize.buildOwner.state is MXTickerMixinWidgetState) {
      tickVsync = _animatedSize.buildOwner.state as MXTickerMixinWidgetState;
    } else if (_animatedSize.buildOwner.state is MXSingleTickerAndKeepAliveMixinWidgetState) {
      tickVsync = _animatedSize.buildOwner.state as MXSingleTickerAndKeepAliveMixinWidgetState;
    } else if (_animatedSize.buildOwner.state is MXTickerAndKeepAliveMixinWidgetState) {
      tickVsync = _animatedSize.buildOwner.state as MXTickerAndKeepAliveMixinWidgetState;
    }
    return AnimatedSize(
      key: key,
      child: child,
      alignment: alignment,
      curve: curve,
      duration: duration,
      reverseDuration: reverseDuration,
      vsync: tickVsync,
    );
  },
  [
    "key",
    "child",
    "alignment",
    "curve",
    "duration",
    "reverseDuration",
    "vsync",
  ],
);
// MX modified end
