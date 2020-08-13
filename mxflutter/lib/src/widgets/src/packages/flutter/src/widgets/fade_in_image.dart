//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/fade_in_image.dart';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/image.dart';
import 'package:flutter/src/widgets/implicit_animations.dart';
import 'package:flutter/src/widgets/transitions.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerFadeInImageSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_fadeInImage.funName] = _fadeInImage;
  m[_fadeInImage_memoryNetwork.funName] = _fadeInImage_memoryNetwork;
  m[_fadeInImage_assetNetwork.funName] = _fadeInImage_assetNetwork;
  return m;
}
var _fadeInImage = MXFunctionInvoke(
    "FadeInImage",
    (
      {
      Key key,
      ImageProvider<dynamic> placeholder,
      dynamic placeholderErrorBuilder,
      ImageProvider<dynamic> image,
      dynamic imageErrorBuilder,
      bool excludeFromSemantics = false,
      String imageSemanticLabel,
      /// MX modified begin add const
      Duration fadeOutDuration = const Duration(milliseconds: 300),
      /// MX modified end
      Curve fadeOutCurve = Curves.easeOut,
      Duration fadeInDuration = const Duration(milliseconds: 700),
      Curve fadeInCurve = Curves.easeIn,
      dynamic width,
      dynamic height,
      BoxFit fit,
      AlignmentGeometry alignment = Alignment.center,
      ImageRepeat repeat = ImageRepeat.noRepeat,
      bool matchTextDirection = false,
      }
    ) =>
      FadeInImage(
      key: key,
      placeholder: placeholder,
      placeholderErrorBuilder: null,
      image: image,
      imageErrorBuilder: null,
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
var _fadeInImage_memoryNetwork = MXFunctionInvoke(
  "FadeInImage.memoryNetwork",
    (
      {
      Key key,
      Uint8List placeholder,
      dynamic placeholderErrorBuilder,
      String image,
      dynamic imageErrorBuilder,
      dynamic placeholderScale = 1.0,
      dynamic imageScale = 1.0,
      bool excludeFromSemantics = false,
      String imageSemanticLabel,
      /// MX modified begin add const
      Duration fadeOutDuration = const Duration(milliseconds: 300),
      /// MX modified end
      Curve fadeOutCurve = Curves.easeOut,
      Duration fadeInDuration = const Duration(milliseconds: 700),
      Curve fadeInCurve = Curves.easeIn,
      dynamic width,
      dynamic height,
      BoxFit fit,
      AlignmentGeometry alignment = Alignment.center,
      ImageRepeat repeat =  ImageRepeat.noRepeat,
      bool matchTextDirection = false,
      int placeholderCacheWidth,
      int placeholderCacheHeight,
      int imageCacheWidth,
      int imageCacheHeight,
      }
    ) =>
      FadeInImage.memoryNetwork(
      key: key,
      placeholder: placeholder,
      placeholderErrorBuilder: null,
      image: image,
      imageErrorBuilder: null,
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
var _fadeInImage_assetNetwork = MXFunctionInvoke(
  "FadeInImage.assetNetwork",
    (
      {
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
      /// MX modified begin add const
      Duration fadeOutDuration = const Duration(milliseconds: 300),
      /// MX modified end
      Curve fadeOutCurve = Curves.easeOut,
      Duration fadeInDuration = const Duration(milliseconds: 700),
      Curve fadeInCurve = Curves.easeIn,
      dynamic width,
      dynamic height,
      BoxFit fit,
      AlignmentGeometry alignment = Alignment.center,
      ImageRepeat repeat =  ImageRepeat.noRepeat,
      bool matchTextDirection = false,
      int placeholderCacheWidth,
      int placeholderCacheHeight,
      int imageCacheWidth,
      int imageCacheHeight,
      }
    ) =>
      FadeInImage.assetNetwork(
      key: key,
      placeholder: placeholder,
      placeholderErrorBuilder: null,
      image: image,
      imageErrorBuilder: null,
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
