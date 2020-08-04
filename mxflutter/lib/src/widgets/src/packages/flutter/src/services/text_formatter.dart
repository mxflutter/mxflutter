//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/services/text_formatter.dart';


class MXProxyTextFormatter {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[blacklistingTextInputFormatter.funName] = blacklistingTextInputFormatter;
    m[lengthLimitingTextInputFormatter.funName] = lengthLimitingTextInputFormatter;
    m[whitelistingTextInputFormatter.funName] = whitelistingTextInputFormatter;
    return m;
  }
  static var blacklistingTextInputFormatter = MXFunctionInvoke(
      "BlacklistingTextInputFormatter",
      ({
        Pattern blacklistedPattern,
        String replacementString = ,
      }) =>
        BlacklistingTextInputFormatter(
        blacklistedPattern,
        replacementString: replacementString,
      ),
    );
  static var lengthLimitingTextInputFormatter = MXFunctionInvoke(
      "LengthLimitingTextInputFormatter",
      ({
        int maxLength,
      }) =>
        LengthLimitingTextInputFormatter(
        maxLength,
      ),
    );
  static var whitelistingTextInputFormatter = MXFunctionInvoke(
      "WhitelistingTextInputFormatter",
      ({
        Pattern whitelistedPattern,
      }) =>
        WhitelistingTextInputFormatter(
        whitelistedPattern,
      ),
    );
}
