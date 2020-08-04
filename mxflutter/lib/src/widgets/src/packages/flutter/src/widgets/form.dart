//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/form.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/will_pop_scope.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerFormSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[form.funName] = form;
  m[formState.funName] = formState;
  m[formField.funName] = formField;
  m[formFieldState.funName] = formFieldState;
  return m;
}
var form = MXFunctionInvoke(
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
      onWillPop: onWillPop,
      onChanged: createVoidCallbackClosure(form.buildOwner, onChanged),
    ),
);
var formState = MXFunctionInvoke(
    "FormState",
    ({
    }) =>
      FormState(
    ),
);
var formField = MXFunctionInvoke(
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
      builder: createGenericValueGenericClosure<Widget, dynamic>(formField.buildOwner, builder),
      onSaved: createValueChangedGenericClosure<dynamic>(formField.buildOwner, onSaved),
      validator: createGenericValueGenericClosure<String, dynamic>(formField.buildOwner, validator),
      initialValue: initialValue,
      autovalidate: autovalidate,
      enabled: enabled,
    ),
);
var formFieldState = MXFunctionInvoke(
    "FormFieldState",
    ({
    }) =>
      FormFieldState(
    ),
);
