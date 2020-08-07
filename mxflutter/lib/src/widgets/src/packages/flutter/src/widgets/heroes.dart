//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/heroes.dart';
import 'package:flutter/foundation.dart' ;
import 'package:flutter/src/widgets/basic.dart' ;
import 'package:flutter/src/widgets/binding.dart' ;
import 'package:flutter/src/widgets/framework.dart' ;
import 'package:flutter/src/widgets/navigator.dart' ;
import 'package:flutter/src/widgets/overlay.dart' ;
import 'package:flutter/src/widgets/pages.dart' ;
import 'package:flutter/src/widgets/routes.dart' ;
import 'package:flutter/src/widgets/ticker_provider.dart' ;
import 'package:flutter/src/widgets/transitions.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerHeroesSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_heroFlightDirection.funName] = _heroFlightDirection;
  m[_hero.funName] = _hero;
  m[_heroController.funName] = _heroController;
  return m;
}
var _heroFlightDirection = MXFunctionInvoke(
    "HeroFlightDirection",
    ({Map args}) => MXHeroFlightDirection.parse(args),
  );
var _hero = MXFunctionInvoke(
    "Hero",
    (
      {
      Key key,
      Object tag,
      dynamic createRectTween,
      dynamic flightShuttleBuilder,
      dynamic placeholderBuilder,
      bool transitionOnUserGestures = false,
      Widget child,
      }
    ) =>
      Hero(
      key: key,
      tag: tag,
      createRectTween: null,
      flightShuttleBuilder: null,
      placeholderBuilder: null,
      transitionOnUserGestures: transitionOnUserGestures,
      child: child,
    ),
);
var _heroController = MXFunctionInvoke(
    "HeroController",
    (
      {
      dynamic createRectTween,
      }
    ) =>
      HeroController(
      createRectTween: null,
    ),
);
class MXHeroFlightDirection {
  static Map str2VMap = {
    'HeroFlightDirection.push': HeroFlightDirection.push,
    'HeroFlightDirection.pop': HeroFlightDirection.pop,
  };
  static HeroFlightDirection parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
