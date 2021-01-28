//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/form.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/will_pop_scope.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerFormSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_form.funName] = _form;
  m[_formState.funName] = _formState;
  m[_formField.funName] = _formField;
  m[_formFieldState.funName] = _formFieldState;
  return m;
}

var _form = MXFunctionInvoke(
  "Form",
  ({
    Key key,
    Widget child,
    bool autovalidate = false,
    dynamic onWillPop,
    dynamic onChanged,
  }) =>
      Form(
    key: key,
    child: child,
    autovalidate: autovalidate,
    onWillPop: null,
    onChanged: createVoidCallbackClosure(_form.buildOwner, onChanged),
  ),
  [
    "key",
    "child",
    "autovalidate",
    "onWillPop",
    "onChanged",
  ],
);
var _formState = MXFunctionInvoke(
  "FormState",
  () => FormState(),
  [],
);
var _formField = MXFunctionInvoke(
  "FormField",
  ({
    Key key,
    dynamic builder,
    dynamic onSaved,
    dynamic validator,
    dynamic initialValue,
    bool autovalidate = false,
    bool enabled = true,
  }) =>
      FormField(
    key: key,
    builder: null,
    onSaved: createValueChangedGenericClosure<dynamic>(_formField.buildOwner, onSaved),
    validator: null,
    initialValue: initialValue,
    autovalidate: autovalidate,
    enabled: enabled,
  ),
  [
    "key",
    "builder",
    "onSaved",
    "validator",
    "initialValue",
    "autovalidate",
    "enabled",
  ],
);
var _formFieldState = MXFunctionInvoke(
  "FormFieldState",
  () => FormFieldState(),
  [],
);
