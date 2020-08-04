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
import 'package:flutter/src/painting/image_provider.dart';
import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/painting/_network_image_web.dart';
import 'package:flutter/src/painting/binding.dart';
import 'package:flutter/src/painting/image_cache.dart';
import 'package:flutter/src/painting/image_stream.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerNetworkImageWebSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[networkImage.funName] = networkImage;
  m[imageConfiguration.funName] = imageConfiguration;
  m[assetBundleImageKey.funName] = assetBundleImageKey;
  m[resizeImage.funName] = resizeImage;
  m[fileImage.funName] = fileImage;
  m[memoryImage.funName] = memoryImage;
  m[exactAssetImage.funName] = exactAssetImage;
  m[networkImageLoadException.funName] = networkImageLoadException;
  return m;
}
var networkImage = MXFunctionInvoke(
    "NetworkImage",
    ({
      String url,
      dynamic scale = 1.0,
      Map<String, String> headers,
    }) =>
      NetworkImage(
      url,
      scale: scale,
      headers: headers,
    ),
);
var imageConfiguration = MXFunctionInvoke(
    "ImageConfiguration",
    ({
      AssetBundle bundle,
      dynamic devicePixelRatio,
      Locale locale,
      TextDirection textDirection,
      Size size,
      TargetPlatform platform,
    }) =>
      ImageConfiguration(
      bundle: bundle,
      devicePixelRatio: devicePixelRatio,
      locale: locale,
      textDirection: textDirection,
      size: size,
      platform: platform,
    ),
);
var assetBundleImageKey = MXFunctionInvoke(
    "AssetBundleImageKey",
    ({
      AssetBundle bundle,
      String name,
      dynamic scale,
    }) =>
      AssetBundleImageKey(
      bundle: bundle,
      name: name,
      scale: scale,
    ),
);
var resizeImage = MXFunctionInvoke(
    "ResizeImage",
    ({
      ImageProvider<dynamic> imageProvider,
      int width,
      int height,
    }) =>
      ResizeImage(
      imageProvider,
      width: width,
      height: height,
    ),
);
var fileImage = MXFunctionInvoke(
    "FileImage",
    ({
      File file,
      dynamic scale = 1.0,
    }) =>
      FileImage(
      file,
      scale: scale,
    ),
);
var memoryImage = MXFunctionInvoke(
    "MemoryImage",
    ({
      Uint8List bytes,
      dynamic scale = 1.0,
    }) =>
      MemoryImage(
      bytes,
      scale: scale,
    ),
);
var exactAssetImage = MXFunctionInvoke(
    "ExactAssetImage",
    ({
      String assetName,
      dynamic scale = 1.0,
      AssetBundle bundle,
      String package,
    }) =>
      ExactAssetImage(
      assetName,
      scale: scale,
      bundle: bundle,
      package: package,
    ),
);
var networkImageLoadException = MXFunctionInvoke(
    "NetworkImageLoadException",
    ({
      int statusCode,
      Uri uri,
    }) =>
      NetworkImageLoadException(
      statusCode: statusCode,
      uri: uri,
    ),
);
