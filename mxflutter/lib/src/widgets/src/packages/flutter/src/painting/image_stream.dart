//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/image_stream.dart';
import 'dart:async';
import 'dart:ui' as ui;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerImageStreamSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_imageInfo.funName] = _imageInfo;
  m[_imageStreamListener.funName] = _imageStreamListener;
  m[_imageChunkEvent.funName] = _imageChunkEvent;
  m[_imageStream.funName] = _imageStream;
  m[_oneFrameImageStreamCompleter.funName] = _oneFrameImageStreamCompleter;
  m[_multiFrameImageStreamCompleter.funName] = _multiFrameImageStreamCompleter;
  return m;
}

var _imageInfo = MXFunctionInvoke(
  "ImageInfo",
  ({
    ui.Image image,
    dynamic scale = 1.0,
    String debugLabel,
  }) =>
      ImageInfo(
    image: image,
    scale: scale?.toDouble(),
    debugLabel: debugLabel,
  ),
  [
    "image",
    "scale",
    "debugLabel",
  ],
);
var _imageStreamListener = MXFunctionInvoke(
  "ImageStreamListener",
  ({
    dynamic onImage,
    dynamic onChunk,
    dynamic onError,
  }) =>
      ImageStreamListener(
    createVoidTwoParamsClosure<ImageInfo, bool>(_imageStreamListener.buildOwner, onImage),
    onChunk: createValueChangedGenericClosure<ImageChunkEvent>(_imageStreamListener.buildOwner, onChunk),
    onError: createVoidTwoParamsClosure<dynamic, StackTrace>(_imageStreamListener.buildOwner, onError),
  ),
  [
    "onImage",
    "onChunk",
    "onError",
  ],
);
var _imageChunkEvent = MXFunctionInvoke(
  "ImageChunkEvent",
  ({
    int cumulativeBytesLoaded,
    int expectedTotalBytes,
  }) =>
      ImageChunkEvent(
    cumulativeBytesLoaded: cumulativeBytesLoaded,
    expectedTotalBytes: expectedTotalBytes,
  ),
  [
    "cumulativeBytesLoaded",
    "expectedTotalBytes",
  ],
);
var _imageStream = MXFunctionInvoke(
  "ImageStream",
  () => ImageStream(),
  [],
);
var _oneFrameImageStreamCompleter = MXFunctionInvoke(
  "OneFrameImageStreamCompleter",
  ({
    Future<ImageInfo> image,
    dynamic informationCollector,
  }) =>
      OneFrameImageStreamCompleter(
    image,
    informationCollector: null,
  ),
  [
    "image",
    "informationCollector",
  ],
);
var _multiFrameImageStreamCompleter = MXFunctionInvoke(
  "MultiFrameImageStreamCompleter",
  ({
    Future<ui.Codec> codec,
    dynamic scale,
    String debugLabel,
    Stream<ImageChunkEvent> chunkEvents,
    dynamic informationCollector,
  }) =>
      MultiFrameImageStreamCompleter(
    codec: codec,
    scale: scale?.toDouble(),
    debugLabel: debugLabel,
    chunkEvents: chunkEvents,
    informationCollector: null,
  ),
  [
    "__mx_codec",
    "scale",
    "debugLabel",
    "chunkEvents",
    "informationCollector",
  ],
);
