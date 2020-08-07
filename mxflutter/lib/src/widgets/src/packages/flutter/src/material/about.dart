//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/about.dart';
import 'dart:async' ;
import 'dart:developer' ;
import 'dart:io' ;
import 'package:flutter/foundation.dart' ;
import 'package:flutter/scheduler.dart' ;
import 'package:flutter/widgets.dart' ;
import 'package:flutter/src/material/app_bar.dart' ;
import 'package:flutter/src/material/debug.dart' ;
import 'package:flutter/src/material/dialog.dart' ;
import 'package:flutter/src/material/flat_button.dart' ;
import 'package:flutter/src/material/list_tile.dart' ;
import 'package:flutter/src/material/material_localizations.dart' ;
import 'package:flutter/src/material/page.dart' ;
import 'package:flutter/src/material/progress_indicator.dart' ;
import 'package:flutter/src/material/scaffold.dart' ;
import 'package:flutter/src/material/scrollbar.dart' ;
import 'package:flutter/src/material/theme.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAboutSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_aboutListTile.funName] = _aboutListTile;
  m[_aboutDialog.funName] = _aboutDialog;
  m[_licensePage.funName] = _licensePage;
  return m;
}
var _aboutListTile = MXFunctionInvoke(
    "AboutListTile",
    (
      {
      Key key,
      Widget icon,
      Widget child,
      String applicationName,
      String applicationVersion,
      Widget applicationIcon,
      String applicationLegalese,
      List<Widget> aboutBoxChildren,
      bool dense,
      }
    ) =>
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
var _aboutDialog = MXFunctionInvoke(
    "AboutDialog",
    (
      {
      Key key,
      String applicationName,
      String applicationVersion,
      Widget applicationIcon,
      String applicationLegalese,
      List<Widget> children,
      }
    ) =>
      AboutDialog(
      key: key,
      applicationName: applicationName,
      applicationVersion: applicationVersion,
      applicationIcon: applicationIcon,
      applicationLegalese: applicationLegalese,
      children: children,
    ),
);
var _licensePage = MXFunctionInvoke(
    "LicensePage",
    (
      {
      Key key,
      String applicationName,
      String applicationVersion,
      Widget applicationIcon,
      String applicationLegalese,
      }
    ) =>
      LicensePage(
      key: key,
      applicationName: applicationName,
      applicationVersion: applicationVersion,
      applicationIcon: applicationIcon,
      applicationLegalese: applicationLegalese,
    ),
);
