//  mx_mirror_widget_test.dart
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:mxflutter/src/mirror/mx_mirror.dart';

var invokeJsonMap = {
  "mxFun": "Image.network",
  "src": "https://pic2.zhimg.com/v2-d69d126ceda551b19daceb351c9afa98_1440w.jpg",
  "width": 320,
  "height": 400,
  // ignore: top_level_function_literal_block
  "loadingBuilder": (
    BuildContext context,
    Widget child,
    ImageChunkEvent loadingProgress,
  ) {
    if (loadingProgress == null) return child;
    return Center(
      child: CircularProgressIndicator(
        value: loadingProgress.expectedTotalBytes != null
            ? loadingProgress.cumulativeBytesLoaded /
                loadingProgress.expectedTotalBytes
            : null,
      ),
    );
  }
  // "repeat": {"index": 1, "_name": "ImageRepeat.repeatX"},
};

// var invokeJsonMap = {
//   "mxFun": "FlatButton",
//   "onPressed": "1/1",
//   "child": Text("hahha"),
// };

// var invokeJsonMap = {
//   "mxFun": "Stack",
//   "children": [
//     {
//       "mxFun": "Image.network",
//       "src": "https://pic2.zhimg.com/v2-d69d126ceda551b19daceb351c9afa98_1440w.jpg",
//       "width": 100,
//       "height": 200,
//     },
//     {
//       "mxFun": "FlatButton",
//       "onPressed": "1/2",
//       "child": Text("button_2"),
//     },
//   ],
// };

Widget convertMirrorWidget() {
  Widget widget = MXMirror.getInstance().invokeWidget(invokeJsonMap, null);
  return widget;
}
