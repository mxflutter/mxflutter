//  mx_json_proxy_image.dart
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:mxflutter/src/mx_function_invoke.dart';

class MXRegisterImageSeries {
  static Map<String, MXFunctionInvoke> registerSeries() {
    Map<String, MXFunctionInvoke> m = {};

    m[image.funName] = image;
    m[imageNetwork.funName] = imageNetwork;

    return m;
  }
}

class MXImageRepeat {
  static Map str2VMap = {
    "ImageRepeat.repeat": ImageRepeat.repeat,
    "ImageRepeat.repeatX": ImageRepeat.repeatX,
    "ImageRepeat.repeatY": ImageRepeat.repeatY,
    "ImageRepeat.noRepeat": ImageRepeat.noRepeat,
  };

  static ImageRepeat parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}

var image = MXFunctionInvoke(
  "Image",
  ({
    Key key,
    ImageProvider image,
    ImageFrameBuilder frameBuilder,
    ImageLoadingBuilder loadingBuilder,
    ImageErrorWidgetBuilder errorBuilder,
    dynamic width,
    dynamic height,
    Color color,
    FilterQuality filterQuality = FilterQuality.low,
    BlendMode colorBlendMode,
    BoxFit fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    String semanticLabel,
    bool excludeFromSemantics = false,
  }) =>
      Image(
    key: key,
    image: image,
    frameBuilder: frameBuilder,
    loadingBuilder: loadingBuilder,
    errorBuilder: errorBuilder,
    width: width.toDouble(),
    height: height.toDouble(),
    color: color,
    filterQuality: filterQuality,
    colorBlendMode: colorBlendMode,
    fit: fit,
    alignment: alignment,
    repeat: repeat,
    centerSlice: centerSlice,
    matchTextDirection: matchTextDirection,
    gaplessPlayback: gaplessPlayback,
    semanticLabel: semanticLabel,
    excludeFromSemantics: excludeFromSemantics,
  ),
);

var imageNetwork = MXFunctionInvoke(
  "Image.network",
  ({
    String src,
    Key key,
    dynamic scale = 1.0,
    ImageFrameBuilder frameBuilder,
    ImageLoadingBuilder loadingBuilder,
    ImageErrorWidgetBuilder errorBuilder,
    String semanticLabel,
    bool excludeFromSemantics = false,
    dynamic width,
    dynamic height,
    Color color,
    BlendMode colorBlendMode,
    BoxFit fit,
    Alignment alignment = Alignment.center,
    dynamic repeat = ImageRepeat.noRepeat,
    Rect centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    FilterQuality filterQuality = FilterQuality.low,
    Map<String, String> headers,
    int cacheWidth,
    int cacheHeight,
  }) =>
      Image.network(
    src,
    key: key,
    scale: scale.toDouble(),
    frameBuilder: frameBuilder,
    loadingBuilder: loadingBuilder,
    errorBuilder: errorBuilder,
    semanticLabel: semanticLabel,
    excludeFromSemantics: excludeFromSemantics,
    width: width.toDouble(),
    height: height.toDouble(),
    color: color,
    colorBlendMode: colorBlendMode,
    fit: fit,
    alignment: alignment,
    repeat: MXImageRepeat.parse(repeat),
    centerSlice: centerSlice,
    matchTextDirection: matchTextDirection,
    gaplessPlayback: gaplessPlayback,
    filterQuality: filterQuality,
    headers: headers,
    cacheWidth: cacheWidth,
    cacheHeight: cacheHeight,
  ),
);
