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
  m[_unicode_LRE.funName] = _unicode_LRE;
  m[_unicode_RLE.funName] = _unicode_RLE;
  m[_unicode_PDF.funName] = _unicode_PDF;
  m[_unicode_LRO.funName] = _unicode_LRO;
  m[_unicode_RLO.funName] = _unicode_RLO;
  m[_unicode_LRI.funName] = _unicode_LRI;
  m[_unicode_RLI.funName] = _unicode_RLI;
  m[_unicode_FSI.funName] = _unicode_FSI;
  m[_unicode_PDI.funName] = _unicode_PDI;
  m[_unicode_LRM.funName] = _unicode_LRM;
  m[_unicode_RLM.funName] = _unicode_RLM;
  m[_unicode_ALM.funName] = _unicode_ALM;
  return m;
}

var _unicode_LRE = MXFunctionInvoke("Unicode.LRE", () => Unicode.LRE);
var _unicode_RLE = MXFunctionInvoke("Unicode.RLE", () => Unicode.RLE);
var _unicode_PDF = MXFunctionInvoke("Unicode.PDF", () => Unicode.PDF);
var _unicode_LRO = MXFunctionInvoke("Unicode.LRO", () => Unicode.LRO);
var _unicode_RLO = MXFunctionInvoke("Unicode.RLO", () => Unicode.RLO);
var _unicode_LRI = MXFunctionInvoke("Unicode.LRI", () => Unicode.LRI);
var _unicode_RLI = MXFunctionInvoke("Unicode.RLI", () => Unicode.RLI);
var _unicode_FSI = MXFunctionInvoke("Unicode.FSI", () => Unicode.FSI);
var _unicode_PDI = MXFunctionInvoke("Unicode.PDI", () => Unicode.PDI);
var _unicode_LRM = MXFunctionInvoke("Unicode.LRM", () => Unicode.LRM);
var _unicode_RLM = MXFunctionInvoke("Unicode.RLM", () => Unicode.RLM);
var _unicode_ALM = MXFunctionInvoke("Unicode.ALM", () => Unicode.ALM);
