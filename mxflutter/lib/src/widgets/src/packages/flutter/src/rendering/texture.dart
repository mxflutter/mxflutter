//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/texture.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/object.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTextureSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_textureBox.funName] = _textureBox;
  return m;
}

var _textureBox = MXFunctionInvoke(
  "TextureBox",
  ({
    int textureId,
    FilterQuality filterQuality = FilterQuality.low,
  }) =>
      TextureBox(
    textureId: textureId,
    filterQuality: filterQuality,
  ),
  [
    "textureId",
    "filterQuality",
  ],
);
