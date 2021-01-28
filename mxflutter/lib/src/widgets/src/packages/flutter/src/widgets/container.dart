//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/image.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerContainerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_decoratedBox.funName] = _decoratedBox;
  m[_container.funName] = _container;
  return m;
}

var _decoratedBox = MXFunctionInvoke(
  "DecoratedBox",
  ({
    Key key,
    Decoration decoration,
    DecorationPosition position = DecorationPosition.background,
    Widget child,
  }) =>
      DecoratedBox(
    key: key,
    decoration: decoration,
    position: position,
    child: child,
  ),
  [
    "key",
    "decoration",
    "position",
    "child",
  ],
);
var _container = MXFunctionInvoke(
  "Container",
  ({
    Key key,
    AlignmentGeometry alignment,
    EdgeInsetsGeometry padding,
    Color color,
    Decoration decoration,
    Decoration foregroundDecoration,
    dynamic width,
    dynamic height,
    BoxConstraints constraints,
    EdgeInsetsGeometry margin,
    Matrix4 transform,
    Widget child,
    Clip clipBehavior = Clip.none,
  }) =>
      Container(
    key: key,
    alignment: alignment,
    padding: padding,
    color: color,
    decoration: decoration,
    foregroundDecoration: foregroundDecoration,
    width: width?.toDouble(),
    height: height?.toDouble(),
    constraints: constraints,
    margin: margin,
    transform: transform,
    child: child,
    clipBehavior: clipBehavior,
  ),
  [
    "key",
    "alignment",
    "padding",
    "color",
    "decoration",
    "foregroundDecoration",
    "width",
    "height",
    "constraints",
    "margin",
    "transform",
    "child",
    "clipBehavior",
  ],
);
