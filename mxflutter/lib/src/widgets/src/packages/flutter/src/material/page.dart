//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[materialPageRoute.funName] = materialPageRoute;
  return m;
}
var materialPageRoute = MXFunctionInvoke(
    "MaterialPageRoute",
    ({
      dynamic builder,
      RouteSettings settings,
      bool maintainState = true,
      bool fullscreenDialog = false,
    }) =>
      MaterialPageRoute(
      builder: createGenericValueGenericClosure<Widget, BuildContext>(materialPageRoute.buildOwner, builder),
      settings: settings,
      maintainState: maintainState,
      fullscreenDialog: fullscreenDialog,
    ),
);
