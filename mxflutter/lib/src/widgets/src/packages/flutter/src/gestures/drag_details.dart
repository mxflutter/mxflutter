//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/gestures/drag_details.dart';


class MXProxyDragDetails {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[dragDownDetails.funName] = dragDownDetails;
    m[dragStartDetails.funName] = dragStartDetails;
    m[dragUpdateDetails.funName] = dragUpdateDetails;
    m[dragEndDetails.funName] = dragEndDetails;
    return m;
  }
  static var dragDownDetails = MXFunctionInvoke(
      "DragDownDetails",
      ({
        Offset globalPosition,
        Offset localPosition,
      }) =>
        DragDownDetails(
        globalPosition: globalPosition,
        localPosition: localPosition,
      ),
    );
  static var dragStartDetails = MXFunctionInvoke(
      "DragStartDetails",
      ({
        Duration sourceTimeStamp,
        Offset globalPosition,
        Offset localPosition,
      }) =>
        DragStartDetails(
        sourceTimeStamp: sourceTimeStamp,
        globalPosition: globalPosition,
        localPosition: localPosition,
      ),
    );
  static var dragUpdateDetails = MXFunctionInvoke(
      "DragUpdateDetails",
      ({
        Duration sourceTimeStamp,
        Offset delta,
        dynamic primaryDelta,
        Offset globalPosition,
        Offset localPosition,
      }) =>
        DragUpdateDetails(
        sourceTimeStamp: sourceTimeStamp,
        delta: delta,
        primaryDelta: primaryDelta?.toDouble(),
        globalPosition: globalPosition,
        localPosition: localPosition,
      ),
    );
  static var dragEndDetails = MXFunctionInvoke(
      "DragEndDetails",
      ({
        Velocity velocity,
        dynamic primaryVelocity,
      }) =>
        DragEndDetails(
        velocity: velocity,
        primaryVelocity: primaryVelocity?.toDouble(),
      ),
    );
}
