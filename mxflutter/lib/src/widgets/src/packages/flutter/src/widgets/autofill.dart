//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/autofill.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAutofillSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_autofillGroup.funName] = _autofillGroup;
  m[_autofillGroupState.funName] = _autofillGroupState;
  return m;
}

var _autofillGroup = MXFunctionInvoke(
  "AutofillGroup",
  ({
    Key key,
    Widget child,
  }) =>
      AutofillGroup(
    key: key,
    child: child,
  ),
  [
    "key",
    "child",
  ],
);
var _autofillGroupState = MXFunctionInvoke(
  "AutofillGroupState",
  () => AutofillGroupState(),
  [],
);
