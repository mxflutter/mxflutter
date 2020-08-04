//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/fade_in_image.dart';


class MXProxyFadeInImage {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[fadeInImage.funName] = fadeInImage;
    m[fadeInImage_memoryNetwork.funName] = fadeInImage_memoryNetwork;
    m[fadeInImage_assetNetwork.funName] = fadeInImage_assetNetwork;
    return m;
  }
  static var fadeInImage = MXFunctionInvoke(
      "FadeInImage",
      ({
        Key key,
        ImageProvider<dynamic> placeholder,
        dynamic placeholderErrorBuilder,
        ImageProvider<dynamic> image,
        dynamic imageErrorBuilder,
        bool excludeFromSemantics = false,
        String imageSemanticLabel,
        Duration fadeOutDuration,
        Curve fadeOutCurve,
        Duration fadeInDuration,
        Curve fadeInCurve,
        dynamic width,
        dynamic height,
        BoxFit fit,
        AlignmentGeometry alignment,
        ImageRepeat repeat = ImageRepeat.noRepeat,
        bool matchTextDirection = false,
      }) =>
        FadeInImage(
        key: key,
        placeholder: placeholder,
        placeholderErrorBuilder: placeholderErrorBuilder,
        image: image,
        imageErrorBuilder: imageErrorBuilder,
        excludeFromSemantics: excludeFromSemantics,
        imageSemanticLabel: imageSemanticLabel,
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
      ),
    );
  static var fadeInImage_memoryNetwork = MXFunctionInvoke(
    "fadeInImage.memoryNetwork",
      ({
        Key key,
        Uint8List placeholder,
        dynamic placeholderErrorBuilder,
        String image,
        dynamic imageErrorBuilder,
        dynamic placeholderScale = 1.0,
        dynamic imageScale = 1.0,
        bool excludeFromSemantics = false,
        String imageSemanticLabel,
        Duration fadeOutDuration,
        Curve fadeOutCurve,
        Duration fadeInDuration,
        Curve fadeInCurve,
        dynamic width,
        dynamic height,
        BoxFit fit,
        AlignmentGeometry alignment,
        ImageRepeat repeat = ImageRepeat.noRepeat,
        bool matchTextDirection = false,
        int placeholderCacheWidth,
        int placeholderCacheHeight,
        int imageCacheWidth,
        int imageCacheHeight,
      }) =>
        FadeInImage.memoryNetwork(
        key: key,
        placeholder: placeholder,
        placeholderErrorBuilder: placeholderErrorBuilder,
        image: image,
        imageErrorBuilder: imageErrorBuilder,
        placeholderScale: placeholderScale?.toDouble(),
        imageScale: imageScale?.toDouble(),
        excludeFromSemantics: excludeFromSemantics,
        imageSemanticLabel: imageSemanticLabel,
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
        placeholderCacheWidth: placeholderCacheWidth,
        placeholderCacheHeight: placeholderCacheHeight,
        imageCacheWidth: imageCacheWidth,
        imageCacheHeight: imageCacheHeight,
      ),
    );
  static var fadeInImage_assetNetwork = MXFunctionInvoke(
    "fadeInImage.assetNetwork",
      ({
        Key key,
        String placeholder,
        dynamic placeholderErrorBuilder,
        String image,
        dynamic imageErrorBuilder,
        AssetBundle bundle,
        dynamic placeholderScale,
        dynamic imageScale = 1.0,
        bool excludeFromSemantics = false,
        String imageSemanticLabel,
        Duration fadeOutDuration,
        Curve fadeOutCurve,
        Duration fadeInDuration,
        Curve fadeInCurve,
        dynamic width,
        dynamic height,
        BoxFit fit,
        AlignmentGeometry alignment,
        ImageRepeat repeat = ImageRepeat.noRepeat,
        bool matchTextDirection = false,
        int placeholderCacheWidth,
        int placeholderCacheHeight,
        int imageCacheWidth,
        int imageCacheHeight,
      }) =>
        FadeInImage.assetNetwork(
        key: key,
        placeholder: placeholder,
        placeholderErrorBuilder: placeholderErrorBuilder,
        image: image,
        imageErrorBuilder: imageErrorBuilder,
        bundle: bundle,
        placeholderScale: placeholderScale?.toDouble(),
        imageScale: imageScale?.toDouble(),
        excludeFromSemantics: excludeFromSemantics,
        imageSemanticLabel: imageSemanticLabel,
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
        placeholderCacheWidth: placeholderCacheWidth,
        placeholderCacheHeight: placeholderCacheHeight,
        imageCacheWidth: imageCacheWidth,
        imageCacheHeight: imageCacheHeight,
      ),
    );
}
