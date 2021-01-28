//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/animated_list.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scroll_view.dart';
import 'package:flutter/src/widgets/sliver.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAnimatedListSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_animatedList.funName] = _animatedList;
  m[_animatedListState.funName] = _animatedListState;
  m[_sliverAnimatedList.funName] = _sliverAnimatedList;
  m[_sliverAnimatedListState.funName] = _sliverAnimatedListState;
  return m;
}

var _animatedList = MXFunctionInvoke(
  "AnimatedList",
  ({
    Key key,
    dynamic itemBuilder,
    int initialItemCount = 0,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController controller,
    bool primary,
    ScrollPhysics physics,
    bool shrinkWrap = false,
    EdgeInsetsGeometry padding,
  }) =>
      AnimatedList(
    key: key,
    itemBuilder: null,
    initialItemCount: initialItemCount,
    scrollDirection: scrollDirection,
    reverse: reverse,
    controller: controller,
    primary: primary,
    physics: physics,
    shrinkWrap: shrinkWrap,
    padding: padding,
  ),
  [
    "key",
    "itemBuilder",
    "initialItemCount",
    "scrollDirection",
    "reverse",
    "controller",
    "primary",
    "physics",
    "shrinkWrap",
    "padding",
  ],
);
var _animatedListState = MXFunctionInvoke(
  "AnimatedListState",
  () => AnimatedListState(),
  [],
);
var _sliverAnimatedList = MXFunctionInvoke(
  "SliverAnimatedList",
  ({
    Key key,
    dynamic itemBuilder,
    int initialItemCount = 0,
  }) =>
      SliverAnimatedList(
    key: key,
    itemBuilder: null,
    initialItemCount: initialItemCount,
  ),
  [
    "key",
    "itemBuilder",
    "initialItemCount",
  ],
);
var _sliverAnimatedListState = MXFunctionInvoke(
  "SliverAnimatedListState",
  () => SliverAnimatedListState(),
  [],
);
