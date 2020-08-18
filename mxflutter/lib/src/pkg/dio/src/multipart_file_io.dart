//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:dio/src/multipart_file_io.dart';
import 'dart:async';
import 'dart:io';
import 'package:http_parser/http_parser.dart';
import 'package:path/path.dart' as p;
import 'package:dio/src/multipart_file.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerMultipartFileIoSeries() {
  var m = <String, MXFunctionInvoke>{};
  return m;
}
