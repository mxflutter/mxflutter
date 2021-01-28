//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/text_formatter.dart';
import 'dart:math' as math;
import 'package:characters/characters.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/services/text_editing.dart';
import 'package:flutter/src/services/text_input.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTextFormatterSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_filteringTextInputFormatter.funName] = _filteringTextInputFormatter;
  m[_filteringTextInputFormatterAllow.funName] = _filteringTextInputFormatterAllow;
  m[_filteringTextInputFormatterDeny.funName] = _filteringTextInputFormatterDeny;
  m[_blacklistingTextInputFormatter.funName] = _blacklistingTextInputFormatter;
  m[_whitelistingTextInputFormatter.funName] = _whitelistingTextInputFormatter;
  m[_lengthLimitingTextInputFormatter.funName] = _lengthLimitingTextInputFormatter;
  return m;
}

var _filteringTextInputFormatter = MXFunctionInvoke(
  "FilteringTextInputFormatter",
  ({
    Pattern filterPattern,
    bool allow,
    String replacementString = '',
  }) =>
      FilteringTextInputFormatter(
    filterPattern,
    allow: allow,
    replacementString: replacementString,
  ),
  [
    "filterPattern",
    "allow",
    "replacementString",
  ],
);
var _filteringTextInputFormatterAllow = MXFunctionInvoke(
  "FilteringTextInputFormatter.allow",
  ({
    Pattern filterPattern,
    String replacementString = '',
  }) =>
      FilteringTextInputFormatter.allow(
    filterPattern,
    replacementString: replacementString,
  ),
  [
    "filterPattern",
    "replacementString",
  ],
);
var _filteringTextInputFormatterDeny = MXFunctionInvoke(
  "FilteringTextInputFormatter.deny",
  ({
    Pattern filterPattern,
    String replacementString = '',
  }) =>
      FilteringTextInputFormatter.deny(
    filterPattern,
    replacementString: replacementString,
  ),
  [
    "filterPattern",
    "replacementString",
  ],
);
var _blacklistingTextInputFormatter = MXFunctionInvoke(
  "BlacklistingTextInputFormatter",
  ({
    Pattern blacklistedPattern,
    String replacementString = '',
  }) =>
      BlacklistingTextInputFormatter(
    blacklistedPattern,
    replacementString: replacementString,
  ),
  [
    "blacklistedPattern",
    "replacementString",
  ],
);
var _whitelistingTextInputFormatter = MXFunctionInvoke(
  "WhitelistingTextInputFormatter",
  ({
    Pattern whitelistedPattern,
  }) =>
      WhitelistingTextInputFormatter(
    whitelistedPattern,
  ),
  [
    "whitelistedPattern",
  ],
);
var _lengthLimitingTextInputFormatter = MXFunctionInvoke(
  "LengthLimitingTextInputFormatter",
  ({
    int maxLength,
  }) =>
      LengthLimitingTextInputFormatter(
    maxLength,
  ),
  [
    "maxLength",
  ],
);
