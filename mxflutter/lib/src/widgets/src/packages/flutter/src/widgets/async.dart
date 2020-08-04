//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/async.dart';


class MXProxyAsync {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[connectionState.funName] = connectionState;
    m[asyncSnapshot_.funName] = asyncSnapshot_;
    m[asyncSnapshot_nothing.funName] = asyncSnapshot_nothing;
    m[asyncSnapshot_withData.funName] = asyncSnapshot_withData;
    m[asyncSnapshot_withError.funName] = asyncSnapshot_withError;
    m[streamBuilder.funName] = streamBuilder;
    m[futureBuilder.funName] = futureBuilder;
    return m;
  }
  static var connectionState = MXFunctionInvoke(
      "ConnectionState",
      ({Map args}) => MXConnectionState.parse(args),
  );
  static var asyncSnapshot_ = MXFunctionInvoke(
    "asyncSnapshot.",
      ({
        ConnectionState connectionState,
        dynamic data,
        Object error,
      }) =>
        AsyncSnapshot.(
        connectionState,
        data,
        error,
      ),
    );
  static var asyncSnapshot_nothing = MXFunctionInvoke(
    "asyncSnapshot.nothing",
      ({
      }) =>
        AsyncSnapshot.nothing(
      ),
    );
  static var asyncSnapshot_withData = MXFunctionInvoke(
    "asyncSnapshot.withData",
      ({
        ConnectionState state,
        dynamic data,
      }) =>
        AsyncSnapshot.withData(
        state,
        data,
      ),
    );
  static var asyncSnapshot_withError = MXFunctionInvoke(
    "asyncSnapshot.withError",
      ({
        ConnectionState state,
        Object error,
      }) =>
        AsyncSnapshot.withError(
        state,
        error,
      ),
    );
  static var streamBuilder = MXFunctionInvoke(
      "StreamBuilder",
      ({
        Key key,
        dynamic initialData,
        Stream<StreamBuilder::T> stream,
        dynamic builder,
      }) =>
        StreamBuilder(
        key: key,
        initialData: initialData,
        stream: stream,
        builder: builder,
      ),
    );
  static var futureBuilder = MXFunctionInvoke(
      "FutureBuilder",
      ({
        Key key,
        Future<FutureBuilder::T> future,
        dynamic initialData,
        dynamic builder,
      }) =>
        FutureBuilder(
        key: key,
        future: future,
        initialData: initialData,
        builder: builder,
      ),
    );
}
class MXConnectionState {
  static Map str2VMap = {
    'ConnectionState.none': ConnectionState.none,
    'ConnectionState.waiting': ConnectionState.waiting,
    'ConnectionState.active': ConnectionState.active,
    'ConnectionState.done': ConnectionState.done,
  };
  static ConnectionState parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
