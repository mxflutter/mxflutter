//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:dio/src/form_data.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:dio/src/multipart_file.dart';
import 'package:dio/src/utils.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerFormDataSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_formData.funName] = _formData;
  m[_formDataFromMap.funName] = _formDataFromMap;
  return m;
}

var _formData = MXFunctionInvoke(
  "FormData",
  () => FormData(),
  [],
);
var _formDataFromMap = MXFunctionInvoke(
  "FormData.fromMap",
  ({
    dynamic map,
  }) =>
      FormData.fromMap(
    toMapT<String, dynamic>(map),
  ),
  [
    "map",
  ],
);
