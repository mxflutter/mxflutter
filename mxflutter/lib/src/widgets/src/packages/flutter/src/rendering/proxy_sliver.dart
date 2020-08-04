//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/proxy_sliver.dart';
import 'dart:ui';
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
  m[renderSliverOpacity.funName] = renderSliverOpacity;
  m[renderSliverIgnorePointer.funName] = renderSliverIgnorePointer;
  m[renderSliverOffstage.funName] = renderSliverOffstage;
  m[renderSliverAnimatedOpacity.funName] = renderSliverAnimatedOpacity;
  return m;
}
var renderSliverOpacity = MXFunctionInvoke(
    "RenderSliverOpacity",
    ({
      dynamic opacity = 1.0,
      bool alwaysIncludeSemantics = false,
      RenderSliver sliver,
    }) =>
      RenderSliverOpacity(
      opacity: opacity,
      alwaysIncludeSemantics: alwaysIncludeSemantics,
      sliver: sliver,
    ),
);
var renderSliverIgnorePointer = MXFunctionInvoke(
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
);
var renderSliverOffstage = MXFunctionInvoke(
    "RenderSliverOffstage",
    ({
      bool offstage = true,
      RenderSliver sliver,
    }) =>
      RenderSliverOffstage(
      offstage: offstage,
      sliver: sliver,
    ),
);
var renderSliverAnimatedOpacity = MXFunctionInvoke(
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
);
