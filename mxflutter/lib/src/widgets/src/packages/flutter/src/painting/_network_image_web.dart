//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/_network_image_web.dart';
import 'dart:async';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/image_provider.dart';
import 'package:flutter/src/painting/image_stream.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:flutter/src/painting/binding.dart';
import 'package:flutter/src/painting/image_cache.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerNetworkImageWebSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_networkImage.funName] = _networkImage;
  m[_imageConfiguration.funName] = _imageConfiguration;
  m[_assetBundleImageKey.funName] = _assetBundleImageKey;
  m[_resizeImage.funName] = _resizeImage;
  m[_fileImage.funName] = _fileImage;
  m[_memoryImage.funName] = _memoryImage;
  m[_exactAssetImage.funName] = _exactAssetImage;
  m[_networkImageLoadException.funName] = _networkImageLoadException;
  return m;
}
var _networkImage = MXFunctionInvoke(
    "NetworkImage",
    (
      {
      String url,
      double scale = 1.0,
      Map<String, String> headers,
      }
    ) =>
      NetworkImage(
      url,
      scale: scale?.toDouble(),
      headers: headers,
    ),
);
var _imageConfiguration = MXFunctionInvoke(
    "ImageConfiguration",
    (
      {
      AssetBundle bundle,
      double devicePixelRatio,
      Locale locale,
      TextDirection textDirection,
      Size size,
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
var _assetBundleImageKey = MXFunctionInvoke(
    "AssetBundleImageKey",
    (
      {
      AssetBundle bundle,
      String name,
      double scale,
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
var _fileImage = MXFunctionInvoke(
    "FileImage",
    (
      {
      File file,
      double scale = 1.0,
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
      double scale = 1.0,
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
      double scale = 1.0,
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
