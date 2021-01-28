//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
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
  m[_sliderThemeDataFromPrimaryColors.funName] = _sliderThemeDataFromPrimaryColors;
  m[_rectangularSliderTrackShape.funName] = _rectangularSliderTrackShape;
  m[_roundedRectSliderTrackShape.funName] = _roundedRectSliderTrackShape;
  m[_rectangularRangeSliderTrackShape.funName] = _rectangularRangeSliderTrackShape;
  m[_roundedRectRangeSliderTrackShape.funName] = _roundedRectRangeSliderTrackShape;
  m[_roundSliderTickMarkShape.funName] = _roundSliderTickMarkShape;
  m[_roundRangeSliderTickMarkShape.funName] = _roundRangeSliderTickMarkShape;
  m[_roundSliderThumbShape.funName] = _roundSliderThumbShape;
  m[_roundRangeSliderThumbShape.funName] = _roundRangeSliderThumbShape;
  m[_roundSliderOverlayShape.funName] = _roundSliderOverlayShape;
  m[_rectangularSliderValueIndicatorShape.funName] = _rectangularSliderValueIndicatorShape;
  m[_rectangularRangeSliderValueIndicatorShape.funName] = _rectangularRangeSliderValueIndicatorShape;
  m[_paddleSliderValueIndicatorShape.funName] = _paddleSliderValueIndicatorShape;
  m[_paddleRangeSliderValueIndicatorShape.funName] = _paddleRangeSliderValueIndicatorShape;
  m[_rangeValues.funName] = _rangeValues;
  m[_rangeLabels.funName] = _rangeLabels;
  return m;
}

var _sliderTheme = MXFunctionInvoke(
  "SliderTheme",
  ({
    Key key,
    SliderThemeData data,
    Widget child,
  }) =>
      SliderTheme(
    key: key,
    data: data,
    child: child,
  ),
  [
    "key",
    "data",
    "child",
  ],
);
var _showValueIndicator = MXFunctionInvoke(
    "ShowValueIndicator", ({String name, int index}) => MXShowValueIndicator.parse(name, index), ["name", "index"]);
var _thumb = MXFunctionInvoke("Thumb", ({String name, int index}) => MXThumb.parse(name, index), ["name", "index"]);
var _sliderThemeData = MXFunctionInvoke(
  "SliderThemeData",
  ({
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
  }) =>
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
  [
    "trackHeight",
    "activeTrackColor",
    "inactiveTrackColor",
    "disabledActiveTrackColor",
    "disabledInactiveTrackColor",
    "activeTickMarkColor",
    "inactiveTickMarkColor",
    "disabledActiveTickMarkColor",
    "disabledInactiveTickMarkColor",
    "thumbColor",
    "overlappingShapeStrokeColor",
    "disabledThumbColor",
    "overlayColor",
    "valueIndicatorColor",
    "overlayShape",
    "tickMarkShape",
    "thumbShape",
    "trackShape",
    "valueIndicatorShape",
    "rangeTickMarkShape",
    "rangeThumbShape",
    "rangeTrackShape",
    "rangeValueIndicatorShape",
    "showValueIndicator",
    "valueIndicatorTextStyle",
    "minThumbSeparation",
    "thumbSelector",
  ],
);
var _sliderThemeDataFromPrimaryColors = MXFunctionInvoke(
  "SliderThemeData.fromPrimaryColors",
  ({
    Color primaryColor,
    Color primaryColorDark,
    Color primaryColorLight,
    TextStyle valueIndicatorTextStyle,
  }) =>
      SliderThemeData.fromPrimaryColors(
    primaryColor: primaryColor,
    primaryColorDark: primaryColorDark,
    primaryColorLight: primaryColorLight,
    valueIndicatorTextStyle: valueIndicatorTextStyle,
  ),
  [
    "primaryColor",
    "primaryColorDark",
    "primaryColorLight",
    "valueIndicatorTextStyle",
  ],
);
var _rectangularSliderTrackShape = MXFunctionInvoke(
  "RectangularSliderTrackShape",
  ({
    dynamic disabledThumbGapWidth = 2.0,
  }) =>
      RectangularSliderTrackShape(
    disabledThumbGapWidth: disabledThumbGapWidth?.toDouble(),
  ),
  [
    "disabledThumbGapWidth",
  ],
);
var _roundedRectSliderTrackShape = MXFunctionInvoke(
  "RoundedRectSliderTrackShape",
  () => RoundedRectSliderTrackShape(),
  [],
);
var _rectangularRangeSliderTrackShape = MXFunctionInvoke(
  "RectangularRangeSliderTrackShape",
  () => RectangularRangeSliderTrackShape(),
  [],
);
var _roundedRectRangeSliderTrackShape = MXFunctionInvoke(
  "RoundedRectRangeSliderTrackShape",
  () => RoundedRectRangeSliderTrackShape(),
  [],
);
var _roundSliderTickMarkShape = MXFunctionInvoke(
  "RoundSliderTickMarkShape",
  ({
    dynamic tickMarkRadius,
  }) =>
      RoundSliderTickMarkShape(
    tickMarkRadius: tickMarkRadius?.toDouble(),
  ),
  [
    "tickMarkRadius",
  ],
);
var _roundRangeSliderTickMarkShape = MXFunctionInvoke(
  "RoundRangeSliderTickMarkShape",
  ({
    dynamic tickMarkRadius,
  }) =>
      RoundRangeSliderTickMarkShape(
    tickMarkRadius: tickMarkRadius?.toDouble(),
  ),
  [
    "tickMarkRadius",
  ],
);
var _roundSliderThumbShape = MXFunctionInvoke(
  "RoundSliderThumbShape",
  ({
    dynamic enabledThumbRadius = 10.0,
    dynamic disabledThumbRadius,
    dynamic elevation = 1.0,
    dynamic pressedElevation = 6.0,
  }) =>
      RoundSliderThumbShape(
    enabledThumbRadius: enabledThumbRadius?.toDouble(),
    disabledThumbRadius: disabledThumbRadius?.toDouble(),
    elevation: elevation?.toDouble(),
    pressedElevation: pressedElevation?.toDouble(),
  ),
  [
    "enabledThumbRadius",
    "disabledThumbRadius",
    "elevation",
    "pressedElevation",
  ],
);
var _roundRangeSliderThumbShape = MXFunctionInvoke(
  "RoundRangeSliderThumbShape",
  ({
    dynamic enabledThumbRadius = 10.0,
    dynamic disabledThumbRadius,
    dynamic elevation = 1.0,
    dynamic pressedElevation = 6.0,
  }) =>
      RoundRangeSliderThumbShape(
    enabledThumbRadius: enabledThumbRadius?.toDouble(),
    disabledThumbRadius: disabledThumbRadius?.toDouble(),
    elevation: elevation?.toDouble(),
    pressedElevation: pressedElevation?.toDouble(),
  ),
  [
    "enabledThumbRadius",
    "disabledThumbRadius",
    "elevation",
    "pressedElevation",
  ],
);
var _roundSliderOverlayShape = MXFunctionInvoke(
  "RoundSliderOverlayShape",
  ({
    dynamic overlayRadius = 24.0,
  }) =>
      RoundSliderOverlayShape(
    overlayRadius: overlayRadius?.toDouble(),
  ),
  [
    "overlayRadius",
  ],
);
var _rectangularSliderValueIndicatorShape = MXFunctionInvoke(
  "RectangularSliderValueIndicatorShape",
  () => RectangularSliderValueIndicatorShape(),
  [],
);
var _rectangularRangeSliderValueIndicatorShape = MXFunctionInvoke(
  "RectangularRangeSliderValueIndicatorShape",
  () => RectangularRangeSliderValueIndicatorShape(),
  [],
);
var _paddleSliderValueIndicatorShape = MXFunctionInvoke(
  "PaddleSliderValueIndicatorShape",
  () => PaddleSliderValueIndicatorShape(),
  [],
);
var _paddleRangeSliderValueIndicatorShape = MXFunctionInvoke(
  "PaddleRangeSliderValueIndicatorShape",
  () => PaddleRangeSliderValueIndicatorShape(),
  [],
);
var _rangeValues = MXFunctionInvoke(
  "RangeValues",
  ({
    dynamic start,
    dynamic end,
  }) =>
      RangeValues(
    start?.toDouble(),
    end?.toDouble(),
  ),
  [
    "start",
    "end",
  ],
);
var _rangeLabels = MXFunctionInvoke(
  "RangeLabels",
  ({
    String start,
    String end,
  }) =>
      RangeLabels(
    start,
    end,
  ),
  [
    "start",
    "end",
  ],
);

class MXShowValueIndicator {
  static ShowValueIndicator parse(String name, int index) {
    switch (name) {
      case 'ShowValueIndicator.onlyForDiscrete':
        return ShowValueIndicator.onlyForDiscrete;
      case 'ShowValueIndicator.onlyForContinuous':
        return ShowValueIndicator.onlyForContinuous;
      case 'ShowValueIndicator.always':
        return ShowValueIndicator.always;
      case 'ShowValueIndicator.never':
        return ShowValueIndicator.never;
    }
    return null;
  }
}

class MXThumb {
  static Thumb parse(String name, int index) {
    switch (name) {
      case 'Thumb.start':
        return Thumb.start;
      case 'Thumb.end':
        return Thumb.end;
    }
    return null;
  }
}
