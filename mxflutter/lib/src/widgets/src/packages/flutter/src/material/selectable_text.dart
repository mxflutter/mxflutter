//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/selectable_text.dart';


class MXProxySelectableText {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[selectableText.funName] = selectableText;
    m[selectableText_rich.funName] = selectableText_rich;
    return m;
  }
  static var selectableText = MXFunctionInvoke(
      "SelectableText",
      ({
        String data,
        Key key,
        FocusNode focusNode,
        TextStyle style,
        StrutStyle strutStyle,
        TextAlign textAlign,
        TextDirection textDirection,
        dynamic textScaleFactor,
        bool showCursor = false,
        bool autofocus = false,
        ToolbarOptions toolbarOptions,
        int minLines,
        int maxLines,
        dynamic cursorWidth = 2.0,
        Radius cursorRadius,
        Color cursorColor,
        DragStartBehavior dragStartBehavior = DragStartBehavior.start,
        bool enableInteractiveSelection = true,
        dynamic onTap,
        ScrollPhysics scrollPhysics,
        TextWidthBasis textWidthBasis,
      }) =>
        SelectableText(
        data,
        key: key,
        focusNode: focusNode,
        style: style,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        textScaleFactor: textScaleFactor?.toDouble(),
        showCursor: showCursor,
        autofocus: autofocus,
        toolbarOptions: toolbarOptions,
        minLines: minLines,
        maxLines: maxLines,
        cursorWidth: cursorWidth?.toDouble(),
        cursorRadius: cursorRadius,
        cursorColor: cursorColor,
        dragStartBehavior: dragStartBehavior,
        enableInteractiveSelection: enableInteractiveSelection,
        onTap: createVoidCallbackClosure(selectableText.buildOwner, onTap),
        scrollPhysics: scrollPhysics,
        textWidthBasis: textWidthBasis,
      ),
    );
  static var selectableText_rich = MXFunctionInvoke(
    "selectableText.rich",
      ({
        TextSpan textSpan,
        Key key,
        FocusNode focusNode,
        TextStyle style,
        StrutStyle strutStyle,
        TextAlign textAlign,
        TextDirection textDirection,
        dynamic textScaleFactor,
        bool showCursor = false,
        bool autofocus = false,
        ToolbarOptions toolbarOptions,
        int minLines,
        int maxLines,
        dynamic cursorWidth = 2.0,
        Radius cursorRadius,
        Color cursorColor,
        DragStartBehavior dragStartBehavior = DragStartBehavior.start,
        bool enableInteractiveSelection = true,
        dynamic onTap,
        ScrollPhysics scrollPhysics,
        TextWidthBasis textWidthBasis,
      }) =>
        SelectableText.rich(
        textSpan,
        key: key,
        focusNode: focusNode,
        style: style,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        textScaleFactor: textScaleFactor?.toDouble(),
        showCursor: showCursor,
        autofocus: autofocus,
        toolbarOptions: toolbarOptions,
        minLines: minLines,
        maxLines: maxLines,
        cursorWidth: cursorWidth?.toDouble(),
        cursorRadius: cursorRadius,
        cursorColor: cursorColor,
        dragStartBehavior: dragStartBehavior,
        enableInteractiveSelection: enableInteractiveSelection,
        onTap: createVoidCallbackClosure(selectableText_rich.buildOwner, onTap),
        scrollPhysics: scrollPhysics,
        textWidthBasis: textWidthBasis,
      ),
    );
}
