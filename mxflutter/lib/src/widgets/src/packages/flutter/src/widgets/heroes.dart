//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/heroes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/overlay.dart';
import 'package:flutter/src/widgets/pages.dart';
import 'package:flutter/src/widgets/routes.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/src/widgets/transitions.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerHeroesSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_heroFlightDirection.funName] = _heroFlightDirection;
  m[_hero.funName] = _hero;
  m[_heroController.funName] = _heroController;
  return m;
}

var _heroFlightDirection = MXFunctionInvoke(
    "HeroFlightDirection", ({String name, int index}) => MXHeroFlightDirection.parse(name, index), ["name", "index"]);
var _hero = MXFunctionInvoke(
  "Hero",
  ({
    Key key,
    Object tag,
    dynamic createRectTween,
    dynamic flightShuttleBuilder,
    dynamic placeholderBuilder,
    bool transitionOnUserGestures = false,
    Widget child,
  }) =>
      Hero(
    key: key,
    tag: tag,
    createRectTween: null,
    flightShuttleBuilder: null,
    placeholderBuilder: null,
    transitionOnUserGestures: transitionOnUserGestures,
    child: child,
  ),
  [
    "key",
    "tag",
    "createRectTween",
    "flightShuttleBuilder",
    "placeholderBuilder",
    "transitionOnUserGestures",
    "child",
  ],
);
var _heroController = MXFunctionInvoke(
  "HeroController",
  ({
    dynamic createRectTween,
  }) =>
      HeroController(
    createRectTween: null,
  ),
  [
    "createRectTween",
  ],
);

class MXHeroFlightDirection {
  static HeroFlightDirection parse(String name, int index) {
    switch (name) {
      case 'HeroFlightDirection.push':
        return HeroFlightDirection.push;
      case 'HeroFlightDirection.pop':
        return HeroFlightDirection.pop;
    }
    return null;
  }
}
