//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/licenses.dart';
import 'dart:async';
import 'package:meta/meta.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerLicensesSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_licenseParagraph.funName] = _licenseParagraph;
  m[_licenseEntryWithLineBreaks.funName] = _licenseEntryWithLineBreaks;
  m[_licenseRegistry_addLicense.funName] = _licenseRegistry_addLicense;
  m[_licenseRegistry_reset.funName] = _licenseRegistry_reset;
  return m;
}
var _licenseParagraph = MXFunctionInvoke(
    "LicenseParagraph",
    (
      {
      String text,
      int indent,
      }
    ) =>
      LicenseParagraph(
      text,
      indent,
    ),
);
var _licenseEntryWithLineBreaks = MXFunctionInvoke(
    "LicenseEntryWithLineBreaks",
    (
      {
      dynamic packages,
      String text,
      }
    ) =>
      LicenseEntryWithLineBreaks(
      toListT<String>(packages),
      text,
    ),
);
var _licenseRegistry_addLicense = MXFunctionInvoke(
  "LicenseRegistry.addLicense",
    (
      {
      dynamic collector,
      }
    ) =>
      LicenseRegistry.addLicense(
      null,
    ),
);
var _licenseRegistry_reset = MXFunctionInvoke(
  "LicenseRegistry.reset",
    (
    ) =>
      LicenseRegistry.reset(
    ),
);
