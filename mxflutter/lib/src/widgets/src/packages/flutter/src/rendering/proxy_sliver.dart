//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/proxy_sliver.dart';
import 'dart:ui' as ui;
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/proxy_box.dart';
import 'package:flutter/src/rendering/sliver.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerProxySliverSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_renderSliverOpacity.funName] = _renderSliverOpacity;
  m[_renderSliverIgnorePointer.funName] = _renderSliverIgnorePointer;
  m[_renderSliverOffstage.funName] = _renderSliverOffstage;
  m[_renderSliverAnimatedOpacity.funName] = _renderSliverAnimatedOpacity;
  return m;
}

var _renderSliverOpacity = MXFunctionInvoke(
  "RenderSliverOpacity",
  ({
    dynamic opacity = 1.0,
    bool alwaysIncludeSemantics = false,
    RenderSliver sliver,
  }) =>
      RenderSliverOpacity(
    opacity: opacity?.toDouble(),
    alwaysIncludeSemantics: alwaysIncludeSemantics,
    sliver: sliver,
  ),
  [
    "opacity",
    "alwaysIncludeSemantics",
    "sliver",
  ],
);
var _renderSliverIgnorePointer = MXFunctionInvoke(
  "RenderSliverIgnorePointer",
  ({
    RenderSliver sliver,
    bool ignoring = true,
    bool ignoringSemantics,
  }) =>
      RenderSliverIgnorePointer(
    sliver: sliver,
    ignoring: ignoring,
    ignoringSemantics: ignoringSemantics,
  ),
  [
    "sliver",
    "ignoring",
    "ignoringSemantics",
  ],
);
var _renderSliverOffstage = MXFunctionInvoke(
  "RenderSliverOffstage",
  ({
    bool offstage = true,
    RenderSliver sliver,
  }) =>
      RenderSliverOffstage(
    offstage: offstage,
    sliver: sliver,
  ),
  [
    "offstage",
    "sliver",
  ],
);
var _renderSliverAnimatedOpacity = MXFunctionInvoke(
  "RenderSliverAnimatedOpacity",
  ({
    Animation<double> opacity,
    bool alwaysIncludeSemantics = false,
    RenderSliver sliver,
  }) =>
      RenderSliverAnimatedOpacity(
    opacity: opacity,
    alwaysIncludeSemantics: alwaysIncludeSemantics,
    sliver: sliver,
  ),
  [
    "opacity",
    "alwaysIncludeSemantics",
    "sliver",
  ],
);
