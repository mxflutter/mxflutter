//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/wrap.dart';
import 'dart:math' as math;
import 'package:flutter/src/rendering/box.dart' ;
import 'package:flutter/src/rendering/object.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerWrapSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_wrapAlignment.funName] = _wrapAlignment;
  m[_wrapCrossAlignment.funName] = _wrapCrossAlignment;
  m[_wrapParentData.funName] = _wrapParentData;
  m[_renderWrap.funName] = _renderWrap;
  return m;
}
var _wrapAlignment = MXFunctionInvoke(
    "WrapAlignment",
    ({Map args}) => MXWrapAlignment.parse(args),
  );
var _wrapCrossAlignment = MXFunctionInvoke(
    "WrapCrossAlignment",
    ({Map args}) => MXWrapCrossAlignment.parse(args),
  );
var _wrapParentData = MXFunctionInvoke(
    "WrapParentData",
    (
    ) =>
      WrapParentData(
    ),
);
var _renderWrap = MXFunctionInvoke(
    "RenderWrap",
    (
      {
      List<RenderBox> children,
      Axis direction = Axis.horizontal,
      WrapAlignment alignment = WrapAlignment.start,
      dynamic spacing = 0.0,
      WrapAlignment runAlignment = WrapAlignment.start,
      dynamic runSpacing = 0.0,
      WrapCrossAlignment crossAxisAlignment = WrapCrossAlignment.start,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down,
      }
    ) =>
      RenderWrap(
      children: children,
      direction: direction,
      alignment: alignment,
      spacing: spacing?.toDouble(),
      runAlignment: runAlignment,
      runSpacing: runSpacing?.toDouble(),
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
    ),
);
class MXWrapAlignment {
  static Map str2VMap = {
    'WrapAlignment.start': WrapAlignment.start,
    'WrapAlignment.end': WrapAlignment.end,
    'WrapAlignment.center': WrapAlignment.center,
    'WrapAlignment.spaceBetween': WrapAlignment.spaceBetween,
    'WrapAlignment.spaceAround': WrapAlignment.spaceAround,
    'WrapAlignment.spaceEvenly': WrapAlignment.spaceEvenly,
  };
  static WrapAlignment parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXWrapCrossAlignment {
  static Map str2VMap = {
    'WrapCrossAlignment.start': WrapCrossAlignment.start,
    'WrapCrossAlignment.end': WrapCrossAlignment.end,
    'WrapCrossAlignment.center': WrapCrossAlignment.center,
  };
  static WrapCrossAlignment parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
