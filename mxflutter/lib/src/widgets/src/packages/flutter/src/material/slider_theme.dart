//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/slider_theme.dart';
import 'dart:math' as math;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSliderThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_sliderTheme.funName] = _sliderTheme;
  m[_showValueIndicator.funName] = _showValueIndicator;
  m[_thumb.funName] = _thumb;
  m[_sliderThemeData.funName] = _sliderThemeData;
  m[_sliderThemeData_fromPrimaryColors.funName] = _sliderThemeData_fromPrimaryColors;
  m[_rectangularSliderTrackShape.funName] = _rectangularSliderTrackShape;
  m[_roundedRectSliderTrackShape.funName] = _roundedRectSliderTrackShape;
  m[_rectangularRangeSliderTrackShape.funName] = _rectangularRangeSliderTrackShape;
  m[_roundedRectRangeSliderTrackShape.funName] = _roundedRectRangeSliderTrackShape;
  m[_roundSliderTickMarkShape.funName] = _roundSliderTickMarkShape;
  m[_roundRangeSliderTickMarkShape.funName] = _roundRangeSliderTickMarkShape;
  m[_roundSliderThumbShape.funName] = _roundSliderThumbShape;
  m[_roundRangeSliderThumbShape.funName] = _roundRangeSliderThumbShape;
  m[_roundSliderOverlayShape.funName] = _roundSliderOverlayShape;
  m[_paddleSliderValueIndicatorShape.funName] = _paddleSliderValueIndicatorShape;
  m[_paddleRangeSliderValueIndicatorShape.funName] = _paddleRangeSliderValueIndicatorShape;
  m[_rangeValues.funName] = _rangeValues;
  m[_rangeLabels.funName] = _rangeLabels;
  return m;
}
var _sliderTheme = MXFunctionInvoke(
    "SliderTheme",
    (
      {
      Key key,
      SliderThemeData data,
      Widget child,
      }
    ) =>
      SliderTheme(
      key: key,
      data: data,
      child: child,
    ),
);
var _showValueIndicator = MXFunctionInvoke(
    "ShowValueIndicator",
    ({Map args}) => MXShowValueIndicator.parse(args),
  );
var _thumb = MXFunctionInvoke(
    "Thumb",
    ({Map args}) => MXThumb.parse(args),
  );
var _sliderThemeData = MXFunctionInvoke(
    "SliderThemeData",
    (
      {
      dynamic trackHeight,
      Color activeTrackColor,
      Color inactiveTrackColor,
      Color disabledActiveTrackColor,
      Color disabledInactiveTrackColor,
      Color activeTickMarkColor,
      Color inactiveTickMarkColor,
      Color disabledActiveTickMarkColor,
      Color disabledInactiveTickMarkColor,
      Color thumbColor,
      Color overlappingShapeStrokeColor,
      Color disabledThumbColor,
      Color overlayColor,
      Color valueIndicatorColor,
      SliderComponentShape overlayShape,
      SliderTickMarkShape tickMarkShape,
      SliderComponentShape thumbShape,
      SliderTrackShape trackShape,
      SliderComponentShape valueIndicatorShape,
      RangeSliderTickMarkShape rangeTickMarkShape,
      RangeSliderThumbShape rangeThumbShape,
      RangeSliderTrackShape rangeTrackShape,
      RangeSliderValueIndicatorShape rangeValueIndicatorShape,
      ShowValueIndicator showValueIndicator,
      TextStyle valueIndicatorTextStyle,
      dynamic minThumbSeparation,
      dynamic thumbSelector,
      }
    ) =>
      SliderThemeData(
      trackHeight: trackHeight?.toDouble(),
      activeTrackColor: activeTrackColor,
      inactiveTrackColor: inactiveTrackColor,
      disabledActiveTrackColor: disabledActiveTrackColor,
      disabledInactiveTrackColor: disabledInactiveTrackColor,
      activeTickMarkColor: activeTickMarkColor,
      inactiveTickMarkColor: inactiveTickMarkColor,
      disabledActiveTickMarkColor: disabledActiveTickMarkColor,
      disabledInactiveTickMarkColor: disabledInactiveTickMarkColor,
      thumbColor: thumbColor,
      overlappingShapeStrokeColor: overlappingShapeStrokeColor,
      disabledThumbColor: disabledThumbColor,
      overlayColor: overlayColor,
      valueIndicatorColor: valueIndicatorColor,
      overlayShape: overlayShape,
      tickMarkShape: tickMarkShape,
      thumbShape: thumbShape,
      trackShape: trackShape,
      valueIndicatorShape: valueIndicatorShape,
      rangeTickMarkShape: rangeTickMarkShape,
      rangeThumbShape: rangeThumbShape,
      rangeTrackShape: rangeTrackShape,
      rangeValueIndicatorShape: rangeValueIndicatorShape,
      showValueIndicator: showValueIndicator,
      valueIndicatorTextStyle: valueIndicatorTextStyle,
      minThumbSeparation: minThumbSeparation?.toDouble(),
      thumbSelector: null,
    ),
);
var _sliderThemeData_fromPrimaryColors = MXFunctionInvoke(
  "SliderThemeData.fromPrimaryColors",
    (
      {
      Color primaryColor,
      Color primaryColorDark,
      Color primaryColorLight,
      TextStyle valueIndicatorTextStyle,
      }
    ) =>
      SliderThemeData.fromPrimaryColors(
      primaryColor: primaryColor,
      primaryColorDark: primaryColorDark,
      primaryColorLight: primaryColorLight,
      valueIndicatorTextStyle: valueIndicatorTextStyle,
    ),
);
var _rectangularSliderTrackShape = MXFunctionInvoke(
    "RectangularSliderTrackShape",
    (
      {
      dynamic disabledThumbGapWidth = 2.0,
      }
    ) =>
      RectangularSliderTrackShape(
      disabledThumbGapWidth: disabledThumbGapWidth?.toDouble(),
    ),
);
var _roundedRectSliderTrackShape = MXFunctionInvoke(
    "RoundedRectSliderTrackShape",
    (
    ) =>
      RoundedRectSliderTrackShape(
    ),
);
var _rectangularRangeSliderTrackShape = MXFunctionInvoke(
    "RectangularRangeSliderTrackShape",
    (
    ) =>
      RectangularRangeSliderTrackShape(
    ),
);
var _roundedRectRangeSliderTrackShape = MXFunctionInvoke(
    "RoundedRectRangeSliderTrackShape",
    (
    ) =>
      RoundedRectRangeSliderTrackShape(
    ),
);
var _roundSliderTickMarkShape = MXFunctionInvoke(
    "RoundSliderTickMarkShape",
    (
      {
      dynamic tickMarkRadius,
      }
    ) =>
      RoundSliderTickMarkShape(
      tickMarkRadius: tickMarkRadius?.toDouble(),
    ),
);
var _roundRangeSliderTickMarkShape = MXFunctionInvoke(
    "RoundRangeSliderTickMarkShape",
    (
      {
      dynamic tickMarkRadius,
      }
    ) =>
      RoundRangeSliderTickMarkShape(
      tickMarkRadius: tickMarkRadius?.toDouble(),
    ),
);
var _roundSliderThumbShape = MXFunctionInvoke(
    "RoundSliderThumbShape",
    (
      {
      dynamic enabledThumbRadius = 10.0,
      dynamic disabledThumbRadius,
      }
    ) =>
      RoundSliderThumbShape(
      enabledThumbRadius: enabledThumbRadius?.toDouble(),
      disabledThumbRadius: disabledThumbRadius?.toDouble(),
    ),
);
var _roundRangeSliderThumbShape = MXFunctionInvoke(
    "RoundRangeSliderThumbShape",
    (
      {
      dynamic enabledThumbRadius = 10.0,
      dynamic disabledThumbRadius,
      }
    ) =>
      RoundRangeSliderThumbShape(
      enabledThumbRadius: enabledThumbRadius?.toDouble(),
      disabledThumbRadius: disabledThumbRadius?.toDouble(),
    ),
);
var _roundSliderOverlayShape = MXFunctionInvoke(
    "RoundSliderOverlayShape",
    (
      {
      dynamic overlayRadius = 24.0,
      }
    ) =>
      RoundSliderOverlayShape(
      overlayRadius: overlayRadius?.toDouble(),
    ),
);
var _paddleSliderValueIndicatorShape = MXFunctionInvoke(
    "PaddleSliderValueIndicatorShape",
    (
    ) =>
      PaddleSliderValueIndicatorShape(
    ),
);
var _paddleRangeSliderValueIndicatorShape = MXFunctionInvoke(
    "PaddleRangeSliderValueIndicatorShape",
    (
    ) =>
      PaddleRangeSliderValueIndicatorShape(
    ),
);
var _rangeValues = MXFunctionInvoke(
    "RangeValues",
    (
      {
      dynamic start,
      dynamic end,
      }
    ) =>
      RangeValues(
      start?.toDouble(),
      end?.toDouble(),
    ),
);
var _rangeLabels = MXFunctionInvoke(
    "RangeLabels",
    (
      {
      String start,
      String end,
      }
    ) =>
      RangeLabels(
      start,
      end,
    ),
);
class MXShowValueIndicator {
  static Map str2VMap = {
    'ShowValueIndicator.onlyForDiscrete': ShowValueIndicator.onlyForDiscrete,
    'ShowValueIndicator.onlyForContinuous': ShowValueIndicator.onlyForContinuous,
    'ShowValueIndicator.always': ShowValueIndicator.always,
    'ShowValueIndicator.never': ShowValueIndicator.never,
  };
  static ShowValueIndicator parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXThumb {
  static Map str2VMap = {
    'Thumb.start': Thumb.start,
    'Thumb.end': Thumb.end,
  };
  static Thumb parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
