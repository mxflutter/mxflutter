//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/painting/decoration_image.dart';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/painting/alignment.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/borders.dart';
import 'package:flutter/src/painting/box_fit.dart';
import 'package:flutter/src/painting/image_provider.dart';
import 'package:flutter/src/painting/image_stream.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDecorationImageSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_imageRepeat.funName] = _imageRepeat;
  m[_decorationImage.funName] = _decorationImage;
  return m;
}
var _imageRepeat = MXFunctionInvoke(
    "ImageRepeat",
    ({Map args}) => MXImageRepeat.parse(args),
  );
var _decorationImage = MXFunctionInvoke(
    "DecorationImage",
    (
      {
      ImageProvider<dynamic> image,
      dynamic onError,
      ui.ColorFilter colorFilter,
      BoxFit fit,
      AlignmentGeometry alignment,
      ui.Rect centerSlice,
      ImageRepeat repeat = ImageRepeat.noRepeat,
      bool matchTextDirection = false,
      }
    ) =>
      DecorationImage(
      image: image,
      onError: createVoidTwoParamsClosure<dynamic, StackTrace>(_decorationImage.buildOwner, onError),
      colorFilter: colorFilter,
      fit: fit,
      alignment: alignment,
      centerSlice: centerSlice,
      repeat: repeat,
      matchTextDirection: matchTextDirection,
    ),
);
class MXImageRepeat {
  static Map str2VMap = {
    'ImageRepeat.repeat': ImageRepeat.repeat,
    'ImageRepeat.repeatX': ImageRepeat.repeatX,
    'ImageRepeat.repeatY': ImageRepeat.repeatY,
    'ImageRepeat.noRepeat': ImageRepeat.noRepeat,
  };
  static ImageRepeat parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
