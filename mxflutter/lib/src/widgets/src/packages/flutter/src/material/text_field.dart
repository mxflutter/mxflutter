//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/text_field.dart';


class MXProxyTextField {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[textField.funName] = textField;
    return m;
  }
  static var textField = MXFunctionInvoke(
      "TextField",
      ({
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
      }) =>
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
        onChanged: createValueChangedGenericClosure<String>(textField.buildOwner, onChanged),
        onEditingComplete: createVoidCallbackClosure(textField.buildOwner, onEditingComplete),
        onSubmitted: createValueChangedGenericClosure<String>(textField.buildOwner, onSubmitted),
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
        onTap: createVoidCallbackClosure(textField.buildOwner, onTap),
        buildCounter: createGenericValueGenericClosure<Widget, BuildContext>(textField.buildOwner, buildCounter),
        scrollController: scrollController,
        scrollPhysics: scrollPhysics,
      ),
    );
}
