//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'src/services/platform_channel.dart';
import 'src/services/clipboard.dart';
import 'src/services/font_loader.dart';
import 'src/services/haptic_feedback.dart';
import 'src/services/keyboard_key.dart';
import 'src/services/keyboard_maps.dart';
import 'src/services/platform_messages.dart';
import 'src/services/platform_views.dart';
import 'src/services/raw_keyboard_web.dart';
import 'src/services/system_chrome.dart';
import 'src/services/system_navigator.dart';
import 'src/services/system_sound.dart';
import 'src/services/text_editing.dart';
import 'src/services/text_formatter.dart';
import 'src/services/text_input.dart';


class MXProxyServices {
  static Map<String, MXFunctionInvoke> registerSeries() {
    Map<String, MXFunctionInvoke> m = {};
    m.addAll(MXProxyPlatformChannel.registerSeries());
    m.addAll(MXProxyClipboard.registerSeries());
    m.addAll(MXProxyFontLoader.registerSeries());
    m.addAll(MXProxyHapticFeedback.registerSeries());
    m.addAll(MXProxyKeyboardKey.registerSeries());
    m.addAll(MXProxyKeyboardMaps.registerSeries());
    m.addAll(MXProxyPlatformMessages.registerSeries());
    m.addAll(MXProxyPlatformViews.registerSeries());
    m.addAll(MXProxyRawKeyboardWeb.registerSeries());
    m.addAll(MXProxySystemChrome.registerSeries());
    m.addAll(MXProxySystemNavigator.registerSeries());
    m.addAll(MXProxySystemSound.registerSeries());
    m.addAll(MXProxyTextEditing.registerSeries());
    m.addAll(MXProxyTextFormatter.registerSeries());
    m.addAll(MXProxyTextInput.registerSeries());
    return m;
  }
}
