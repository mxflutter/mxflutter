//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/text_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTextThemeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoTextThemeData.funName] = _cupertinoTextThemeData;
  return m;
}

var _cupertinoTextThemeData = MXFunctionInvoke(
  "CupertinoTextThemeData",
  ({
    Color primaryColor = CupertinoColors.systemBlue,
    Brightness brightness,
    TextStyle textStyle,
    TextStyle actionTextStyle,
    TextStyle tabLabelTextStyle,
    TextStyle navTitleTextStyle,
    TextStyle navLargeTitleTextStyle,
    TextStyle navActionTextStyle,
    TextStyle pickerTextStyle,
    TextStyle dateTimePickerTextStyle,
  }) =>
      CupertinoTextThemeData(
    primaryColor: primaryColor,
    brightness: brightness,
    textStyle: textStyle,
    actionTextStyle: actionTextStyle,
    tabLabelTextStyle: tabLabelTextStyle,
    navTitleTextStyle: navTitleTextStyle,
    navLargeTitleTextStyle: navLargeTitleTextStyle,
    navActionTextStyle: navActionTextStyle,
    pickerTextStyle: pickerTextStyle,
    dateTimePickerTextStyle: dateTimePickerTextStyle,
  ),
  [
    "primaryColor",
    "brightness",
    "textStyle",
    "actionTextStyle",
    "tabLabelTextStyle",
    "navTitleTextStyle",
    "navLargeTitleTextStyle",
    "navActionTextStyle",
    "pickerTextStyle",
    "dateTimePickerTextStyle",
  ],
);
