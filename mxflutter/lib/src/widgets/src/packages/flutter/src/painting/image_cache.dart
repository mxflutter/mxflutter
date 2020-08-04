//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/image_cache.dart';


class MXProxyImageCache {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[imageCache.funName] = imageCache;
    m[imageCacheStatus_.funName] = imageCacheStatus_;
    return m;
  }
  static var imageCache = MXFunctionInvoke(
      "ImageCache",
      ({
      }) =>
        ImageCache(
      ),
    );
  static var imageCacheStatus_ = MXFunctionInvoke(
    "imageCacheStatus.",
      ({
        bool pending = false,
        bool keepAlive = false,
        bool live = false,
      }) =>
        ImageCacheStatus.(
        pending: pending,
        keepAlive: keepAlive,
        live: live,
      ),
    );
}
