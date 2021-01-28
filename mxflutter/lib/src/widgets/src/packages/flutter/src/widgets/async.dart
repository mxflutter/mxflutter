//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/async.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/framework.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAsyncSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_connectionState.funName] = _connectionState;
  m[_asyncSnapshotNothing.funName] = _asyncSnapshotNothing;
  m[_asyncSnapshotWithData.funName] = _asyncSnapshotWithData;
  m[_asyncSnapshotWithError.funName] = _asyncSnapshotWithError;
  m[_streamBuilder.funName] = _streamBuilder;
  m[_futureBuilder.funName] = _futureBuilder;
  return m;
}

var _connectionState = MXFunctionInvoke(
    "ConnectionState", ({String name, int index}) => MXConnectionState.parse(name, index), ["name", "index"]);
var _asyncSnapshotNothing = MXFunctionInvoke(
  "AsyncSnapshot.nothing",
  () => AsyncSnapshot.nothing(),
  [],
);
var _asyncSnapshotWithData = MXFunctionInvoke(
  "AsyncSnapshot.withData",
  ({
    ConnectionState state,
    dynamic data,
  }) =>
      AsyncSnapshot.withData(
    state,
    data,
  ),
  [
    "state",
    "data",
  ],
);
var _asyncSnapshotWithError = MXFunctionInvoke(
  "AsyncSnapshot.withError",
  ({
    ConnectionState state,
    Object error,
  }) =>
      AsyncSnapshot.withError(
    state,
    error,
  ),
  [
    "state",
    "error",
  ],
);
var _streamBuilder = MXFunctionInvoke(
  "StreamBuilder",
  ({
    Key key,
    dynamic initialData,
    Stream<dynamic> stream,
    dynamic builder,
  }) =>
      StreamBuilder(
    key: key,
    initialData: initialData,
    stream: stream,
    builder: null,
  ),
  [
    "key",
    "initialData",
    "stream",
    "builder",
  ],
);
var _futureBuilder = MXFunctionInvoke(
  "FutureBuilder",
  ({
    Key key,
    Future<dynamic> future,
    dynamic initialData,
    dynamic builder,
  }) =>
      FutureBuilder(
    key: key,
    future: future,
    initialData: initialData,
    builder: null,
  ),
  [
    "key",
    "future",
    "initialData",
    "builder",
  ],
);

class MXConnectionState {
  static ConnectionState parse(String name, int index) {
    switch (name) {
      case 'ConnectionState.none':
        return ConnectionState.none;
      case 'ConnectionState.waiting':
        return ConnectionState.waiting;
      case 'ConnectionState.active':
        return ConnectionState.active;
      case 'ConnectionState.done':
        return ConnectionState.done;
    }
    return null;
  }
}
