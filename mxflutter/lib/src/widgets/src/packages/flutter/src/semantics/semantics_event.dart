//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/semantics/semantics_event.dart';


class MXProxySemanticsEvent {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[announceSemanticsEvent.funName] = announceSemanticsEvent;
    m[tooltipSemanticsEvent.funName] = tooltipSemanticsEvent;
    m[longPressSemanticsEvent.funName] = longPressSemanticsEvent;
    m[tapSemanticEvent.funName] = tapSemanticEvent;
    m[updateLiveRegionEvent.funName] = updateLiveRegionEvent;
    return m;
  }
  static var announceSemanticsEvent = MXFunctionInvoke(
      "AnnounceSemanticsEvent",
      ({
        String message,
        TextDirection textDirection,
      }) =>
        AnnounceSemanticsEvent(
        message,
        textDirection,
      ),
    );
  static var tooltipSemanticsEvent = MXFunctionInvoke(
      "TooltipSemanticsEvent",
      ({
        String message,
      }) =>
        TooltipSemanticsEvent(
        message,
      ),
    );
  static var longPressSemanticsEvent = MXFunctionInvoke(
      "LongPressSemanticsEvent",
      ({
      }) =>
        LongPressSemanticsEvent(
      ),
    );
  static var tapSemanticEvent = MXFunctionInvoke(
      "TapSemanticEvent",
      ({
      }) =>
        TapSemanticEvent(
      ),
    );
  static var updateLiveRegionEvent = MXFunctionInvoke(
      "UpdateLiveRegionEvent",
      ({
      }) =>
        UpdateLiveRegionEvent(
      ),
    );
}
