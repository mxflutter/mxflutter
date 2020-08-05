//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/user_accounts_drawer_header.dart';
import 'dart:math';
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
    (
      {
      Key key,
      Decoration decoration,
      EdgeInsetsGeometry margin,
      Widget currentAccountPicture,
      List<Widget> otherAccountsPictures,
      Widget accountName,
      Widget accountEmail,
      dynamic onDetailsPressed,
      Color arrowColor,
      }
    ) =>
      UserAccountsDrawerHeader(
      key: key,
      decoration: decoration,
      margin: margin,
      currentAccountPicture: currentAccountPicture,
      otherAccountsPictures: otherAccountsPictures,
      accountName: accountName,
      accountEmail: accountEmail,
      onDetailsPressed: createVoidCallbackClosure(_userAccountsDrawerHeader.buildOwner, onDetailsPressed),
      arrowColor: arrowColor,
    ),
);
