//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/animated_icons.dart';
import 'dart:math' as math;
import 'dart:ui' as ui;
import 'dart:ui';
import 'package:flutter/widgets.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAnimatedIconsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_animatedIcon.funName] = _animatedIcon;
  m[_animatedIcons_addevent.funName] = _animatedIcons_addevent;
  m[_animatedIcons_arrowmenu.funName] = _animatedIcons_arrowmenu;
  m[_animatedIcons_closemenu.funName] = _animatedIcons_closemenu;
  m[_animatedIcons_ellipsissearch.funName] = _animatedIcons_ellipsissearch;
  m[_animatedIcons_eventadd.funName] = _animatedIcons_eventadd;
  m[_animatedIcons_homemenu.funName] = _animatedIcons_homemenu;
  m[_animatedIcons_listview.funName] = _animatedIcons_listview;
  m[_animatedIcons_menuarrow.funName] = _animatedIcons_menuarrow;
  m[_animatedIcons_menuclose.funName] = _animatedIcons_menuclose;
  m[_animatedIcons_menuhome.funName] = _animatedIcons_menuhome;
  m[_animatedIcons_pauseplay.funName] = _animatedIcons_pauseplay;
  m[_animatedIcons_playpause.funName] = _animatedIcons_playpause;
  m[_animatedIcons_searchellipsis.funName] = _animatedIcons_searchellipsis;
  m[_animatedIcons_viewlist.funName] = _animatedIcons_viewlist;
  return m;
}
var _animatedIcon = MXFunctionInvoke(
    "AnimatedIcon",
    (
      {
      Key key,
      AnimatedIconData icon,
      Animation<double> progress,
      ui.Color color,
      dynamic size,
      String semanticLabel,
      ui.TextDirection textDirection,
      }
    ) =>
      AnimatedIcon(
      key: key,
      icon: icon,
      progress: progress,
      color: color,
      size: size?.toDouble(),
      semanticLabel: semanticLabel,
      textDirection: textDirection,
    ),
);
var _animatedIcons_addevent = MXFunctionInvoke(
  "AnimatedIcons.addevent",
    (
    ) =>
      AnimatedIcons.addevent
);
var _animatedIcons_arrowmenu = MXFunctionInvoke(
  "AnimatedIcons.arrowmenu",
    (
    ) =>
      AnimatedIcons.arrowmenu
);
var _animatedIcons_closemenu = MXFunctionInvoke(
  "AnimatedIcons.closemenu",
    (
    ) =>
      AnimatedIcons.closemenu
);
var _animatedIcons_ellipsissearch = MXFunctionInvoke(
  "AnimatedIcons.ellipsissearch",
    (
    ) =>
      AnimatedIcons.ellipsissearch
);
var _animatedIcons_eventadd = MXFunctionInvoke(
  "AnimatedIcons.eventadd",
    (
    ) =>
      AnimatedIcons.eventadd
);
var _animatedIcons_homemenu = MXFunctionInvoke(
  "AnimatedIcons.homemenu",
    (
    ) =>
      AnimatedIcons.homemenu
);
var _animatedIcons_listview = MXFunctionInvoke(
  "AnimatedIcons.listview",
    (
    ) =>
      AnimatedIcons.listview
);
var _animatedIcons_menuarrow = MXFunctionInvoke(
  "AnimatedIcons.menuarrow",
    (
    ) =>
      AnimatedIcons.menuarrow
);
var _animatedIcons_menuclose = MXFunctionInvoke(
  "AnimatedIcons.menuclose",
    (
    ) =>
      AnimatedIcons.menuclose
);
var _animatedIcons_menuhome = MXFunctionInvoke(
  "AnimatedIcons.menuhome",
    (
    ) =>
      AnimatedIcons.menuhome
);
var _animatedIcons_pauseplay = MXFunctionInvoke(
  "AnimatedIcons.pauseplay",
    (
    ) =>
      AnimatedIcons.pauseplay
);
var _animatedIcons_playpause = MXFunctionInvoke(
  "AnimatedIcons.playpause",
    (
    ) =>
      AnimatedIcons.playpause
);
var _animatedIcons_searchellipsis = MXFunctionInvoke(
  "AnimatedIcons.searchellipsis",
    (
    ) =>
      AnimatedIcons.searchellipsis
);
var _animatedIcons_viewlist = MXFunctionInvoke(
  "AnimatedIcons.viewlist",
    (
    ) =>
      AnimatedIcons.viewlist
);
