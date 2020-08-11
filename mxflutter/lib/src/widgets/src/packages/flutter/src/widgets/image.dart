//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/image.dart';
import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/disposable_build_context.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/localizations.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/widgets/scroll_aware_image_provider.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerImageSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_image.funName] = _image;
  m[_image_network.funName] = _image_network;
  m[_image_file.funName] = _image_file;
  m[_image_asset.funName] = _image_asset;
  m[_image_memory.funName] = _image_memory;
  return m;
}
var _image = MXFunctionInvoke(
    "Image",
    (
      {
      Key key,
      ImageProvider<dynamic> image,
      dynamic frameBuilder,
      dynamic loadingBuilder,
      dynamic errorBuilder,
      String semanticLabel,
      bool excludeFromSemantics = false,
      dynamic width,
      dynamic height,
      Color color,
      BlendMode colorBlendMode,
      BoxFit fit,
      AlignmentGeometry alignment = Alignment.center,
      ImageRepeat repeat = ImageRepeat.noRepeat,
      Rect centerSlice,
      bool matchTextDirection = false,
      bool gaplessPlayback = false,
      FilterQuality filterQuality =  FilterQuality.low,
      }
    ) =>
      Image(
      key: key,
      image: image,
      frameBuilder: null,
      loadingBuilder: null,
      errorBuilder: null,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width?.toDouble(),
      height: height?.toDouble(),
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      filterQuality: filterQuality,
    ),
);
var _image_network = MXFunctionInvoke(
  "Image.network",
    (
      {
      String src,
      Key key,
      dynamic scale = 1.0,
      dynamic frameBuilder,
      dynamic loadingBuilder,
      dynamic errorBuilder,
      String semanticLabel,
      bool excludeFromSemantics = false,
      dynamic width,
      dynamic height,
      Color color,
      BlendMode colorBlendMode,
      BoxFit fit,
      AlignmentGeometry alignment = Alignment.center,
      ImageRepeat repeat =  ImageRepeat.noRepeat,
      Rect centerSlice,
      bool matchTextDirection = false,
      bool gaplessPlayback = false,
      FilterQuality filterQuality =  FilterQuality.low,
      dynamic headers,
      int cacheWidth,
      int cacheHeight,
      }
    ) =>
      Image.network(
      src,
      key: key,
      scale: scale?.toDouble(),
      frameBuilder: null,
      loadingBuilder: null,
      errorBuilder: null,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width?.toDouble(),
      height: height?.toDouble(),
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      filterQuality: filterQuality,
      headers: toMapT<String, String>(headers),
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    ),
);
var _image_file = MXFunctionInvoke(
  "Image.file",
    (
      {
      File file,
      Key key,
      dynamic scale = 1.0,
      dynamic frameBuilder,
      dynamic errorBuilder,
      String semanticLabel,
      bool excludeFromSemantics = false,
      dynamic width,
      dynamic height,
      Color color,
      BlendMode colorBlendMode,
      BoxFit fit,
      AlignmentGeometry alignment = Alignment.center,
      ImageRepeat repeat =  ImageRepeat.noRepeat,
      Rect centerSlice,
      bool matchTextDirection = false,
      bool gaplessPlayback = false,
      FilterQuality filterQuality =  FilterQuality.low,
      int cacheWidth,
      int cacheHeight,
      }
    ) =>
      Image.file(
      file,
      key: key,
      scale: scale?.toDouble(),
      frameBuilder: null,
      errorBuilder: null,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width?.toDouble(),
      height: height?.toDouble(),
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    ),
);
var _image_asset = MXFunctionInvoke(
  "Image.asset",
    (
      {
      String name,
      Key key,
      AssetBundle bundle,
      dynamic frameBuilder,
      dynamic errorBuilder,
      String semanticLabel,
      bool excludeFromSemantics = false,
      dynamic scale,
      dynamic width,
      dynamic height,
      Color color,
      BlendMode colorBlendMode,
      BoxFit fit,
      AlignmentGeometry alignment = Alignment.center,
      ImageRepeat repeat =  ImageRepeat.noRepeat,
      Rect centerSlice,
      bool matchTextDirection = false,
      bool gaplessPlayback = false,
      String package,
      FilterQuality filterQuality =  FilterQuality.low,
      int cacheWidth,
      int cacheHeight,
      }
    ) =>
      Image.asset(
      name,
      key: key,
      bundle: bundle,
      frameBuilder: null,
      errorBuilder: null,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale?.toDouble(),
      width: width?.toDouble(),
      height: height?.toDouble(),
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    ),
);
var _image_memory = MXFunctionInvoke(
  "Image.memory",
    (
      {
      Uint8List bytes,
      Key key,
      dynamic scale = 1.0,
      dynamic frameBuilder,
      dynamic errorBuilder,
      String semanticLabel,
      bool excludeFromSemantics = false,
      dynamic width,
      dynamic height,
      Color color,
      BlendMode colorBlendMode,
      BoxFit fit,
      AlignmentGeometry alignment = Alignment.center,
      ImageRepeat repeat =  ImageRepeat.noRepeat,
      Rect centerSlice,
      bool matchTextDirection = false,
      bool gaplessPlayback = false,
      FilterQuality filterQuality =  FilterQuality.low,
      int cacheWidth,
      int cacheHeight,
      }
    ) =>
      Image.memory(
      bytes,
      key: key,
      scale: scale?.toDouble(),
      frameBuilder: null,
      errorBuilder: null,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width?.toDouble(),
      height: height?.toDouble(),
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    ),
);
