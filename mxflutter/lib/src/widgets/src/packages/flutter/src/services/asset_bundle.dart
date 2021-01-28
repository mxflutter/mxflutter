//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/asset_bundle.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/binary_messenger.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAssetBundleSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_networkAssetBundle.funName] = _networkAssetBundle;
  m[_platformAssetBundle.funName] = _platformAssetBundle;
  return m;
}

var _networkAssetBundle = MXFunctionInvoke(
  "NetworkAssetBundle",
  ({
    Uri baseUrl,
  }) =>
      NetworkAssetBundle(
    baseUrl,
  ),
  [
    "baseUrl",
  ],
);
var _platformAssetBundle = MXFunctionInvoke(
  "PlatformAssetBundle",
  () => PlatformAssetBundle(),
  [],
);
