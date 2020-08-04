//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/circle_avatar.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerCircleAvatarSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[circleAvatar.funName] = circleAvatar;
  return m;
}
var circleAvatar = MXFunctionInvoke(
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
      radius: radius,
      minRadius: minRadius,
      maxRadius: maxRadius,
    ),
);
