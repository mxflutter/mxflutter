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
var _animatedIcons_add_event = MXFunctionInvoke(
  "AnimatedIcons.add_event",
    (
    ) =>
      AnimatedIcons.add_event
);
var _animatedIcons_arrow_menu = MXFunctionInvoke(
  "AnimatedIcons.arrow_menu",
    (
    ) =>
      AnimatedIcons.arrow_menu
);
var _animatedIcons_close_menu = MXFunctionInvoke(
  "AnimatedIcons.close_menu",
    (
    ) =>
      AnimatedIcons.close_menu
);
var _animatedIcons_ellipsis_search = MXFunctionInvoke(
  "AnimatedIcons.ellipsis_search",
    (
    ) =>
      AnimatedIcons.ellipsis_search
);
var _animatedIcons_event_add = MXFunctionInvoke(
  "AnimatedIcons.event_add",
    (
    ) =>
      AnimatedIcons.event_add
);
var _animatedIcons_home_menu = MXFunctionInvoke(
  "AnimatedIcons.home_menu",
    (
    ) =>
      AnimatedIcons.home_menu
);
var _animatedIcons_list_view = MXFunctionInvoke(
  "AnimatedIcons.list_view",
    (
    ) =>
      AnimatedIcons.list_view
);
var _animatedIcons_menu_arrow = MXFunctionInvoke(
  "AnimatedIcons.menu_arrow",
    (
    ) =>
      AnimatedIcons.menu_arrow
);
var _animatedIcons_menu_close = MXFunctionInvoke(
  "AnimatedIcons.menu_close",
    (
    ) =>
      AnimatedIcons.menu_close
);
var _animatedIcons_menu_home = MXFunctionInvoke(
  "AnimatedIcons.menu_home",
    (
    ) =>
      AnimatedIcons.menu_home
);
var _animatedIcons_pause_play = MXFunctionInvoke(
  "AnimatedIcons.pause_play",
    (
    ) =>
      AnimatedIcons.pause_play
);
var _animatedIcons_play_pause = MXFunctionInvoke(
  "AnimatedIcons.play_pause",
    (
    ) =>
      AnimatedIcons.play_pause
);
var _animatedIcons_search_ellipsis = MXFunctionInvoke(
  "AnimatedIcons.search_ellipsis",
    (
    ) =>
      AnimatedIcons.search_ellipsis
);
var _animatedIcons_view_list = MXFunctionInvoke(
  "AnimatedIcons.view_list",
    (
    ) =>
      AnimatedIcons.view_list
);
