//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/proxy_sliver.dart';


class MXProxyProxySliver {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[renderSliverOpacity.funName] = renderSliverOpacity;
    m[renderSliverIgnorePointer.funName] = renderSliverIgnorePointer;
    m[renderSliverOffstage.funName] = renderSliverOffstage;
    m[renderSliverAnimatedOpacity.funName] = renderSliverAnimatedOpacity;
    return m;
  }
  static var renderSliverOpacity = MXFunctionInvoke(
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
    );
  static var renderSliverIgnorePointer = MXFunctionInvoke(
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
  static var renderSliverOffstage = MXFunctionInvoke(
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
  static var renderSliverAnimatedOpacity = MXFunctionInvoke(
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
}
