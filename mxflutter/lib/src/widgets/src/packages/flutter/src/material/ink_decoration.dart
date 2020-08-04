//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/ink_decoration.dart';


class MXProxyInkDecoration {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[ink.funName] = ink;
    m[ink_image.funName] = ink_image;
    m[inkDecoration.funName] = inkDecoration;
    return m;
  }
  static var ink = MXFunctionInvoke(
      "Ink",
      ({
        Key key,
        EdgeInsetsGeometry padding,
        Color color,
        Decoration decoration,
        dynamic width,
        dynamic height,
        Widget child,
      }) =>
        Ink(
        key: key,
        padding: padding,
        color: color,
        decoration: decoration,
        width: width?.toDouble(),
        height: height?.toDouble(),
        child: child,
      ),
    );
  static var ink_image = MXFunctionInvoke(
    "ink.image",
      ({
        Key key,
        EdgeInsetsGeometry padding,
        ImageProvider<dynamic> image,
        dynamic onImageError,
        ColorFilter colorFilter,
        BoxFit fit,
        AlignmentGeometry alignment,
        Rect centerSlice,
        ImageRepeat repeat = ImageRepeat.noRepeat,
        bool matchTextDirection = false,
        dynamic width,
        dynamic height,
        Widget child,
      }) =>
        Ink.image(
        key: key,
        padding: padding,
        image: image,
        onImageError: createVoidCallbackClosure(ink_image.buildOwner, onImageError),
        colorFilter: colorFilter,
        fit: fit,
        alignment: alignment,
        centerSlice: centerSlice,
        repeat: repeat,
        matchTextDirection: matchTextDirection,
        width: width?.toDouble(),
        height: height?.toDouble(),
        child: child,
      ),
    );
  static var inkDecoration = MXFunctionInvoke(
      "InkDecoration",
      ({
        Decoration decoration,
        ImageConfiguration configuration,
        MaterialInkController controller,
        RenderBox referenceBox,
        dynamic onRemoved,
      }) =>
        InkDecoration(
        decoration: decoration,
        configuration: configuration,
        controller: controller,
        referenceBox: referenceBox,
        onRemoved: createVoidCallbackClosure(inkDecoration.buildOwner, onRemoved),
      ),
    );
}
