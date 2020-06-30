//  mx_mirror_widget_test.dart
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:mxflutter/src/mx_mirror.dart';
import 'package:mxflutter/src/mx_build_owner.dart';

var invokeJsonMap = {
  "fun": "Image.network",
  "src": "http://img.rangaofei.cn/01b18.jpg",
  "scale": 2,
  "width": 300.5,
  "height": 600,
  "repeat": {"index": 1, "_name": "ImageRepeat.repeatX"},
};

// MXJsonBuildOwner buildOwner = MXJsonBuildOwner(null, null);
// var invokeJsonMap = {
//   "fun": "FlatButton",
//   "onPressed": "1/1",
//   "child": Text("hahha"),
//   "buildOwner": buildOwner,
// };

// MXJsonBuildOwner buildOwner = MXJsonBuildOwner(null, null);
// var invokeJsonMap = {
//   "fun": "Stack",
//   "children": [
//     {
//       "fun": "Image.network",
//       "src": "http://img.rangaofei.cn/01b18.jpg",
//       "scale": 2,
//       "width": 100,
//       "height": 200,
//     },
//     {
//       "fun": "FlatButton",
//       "onPressed": "1/2",
//       "child": Text("button_2"),
//       "buildOwner": buildOwner,
//     },
//   ],
//   "buildOwner": buildOwner,
// };

Widget convertMirrorWidget() {
  Widget widget = MXMirror.getInstance().invoke(invokeJsonMap);
  return widget;
}
