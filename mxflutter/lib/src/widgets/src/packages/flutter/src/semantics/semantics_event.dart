//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/semantics/semantics_event.dart';
import 'package:flutter/foundation.dart' ;
import 'package:flutter/painting.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSemanticsEventSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_semanticsEvent.funName] = _semanticsEvent;
  m[_announceSemanticsEvent.funName] = _announceSemanticsEvent;
  m[_tooltipSemanticsEvent.funName] = _tooltipSemanticsEvent;
  m[_longPressSemanticsEvent.funName] = _longPressSemanticsEvent;
  m[_tapSemanticEvent.funName] = _tapSemanticEvent;
  m[_updateLiveRegionEvent.funName] = _updateLiveRegionEvent;
  return m;
}
var _semanticsEvent = MXFunctionInvoke(
    "SemanticsEvent",
    (
      {
      String type,
      }
    ) =>
      SemanticsEvent(
      type,
    ),
);
var _announceSemanticsEvent = MXFunctionInvoke(
    "AnnounceSemanticsEvent",
    (
      {
      String message,
      TextDirection textDirection,
      }
    ) =>
      AnnounceSemanticsEvent(
      message,
      textDirection,
    ),
);
var _tooltipSemanticsEvent = MXFunctionInvoke(
    "TooltipSemanticsEvent",
    (
      {
      String message,
      }
    ) =>
      TooltipSemanticsEvent(
      message,
    ),
);
var _longPressSemanticsEvent = MXFunctionInvoke(
    "LongPressSemanticsEvent",
    (
    ) =>
      LongPressSemanticsEvent(
    ),
);
var _tapSemanticEvent = MXFunctionInvoke(
    "TapSemanticEvent",
    (
    ) =>
      TapSemanticEvent(
    ),
);
var _updateLiveRegionEvent = MXFunctionInvoke(
    "UpdateLiveRegionEvent",
    (
    ) =>
      UpdateLiveRegionEvent(
    ),
);
