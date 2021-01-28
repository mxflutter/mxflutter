//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/localizations.dart';
import 'dart:async';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerLocalizationsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_defaultWidgetsLocalizations.funName] = _defaultWidgetsLocalizations;
  m[_defaultWidgetsLocalizationsDelegate.funName] = _defaultWidgetsLocalizationsDelegate;
  m[_localizations.funName] = _localizations;
  m[_localizationsOverride.funName] = _localizationsOverride;
  return m;
}

var _defaultWidgetsLocalizations = MXFunctionInvoke(
  "DefaultWidgetsLocalizations",
  () => DefaultWidgetsLocalizations(),
  [],
);
var _defaultWidgetsLocalizationsDelegate =
    MXFunctionInvoke("DefaultWidgetsLocalizations.delegate", () => DefaultWidgetsLocalizations.delegate);
var _localizations = MXFunctionInvoke(
  "Localizations",
  ({
    Key key,
    Locale locale,
    dynamic delegates,
    Widget child,
  }) =>
      Localizations(
    key: key,
    locale: locale,
    delegates: toListT<LocalizationsDelegate<dynamic>>(delegates),
    child: child,
  ),
  [
    "key",
    "locale",
    "delegates",
    "child",
  ],
);
var _localizationsOverride = MXFunctionInvoke(
  "Localizations.override",
  ({
    Key key,
    BuildContext context,
    Locale locale,
    dynamic delegates,
    Widget child,
  }) =>
      Localizations.override(
    key: key,
    context: context,
    locale: locale,
    delegates: toListT<LocalizationsDelegate<dynamic>>(delegates),
    child: child,
  ),
  [
    "key",
    "context",
    "locale",
    "delegates",
    "child",
  ],
);
