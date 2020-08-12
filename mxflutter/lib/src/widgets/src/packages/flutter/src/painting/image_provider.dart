//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/image_provider.dart';
import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/painting/binding.dart';
import 'package:flutter/src/painting/image_cache.dart';
import 'package:flutter/src/painting/image_stream.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerImageProviderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_imageConfiguration.funName] = _imageConfiguration;
  m[_imageConfiguration_empty.funName] = _imageConfiguration_empty;
  m[_assetBundleImageKey.funName] = _assetBundleImageKey;
  m[_resizeImage.funName] = _resizeImage;
  m[_networkImage.funName] = _networkImage;
  m[_fileImage.funName] = _fileImage;
  m[_memoryImage.funName] = _memoryImage;
  m[_exactAssetImage.funName] = _exactAssetImage;
  m[_networkImageLoadException.funName] = _networkImageLoadException;
  return m;
}
var _imageConfiguration = MXFunctionInvoke(
    "ImageConfiguration",
    (
      {
      AssetBundle bundle,
      dynamic devicePixelRatio,
      ui.Locale locale,
      ui.TextDirection textDirection,
      ui.Size size,
      TargetPlatform platform,
      }
    ) =>
      ImageConfiguration(
      bundle: bundle,
      devicePixelRatio: devicePixelRatio?.toDouble(),
      locale: locale,
      textDirection: textDirection,
      size: size,
      platform: platform,
    ),
);
var _imageConfiguration_empty = MXFunctionInvoke(
  "ImageConfiguration.empty",
    (
    ) =>
      ImageConfiguration.empty
);
var _assetBundleImageKey = MXFunctionInvoke(
    "AssetBundleImageKey",
    (
      {
      AssetBundle bundle,
      String name,
      dynamic scale,
      }
    ) =>
      AssetBundleImageKey(
      bundle: bundle,
      name: name,
      scale: scale?.toDouble(),
    ),
);
var _resizeImage = MXFunctionInvoke(
    "ResizeImage",
    (
      {
      ImageProvider<dynamic> imageProvider,
      int width,
      int height,
      }
    ) =>
      ResizeImage(
      imageProvider,
      width: width,
      height: height,
    ),
);
var _networkImage = MXFunctionInvoke(
    "NetworkImage",
    (
      {
      String url,
      dynamic scale,
      dynamic headers,
      }
    ) =>
      NetworkImage(
      url,
      scale: scale?.toDouble(),
      headers: toMapT<String, String>(headers),
    ),
);
var _fileImage = MXFunctionInvoke(
    "FileImage",
    (
      {
      File file,
      dynamic scale = 1.0,
      }
    ) =>
      FileImage(
      file,
      scale: scale?.toDouble(),
    ),
);
var _memoryImage = MXFunctionInvoke(
    "MemoryImage",
    (
      {
      Uint8List bytes,
      dynamic scale = 1.0,
      }
    ) =>
      MemoryImage(
      bytes,
      scale: scale?.toDouble(),
    ),
);
var _exactAssetImage = MXFunctionInvoke(
    "ExactAssetImage",
    (
      {
      String assetName,
      dynamic scale = 1.0,
      AssetBundle bundle,
      String package,
      }
    ) =>
      ExactAssetImage(
      assetName,
      scale: scale?.toDouble(),
      bundle: bundle,
      package: package,
    ),
);
var _networkImageLoadException = MXFunctionInvoke(
    "NetworkImageLoadException",
    (
      {
      int statusCode,
      Uri uri,
      }
    ) =>
      NetworkImageLoadException(
      statusCode: statusCode,
      uri: uri,
    ),
);
