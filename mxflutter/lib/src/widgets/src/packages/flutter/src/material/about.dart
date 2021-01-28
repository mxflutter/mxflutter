//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/about.dart';
import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/app_bar.dart';
import 'package:flutter/src/material/back_button.dart';
import 'package:flutter/src/material/button_bar.dart';
import 'package:flutter/src/material/card.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/dialog.dart';
import 'package:flutter/src/material/flat_button.dart';
import 'package:flutter/src/material/floating_action_button.dart';
import 'package:flutter/src/material/floating_action_button_location.dart';
import 'package:flutter/src/material/ink_decoration.dart';
import 'package:flutter/src/material/list_tile.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/page.dart';
import 'package:flutter/src/material/page_transitions_theme.dart';
import 'package:flutter/src/material/progress_indicator.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'package:flutter/src/material/scrollbar.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';

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
  ({
    Key key,
    Widget icon,
    Widget child,
    String applicationName,
    String applicationVersion,
    Widget applicationIcon,
    String applicationLegalese,
    dynamic aboutBoxChildren,
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
    aboutBoxChildren: toListT<Widget>(aboutBoxChildren),
    dense: dense,
  ),
  [
    "key",
    "icon",
    "child",
    "applicationName",
    "applicationVersion",
    "applicationIcon",
    "applicationLegalese",
    "aboutBoxChildren",
    "dense",
  ],
);
var _aboutDialog = MXFunctionInvoke(
  "AboutDialog",
  ({
    Key key,
    String applicationName,
    String applicationVersion,
    Widget applicationIcon,
    String applicationLegalese,
    dynamic children,
  }) =>
      AboutDialog(
    key: key,
    applicationName: applicationName,
    applicationVersion: applicationVersion,
    applicationIcon: applicationIcon,
    applicationLegalese: applicationLegalese,
    children: toListT<Widget>(children),
  ),
  [
    "key",
    "applicationName",
    "applicationVersion",
    "applicationIcon",
    "applicationLegalese",
    "children",
  ],
);
var _licensePage = MXFunctionInvoke(
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
  [
    "key",
    "applicationName",
    "applicationVersion",
    "applicationIcon",
    "applicationLegalese",
  ],
);
