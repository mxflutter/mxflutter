//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/strut_style.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/text_style.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerStrutStyleSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_strutStyle.funName] = _strutStyle;
  m[_strutStyleDisabled.funName] = _strutStyleDisabled;
  m[_strutStyleFromTextStyle.funName] = _strutStyleFromTextStyle;
  return m;
}

var _strutStyle = MXFunctionInvoke(
  "StrutStyle",
  ({
    String fontFamily,
    dynamic fontFamilyFallback,
    dynamic fontSize,
    dynamic height,
    dynamic leading,
    FontWeight fontWeight,
    FontStyle fontStyle,
    bool forceStrutHeight,
    String debugLabel,
    String package,
  }) =>
      StrutStyle(
    fontFamily: fontFamily,
    fontFamilyFallback: toListT<String>(fontFamilyFallback),
    fontSize: fontSize?.toDouble(),
    height: height?.toDouble(),
    leading: leading?.toDouble(),
    fontWeight: fontWeight,
    fontStyle: fontStyle,
    forceStrutHeight: forceStrutHeight,
    debugLabel: debugLabel,
    package: package,
  ),
  [
    "fontFamily",
    "fontFamilyFallback",
    "fontSize",
    "height",
    "leading",
    "fontWeight",
    "fontStyle",
    "forceStrutHeight",
    "debugLabel",
    "__mx_package",
  ],
);
var _strutStyleDisabled = MXFunctionInvoke("StrutStyle.disabled", () => StrutStyle.disabled);
var _strutStyleFromTextStyle = MXFunctionInvoke(
  "StrutStyle.fromTextStyle",
  ({
    TextStyle textStyle,
    String fontFamily,
    dynamic fontFamilyFallback,
    dynamic fontSize,
    dynamic height,
    dynamic leading,
    FontWeight fontWeight,
    FontStyle fontStyle,
    bool forceStrutHeight,
    String debugLabel,
    String package,
  }) =>
      StrutStyle.fromTextStyle(
    textStyle,
    fontFamily: fontFamily,
    fontFamilyFallback: toListT<String>(fontFamilyFallback),
    fontSize: fontSize?.toDouble(),
    height: height?.toDouble(),
    leading: leading?.toDouble(),
    fontWeight: fontWeight,
    fontStyle: fontStyle,
    forceStrutHeight: forceStrutHeight,
    debugLabel: debugLabel,
    package: package,
  ),
  [
    "textStyle",
    "fontFamily",
    "fontFamilyFallback",
    "fontSize",
    "height",
    "leading",
    "fontWeight",
    "fontStyle",
    "forceStrutHeight",
    "debugLabel",
    "__mx_package",
  ],
);
