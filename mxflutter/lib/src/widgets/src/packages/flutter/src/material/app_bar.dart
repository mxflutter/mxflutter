//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/app_bar.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/app_bar_theme.dart';
import 'package:flutter/src/material/back_button.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/flexible_space_bar.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'package:flutter/src/material/tabs.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAppBarSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_appBar.funName] = _appBar;
  m[_sliverAppBar.funName] = _sliverAppBar;
  return m;
}
var _appBar = MXFunctionInvoke(
    "AppBar",
    (
      {
      Key key,
      Widget leading,
      bool automaticallyImplyLeading = true,
      Widget title,
      dynamic actions,
      Widget flexibleSpace,
      PreferredSizeWidget bottom,
      dynamic elevation,
      ShapeBorder shape,
      Color backgroundColor,
      Brightness brightness,
      IconThemeData iconTheme,
      IconThemeData actionsIconTheme,
      TextTheme textTheme,
      bool primary = true,
      bool centerTitle,
      bool excludeHeaderSemantics = false,
      dynamic titleSpacing = 16.0,
      dynamic toolbarOpacity = 1.0,
      dynamic bottomOpacity = 1.0,
      }
    ) =>
      AppBar(
      key: key,
      leading: leading,
      automaticallyImplyLeading: automaticallyImplyLeading,
      title: title,
      actions: toListT<Widget>(actions),
      flexibleSpace: flexibleSpace,
      bottom: bottom,
      elevation: elevation?.toDouble(),
      shape: shape,
      backgroundColor: backgroundColor,
      brightness: brightness,
      iconTheme: iconTheme,
      actionsIconTheme: actionsIconTheme,
      textTheme: textTheme,
      primary: primary,
      centerTitle: centerTitle,
      excludeHeaderSemantics: excludeHeaderSemantics,
      titleSpacing: titleSpacing?.toDouble(),
      toolbarOpacity: toolbarOpacity?.toDouble(),
      bottomOpacity: bottomOpacity?.toDouble(),
    ),
);
var _sliverAppBar = MXFunctionInvoke(
    "SliverAppBar",
    (
      {
      Key key,
      Widget leading,
      bool automaticallyImplyLeading = true,
      Widget title,
      dynamic actions,
      Widget flexibleSpace,
      PreferredSizeWidget bottom,
      dynamic elevation,
      bool forceElevated = false,
      Color backgroundColor,
      Brightness brightness,
      IconThemeData iconTheme,
      IconThemeData actionsIconTheme,
      TextTheme textTheme,
      bool primary = true,
      bool centerTitle,
      bool excludeHeaderSemantics = false,
      dynamic titleSpacing = 16.0,
      dynamic expandedHeight,
      bool floating = false,
      bool pinned = false,
      bool snap = false,
      bool stretch = false,
      dynamic stretchTriggerOffset = 100.0,
      dynamic onStretchTrigger,
      ShapeBorder shape,
      }
    ) =>
      SliverAppBar(
      key: key,
      leading: leading,
      automaticallyImplyLeading: automaticallyImplyLeading,
      title: title,
      actions: toListT<Widget>(actions),
      flexibleSpace: flexibleSpace,
      bottom: bottom,
      elevation: elevation?.toDouble(),
      forceElevated: forceElevated,
      backgroundColor: backgroundColor,
      brightness: brightness,
      iconTheme: iconTheme,
      actionsIconTheme: actionsIconTheme,
      textTheme: textTheme,
      primary: primary,
      centerTitle: centerTitle,
      excludeHeaderSemantics: excludeHeaderSemantics,
      titleSpacing: titleSpacing?.toDouble(),
      expandedHeight: expandedHeight?.toDouble(),
      floating: floating,
      pinned: pinned,
      snap: snap,
      stretch: stretch,
      stretchTriggerOffset: stretchTriggerOffset?.toDouble(),
      onStretchTrigger: null,
      shape: shape,
    ),
);
