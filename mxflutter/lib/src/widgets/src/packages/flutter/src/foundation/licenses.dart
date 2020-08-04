//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/licenses.dart';


class MXProxyLicenses {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[licenseParagraph.funName] = licenseParagraph;
    m[licenseEntryWithLineBreaks.funName] = licenseEntryWithLineBreaks;
    m[licenseRegistry_.funName] = licenseRegistry_;
    return m;
  }
  static var licenseParagraph = MXFunctionInvoke(
      "LicenseParagraph",
      ({
        String text,
        int indent,
      }) =>
        LicenseParagraph(
        text,
        indent,
      ),
    );
  static var licenseEntryWithLineBreaks = MXFunctionInvoke(
      "LicenseEntryWithLineBreaks",
      ({
        List<String> packages,
        String text,
      }) =>
        LicenseEntryWithLineBreaks(
        packages,
        text,
      ),
    );
  static var licenseRegistry_ = MXFunctionInvoke(
    "licenseRegistry.",
      ({
      }) =>
        LicenseRegistry.(
      ),
    );
}
