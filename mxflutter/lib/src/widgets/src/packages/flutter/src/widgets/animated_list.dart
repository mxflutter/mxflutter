//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/animated_list.dart';


class MXProxyAnimatedList {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[animatedList.funName] = animatedList;
    m[animatedListState.funName] = animatedListState;
    m[sliverAnimatedList.funName] = sliverAnimatedList;
    m[sliverAnimatedListState.funName] = sliverAnimatedListState;
    return m;
  }
  static var animatedList = MXFunctionInvoke(
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
  static var animatedListState = MXFunctionInvoke(
      "AnimatedListState",
      ({
      }) =>
        AnimatedListState(
      ),
    );
  static var sliverAnimatedList = MXFunctionInvoke(
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
  static var sliverAnimatedListState = MXFunctionInvoke(
      "SliverAnimatedListState",
      ({
      }) =>
        SliverAnimatedListState(
      ),
    );
}
