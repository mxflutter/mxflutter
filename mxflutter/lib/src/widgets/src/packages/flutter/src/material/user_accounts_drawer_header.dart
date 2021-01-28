//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/user_accounts_drawer_header.dart';
import 'dart:math' as math;
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/drawer_header.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerUserAccountsDrawerHeaderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_userAccountsDrawerHeader.funName] = _userAccountsDrawerHeader;
  return m;
}

var _userAccountsDrawerHeader = MXFunctionInvoke(
  "UserAccountsDrawerHeader",
  ({
    Key key,
    Decoration decoration,
    EdgeInsetsGeometry margin = const EdgeInsets.only(bottom: 8.0),
    Widget currentAccountPicture,
    dynamic otherAccountsPictures,
    Widget accountName,
    Widget accountEmail,
    dynamic onDetailsPressed,
    Color arrowColor = Colors.white,
  }) =>
      UserAccountsDrawerHeader(
    key: key,
    decoration: decoration,
    margin: margin,
    currentAccountPicture: currentAccountPicture,
    otherAccountsPictures: toListT<Widget>(otherAccountsPictures),
    accountName: accountName,
    accountEmail: accountEmail,
    onDetailsPressed: createVoidCallbackClosure(_userAccountsDrawerHeader.buildOwner, onDetailsPressed),
    arrowColor: arrowColor,
  ),
  [
    "key",
    "decoration",
    "margin",
    "currentAccountPicture",
    "otherAccountsPictures",
    "accountName",
    "accountEmail",
    "onDetailsPressed",
    "arrowColor",
  ],
);
