//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/ink_decoration.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/material.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerInkDecorationSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_ink.funName] = _ink;
  m[_inkImage.funName] = _inkImage;
  m[_inkDecoration.funName] = _inkDecoration;
  return m;
}

var _ink = MXFunctionInvoke(
  "Ink",
  ({
    Key key,
    EdgeInsetsGeometry padding,
    Color color,
    Decoration decoration,
    dynamic width,
    dynamic height,
    Widget child,
  }) =>
      Ink(
    key: key,
    padding: padding,
    color: color,
    decoration: decoration,
    width: width?.toDouble(),
    height: height?.toDouble(),
    child: child,
  ),
  [
    "key",
    "padding",
    "color",
    "decoration",
    "width",
    "height",
    "child",
  ],
);
var _inkImage = MXFunctionInvoke(
  "Ink.image",
  ({
    Key key,
    EdgeInsetsGeometry padding,
    ImageProvider<dynamic> image,
    dynamic onImageError,
    ColorFilter colorFilter,
    BoxFit fit,
    AlignmentGeometry alignment = Alignment.center,
    Rect centerSlice,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    bool matchTextDirection = false,
    dynamic width,
    dynamic height,
    Widget child,
  }) =>
      Ink.image(
    key: key,
    padding: padding,
    image: image,
    onImageError: createVoidTwoParamsClosure<dynamic, StackTrace>(_inkImage.buildOwner, onImageError),
    colorFilter: colorFilter,
    fit: fit,
    alignment: alignment,
    centerSlice: centerSlice,
    repeat: repeat,
    matchTextDirection: matchTextDirection,
    width: width?.toDouble(),
    height: height?.toDouble(),
    child: child,
  ),
  [
    "key",
    "padding",
    "image",
    "onImageError",
    "colorFilter",
    "fit",
    "alignment",
    "centerSlice",
    "repeat",
    "matchTextDirection",
    "width",
    "height",
    "child",
  ],
);
var _inkDecoration = MXFunctionInvoke(
  "InkDecoration",
  ({
    Decoration decoration,
    ImageConfiguration configuration,
    MaterialInkController controller,
    RenderBox referenceBox,
    dynamic onRemoved,
  }) =>
      InkDecoration(
    decoration: decoration,
    configuration: configuration,
    controller: controller,
    referenceBox: referenceBox,
    onRemoved: createVoidCallbackClosure(_inkDecoration.buildOwner, onRemoved),
  ),
  [
    // MX modified begin
    "__mx_controller",
    // MX modified end
    "configuration",
    "controller",
    "referenceBox",
    "onRemoved",
  ],
);
