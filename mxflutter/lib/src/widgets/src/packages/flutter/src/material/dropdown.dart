//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/dropdown.dart';


class MXProxyDropdown {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[dropdownMenuItem.funName] = dropdownMenuItem;
    m[dropdownButtonHideUnderline.funName] = dropdownButtonHideUnderline;
    m[dropdownButton.funName] = dropdownButton;
    m[dropdownButtonFormField.funName] = dropdownButtonFormField;
    return m;
  }
  static var dropdownMenuItem = MXFunctionInvoke(
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
  static var dropdownButtonHideUnderline = MXFunctionInvoke(
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
  static var dropdownButton = MXFunctionInvoke(
      "DropdownButton",
      ({
        Key key,
        List<DropdownMenuItem<DropdownButton::T>> items,
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
        onChanged: createValueChangedGenericClosure<TypeParameterType(DropdownButton::T>(dropdownButton.buildOwner, onChanged),
        onTap: createVoidCallbackClosure(dropdownButton.buildOwner, onTap),
        elevation: elevation,
        style: style,
        underline: underline,
        icon: icon,
        iconDisabledColor: iconDisabledColor,
        iconEnabledColor: iconEnabledColor,
        iconSize: iconSize?.toDouble(),
        isDense: isDense,
        isExpanded: isExpanded,
        itemHeight: itemHeight?.toDouble(),
        focusColor: focusColor,
        focusNode: focusNode,
        autofocus: autofocus,
        dropdownColor: dropdownColor,
      ),
    );
  static var dropdownButtonFormField = MXFunctionInvoke(
      "DropdownButtonFormField",
      ({
        Key key,
        dynamic value,
        List<DropdownMenuItem<DropdownButtonFormField::T>> items,
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
        onChanged: createValueChangedGenericClosure<TypeParameterType(DropdownButtonFormField::T>(dropdownButtonFormField.buildOwner, onChanged),
        onTap: createVoidCallbackClosure(dropdownButtonFormField.buildOwner, onTap),
        decoration: decoration,
        onSaved: createValueChangedGenericClosure<TypeParameterType(DropdownButtonFormField::T>(dropdownButtonFormField.buildOwner, onSaved),
        validator: createGenericValueGenericClosure<String, TypeParameterType(DropdownButtonFormField::T>(dropdownButtonFormField.buildOwner, validator),
        autovalidate: autovalidate,
        disabledHint: disabledHint,
        elevation: elevation,
        style: style,
        icon: icon,
        iconDisabledColor: iconDisabledColor,
        iconEnabledColor: iconEnabledColor,
        iconSize: iconSize?.toDouble(),
        isDense: isDense,
        isExpanded: isExpanded,
        itemHeight: itemHeight?.toDouble(),
      ),
    );
}
