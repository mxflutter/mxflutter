//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/licenses.dart';
import 'dart:async';
import 'package:meta/meta.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerLicensesSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_licenseParagraph.funName] = _licenseParagraph;
  m[_licenseParagraphCenteredIndent.funName] = _licenseParagraphCenteredIndent;
  m[_licenseEntryWithLineBreaks.funName] = _licenseEntryWithLineBreaks;
  m[_licenseRegistryAddLicense.funName] = _licenseRegistryAddLicense;
  m[_licenseRegistryReset.funName] = _licenseRegistryReset;
  return m;
}

var _licenseParagraph = MXFunctionInvoke(
  "LicenseParagraph",
  ({
    String text,
    int indent,
  }) =>
      LicenseParagraph(
    text,
    indent,
  ),
  [
    "text",
    "indent",
  ],
);
var _licenseParagraphCenteredIndent =
    MXFunctionInvoke("LicenseParagraph.centeredIndent", () => LicenseParagraph.centeredIndent);
var _licenseEntryWithLineBreaks = MXFunctionInvoke(
  "LicenseEntryWithLineBreaks",
  ({
    dynamic packages,
    String text,
  }) =>
      LicenseEntryWithLineBreaks(
    toListT<String>(packages),
    text,
  ),
  [
    "packages",
    "text",
  ],
);
var _licenseRegistryAddLicense = MXFunctionInvoke(
  "LicenseRegistry.addLicense",
  ({
    dynamic collector,
  }) =>
      LicenseRegistry.addLicense(
    null,
  ),
  [
    "collector",
  ],
);
var _licenseRegistryReset = MXFunctionInvoke(
  "LicenseRegistry.reset",
  () => LicenseRegistry.reset(),
  [],
);
