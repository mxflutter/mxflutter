import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';

final DynamicLibrary nativeAddLib = Platform.isAndroid
    ? DynamicLibrary.open("libmxflutter.so")
    : DynamicLibrary.process();

/// 同步获取属性回调
final Pointer<Utf8> Function(Pointer<Utf8>) syncPropsCallback = nativeAddLib
    .lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Utf8>)>>("syncPropsCallback")
    .asFunction();