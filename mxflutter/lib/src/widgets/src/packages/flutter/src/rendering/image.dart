//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/image.dart';
import 'dart:ui';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/painting.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerImageSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_renderImage.funName] = _renderImage;
  return m;
}
var _renderImage = MXFunctionInvoke(
    "RenderImage",
    (
      {
      Image image,
      double width,
      double height,
      double scale = 1.0,
      Color color,
      BlendMode colorBlendMode,
      BoxFit fit,
      AlignmentGeometry alignment,
      ImageRepeat repeat = ImageRepeat.noRepeat,
      Rect centerSlice,
      bool matchTextDirection = false,
      TextDirection textDirection,
      bool invertColors = false,
      FilterQuality filterQuality = FilterQuality.low,
      }
    ) =>
      RenderImage(
      image: image,
      width: width?.toDouble(),
      height: height?.toDouble(),
      scale: scale?.toDouble(),
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      textDirection: textDirection,
      invertColors: invertColors,
      filterQuality: filterQuality,
    ),
);
