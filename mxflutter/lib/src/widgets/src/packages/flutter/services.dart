//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'src/services/platform_channel.dart';
import 'src/services/message_codec.dart';
import 'src/services/message_codecs.dart';
import 'src/services/system_channels.dart';
import 'src/services/binding.dart';
import 'src/services/binary_messenger.dart';
import 'src/services/asset_bundle.dart';
import 'src/services/clipboard.dart';
import 'src/services/font_loader.dart';
import 'src/services/haptic_feedback.dart';
import 'src/services/keyboard_key.dart';
import 'src/services/keyboard_maps.dart';
import 'src/services/platform_messages.dart';
import 'src/services/platform_views.dart';
import 'src/services/raw_keyboard_macos.dart';
import 'src/services/raw_keyboard_linux.dart';
import 'src/services/raw_keyboard_fuchsia.dart';
import 'src/services/raw_keyboard_android.dart';
import 'src/services/raw_keyboard.dart';
import 'src/services/system_chrome.dart';
import 'src/services/system_navigator.dart';
import 'src/services/system_sound.dart';
import 'src/services/text_editing.dart';
import 'src/services/text_formatter.dart';
import 'src/services/text_input.dart';


Map<String, MXFunctionInvoke> registerServicesLibrarySeries() {
  Map<String, MXFunctionInvoke> m = {};
  m.addAll(registerPlatformChannelSeries());
  m.addAll(registerMessageCodecSeries());
  m.addAll(registerMessageCodecsSeries());
  m.addAll(registerSystemChannelsSeries());
  m.addAll(registerBindingSeries());
  m.addAll(registerBinaryMessengerSeries());
  m.addAll(registerAssetBundleSeries());
  m.addAll(registerClipboardSeries());
  m.addAll(registerFontLoaderSeries());
  m.addAll(registerHapticFeedbackSeries());
  m.addAll(registerKeyboardKeySeries());
  m.addAll(registerKeyboardMapsSeries());
  m.addAll(registerPlatformMessagesSeries());
  m.addAll(registerPlatformViewsSeries());
  m.addAll(registerRawKeyboardMacosSeries());
  m.addAll(registerRawKeyboardLinuxSeries());
  m.addAll(registerRawKeyboardFuchsiaSeries());
  m.addAll(registerRawKeyboardAndroidSeries());
  m.addAll(registerRawKeyboardSeries());
  m.addAll(registerSystemChromeSeries());
  m.addAll(registerSystemNavigatorSeries());
  m.addAll(registerSystemSoundSeries());
  m.addAll(registerTextEditingSeries());
  m.addAll(registerTextFormatterSeries());
  m.addAll(registerTextInputSeries());
  return m;
}
