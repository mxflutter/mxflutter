//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/text_field.dart';
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/icons.dart';
import 'package:flutter/src/cupertino/text_selection.dart';
import 'package:flutter/src/cupertino/theme.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTextFieldSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_overlayVisibilityMode.funName] = _overlayVisibilityMode;
  m[_cupertinoTextField.funName] = _cupertinoTextField;
  return m;
}
var _overlayVisibilityMode = MXFunctionInvoke(
    "OverlayVisibilityMode",
    ({Map args}) => MXOverlayVisibilityMode.parse(args),
  );
var _cupertinoTextField = MXFunctionInvoke(
    "CupertinoTextField",
    (
      {
      Key key,
      TextEditingController controller,
      FocusNode focusNode,
      BoxDecoration decoration,
      EdgeInsetsGeometry padding,
      String placeholder,
      TextStyle placeholderStyle,
      Widget prefix,
      OverlayVisibilityMode prefixMode = OverlayVisibilityMode.always,
      Widget suffix,
      OverlayVisibilityMode suffixMode = OverlayVisibilityMode.always,
      OverlayVisibilityMode clearButtonMode = OverlayVisibilityMode.never,
      TextInputType keyboardType,
      TextInputAction textInputAction,
      TextCapitalization textCapitalization = TextCapitalization.none,
      TextStyle style,
      StrutStyle strutStyle,
      TextAlign textAlign = TextAlign.start,
      TextAlignVertical textAlignVertical,
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
      double cursorWidth = 2.0,
      Radius cursorRadius,
      Color cursorColor,
      BoxHeightStyle selectionHeightStyle = BoxHeightStyle.tight,
      BoxWidthStyle selectionWidthStyle = BoxWidthStyle.tight,
      Brightness keyboardAppearance,
      EdgeInsets scrollPadding,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      bool enableInteractiveSelection = true,
      dynamic onTap,
      ScrollController scrollController,
      ScrollPhysics scrollPhysics,
      }
    ) =>
      CupertinoTextField(
      key: key,
      controller: controller,
      focusNode: focusNode,
      decoration: decoration,
      padding: padding,
      placeholder: placeholder,
      placeholderStyle: placeholderStyle,
      prefix: prefix,
      prefixMode: prefixMode,
      suffix: suffix,
      suffixMode: suffixMode,
      clearButtonMode: clearButtonMode,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      textCapitalization: textCapitalization,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textAlignVertical: textAlignVertical,
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
      onChanged: createValueChangedGenericClosure<String>(_cupertinoTextField.buildOwner, onChanged),
      onEditingComplete: createVoidCallbackClosure(_cupertinoTextField.buildOwner, onEditingComplete),
      onSubmitted: createValueChangedGenericClosure<String>(_cupertinoTextField.buildOwner, onSubmitted),
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
      onTap: createVoidCallbackClosure(_cupertinoTextField.buildOwner, onTap),
      scrollController: scrollController,
      scrollPhysics: scrollPhysics,
    ),
);
class MXOverlayVisibilityMode {
  static Map str2VMap = {
    'OverlayVisibilityMode.never': OverlayVisibilityMode.never,
    'OverlayVisibilityMode.editing': OverlayVisibilityMode.editing,
    'OverlayVisibilityMode.notEditing': OverlayVisibilityMode.notEditing,
    'OverlayVisibilityMode.always': OverlayVisibilityMode.always,
  };
  static OverlayVisibilityMode parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
