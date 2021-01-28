//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/inherited_model.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerInheritedModelSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_inheritedModelElement.funName] = _inheritedModelElement;
  return m;
}

var _inheritedModelElement = MXFunctionInvoke(
  "InheritedModelElement",
  ({
    InheritedModel<dynamic> widget,
  }) =>
      InheritedModelElement(
    widget,
  ),
  [
    "widget",
  ],
);
