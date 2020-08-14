//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/text_formatter.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/text_editing.dart';
import 'package:flutter/src/services/text_input.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTextFormatterSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_blacklistingTextInputFormatter.funName] = _blacklistingTextInputFormatter;
  m[_lengthLimitingTextInputFormatter.funName] = _lengthLimitingTextInputFormatter;
  m[_whitelistingTextInputFormatter.funName] = _whitelistingTextInputFormatter;
  return m;
}
var _blacklistingTextInputFormatter = MXFunctionInvoke(
    "BlacklistingTextInputFormatter",
    (
      {
      Pattern blacklistedPattern,
      String replacementString = '',
      }
    ) =>
      BlacklistingTextInputFormatter(
      blacklistedPattern,
      replacementString: replacementString,
    ),
);
var _lengthLimitingTextInputFormatter = MXFunctionInvoke(
    "LengthLimitingTextInputFormatter",
    (
      {
      int maxLength,
      }
    ) =>
      LengthLimitingTextInputFormatter(
      maxLength,
    ),
);
var _whitelistingTextInputFormatter = MXFunctionInvoke(
    "WhitelistingTextInputFormatter",
    (
      {
      Pattern whitelistedPattern,
      }
    ) =>
      WhitelistingTextInputFormatter(
      whitelistedPattern,
    ),
);
