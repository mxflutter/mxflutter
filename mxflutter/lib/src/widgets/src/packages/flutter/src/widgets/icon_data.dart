//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/icon_data.dart';


class MXProxyIconData {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[iconData.funName] = iconData;
    m[iconDataProperty.funName] = iconDataProperty;
    return m;
  }
  static var iconData = MXFunctionInvoke(
      "IconData",
      ({
        int codePoint,
        String fontFamily,
        String fontPackage,
        bool matchTextDirection = false,
      }) =>
        IconData(
        codePoint,
        fontFamily: fontFamily,
        fontPackage: fontPackage,
        matchTextDirection: matchTextDirection,
      ),
    );
  static var iconDataProperty = MXFunctionInvoke(
      "IconDataProperty",
      ({
        String name,
        IconData value,
        String ifNull,
        bool showName = true,
        DiagnosticsTreeStyle style = DiagnosticsTreeStyle.singleLine,
        DiagnosticLevel level = DiagnosticLevel.info,
      }) =>
        IconDataProperty(
        name,
        value,
        ifNull: ifNull,
        showName: showName,
        style: style,
        level: level,
      ),
    );
}
