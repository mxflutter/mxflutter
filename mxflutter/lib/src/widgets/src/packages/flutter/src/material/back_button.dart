//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/back_button.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerBackButtonSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_backButtonIcon.funName] = _backButtonIcon;
  m[_backButton.funName] = _backButton;
  m[_closeButton.funName] = _closeButton;
  return m;
}

var _backButtonIcon = MXFunctionInvoke(
  "BackButtonIcon",
  ({
    Key key,
  }) =>
      BackButtonIcon(
    key: key,
  ),
  [
    "key",
  ],
);
var _backButton = MXFunctionInvoke(
  "BackButton",
  ({
    Key key,
    Color color,
    dynamic onPressed,
  }) =>
      BackButton(
    key: key,
    color: color,
    onPressed: createVoidCallbackClosure(_backButton.buildOwner, onPressed),
  ),
  [
    "key",
    "color",
    "onPressed",
  ],
);
var _closeButton = MXFunctionInvoke(
  "CloseButton",
  ({
    Key key,
    Color color,
    dynamic onPressed,
  }) =>
      CloseButton(
    key: key,
    color: color,
    onPressed: createVoidCallbackClosure(_closeButton.buildOwner, onPressed),
  ),
  [
    "key",
    "color",
    "onPressed",
  ],
);
