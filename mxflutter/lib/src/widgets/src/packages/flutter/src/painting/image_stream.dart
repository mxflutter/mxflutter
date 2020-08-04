//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/image_stream.dart';
import 'dart:async';
import 'dart:ui';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerImageStreamSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[imageInfo.funName] = imageInfo;
  m[imageStreamListener.funName] = imageStreamListener;
  m[imageChunkEvent.funName] = imageChunkEvent;
  m[imageStream.funName] = imageStream;
  m[oneFrameImageStreamCompleter.funName] = oneFrameImageStreamCompleter;
  m[multiFrameImageStreamCompleter.funName] = multiFrameImageStreamCompleter;
  return m;
}
var imageInfo = MXFunctionInvoke(
    "ImageInfo",
    ({
      Image image,
      dynamic scale = 1.0,
    }) =>
      ImageInfo(
      image: image,
      scale: scale,
    ),
);
var imageStreamListener = MXFunctionInvoke(
    "ImageStreamListener",
    ({
      dynamic onImage,
      dynamic onChunk,
      dynamic onError,
    }) =>
      ImageStreamListener(
      onImage,
      onChunk: createValueChangedGenericClosure<ImageChunkEvent>(imageStreamListener.buildOwner, onChunk),
      onError: createVoidCallbackClosure(imageStreamListener.buildOwner, onError),
    ),
);
var imageChunkEvent = MXFunctionInvoke(
    "ImageChunkEvent",
    ({
      int cumulativeBytesLoaded,
      int expectedTotalBytes,
    }) =>
      ImageChunkEvent(
      cumulativeBytesLoaded: cumulativeBytesLoaded,
      expectedTotalBytes: expectedTotalBytes,
    ),
);
var imageStream = MXFunctionInvoke(
    "ImageStream",
    ({
    }) =>
      ImageStream(
    ),
);
var oneFrameImageStreamCompleter = MXFunctionInvoke(
    "OneFrameImageStreamCompleter",
    ({
      Future<ImageInfo> image,
      dynamic informationCollector,
    }) =>
      OneFrameImageStreamCompleter(
      image,
      informationCollector: informationCollector,
    ),
);
var multiFrameImageStreamCompleter = MXFunctionInvoke(
    "MultiFrameImageStreamCompleter",
    ({
      Future<Codec> codec,
      dynamic scale,
      Stream<ImageChunkEvent> chunkEvents,
      dynamic informationCollector,
    }) =>
      MultiFrameImageStreamCompleter(
      codec: codec,
      scale: scale,
      chunkEvents: chunkEvents,
      informationCollector: informationCollector,
    ),
);
