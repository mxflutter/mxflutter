//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/dropdown.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_theme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/input_decorator.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/scrollbar.dart';
import 'package:flutter/src/material/shadows.dart';
import 'package:flutter/src/material/theme.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDropdownSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[dropdownMenuItem.funName] = dropdownMenuItem;
  m[dropdownButtonHideUnderline.funName] = dropdownButtonHideUnderline;
  m[dropdownButton.funName] = dropdownButton;
  m[dropdownButtonFormField.funName] = dropdownButtonFormField;
  return m;
}
var dropdownMenuItem = MXFunctionInvoke(
    "DropdownMenuItem",
    ({
      Key key,
      dynamic onTap,
      dynamic value,
      Widget child,
    }) =>
      DropdownMenuItem(
      key: key,
      onTap: createVoidCallbackClosure(dropdownMenuItem.buildOwner, onTap),
      value: value,
      child: child,
    ),
);
var dropdownButtonHideUnderline = MXFunctionInvoke(
    "DropdownButtonHideUnderline",
    ({
      Key key,
      Widget child,
    }) =>
      DropdownButtonHideUnderline(
      key: key,
      child: child,
    ),
);
var dropdownButton = MXFunctionInvoke(
    "DropdownButton",
    ({
      Key key,
      dynamic items,
      dynamic selectedItemBuilder,
      dynamic value,
      Widget hint,
      Widget disabledHint,
      dynamic onChanged,
      dynamic onTap,
      int elevation = 8,
      TextStyle style,
      Widget underline,
      Widget icon,
      Color iconDisabledColor,
      Color iconEnabledColor,
      dynamic iconSize = 24.0,
      bool isDense = false,
      bool isExpanded = false,
      dynamic itemHeight = 48.0,
      Color focusColor,
      FocusNode focusNode,
      bool autofocus = false,
      Color dropdownColor,
    }) =>
      DropdownButton(
      key: key,
      items: items,
      selectedItemBuilder: createGenericValueGenericClosure<List<Widget>, BuildContext>(dropdownButton.buildOwner, selectedItemBuilder),
      value: value,
      hint: hint,
      disabledHint: disabledHint,
      onChanged: createValueChangedGenericClosure<dynamic>(dropdownButton.buildOwner, onChanged),
      onTap: createVoidCallbackClosure(dropdownButton.buildOwner, onTap),
      elevation: elevation,
      style: style,
      underline: underline,
      icon: icon,
      iconDisabledColor: iconDisabledColor,
      iconEnabledColor: iconEnabledColor,
      iconSize: iconSize,
      isDense: isDense,
      isExpanded: isExpanded,
      itemHeight: itemHeight,
      focusColor: focusColor,
      focusNode: focusNode,
      autofocus: autofocus,
      dropdownColor: dropdownColor,
    ),
);
var dropdownButtonFormField = MXFunctionInvoke(
    "DropdownButtonFormField",
    ({
      Key key,
      dynamic value,
      dynamic items,
      dynamic selectedItemBuilder,
      Widget hint,
      dynamic onChanged,
      dynamic onTap,
      InputDecoration decoration,
      dynamic onSaved,
      dynamic validator,
      bool autovalidate = false,
      Widget disabledHint,
      int elevation = 8,
      TextStyle style,
      Widget icon,
      Color iconDisabledColor,
      Color iconEnabledColor,
      dynamic iconSize = 24.0,
      bool isDense = true,
      bool isExpanded = false,
      dynamic itemHeight,
    }) =>
      DropdownButtonFormField(
      key: key,
      value: value,
      items: items,
      selectedItemBuilder: createGenericValueGenericClosure<List<Widget>, BuildContext>(dropdownButtonFormField.buildOwner, selectedItemBuilder),
      hint: hint,
      onChanged: createValueChangedGenericClosure<dynamic>(dropdownButtonFormField.buildOwner, onChanged),
      onTap: createVoidCallbackClosure(dropdownButtonFormField.buildOwner, onTap),
      decoration: decoration,
      onSaved: createValueChangedGenericClosure<dynamic>(dropdownButtonFormField.buildOwner, onSaved),
      validator: createGenericValueGenericClosure<String, dynamic>(dropdownButtonFormField.buildOwner, validator),
      autovalidate: autovalidate,
      disabledHint: disabledHint,
      elevation: elevation,
      style: style,
      icon: icon,
      iconDisabledColor: iconDisabledColor,
      iconEnabledColor: iconEnabledColor,
      iconSize: iconSize,
      isDense: isDense,
      isExpanded: isExpanded,
      itemHeight: itemHeight,
    ),
);
