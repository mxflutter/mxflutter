//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/flex.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/debug_overflow_indicator.dart';
import 'package:flutter/src/rendering/object.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerFlexSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_flexFit.funName] = _flexFit;
  m[_flexParentData.funName] = _flexParentData;
  m[_mainAxisSize.funName] = _mainAxisSize;
  m[_mainAxisAlignment.funName] = _mainAxisAlignment;
  m[_crossAxisAlignment.funName] = _crossAxisAlignment;
  m[_renderFlex.funName] = _renderFlex;
  return m;
}
var _flexFit = MXFunctionInvoke(
    "FlexFit",
    ({Map args}) => MXFlexFit.parse(args),
  );
var _flexParentData = MXFunctionInvoke(
    "FlexParentData",
    (
    ) =>
      FlexParentData(
    ),
);
var _mainAxisSize = MXFunctionInvoke(
    "MainAxisSize",
    ({Map args}) => MXMainAxisSize.parse(args),
  );
var _mainAxisAlignment = MXFunctionInvoke(
    "MainAxisAlignment",
    ({Map args}) => MXMainAxisAlignment.parse(args),
  );
var _crossAxisAlignment = MXFunctionInvoke(
    "CrossAxisAlignment",
    ({Map args}) => MXCrossAxisAlignment.parse(args),
  );
var _renderFlex = MXFunctionInvoke(
    "RenderFlex",
    (
      {
      List<RenderBox> children,
      Axis direction = Axis.horizontal,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
      CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down,
      TextBaseline textBaseline,
      }
    ) =>
      RenderFlex(
      children: children,
      direction: direction,
      mainAxisSize: mainAxisSize,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
    ),
);
class MXFlexFit {
  static Map str2VMap = {
    'FlexFit.tight': FlexFit.tight,
    'FlexFit.loose': FlexFit.loose,
  };
  static FlexFit parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXMainAxisSize {
  static Map str2VMap = {
    'MainAxisSize.min': MainAxisSize.min,
    'MainAxisSize.max': MainAxisSize.max,
  };
  static MainAxisSize parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXMainAxisAlignment {
  static Map str2VMap = {
    'MainAxisAlignment.start': MainAxisAlignment.start,
    'MainAxisAlignment.end': MainAxisAlignment.end,
    'MainAxisAlignment.center': MainAxisAlignment.center,
    'MainAxisAlignment.spaceBetween': MainAxisAlignment.spaceBetween,
    'MainAxisAlignment.spaceAround': MainAxisAlignment.spaceAround,
    'MainAxisAlignment.spaceEvenly': MainAxisAlignment.spaceEvenly,
  };
  static MainAxisAlignment parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXCrossAxisAlignment {
  static Map str2VMap = {
    'CrossAxisAlignment.start': CrossAxisAlignment.start,
    'CrossAxisAlignment.end': CrossAxisAlignment.end,
    'CrossAxisAlignment.center': CrossAxisAlignment.center,
    'CrossAxisAlignment.stretch': CrossAxisAlignment.stretch,
    'CrossAxisAlignment.baseline': CrossAxisAlignment.baseline,
  };
  static CrossAxisAlignment parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
