//  MXFlutterFramework
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mxflutter/mxflutter.dart';

Map<String, MXFunctionInvoke> registerCachedNetworkImageSeries() {
  var m = <String, MXFunctionInvoke>{};

  m[_cachedNetworkImage.funName] = _cachedNetworkImage;

  return m;
}

var _cachedNetworkImage = MXFunctionInvoke(
  "CachedNetworkImage",
  ({
    Key key,
    String imageUrl,
    dynamic imageBuilder,
    dynamic placeholder,
    dynamic errorWidget,
    Duration fadeOutDuration = const Duration(milliseconds: 1000),
    Curve fadeOutCurve = Curves.easeOut,
    Duration fadeInDuration = const Duration(milliseconds: 500),
    Curve fadeInCurve = Curves.easeIn,
    dynamic width,
    dynamic height,
    BoxFit fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    bool matchTextDirection = false,
    Map<String, String> httpHeaders,
    dynamic cacheManager,
    bool useOldImageOnUrlChange = false,
    Color color,
    FilterQuality filterQuality = FilterQuality.low,
    BlendMode colorBlendMode,
    Duration placeholderFadeInDuration,
    // MX modified begin
    Widget placeholderChild,
    // MX modified end
  }) =>
      CachedNetworkImage(
    key: key,
    imageUrl: imageUrl,
    placeholder: placeholderChild != null ? (context, url) => placeholderChild : null,
    errorWidget: errorWidget,
    fadeOutDuration: fadeOutDuration,
    fadeOutCurve: fadeOutCurve,
    fadeInDuration: fadeInDuration,
    fadeInCurve: fadeInCurve,
    width: width?.toDouble(),
    height: height?.toDouble(),
    fit: fit,
    alignment: alignment,
    repeat: repeat,
    matchTextDirection: matchTextDirection,
    httpHeaders: httpHeaders,
    cacheManager: cacheManager,
    useOldImageOnUrlChange: useOldImageOnUrlChange,
    color: color,
    filterQuality: filterQuality,
    colorBlendMode: colorBlendMode,
    placeholderFadeInDuration: placeholderFadeInDuration,
  ),
  [
    "key",
    "imageUrl",
    "imageBuilder",
    "placeholder",
    "progressIndicatorBuilder",
    "errorWidget",
    "fadeOutDuration",
    "fadeOutCurve",
    "fadeInDuration",
    "fadeInCurve",
    "width",
    "height",
    "fit",
    "alignment",
    "repeat",
    "matchTextDirection",
    "httpHeaders",
    "cacheManager",
    "useOldImageOnUrlChange",
    "color",
    "filterQuality",
    "colorBlendMode",
    "placeholderFadeInDuration",
    // MX modified begin
    "placeholderChild",
    //MX modified end
  ],
);
