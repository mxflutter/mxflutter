//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/semantics/semantics_event.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSemanticsEventSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[announceSemanticsEvent.funName] = announceSemanticsEvent;
  m[tooltipSemanticsEvent.funName] = tooltipSemanticsEvent;
  m[longPressSemanticsEvent.funName] = longPressSemanticsEvent;
  m[tapSemanticEvent.funName] = tapSemanticEvent;
  m[updateLiveRegionEvent.funName] = updateLiveRegionEvent;
  return m;
}
var announceSemanticsEvent = MXFunctionInvoke(
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
var tooltipSemanticsEvent = MXFunctionInvoke(
    "TooltipSemanticsEvent",
    ({
      String message,
    }) =>
      TooltipSemanticsEvent(
      message,
    ),
);
var longPressSemanticsEvent = MXFunctionInvoke(
    "LongPressSemanticsEvent",
    ({
    }) =>
      LongPressSemanticsEvent(
    ),
);
var tapSemanticEvent = MXFunctionInvoke(
    "TapSemanticEvent",
    ({
    }) =>
      TapSemanticEvent(
    ),
);
var updateLiveRegionEvent = MXFunctionInvoke(
    "UpdateLiveRegionEvent",
    ({
    }) =>
      UpdateLiveRegionEvent(
    ),
);
