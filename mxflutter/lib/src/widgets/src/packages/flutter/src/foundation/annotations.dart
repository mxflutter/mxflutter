//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/annotations.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAnnotationsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[category.funName] = category;
  m[documentationIcon.funName] = documentationIcon;
  m[summary.funName] = summary;
  return m;
}
var category = MXFunctionInvoke(
    "Category",
    ({
      List<String> sections,
    }) =>
      Category(
      sections,
    ),
);
var documentationIcon = MXFunctionInvoke(
    "DocumentationIcon",
    ({
      String url,
    }) =>
      DocumentationIcon(
      url,
    ),
);
var summary = MXFunctionInvoke(
    "Summary",
    ({
      String text,
    }) =>
      Summary(
      text,
    ),
);
