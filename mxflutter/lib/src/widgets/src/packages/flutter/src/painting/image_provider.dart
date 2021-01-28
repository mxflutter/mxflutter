//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
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
  m[_imageConfigurationEmpty.funName] = _imageConfigurationEmpty;
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
  ({
    AssetBundle bundle,
    dynamic devicePixelRatio,
    ui.Locale locale,
    ui.TextDirection textDirection,
    ui.Size size,
    TargetPlatform platform,
  }) =>
      ImageConfiguration(
    bundle: bundle,
    devicePixelRatio: devicePixelRatio?.toDouble(),
    locale: locale,
    textDirection: textDirection,
    size: size,
    platform: platform,
  ),
  [
    "bundle",
    "devicePixelRatio",
    "locale",
    "textDirection",
    "size",
    "platform",
  ],
);
var _imageConfigurationEmpty = MXFunctionInvoke("ImageConfiguration.empty", () => ImageConfiguration.empty);
var _assetBundleImageKey = MXFunctionInvoke(
  "AssetBundleImageKey",
  ({
    AssetBundle bundle,
    String name,
    dynamic scale,
  }) =>
      AssetBundleImageKey(
    bundle: bundle,
    name: name,
    scale: scale?.toDouble(),
  ),
  [
    "bundle",
    "name",
    "scale",
  ],
);
var _resizeImage = MXFunctionInvoke(
  "ResizeImage",
  ({
    ImageProvider<dynamic> imageProvider,
    int width,
    int height,
    bool allowUpscaling = false,
  }) =>
      ResizeImage(
    imageProvider,
    width: width,
    height: height,
    allowUpscaling: allowUpscaling,
  ),
  [
    "imageProvider",
    "width",
    "height",
    "allowUpscaling",
  ],
);
var _networkImage = MXFunctionInvoke(
  "NetworkImage",
  ({
    String url,

    /// MX modified begin
    dynamic scale = 1.0,

    /// MX modified end
    dynamic headers,
  }) =>
      NetworkImage(
    url,
    scale: scale?.toDouble(),
    headers: toMapT<String, String>(headers),
  ),
  [
    "url",
    "scale",
    "headers",
  ],
);
var _fileImage = MXFunctionInvoke(
  "FileImage",
  ({
    File file,
    dynamic scale = 1.0,
  }) =>
      FileImage(
    file,
    scale: scale?.toDouble(),
  ),
  [
    "file",
    "scale",
  ],
);
var _memoryImage = MXFunctionInvoke(
  "MemoryImage",
  ({
    Uint8List bytes,
    dynamic scale = 1.0,
  }) =>
      MemoryImage(
    bytes,
    scale: scale?.toDouble(),
  ),
  [
    "bytes",
    "scale",
  ],
);
var _exactAssetImage = MXFunctionInvoke(
  "ExactAssetImage",
  ({
    String assetName,
    dynamic scale = 1.0,
    AssetBundle bundle,
    String package,
  }) =>
      ExactAssetImage(
    assetName,
    scale: scale?.toDouble(),
    bundle: bundle,
    package: package,
  ),
  [
    "assetName",
    "scale",
    "bundle",
    "__mx_package",
  ],
);
var _networkImageLoadException = MXFunctionInvoke(
  "NetworkImageLoadException",
  ({
    int statusCode,
    Uri uri,
  }) =>
      NetworkImageLoadException(
    statusCode: statusCode,
    uri: uri,
  ),
  [
    "statusCode",
    "uri",
  ],
);
