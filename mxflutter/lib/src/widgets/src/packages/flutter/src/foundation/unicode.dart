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
var _unicode_LRE = MXFunctionInvoke(
  "Unicode.LRE",
    (
    ) =>
      Unicode.LRE
);
var _unicode_RLE = MXFunctionInvoke(
  "Unicode.RLE",
    (
    ) =>
      Unicode.RLE
);
var _unicode_PDF = MXFunctionInvoke(
  "Unicode.PDF",
    (
    ) =>
      Unicode.PDF
);
var _unicode_LRO = MXFunctionInvoke(
  "Unicode.LRO",
    (
    ) =>
      Unicode.LRO
);
var _unicode_RLO = MXFunctionInvoke(
  "Unicode.RLO",
    (
    ) =>
      Unicode.RLO
);
var _unicode_LRI = MXFunctionInvoke(
  "Unicode.LRI",
    (
    ) =>
      Unicode.LRI
);
var _unicode_RLI = MXFunctionInvoke(
  "Unicode.RLI",
    (
    ) =>
      Unicode.RLI
);
var _unicode_FSI = MXFunctionInvoke(
  "Unicode.FSI",
    (
    ) =>
      Unicode.FSI
);
var _unicode_PDI = MXFunctionInvoke(
  "Unicode.PDI",
    (
    ) =>
      Unicode.PDI
);
var _unicode_LRM = MXFunctionInvoke(
  "Unicode.LRM",
    (
    ) =>
      Unicode.LRM
);
var _unicode_RLM = MXFunctionInvoke(
  "Unicode.RLM",
    (
    ) =>
      Unicode.RLM
);
var _unicode_ALM = MXFunctionInvoke(
  "Unicode.ALM",
    (
    ) =>
      Unicode.ALM
);
