//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/text.dart';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/inherited_theme.dart';
import 'package:flutter/src/widgets/media_query.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTextSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_defaultTextStyle.funName] = _defaultTextStyle;
  m[_defaultTextStyleFallback.funName] = _defaultTextStyleFallback;
  m[_defaultTextHeightBehavior.funName] = _defaultTextHeightBehavior;
  m[_text.funName] = _text;
  m[_textRich.funName] = _textRich;
  return m;
}

var _defaultTextStyle = MXFunctionInvoke(
  "DefaultTextStyle",
  ({
    Key key,
    TextStyle style,
    ui.TextAlign textAlign,
    bool softWrap = true,
    TextOverflow overflow = TextOverflow.clip,
    int maxLines,
    TextWidthBasis textWidthBasis = TextWidthBasis.parent,
    ui.TextHeightBehavior textHeightBehavior,
    Widget child,
  }) =>
      DefaultTextStyle(
    key: key,
    style: style,
    textAlign: textAlign,
    softWrap: softWrap,
    overflow: overflow,
    maxLines: maxLines,
    textWidthBasis: textWidthBasis,
    textHeightBehavior: textHeightBehavior,
    child: child,
  ),
  [
    "key",
    "style",
    "textAlign",
    "softWrap",
    "overflow",
    "maxLines",
    "textWidthBasis",
    "textHeightBehavior",
    "child",
  ],
);
var _defaultTextStyleFallback = MXFunctionInvoke(
  "DefaultTextStyle.fallback",
  ({
    Key key,
  }) =>
      DefaultTextStyle.fallback(
    key: key,
  ),
  [
    "key",
  ],
);
var _defaultTextHeightBehavior = MXFunctionInvoke(
  "DefaultTextHeightBehavior",
  ({
    Key key,
    ui.TextHeightBehavior textHeightBehavior,
    Widget child,
  }) =>
      DefaultTextHeightBehavior(
    key: key,
    textHeightBehavior: textHeightBehavior,
    child: child,
  ),
  [
    "key",
    "textHeightBehavior",
    "child",
  ],
);
var _text = MXFunctionInvoke(
  "Text",
  ({
    String data,
    Key key,
    TextStyle style,
    StrutStyle strutStyle,
    ui.TextAlign textAlign,
    ui.TextDirection textDirection,
    ui.Locale locale,
    bool softWrap,
    TextOverflow overflow,
    dynamic textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextWidthBasis textWidthBasis,
    ui.TextHeightBehavior textHeightBehavior,
  }) =>
      Text(
    data,
    key: key,
    style: style,
    strutStyle: strutStyle,
    textAlign: textAlign,
    textDirection: textDirection,
    locale: locale,
    softWrap: softWrap,
    overflow: overflow,
    textScaleFactor: textScaleFactor?.toDouble(),
    maxLines: maxLines,
    semanticsLabel: semanticsLabel,
    textWidthBasis: textWidthBasis,
    textHeightBehavior: textHeightBehavior,
  ),
  [
    "data",
    "key",
    "style",
    "strutStyle",
    "textAlign",
    "textDirection",
    "locale",
    "softWrap",
    "overflow",
    "textScaleFactor",
    "maxLines",
    "semanticsLabel",
    "textWidthBasis",
    "textHeightBehavior",
  ],
);
var _textRich = MXFunctionInvoke(
  "Text.rich",
  ({
    InlineSpan textSpan,
    Key key,
    TextStyle style,
    StrutStyle strutStyle,
    ui.TextAlign textAlign,
    ui.TextDirection textDirection,
    ui.Locale locale,
    bool softWrap,
    TextOverflow overflow,
    dynamic textScaleFactor,
    int maxLines,
    String semanticsLabel,
    TextWidthBasis textWidthBasis,
    ui.TextHeightBehavior textHeightBehavior,
    bool applyTextScaleFactorToWidgetSpan = false,
  }) =>
      Text.rich(
    textSpan,
    key: key,
    style: style,
    strutStyle: strutStyle,
    textAlign: textAlign,
    textDirection: textDirection,
    locale: locale,
    softWrap: softWrap,
    overflow: overflow,
    textScaleFactor: textScaleFactor?.toDouble(),
    maxLines: maxLines,
    semanticsLabel: semanticsLabel,
    textWidthBasis: textWidthBasis,
    textHeightBehavior: textHeightBehavior,
    applyTextScaleFactorToWidgetSpan: applyTextScaleFactorToWidgetSpan,
  ),
  [
    "textSpan",
    "key",
    "style",
    "strutStyle",
    "textAlign",
    "textDirection",
    "locale",
    "softWrap",
    "overflow",
    "textScaleFactor",
    "maxLines",
    "semanticsLabel",
    "textWidthBasis",
    "textHeightBehavior",
    "applyTextScaleFactorToWidgetSpan",
  ],
);
