//  MXFlutterFramework
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'dart:isolate';

import '../mirror/mx_mirror.dart';
import '../mx_common.dart';

final DynamicLibrary dl = Platform.isAndroid
    ? DynamicLibrary.open("libmxflutter.so")
    : DynamicLibrary.process();

final registerSendPort = dl.lookupFunction<Void Function(Int64 sendPort),
    void Function(int sendPort)>('RegisterSendPort');

final _registerDartPostCObject = dl.lookupFunction<
    Void Function(
        Pointer<NativeFunction<Int8 Function(Int64, Pointer<Dart_CObject>)>>
            functionPointer),
    void Function(
        Pointer<NativeFunction<Int8 Function(Int64, Pointer<Dart_CObject>)>>
            functionPointer)>('RegisterDart_PostCObject');

final _registerDartNewNativePort = dl.lookupFunction<
    Void Function(
        Pointer<
                NativeFunction<
                    Int64 Function(
                        Pointer<Uint8>,
                        Pointer<NativeFunction<Dart_NativeMessageHandler>>,
                        Int8)>>
            functionPointer),
    void Function(
        Pointer<
                NativeFunction<
                    Int64 Function(
                        Pointer<Uint8>,
                        Pointer<NativeFunction<Dart_NativeMessageHandler>>,
                        Int8)>>
            functionPointer)>('RegisterDart_NewNativePort');

final _registerDartCloseNativePort = dl.lookupFunction<
        Void Function(
            Pointer<NativeFunction<Int8 Function(Int64)>> functionPointer),
        void Function(
            Pointer<NativeFunction<Int8 Function(Int64)>> functionPointer)>(
    'RegisterDart_CloseNativePort');

typedef _MXFFIFunction = String Function(dynamic args);

class MXFFICallbackManager {
  static MXFFICallbackManager _instance;

  Map<String, _MXFFIFunction> _name2FunMap = {};

  MXFFICallbackManager() {
    _setup();
  }

  static MXFFICallbackManager getInstance() {
    if (_instance == null) {
      _instance = MXFFICallbackManager();
    }
    return _instance;
  }

  void _setup() {
    _setupName2FunMap();
    
    _registerDartPostCObject(NativeApi.postCObject);
    _registerDartNewNativePort(NativeApi.newNativePort);
    _registerDartCloseNativePort(NativeApi.closeNativePort);

    _registerSendPort();
  }

  /// JS -> Flutter 开放给JS调用，由 FFI Port 调用。
  _setupName2FunMap() {
    _name2FunMap["mxJSBridgeInvokeMirrorObj"] = _mxJSBridgeInvokeMirrorObj;
  }

  void _registerSendPort() {
    final interactiveNativeRequests = ReceivePort()
      ..listen(_onData,
          onError: _onError, onDone: _onDone, cancelOnError: true);
    final int nativePort = interactiveNativeRequests.sendPort.nativePort;
    registerSendPort(nativePort);
  }

  void _onData(dynamic message) {
    final nativeRequest = _NativeRequest.fromNativeMessage(message);
    try {
      Map arguments = json.decode(nativeRequest.data);
      String funcName = arguments["funcName"];
      dynamic funArgs = arguments["args"];
      Function fun = _name2FunMap[funcName];
      String result = fun(funArgs)??'';
      final nativeResponse =
          _NativeResponse(nativeRequest.pendingCall, utf8.encode(result));
      nativeRequest.replyPort.send(nativeResponse.toNativeMessage());
    } catch (e) {
      MXJSLog.log('MXFFICallbackManager::_onData error: nativeRequest: $nativeRequest, error: $e');
      final nativeResponse =
          _NativeResponse(nativeRequest.pendingCall, utf8.encode(''));
      nativeRequest.replyPort.send(nativeResponse.toNativeMessage());
    }
  }

  void _onError(dynamic arguments) {
    MXJSLog.log('MXFFICallbackManager::_onError: $arguments');
  }

  void _onDone() {
    MXJSLog.log('MXFFICallbackManager::_onDone');
  }

  String _mxJSBridgeInvokeMirrorObj(dynamic args) {
    MXJSLog.log("MXFFICallbackManager::_mxJSBridgeInvokeMirrorObj: $args");
    if (args == null) {
      return null;
    }

    try {
      var result = MXMirror.getInstance().invokeFunction(args);
      var returnJsonStr = result;
      if (result != null && !(result is String)) {
        // TODO: 此处会要求返回值为string类型，否则会因为encode异常。
        returnJsonStr = json.encode(result);
      }
      return returnJsonStr;
    } catch(e) {
      MXJSLog.log("MXFFICallbackManager::_mxJSBridgeInvokeMirrorObj: $args, error: $e,");
      return null;
    }
  }
}

class _NativeRequest {
  final SendPort replyPort;
  final int pendingCall;
  final String data;

  factory _NativeRequest.fromNativeMessage(List message) {
    return _NativeRequest._(message[0], message[1], message[2]);
  }

  _NativeRequest._(this.replyPort, this.pendingCall, this.data);

  String toString() => '_NativeRequest(${data.length} bytes)';
}

class _NativeResponse {
  final int pendingCall;
  final List data;

  _NativeResponse(this.pendingCall, this.data);

  List toNativeMessage() => List.from([pendingCall, data], growable: false);

  String toString() => '_NativeResponse(message: ${utf8.decode(data)})';
}
