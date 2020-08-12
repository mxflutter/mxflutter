//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/unicode.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerUnicodeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_unicode_lRE.funName] = _unicode_lRE;
  m[_unicode_rLE.funName] = _unicode_rLE;
  m[_unicode_pDF.funName] = _unicode_pDF;
  m[_unicode_lRO.funName] = _unicode_lRO;
  m[_unicode_rLO.funName] = _unicode_rLO;
  m[_unicode_lRI.funName] = _unicode_lRI;
  m[_unicode_rLI.funName] = _unicode_rLI;
  m[_unicode_fSI.funName] = _unicode_fSI;
  m[_unicode_pDI.funName] = _unicode_pDI;
  m[_unicode_lRM.funName] = _unicode_lRM;
  m[_unicode_rLM.funName] = _unicode_rLM;
  m[_unicode_aLM.funName] = _unicode_aLM;
  return m;
}
var _unicode_lRE = MXFunctionInvoke(
  "Unicode.lRE",
    (
    ) =>
      Unicode.lRE
);
var _unicode_rLE = MXFunctionInvoke(
  "Unicode.rLE",
    (
    ) =>
      Unicode.rLE
);
var _unicode_pDF = MXFunctionInvoke(
  "Unicode.pDF",
    (
    ) =>
      Unicode.pDF
);
var _unicode_lRO = MXFunctionInvoke(
  "Unicode.lRO",
    (
    ) =>
      Unicode.lRO
);
var _unicode_rLO = MXFunctionInvoke(
  "Unicode.rLO",
    (
    ) =>
      Unicode.rLO
);
var _unicode_lRI = MXFunctionInvoke(
  "Unicode.lRI",
    (
    ) =>
      Unicode.lRI
);
var _unicode_rLI = MXFunctionInvoke(
  "Unicode.rLI",
    (
    ) =>
      Unicode.rLI
);
var _unicode_fSI = MXFunctionInvoke(
  "Unicode.fSI",
    (
    ) =>
      Unicode.fSI
);
var _unicode_pDI = MXFunctionInvoke(
  "Unicode.pDI",
    (
    ) =>
      Unicode.pDI
);
var _unicode_lRM = MXFunctionInvoke(
  "Unicode.lRM",
    (
    ) =>
      Unicode.lRM
);
var _unicode_rLM = MXFunctionInvoke(
  "Unicode.rLM",
    (
    ) =>
      Unicode.rLM
);
var _unicode_aLM = MXFunctionInvoke(
  "Unicode.aLM",
    (
    ) =>
      Unicode.aLM
);
