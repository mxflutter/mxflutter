//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[animatedList.funName] = animatedList;
  m[animatedListState.funName] = animatedListState;
  m[sliverAnimatedList.funName] = sliverAnimatedList;
  m[sliverAnimatedListState.funName] = sliverAnimatedListState;
  return m;
}
var animatedList = MXFunctionInvoke(
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
      itemBuilder: itemBuilder,
      initialItemCount: initialItemCount,
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: physics,
      shrinkWrap: shrinkWrap,
      padding: padding,
    ),
);
var animatedListState = MXFunctionInvoke(
    "AnimatedListState",
    ({
    }) =>
      AnimatedListState(
    ),
);
var sliverAnimatedList = MXFunctionInvoke(
    "SliverAnimatedList",
    ({
      Key key,
      dynamic itemBuilder,
      int initialItemCount = 0,
    }) =>
      SliverAnimatedList(
      key: key,
      itemBuilder: itemBuilder,
      initialItemCount: initialItemCount,
    ),
);
var sliverAnimatedListState = MXFunctionInvoke(
    "SliverAnimatedListState",
    ({
    }) =>
      SliverAnimatedListState(
    ),
);
