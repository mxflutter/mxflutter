//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/services/text_editing.dart';


class MXProxyTextEditing {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[textSelection.funName] = textSelection;
    m[textSelection_collapsed.funName] = textSelection_collapsed;
    m[textSelection_fromPosition.funName] = textSelection_fromPosition;
    return m;
  }
  static var textSelection = MXFunctionInvoke(
      "TextSelection",
      ({
        int baseOffset,
        int extentOffset,
        TextAffinity affinity = TextAffinity.downstream,
        bool isDirectional = false,
      }) =>
        TextSelection(
        baseOffset: baseOffset,
        extentOffset: extentOffset,
        affinity: affinity,
        isDirectional: isDirectional,
      ),
    );
  static var textSelection_collapsed = MXFunctionInvoke(
    "textSelection.collapsed",
      ({
        int offset,
        TextAffinity affinity = TextAffinity.downstream,
      }) =>
        TextSelection.collapsed(
        offset: offset,
        affinity: affinity,
      ),
    );
  static var textSelection_fromPosition = MXFunctionInvoke(
    "textSelection.fromPosition",
      ({
        TextPosition position,
      }) =>
        TextSelection.fromPosition(
        position,
      ),
    );
}
