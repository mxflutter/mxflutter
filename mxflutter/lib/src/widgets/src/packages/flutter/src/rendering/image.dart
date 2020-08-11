//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/image.dart';
import 'dart:ui' as ui;
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
      ui.Image image,
      dynamic width,
      dynamic height,
      dynamic scale = 1.0,
      ui.Color color,
      ui.BlendMode colorBlendMode,
      BoxFit fit,
      AlignmentGeometry alignment = Alignment.center,
      ImageRepeat repeat = ImageRepeat.noRepeat,
      ui.Rect centerSlice,
      bool matchTextDirection = false,
      ui.TextDirection textDirection,
      bool invertColors = false,
      ui.FilterQuality filterQuality =  FilterQuality.low,
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
