//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/decoration_image.dart';
import 'dart:developer' as developer;
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/painting/alignment.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/borders.dart';
import 'package:flutter/src/painting/box_fit.dart';
import 'package:flutter/src/painting/debug.dart';
import 'package:flutter/src/painting/image_provider.dart';
import 'package:flutter/src/painting/image_stream.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDecorationImageSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_imageRepeat.funName] = _imageRepeat;
  m[_decorationImage.funName] = _decorationImage;
  return m;
}

var _imageRepeat =
    MXFunctionInvoke("ImageRepeat", ({String name, int index}) => MXImageRepeat.parse(name, index), ["name", "index"]);
var _decorationImage = MXFunctionInvoke(
  "DecorationImage",
  ({
    ImageProvider<dynamic> image,
    dynamic onError,
    ui.ColorFilter colorFilter,
    BoxFit fit,
    AlignmentGeometry alignment = Alignment.center,
    ui.Rect centerSlice,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    bool matchTextDirection = false,
    dynamic scale = 1.0,
  }) =>
      DecorationImage(
    image: image,
    onError: createVoidTwoParamsClosure<dynamic, StackTrace>(_decorationImage.buildOwner, onError),
    colorFilter: colorFilter,
    fit: fit,
    alignment: alignment,
    centerSlice: centerSlice,
    repeat: repeat,
    matchTextDirection: matchTextDirection,
    scale: scale?.toDouble(),
  ),
  [
    "image",
    "onError",
    "colorFilter",
    "fit",
    "alignment",
    "centerSlice",
    "repeat",
    "matchTextDirection",
    "scale",
  ],
);

class MXImageRepeat {
  static ImageRepeat parse(String name, int index) {
    switch (name) {
      case 'ImageRepeat.repeat':
        return ImageRepeat.repeat;
      case 'ImageRepeat.repeatX':
        return ImageRepeat.repeatX;
      case 'ImageRepeat.repeatY':
        return ImageRepeat.repeatY;
      case 'ImageRepeat.noRepeat':
        return ImageRepeat.noRepeat;
    }
    return null;
  }
}
