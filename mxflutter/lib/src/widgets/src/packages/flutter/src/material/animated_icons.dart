//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
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
  m[_animatedIconsAddEvent.funName] = _animatedIconsAddEvent;
  m[_animatedIconsArrowMenu.funName] = _animatedIconsArrowMenu;
  m[_animatedIconsCloseMenu.funName] = _animatedIconsCloseMenu;
  m[_animatedIconsEllipsisSearch.funName] = _animatedIconsEllipsisSearch;
  m[_animatedIconsEventAdd.funName] = _animatedIconsEventAdd;
  m[_animatedIconsHomeMenu.funName] = _animatedIconsHomeMenu;
  m[_animatedIconsListView.funName] = _animatedIconsListView;
  m[_animatedIconsMenuArrow.funName] = _animatedIconsMenuArrow;
  m[_animatedIconsMenuClose.funName] = _animatedIconsMenuClose;
  m[_animatedIconsMenuHome.funName] = _animatedIconsMenuHome;
  m[_animatedIconsPausePlay.funName] = _animatedIconsPausePlay;
  m[_animatedIconsPlayPause.funName] = _animatedIconsPlayPause;
  m[_animatedIconsSearchEllipsis.funName] = _animatedIconsSearchEllipsis;
  m[_animatedIconsViewList.funName] = _animatedIconsViewList;
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
var _animatedIconsAddEvent = MXFunctionInvoke("AnimatedIcons.add_event", () => AnimatedIcons.add_event);
var _animatedIconsArrowMenu = MXFunctionInvoke("AnimatedIcons.arrow_menu", () => AnimatedIcons.arrow_menu);
var _animatedIconsCloseMenu = MXFunctionInvoke("AnimatedIcons.close_menu", () => AnimatedIcons.close_menu);
var _animatedIconsEllipsisSearch =
    MXFunctionInvoke("AnimatedIcons.ellipsis_search", () => AnimatedIcons.ellipsis_search);
var _animatedIconsEventAdd = MXFunctionInvoke("AnimatedIcons.event_add", () => AnimatedIcons.event_add);
var _animatedIconsHomeMenu = MXFunctionInvoke("AnimatedIcons.home_menu", () => AnimatedIcons.home_menu);
var _animatedIconsListView = MXFunctionInvoke("AnimatedIcons.list_view", () => AnimatedIcons.list_view);
var _animatedIconsMenuArrow = MXFunctionInvoke("AnimatedIcons.menu_arrow", () => AnimatedIcons.menu_arrow);
var _animatedIconsMenuClose = MXFunctionInvoke("AnimatedIcons.menu_close", () => AnimatedIcons.menu_close);
var _animatedIconsMenuHome = MXFunctionInvoke("AnimatedIcons.menu_home", () => AnimatedIcons.menu_home);
var _animatedIconsPausePlay = MXFunctionInvoke("AnimatedIcons.pause_play", () => AnimatedIcons.pause_play);
var _animatedIconsPlayPause = MXFunctionInvoke("AnimatedIcons.play_pause", () => AnimatedIcons.play_pause);
var _animatedIconsSearchEllipsis =
    MXFunctionInvoke("AnimatedIcons.search_ellipsis", () => AnimatedIcons.search_ellipsis);
var _animatedIconsViewList = MXFunctionInvoke("AnimatedIcons.view_list", () => AnimatedIcons.view_list);
