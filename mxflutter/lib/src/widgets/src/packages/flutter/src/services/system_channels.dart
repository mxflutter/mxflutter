//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/system_channels.dart';
import 'dart:ui';
import 'package:flutter/src/services/message_codecs.dart';
import 'package:flutter/src/services/platform_channel.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSystemChannelsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_systemChannelsNavigation.funName] = _systemChannelsNavigation;
  m[_systemChannelsPlatform.funName] = _systemChannelsPlatform;
  m[_systemChannelsTextInput.funName] = _systemChannelsTextInput;
  m[_systemChannelsKeyEvent.funName] = _systemChannelsKeyEvent;
  m[_systemChannelsLifecycle.funName] = _systemChannelsLifecycle;
  m[_systemChannelsSystem.funName] = _systemChannelsSystem;
  m[_systemChannelsAccessibility.funName] = _systemChannelsAccessibility;
  m[_systemChannelsPlatformViews.funName] = _systemChannelsPlatformViews;
  m[_systemChannelsSkia.funName] = _systemChannelsSkia;
  m[_systemChannelsMouseCursor.funName] = _systemChannelsMouseCursor;
  return m;
}

var _systemChannelsNavigation = MXFunctionInvoke("SystemChannels.navigation", () => SystemChannels.navigation);
var _systemChannelsPlatform = MXFunctionInvoke("SystemChannels.platform", () => SystemChannels.platform);
var _systemChannelsTextInput = MXFunctionInvoke("SystemChannels.textInput", () => SystemChannels.textInput);
var _systemChannelsKeyEvent = MXFunctionInvoke("SystemChannels.keyEvent", () => SystemChannels.keyEvent);
var _systemChannelsLifecycle = MXFunctionInvoke("SystemChannels.lifecycle", () => SystemChannels.lifecycle);
var _systemChannelsSystem = MXFunctionInvoke("SystemChannels.system", () => SystemChannels.system);
var _systemChannelsAccessibility = MXFunctionInvoke("SystemChannels.accessibility", () => SystemChannels.accessibility);
var _systemChannelsPlatformViews =
    MXFunctionInvoke("SystemChannels.platform_views", () => SystemChannels.platform_views);
var _systemChannelsSkia = MXFunctionInvoke("SystemChannels.skia", () => SystemChannels.skia);
var _systemChannelsMouseCursor = MXFunctionInvoke("SystemChannels.mouseCursor", () => SystemChannels.mouseCursor);
