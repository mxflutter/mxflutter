//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/text_editing.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTextEditingSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_textSelection.funName] = _textSelection;
  m[_textSelection_collapsed.funName] = _textSelection_collapsed;
  m[_textSelection_fromPosition.funName] = _textSelection_fromPosition;
  return m;
}
var _textSelection = MXFunctionInvoke(
    "TextSelection",
    (
      {
      int baseOffset,
      int extentOffset,
      TextAffinity affinity = TextAffinity.downstream,
      bool isDirectional = false,
      }
    ) =>
      TextSelection(
      baseOffset: baseOffset,
      extentOffset: extentOffset,
      affinity: affinity,
      isDirectional: isDirectional,
    ),
);
var _textSelection_collapsed = MXFunctionInvoke(
  "TextSelection.collapsed",
    (
      {
      int offset,
      TextAffinity affinity =  TextAffinity.downstream,
      }
    ) =>
      TextSelection.collapsed(
      offset: offset,
      affinity: affinity,
    ),
);
var _textSelection_fromPosition = MXFunctionInvoke(
  "TextSelection.fromPosition",
    (
      {
      TextPosition position,
      }
    ) =>
      TextSelection.fromPosition(
      position,
    ),
);
