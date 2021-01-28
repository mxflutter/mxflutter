//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/image_icon.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/icon.dart';
import 'package:flutter/src/widgets/icon_theme.dart';
import 'package:flutter/src/widgets/icon_theme_data.dart';
import 'package:flutter/src/widgets/image.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerImageIconSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_imageIcon.funName] = _imageIcon;
  return m;
}

var _imageIcon = MXFunctionInvoke(
  "ImageIcon",
  ({
    ImageProvider<dynamic> image,
    Key key,
    dynamic size,
    Color color,
    String semanticLabel,
  }) =>
      ImageIcon(
    image,
    key: key,
    size: size?.toDouble(),
    color: color,
    semanticLabel: semanticLabel,
  ),
  [
    "image",
    "key",
    "size",
    "color",
    "semanticLabel",
  ],
);
