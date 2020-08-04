//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/bottom_sheet_theme.dart';


class MXProxyBottomSheetTheme {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[bottomSheetThemeData.funName] = bottomSheetThemeData;
    return m;
  }
  static var bottomSheetThemeData = MXFunctionInvoke(
      "BottomSheetThemeData",
      ({
        Color backgroundColor,
        dynamic elevation,
        Color modalBackgroundColor,
        dynamic modalElevation,
        ShapeBorder shape,
        Clip clipBehavior,
      }) =>
        BottomSheetThemeData(
        backgroundColor: backgroundColor,
        elevation: elevation?.toDouble(),
        modalBackgroundColor: modalBackgroundColor,
        modalElevation: modalElevation?.toDouble(),
        shape: shape,
        clipBehavior: clipBehavior,
      ),
    );
}
