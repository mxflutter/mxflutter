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
  m[_category.funName] = _category;
  m[_documentationIcon.funName] = _documentationIcon;
  m[_summary.funName] = _summary;
  return m;
}
var _category = MXFunctionInvoke(
    "Category",
    (
      {
      dynamic sections,
      }
    ) =>
      Category(
      toListT<String>(sections),
    ),
);
var _documentationIcon = MXFunctionInvoke(
    "DocumentationIcon",
    (
      {
      String url,
      }
    ) =>
      DocumentationIcon(
      url,
    ),
);
var _summary = MXFunctionInvoke(
    "Summary",
    (
      {
      String text,
      }
    ) =>
      Summary(
      text,
    ),
);
