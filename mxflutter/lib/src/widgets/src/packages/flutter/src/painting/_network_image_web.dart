//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/_network_image_web.dart';
import 'package:flutter/src/painting/image_provider.dart';


class MXProxyNetworkImageWeb {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
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
  static var networkImage = MXFunctionInvoke(
      "NetworkImage",
      ({
        String url,
        dynamic scale = 1.0,
        Map<String*, String> headers,
      }) =>
        NetworkImage(
        url,
        scale: scale?.toDouble(),
        headers: headers,
      ),
    );
  static var imageConfiguration = MXFunctionInvoke(
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
        devicePixelRatio: devicePixelRatio?.toDouble(),
        locale: locale,
        textDirection: textDirection,
        size: size,
        platform: platform,
      ),
    );
  static var assetBundleImageKey = MXFunctionInvoke(
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
    );
  static var resizeImage = MXFunctionInvoke(
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
  static var fileImage = MXFunctionInvoke(
      "FileImage",
      ({
        File file,
        dynamic scale = 1.0,
      }) =>
        FileImage(
        file,
        scale: scale?.toDouble(),
      ),
    );
  static var memoryImage = MXFunctionInvoke(
      "MemoryImage",
      ({
        Uint8List bytes,
        dynamic scale = 1.0,
      }) =>
        MemoryImage(
        bytes,
        scale: scale?.toDouble(),
      ),
    );
  static var exactAssetImage = MXFunctionInvoke(
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
    );
  static var networkImageLoadException = MXFunctionInvoke(
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
}
