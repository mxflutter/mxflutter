//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/image.dart';


class MXProxyImage {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[renderImage.funName] = renderImage;
    return m;
  }
  static var renderImage = MXFunctionInvoke(
      "RenderImage",
      ({
        Image image,
        dynamic width,
        dynamic height,
        dynamic scale = 1.0,
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
      }) =>
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
}
