//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/image_icon.dart';


class MXProxyImageIcon {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[imageIcon.funName] = imageIcon;
    return m;
  }
  static var imageIcon = MXFunctionInvoke(
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
    );
}
