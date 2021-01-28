//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/page_transitions_theme.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPageSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_materialPageRoute.funName] = _materialPageRoute;
  m[_materialPage.funName] = _materialPage;
  return m;
}

var _materialPageRoute = MXFunctionInvoke(
  "MaterialPageRoute",
  ({
    dynamic builder,
    RouteSettings settings,
    bool maintainState = true,
    bool fullscreenDialog = false,

    /// MX modified begin -add child
    dynamic child,

    /// MX modified end
  }) =>
      MaterialPageRoute(
    /// MX modified begin -add builderfunction
    builder: (BuildContext context) {
      return child;
    },

    /// MX modified end
    settings: settings,
    maintainState: maintainState,
    fullscreenDialog: fullscreenDialog,
  ),
  [
    "builder",
    "settings",
    "maintainState",
    "fullscreenDialog",

    ///MX modified begin
    "child",

    ///MX modified end
  ],
);
var _materialPage = MXFunctionInvoke(
  "MaterialPage",
  ({
    dynamic builder,
    bool maintainState = true,
    bool fullscreenDialog = false,
    LocalKey key,
    String name,
    Object arguments,
  }) =>
      MaterialPage(
    builder: null,
    maintainState: maintainState,
    fullscreenDialog: fullscreenDialog,
    key: key,
    name: name,
    arguments: arguments,
  ),
  [
    "builder",
    "maintainState",
    "fullscreenDialog",
    "key",
    "name",
    "__mx_arguments",
  ],
);
