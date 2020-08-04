//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/user_accounts_drawer_header.dart';


class MXProxyUserAccountsDrawerHeader {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[userAccountsDrawerHeader.funName] = userAccountsDrawerHeader;
    return m;
  }
  static var userAccountsDrawerHeader = MXFunctionInvoke(
      "UserAccountsDrawerHeader",
      ({
        Key key,
        Decoration decoration,
        EdgeInsetsGeometry margin,
        Widget currentAccountPicture,
        List<Widget> otherAccountsPictures,
        Widget accountName,
        Widget accountEmail,
        dynamic onDetailsPressed,
        Color arrowColor,
      }) =>
        UserAccountsDrawerHeader(
        key: key,
        decoration: decoration,
        margin: margin,
        currentAccountPicture: currentAccountPicture,
        otherAccountsPictures: otherAccountsPictures,
        accountName: accountName,
        accountEmail: accountEmail,
        onDetailsPressed: createVoidCallbackClosure(userAccountsDrawerHeader.buildOwner, onDetailsPressed),
        arrowColor: arrowColor,
      ),
    );
}
