//  MXFlutterFramework
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';

final DynamicLibrary dl = Platform.isAndroid ? DynamicLibrary.open("libmxflutter.so") : DynamicLibrary.process();

/// 同步获取属性回调。
final Pointer<Utf8> Function(Pointer<Utf8>) syncPropsCallback =
    dl.lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Utf8>)>>("syncPropsCallback").asFunction();
