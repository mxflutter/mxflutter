//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/circle_avatar.dart';


class MXProxyCircleAvatar {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[circleAvatar.funName] = circleAvatar;
    return m;
  }
  static var circleAvatar = MXFunctionInvoke(
      "CircleAvatar",
      ({
        Key key,
        Widget child,
        Color backgroundColor,
        ImageProvider<dynamic> backgroundImage,
        dynamic onBackgroundImageError,
        Color foregroundColor,
        dynamic radius,
        dynamic minRadius,
        dynamic maxRadius,
      }) =>
        CircleAvatar(
        key: key,
        child: child,
        backgroundColor: backgroundColor,
        backgroundImage: backgroundImage,
        onBackgroundImageError: createVoidCallbackClosure(circleAvatar.buildOwner, onBackgroundImageError),
        foregroundColor: foregroundColor,
        radius: radius?.toDouble(),
        minRadius: minRadius?.toDouble(),
        maxRadius: maxRadius?.toDouble(),
      ),
    );
}
