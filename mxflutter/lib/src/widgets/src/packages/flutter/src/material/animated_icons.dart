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
  m[_animatedIcons_add_event.funName] = _animatedIcons_add_event;
  m[_animatedIcons_arrow_menu.funName] = _animatedIcons_arrow_menu;
  m[_animatedIcons_close_menu.funName] = _animatedIcons_close_menu;
  m[_animatedIcons_ellipsis_search.funName] = _animatedIcons_ellipsis_search;
  m[_animatedIcons_event_add.funName] = _animatedIcons_event_add;
  m[_animatedIcons_home_menu.funName] = _animatedIcons_home_menu;
  m[_animatedIcons_list_view.funName] = _animatedIcons_list_view;
  m[_animatedIcons_menu_arrow.funName] = _animatedIcons_menu_arrow;
  m[_animatedIcons_menu_close.funName] = _animatedIcons_menu_close;
  m[_animatedIcons_menu_home.funName] = _animatedIcons_menu_home;
  m[_animatedIcons_pause_play.funName] = _animatedIcons_pause_play;
  m[_animatedIcons_play_pause.funName] = _animatedIcons_play_pause;
  m[_animatedIcons_search_ellipsis.funName] = _animatedIcons_search_ellipsis;
  m[_animatedIcons_view_list.funName] = _animatedIcons_view_list;
  return m;
}

var _animatedIcon = MXFunctionInvoke(
  "AnimatedIcon",
  ({
    Key key,
    AnimatedIconData icon,
    Animation<double> progress,
    ui.Color color,
    dynamic size,
    String semanticLabel,
    ui.TextDirection textDirection,
  }) =>
      AnimatedIcon(
    key: key,
    icon: icon,
    progress: progress,
    color: color,
    size: size?.toDouble(),
    semanticLabel: semanticLabel,
    textDirection: textDirection,
  ),
  [
    "key",
    "icon",
    "progress",
    "color",
    "size",
    "semanticLabel",
    "textDirection",
  ],
);
var _animatedIcons_add_event =
    MXFunctionInvoke("AnimatedIcons.add_event", () => AnimatedIcons.add_event);
var _animatedIcons_arrow_menu = MXFunctionInvoke(
    "AnimatedIcons.arrow_menu", () => AnimatedIcons.arrow_menu);
var _animatedIcons_close_menu = MXFunctionInvoke(
    "AnimatedIcons.close_menu", () => AnimatedIcons.close_menu);
var _animatedIcons_ellipsis_search = MXFunctionInvoke(
    "AnimatedIcons.ellipsis_search", () => AnimatedIcons.ellipsis_search);
var _animatedIcons_event_add =
    MXFunctionInvoke("AnimatedIcons.event_add", () => AnimatedIcons.event_add);
var _animatedIcons_home_menu =
    MXFunctionInvoke("AnimatedIcons.home_menu", () => AnimatedIcons.home_menu);
var _animatedIcons_list_view =
    MXFunctionInvoke("AnimatedIcons.list_view", () => AnimatedIcons.list_view);
var _animatedIcons_menu_arrow = MXFunctionInvoke(
    "AnimatedIcons.menu_arrow", () => AnimatedIcons.menu_arrow);
var _animatedIcons_menu_close = MXFunctionInvoke(
    "AnimatedIcons.menu_close", () => AnimatedIcons.menu_close);
var _animatedIcons_menu_home =
    MXFunctionInvoke("AnimatedIcons.menu_home", () => AnimatedIcons.menu_home);
var _animatedIcons_pause_play = MXFunctionInvoke(
    "AnimatedIcons.pause_play", () => AnimatedIcons.pause_play);
var _animatedIcons_play_pause = MXFunctionInvoke(
    "AnimatedIcons.play_pause", () => AnimatedIcons.play_pause);
var _animatedIcons_search_ellipsis = MXFunctionInvoke(
    "AnimatedIcons.search_ellipsis", () => AnimatedIcons.search_ellipsis);
var _animatedIcons_view_list =
    MXFunctionInvoke("AnimatedIcons.view_list", () => AnimatedIcons.view_list);
