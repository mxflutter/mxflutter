//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/unicode.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerUnicodeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_unicodeLRE.funName] = _unicodeLRE;
  m[_unicodeRLE.funName] = _unicodeRLE;
  m[_unicodePDF.funName] = _unicodePDF;
  m[_unicodeLRO.funName] = _unicodeLRO;
  m[_unicodeRLO.funName] = _unicodeRLO;
  m[_unicodeLRI.funName] = _unicodeLRI;
  m[_unicodeRLI.funName] = _unicodeRLI;
  m[_unicodeFSI.funName] = _unicodeFSI;
  m[_unicodePDI.funName] = _unicodePDI;
  m[_unicodeLRM.funName] = _unicodeLRM;
  m[_unicodeRLM.funName] = _unicodeRLM;
  m[_unicodeALM.funName] = _unicodeALM;
  return m;
}

var _unicodeLRE = MXFunctionInvoke("Unicode.LRE", () => Unicode.LRE);
var _unicodeRLE = MXFunctionInvoke("Unicode.RLE", () => Unicode.RLE);
var _unicodePDF = MXFunctionInvoke("Unicode.PDF", () => Unicode.PDF);
var _unicodeLRO = MXFunctionInvoke("Unicode.LRO", () => Unicode.LRO);
var _unicodeRLO = MXFunctionInvoke("Unicode.RLO", () => Unicode.RLO);
var _unicodeLRI = MXFunctionInvoke("Unicode.LRI", () => Unicode.LRI);
var _unicodeRLI = MXFunctionInvoke("Unicode.RLI", () => Unicode.RLI);
var _unicodeFSI = MXFunctionInvoke("Unicode.FSI", () => Unicode.FSI);
var _unicodePDI = MXFunctionInvoke("Unicode.PDI", () => Unicode.PDI);
var _unicodeLRM = MXFunctionInvoke("Unicode.LRM", () => Unicode.LRM);
var _unicodeRLM = MXFunctionInvoke("Unicode.RLM", () => Unicode.RLM);
var _unicodeALM = MXFunctionInvoke("Unicode.ALM", () => Unicode.ALM);
