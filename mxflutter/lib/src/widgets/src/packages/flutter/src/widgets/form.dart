//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/form.dart';


class MXProxyForm {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[form.funName] = form;
    m[formState.funName] = formState;
    m[formField.funName] = formField;
    m[formFieldState.funName] = formFieldState;
    return m;
  }
  static var form = MXFunctionInvoke(
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
  static var formState = MXFunctionInvoke(
      "FormState",
      ({
      }) =>
        FormState(
      ),
    );
  static var formField = MXFunctionInvoke(
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
        builder: createGenericValueGenericClosure<Widget, FormFieldState<FormField::T>>(formField.buildOwner, builder),
        onSaved: createValueChangedGenericClosure<TypeParameterType(FormField::T>(formField.buildOwner, onSaved),
        validator: createGenericValueGenericClosure<String, TypeParameterType(FormField::T>(formField.buildOwner, validator),
        initialValue: initialValue,
        autovalidate: autovalidate,
        enabled: enabled,
      ),
    );
  static var formFieldState = MXFunctionInvoke(
      "FormFieldState",
      ({
      }) =>
        FormFieldState(
      ),
    );
}
