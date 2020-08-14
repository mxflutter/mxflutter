//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
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
  m[_asyncSnapshot_nothing.funName] = _asyncSnapshot_nothing;
  m[_asyncSnapshot_withData.funName] = _asyncSnapshot_withData;
  m[_asyncSnapshot_withError.funName] = _asyncSnapshot_withError;
  m[_streamBuilder.funName] = _streamBuilder;
  m[_futureBuilder.funName] = _futureBuilder;
  return m;
}
var _connectionState = MXFunctionInvoke(
    "ConnectionState",
    ({String name, int index}) => MXConnectionState.parse(name, index),
  );
var _asyncSnapshot_nothing = MXFunctionInvoke(
  "AsyncSnapshot.nothing",
    (
    ) =>
      AsyncSnapshot.nothing(
    ),
);
var _asyncSnapshot_withData = MXFunctionInvoke(
  "AsyncSnapshot.withData",
    (
      {
      ConnectionState state,
      dynamic data,
      }
    ) =>
      AsyncSnapshot.withData(
      state,
      data,
    ),
);
var _asyncSnapshot_withError = MXFunctionInvoke(
  "AsyncSnapshot.withError",
    (
      {
      ConnectionState state,
      Object error,
      }
    ) =>
      AsyncSnapshot.withError(
      state,
      error,
    ),
);
var _streamBuilder = MXFunctionInvoke(
    "StreamBuilder",
    (
      {
      Key key,
      dynamic initialData,
      Stream<dynamic> stream,
      dynamic builder,
      }
    ) =>
      StreamBuilder(
      key: key,
      initialData: initialData,
      stream: stream,
      builder: null,
    ),
);
var _futureBuilder = MXFunctionInvoke(
    "FutureBuilder",
    (
      {
      Key key,
      Future<dynamic> future,
      dynamic initialData,
      dynamic builder,
      }
    ) =>
      FutureBuilder(
      key: key,
      future: future,
      initialData: initialData,
      builder: null,
    ),
);
class MXConnectionState {
  static ConnectionState parse(String name, int index) {
    switch(name) {
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
