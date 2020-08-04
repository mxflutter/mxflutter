//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
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


Map<String, MXFunctionInvoke> registerServicesSeries() {
  Map<String, MXFunctionInvoke> m = {};
  m.addAll(registerPlatformChannelSeries());
  m.addAll(registerClipboardSeries());
  m.addAll(registerFontLoaderSeries());
  m.addAll(registerHapticFeedbackSeries());
  m.addAll(registerKeyboardKeySeries());
  m.addAll(registerKeyboardMapsSeries());
  m.addAll(registerPlatformMessagesSeries());
  m.addAll(registerPlatformViewsSeries());
  m.addAll(registerRawKeyboardWebSeries());
  m.addAll(registerSystemChromeSeries());
  m.addAll(registerSystemNavigatorSeries());
  m.addAll(registerSystemSoundSeries());
  m.addAll(registerTextEditingSeries());
  m.addAll(registerTextFormatterSeries());
  m.addAll(registerTextInputSeries());
  return m;
}
