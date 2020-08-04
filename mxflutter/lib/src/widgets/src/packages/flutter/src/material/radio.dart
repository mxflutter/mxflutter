//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/radio.dart';


class MXProxyRadio {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[radio.funName] = radio;
    return m;
  }
  static var radio = MXFunctionInvoke(
      "Radio",
      ({
        Key key,
        dynamic value,
        dynamic groupValue,
        dynamic onChanged,
        Color activeColor,
        Color focusColor,
        Color hoverColor,
        MaterialTapTargetSize materialTapTargetSize,
        VisualDensity visualDensity,
        FocusNode focusNode,
        bool autofocus = false,
      }) =>
        Radio(
        key: key,
        value: value,
        groupValue: groupValue,
        onChanged: createValueChangedGenericClosure<TypeParameterType(Radio::T>(radio.buildOwner, onChanged),
        activeColor: activeColor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        materialTapTargetSize: materialTapTargetSize,
        visualDensity: visualDensity,
        focusNode: focusNode,
        autofocus: autofocus,
      ),
    );
}
