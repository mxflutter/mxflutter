//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[_defaultTextStyle_fallback.funName] = _defaultTextStyle_fallback;
  m[_text.funName] = _text;
  m[_text_rich.funName] = _text_rich;
  return m;
}
var _defaultTextStyle = MXFunctionInvoke(
    "DefaultTextStyle",
    (
      {
      Key key,
      TextStyle style,
      ui.TextAlign textAlign,
      bool softWrap = true,
      TextOverflow overflow = TextOverflow.clip,
      int maxLines,
      TextWidthBasis textWidthBasis =  TextWidthBasis.parent,
      ui.TextHeightBehavior textHeightBehavior,
      Widget child,
      }
    ) =>
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
);
var _defaultTextStyle_fallback = MXFunctionInvoke(
  "DefaultTextStyle.fallback",
    (
      {
      Key key,
      }
    ) =>
      DefaultTextStyle.fallback(
      key: key,
    ),
);
var _text = MXFunctionInvoke(
    "Text",
    (
      {
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
      }
    ) =>
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
);
var _text_rich = MXFunctionInvoke(
  "Text.rich",
    (
      {
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
      }
    ) =>
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
    ),
);
