//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/scheduler/ticker.dart';


class MXProxyTicker {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[ticker.funName] = ticker;
    m[tickerFuture_.funName] = tickerFuture_;
    m[tickerFuture_complete.funName] = tickerFuture_complete;
    m[tickerCanceled.funName] = tickerCanceled;
    return m;
  }
  static var ticker = MXFunctionInvoke(
      "Ticker",
      ({
        dynamic _onTick,
        String debugLabel,
      }) =>
        Ticker(
        _onTick,
        debugLabel: debugLabel,
      ),
    );
  static var tickerFuture_ = MXFunctionInvoke(
    "tickerFuture.",
      ({
      }) =>
        TickerFuture.(
      ),
    );
  static var tickerFuture_complete = MXFunctionInvoke(
    "tickerFuture.complete",
      ({
      }) =>
        TickerFuture.complete(
      ),
    );
  static var tickerCanceled = MXFunctionInvoke(
      "TickerCanceled",
      ({
        Ticker ticker,
      }) =>
        TickerCanceled(
        ticker,
      ),
    );
}
