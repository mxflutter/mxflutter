//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/text_form_field.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/input_decorator.dart';
import 'package:flutter/src/material/text_field.dart';
import 'package:flutter/src/material/theme.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTextFormFieldSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_textFormField.funName] = _textFormField;
  return m;
}
var _textFormField = MXFunctionInvoke(
    "TextFormField",
    (
      {
      Key key,
      TextEditingController controller,
      String initialValue,
      FocusNode focusNode,
      InputDecoration decoration,
      TextInputType keyboardType,
      TextCapitalization textCapitalization = TextCapitalization.none,
      TextInputAction textInputAction,
      TextStyle style,
      StrutStyle strutStyle,
      TextDirection textDirection,
      TextAlign textAlign = TextAlign.start,
      TextAlignVertical textAlignVertical,
      bool autofocus = false,
      bool readOnly = false,
      ToolbarOptions toolbarOptions,
      bool showCursor,
      bool obscureText = false,
      bool autocorrect = true,
      SmartDashesType smartDashesType,
      SmartQuotesType smartQuotesType,
      bool enableSuggestions = true,
      bool autovalidate = false,
      bool maxLengthEnforced = true,
      int maxLines = 1,
      int minLines,
      bool expands = false,
      int maxLength,
      dynamic onChanged,
      dynamic onTap,
      dynamic onEditingComplete,
      dynamic onFieldSubmitted,
      dynamic onSaved,
      dynamic validator,
      List<TextInputFormatter> inputFormatters,
      bool enabled = true,
      double cursorWidth = 2.0,
      Radius cursorRadius,
      Color cursorColor,
      Brightness keyboardAppearance,
      EdgeInsets scrollPadding,
      bool enableInteractiveSelection = true,
      dynamic buildCounter,
      ScrollPhysics scrollPhysics,
      }
    ) =>
      TextFormField(
      key: key,
      controller: controller,
      initialValue: initialValue,
      focusNode: focusNode,
      decoration: decoration,
      keyboardType: keyboardType,
      textCapitalization: textCapitalization,
      textInputAction: textInputAction,
      style: style,
      strutStyle: strutStyle,
      textDirection: textDirection,
      textAlign: textAlign,
      textAlignVertical: textAlignVertical,
      autofocus: autofocus,
      readOnly: readOnly,
      toolbarOptions: toolbarOptions,
      showCursor: showCursor,
      obscureText: obscureText,
      autocorrect: autocorrect,
      smartDashesType: smartDashesType,
      smartQuotesType: smartQuotesType,
      enableSuggestions: enableSuggestions,
      autovalidate: autovalidate,
      maxLengthEnforced: maxLengthEnforced,
      maxLines: maxLines,
      minLines: minLines,
      expands: expands,
      maxLength: maxLength,
      onChanged: createValueChangedGenericClosure<String>(_textFormField.buildOwner, onChanged),
      onTap: createVoidCallbackClosure(_textFormField.buildOwner, onTap),
      onEditingComplete: createVoidCallbackClosure(_textFormField.buildOwner, onEditingComplete),
      onFieldSubmitted: createValueChangedGenericClosure<String>(_textFormField.buildOwner, onFieldSubmitted),
      onSaved: createValueChangedGenericClosure<String>(_textFormField.buildOwner, onSaved),
      validator: createGenericValueGenericClosure<String, String>(_textFormField.buildOwner, validator),
      inputFormatters: inputFormatters,
      enabled: enabled,
      cursorWidth: cursorWidth?.toDouble(),
      cursorRadius: cursorRadius,
      cursorColor: cursorColor,
      keyboardAppearance: keyboardAppearance,
      scrollPadding: scrollPadding,
      enableInteractiveSelection: enableInteractiveSelection,
      buildCounter: createGenericValueGenericClosure<Widget, BuildContext>(_textFormField.buildOwner, buildCounter),
      scrollPhysics: scrollPhysics,
    ),
);
