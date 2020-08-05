//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/platform_view.dart';
import 'dart:async';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/mouse_tracking.dart';
import 'package:flutter/src/rendering/object.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPlatformViewSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_platformViewHitTestBehavior.funName] = _platformViewHitTestBehavior;
  m[_renderAndroidView.funName] = _renderAndroidView;
  m[_renderUiKitView.funName] = _renderUiKitView;
  m[_platformViewRenderBox.funName] = _platformViewRenderBox;
  return m;
}
var _platformViewHitTestBehavior = MXFunctionInvoke(
    "PlatformViewHitTestBehavior",
    ({Map args}) => MXPlatformViewHitTestBehavior.parse(args),
  );
var _renderAndroidView = MXFunctionInvoke(
    "RenderAndroidView",
    (
      {
      AndroidViewController viewController,
      PlatformViewHitTestBehavior hitTestBehavior,
      Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers,
      }
    ) =>
      RenderAndroidView(
      viewController: viewController,
      hitTestBehavior: hitTestBehavior,
      gestureRecognizers: gestureRecognizers,
    ),
);
var _renderUiKitView = MXFunctionInvoke(
    "RenderUiKitView",
    (
      {
      UiKitViewController viewController,
      PlatformViewHitTestBehavior hitTestBehavior,
      Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers,
      }
    ) =>
      RenderUiKitView(
      viewController: viewController,
      hitTestBehavior: hitTestBehavior,
      gestureRecognizers: gestureRecognizers,
    ),
);
var _platformViewRenderBox = MXFunctionInvoke(
    "PlatformViewRenderBox",
    (
      {
      PlatformViewController controller,
      PlatformViewHitTestBehavior hitTestBehavior,
      Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers,
      }
    ) =>
      PlatformViewRenderBox(
      controller: controller,
      hitTestBehavior: hitTestBehavior,
      gestureRecognizers: gestureRecognizers,
    ),
);
class MXPlatformViewHitTestBehavior {
  static Map str2VMap = {
    'PlatformViewHitTestBehavior.opaque': PlatformViewHitTestBehavior.opaque,
    'PlatformViewHitTestBehavior.translucent': PlatformViewHitTestBehavior.translucent,
    'PlatformViewHitTestBehavior.transparent': PlatformViewHitTestBehavior.transparent,
  };
  static PlatformViewHitTestBehavior parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
