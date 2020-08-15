//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/scheduler/ticker.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/scheduler/binding.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTickerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_ticker.funName] = _ticker;
  m[_tickerFuture_complete.funName] = _tickerFuture_complete;
  m[_tickerCanceled.funName] = _tickerCanceled;
  return m;
}

var _ticker = MXFunctionInvoke(
  "Ticker",
  ({
    dynamic onTick,
    String debugLabel,
  }) =>
      Ticker(
    createValueChangedGenericClosure<Duration>(_ticker.buildOwner, onTick),
    debugLabel: debugLabel,
  ),
  [
    "onTick",
    "debugLabel",
  ],
);
var _tickerFuture_complete = MXFunctionInvoke(
  "TickerFuture.complete",
  () => TickerFuture.complete(),
  [],
);
var _tickerCanceled = MXFunctionInvoke(
  "TickerCanceled",
  ({
    Ticker ticker,
  }) =>
      TickerCanceled(
    ticker,
  ),
  [
    "ticker",
  ],
);
