//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/text_editing.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTextEditingSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_textSelection.funName] = _textSelection;
  m[_textSelectionCollapsed.funName] = _textSelectionCollapsed;
  m[_textSelectionFromPosition.funName] = _textSelectionFromPosition;
  return m;
}

var _textSelection = MXFunctionInvoke(
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
  [
    "baseOffset",
    "extentOffset",
    "affinity",
    "isDirectional",
  ],
);
var _textSelectionCollapsed = MXFunctionInvoke(
  "TextSelection.collapsed",
  ({
    int offset,
    TextAffinity affinity = TextAffinity.downstream,
  }) =>
      TextSelection.collapsed(
    offset: offset,
    affinity: affinity,
  ),
  [
    "offset",
    "affinity",
  ],
);
var _textSelectionFromPosition = MXFunctionInvoke(
  "TextSelection.fromPosition",
  ({
    TextPosition position,
  }) =>
      TextSelection.fromPosition(
    position,
  ),
  [
    "position",
  ],
);
