//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/draggable_scrollable_sheet.dart';


class MXProxyDraggableScrollableSheet {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[draggableScrollableSheet.funName] = draggableScrollableSheet;
    m[draggableScrollableNotification.funName] = draggableScrollableNotification;
    m[draggableScrollableActuator.funName] = draggableScrollableActuator;
    return m;
  }
  static var draggableScrollableSheet = MXFunctionInvoke(
      "DraggableScrollableSheet",
      ({
        Key key,
        dynamic initialChildSize = 0.5,
        dynamic minChildSize = 0.25,
        dynamic maxChildSize = 1.0,
        bool expand = true,
        dynamic builder,
      }) =>
        DraggableScrollableSheet(
        key: key,
        initialChildSize: initialChildSize?.toDouble(),
        minChildSize: minChildSize?.toDouble(),
        maxChildSize: maxChildSize?.toDouble(),
        expand: expand,
        builder: builder,
      ),
    );
  static var draggableScrollableNotification = MXFunctionInvoke(
      "DraggableScrollableNotification",
      ({
        dynamic extent,
        dynamic minExtent,
        dynamic maxExtent,
        dynamic initialExtent,
        BuildContext context,
      }) =>
        DraggableScrollableNotification(
        extent: extent?.toDouble(),
        minExtent: minExtent?.toDouble(),
        maxExtent: maxExtent?.toDouble(),
        initialExtent: initialExtent?.toDouble(),
        context: context,
      ),
    );
  static var draggableScrollableActuator = MXFunctionInvoke(
      "DraggableScrollableActuator",
      ({
        Key key,
        Widget child,
      }) =>
        DraggableScrollableActuator(
        key: key,
        child: child,
      ),
    );
}
