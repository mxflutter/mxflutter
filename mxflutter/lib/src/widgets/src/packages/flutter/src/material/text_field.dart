//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/text_field.dart';
import 'dart:ui' as ui;
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/feedback.dart';
import 'package:flutter/src/material/input_decorator.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/selectable_text.dart';
import 'package:flutter/src/material/text_selection.dart';
import 'package:flutter/src/material/theme.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTextFieldSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_textField.funName] = _textField;
  return m;
}
var _textField = MXFunctionInvoke(
    "TextField",
    (
      {
      Key key,
      TextEditingController controller,
      FocusNode focusNode,
      InputDecoration decoration,
      TextInputType keyboardType,
      TextInputAction textInputAction,
      TextCapitalization textCapitalization = TextCapitalization.none,
      TextStyle style,
      StrutStyle strutStyle,
      TextAlign textAlign = TextAlign.start,
      TextAlignVertical textAlignVertical,
      TextDirection textDirection,
      bool readOnly = false,
      ToolbarOptions toolbarOptions,
      bool showCursor,
      bool autofocus = false,
      bool obscureText = false,
      bool autocorrect = true,
      SmartDashesType smartDashesType,
      SmartQuotesType smartQuotesType,
      bool enableSuggestions = true,
      int maxLines = 1,
      int minLines,
      bool expands = false,
      int maxLength,
      bool maxLengthEnforced = true,
      dynamic onChanged,
      dynamic onEditingComplete,
      dynamic onSubmitted,
      List<TextInputFormatter> inputFormatters,
      bool enabled,
      dynamic cursorWidth = 2.0,
      Radius cursorRadius,
      Color cursorColor,
      BoxHeightStyle selectionHeightStyle = BoxHeightStyle.tight,
      BoxWidthStyle selectionWidthStyle = BoxWidthStyle.tight,
      Brightness keyboardAppearance,
      EdgeInsets scrollPadding,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      bool enableInteractiveSelection = true,
      dynamic onTap,
      dynamic buildCounter,
      ScrollController scrollController,
      ScrollPhysics scrollPhysics,
      }
    ) =>
      TextField(
      key: key,
      controller: controller,
      focusNode: focusNode,
      decoration: decoration,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      textCapitalization: textCapitalization,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textAlignVertical: textAlignVertical,
      textDirection: textDirection,
      readOnly: readOnly,
      toolbarOptions: toolbarOptions,
      showCursor: showCursor,
      autofocus: autofocus,
      obscureText: obscureText,
      autocorrect: autocorrect,
      smartDashesType: smartDashesType,
      smartQuotesType: smartQuotesType,
      enableSuggestions: enableSuggestions,
      maxLines: maxLines,
      minLines: minLines,
      expands: expands,
      maxLength: maxLength,
      maxLengthEnforced: maxLengthEnforced,
      onChanged: createValueChangedGenericClosure<String>(_textField.buildOwner, onChanged),
      onEditingComplete: createVoidCallbackClosure(_textField.buildOwner, onEditingComplete),
      onSubmitted: createValueChangedGenericClosure<String>(_textField.buildOwner, onSubmitted),
      inputFormatters: inputFormatters,
      enabled: enabled,
      cursorWidth: cursorWidth?.toDouble(),
      cursorRadius: cursorRadius,
      cursorColor: cursorColor,
      selectionHeightStyle: selectionHeightStyle,
      selectionWidthStyle: selectionWidthStyle,
      keyboardAppearance: keyboardAppearance,
      scrollPadding: scrollPadding,
      dragStartBehavior: dragStartBehavior,
      enableInteractiveSelection: enableInteractiveSelection,
      onTap: createVoidCallbackClosure(_textField.buildOwner, onTap),
      buildCounter: null,
      scrollController: scrollController,
      scrollPhysics: scrollPhysics,
    ),
);
