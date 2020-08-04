//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/decoration_image.dart';


class MXProxyDecorationImage {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[imageRepeat.funName] = imageRepeat;
    m[decorationImage.funName] = decorationImage;
    m[decorationImagePainter_.funName] = decorationImagePainter_;
    return m;
  }
  static var imageRepeat = MXFunctionInvoke(
      "ImageRepeat",
      ({Map args}) => MXImageRepeat.parse(args),
  );
  static var decorationImage = MXFunctionInvoke(
      "DecorationImage",
      ({
        ImageProvider<dynamic> image,
        dynamic onError,
        ColorFilter colorFilter,
        BoxFit fit,
        AlignmentGeometry alignment,
        Rect centerSlice,
        ImageRepeat repeat = ImageRepeat.noRepeat,
        bool matchTextDirection = false,
      }) =>
        DecorationImage(
        image: image,
        onError: createVoidCallbackClosure(decorationImage.buildOwner, onError),
        colorFilter: colorFilter,
        fit: fit,
        alignment: alignment,
        centerSlice: centerSlice,
        repeat: repeat,
        matchTextDirection: matchTextDirection,
      ),
    );
  static var decorationImagePainter_ = MXFunctionInvoke(
    "decorationImagePainter.",
      ({
        DecorationImage _details,
        dynamic _onChanged,
      }) =>
        DecorationImagePainter.(
        _details,
        _onChanged,
      ),
    );
}
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
