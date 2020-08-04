//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/about.dart';


class MXProxyAbout {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[aboutListTile.funName] = aboutListTile;
    m[aboutDialog.funName] = aboutDialog;
    m[licensePage.funName] = licensePage;
    return m;
  }
  static var aboutListTile = MXFunctionInvoke(
      "AboutListTile",
      ({
        Key key,
        Widget icon,
        Widget child,
        String applicationName,
        String applicationVersion,
        Widget applicationIcon,
        String applicationLegalese,
        List<Widget> aboutBoxChildren,
        bool dense,
      }) =>
        AboutListTile(
        key: key,
        icon: icon,
        child: child,
        applicationName: applicationName,
        applicationVersion: applicationVersion,
        applicationIcon: applicationIcon,
        applicationLegalese: applicationLegalese,
        aboutBoxChildren: aboutBoxChildren,
        dense: dense,
      ),
    );
  static var aboutDialog = MXFunctionInvoke(
      "AboutDialog",
      ({
        Key key,
        String applicationName,
        String applicationVersion,
        Widget applicationIcon,
        String applicationLegalese,
        List<Widget> children,
      }) =>
        AboutDialog(
        key: key,
        applicationName: applicationName,
        applicationVersion: applicationVersion,
        applicationIcon: applicationIcon,
        applicationLegalese: applicationLegalese,
        children: children,
      ),
    );
  static var licensePage = MXFunctionInvoke(
      "LicensePage",
      ({
        Key key,
        String applicationName,
        String applicationVersion,
        Widget applicationIcon,
        String applicationLegalese,
      }) =>
        LicensePage(
        key: key,
        applicationName: applicationName,
        applicationVersion: applicationVersion,
        applicationIcon: applicationIcon,
        applicationLegalese: applicationLegalese,
      ),
    );
}
