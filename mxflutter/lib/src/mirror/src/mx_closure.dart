//  MXFlutterFramework
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../mx_build_owner.dart';

typedef GenericNoneParamsCallback<R> = R Function();

typedef GenericFunctionGenericCallback<R, T> = R Function(T value);

typedef VoidTwoGenericParamsCallback<T, S> = Function(T arg1, S arg2);

typedef GenericTwoGenericParamsCallback<R, T, S> = R Function(T arg1, S arg2);

typedef VoidThreeGenericParamsCallback<T, S, W> = Function(T arg1, S arg2, W arg3);

typedef GenericThreeGenericParamsCallback<R, T, S, W> = R Function(T arg1, S arg2, W arg3);

typedef VoidFourGenericParamsCallback<T, S, W, V> = Function(T arg1, S arg2, W arg3, V arg4);

typedef GenericFourGenericParamsCallback<R, T, S, W, V> = R Function(T arg1, S arg2, W arg3, V arg4);

typedef VoidFiveGenericParamsCallback<T, S, W, V, U> = Function(T arg1, S arg2, W arg3, V arg4, U arg5);

typedef GenericFiveGenericParamsCallback<R, T, S, W, V, U> = R Function(T arg1, S arg2, W arg3, V arg4, U arg5);

/// VoidCallback闭包。
VoidCallback createVoidCallbackClosure(MXBuildOwner bo, dynamic eventCallbackID) {
  if (eventCallbackID == null) {
    return null;
  }

  VoidCallback cb = () {
    bo.eventCallback(eventCallbackID);
  };

  return cb;
}

/// GenericNoneParamsCallback<R>闭包。
GenericNoneParamsCallback<R> createGenericNoneParamsClosure<R>(MXBuildOwner bo, dynamic eventCallbackID) {
  if (eventCallbackID == null) {
    return null;
  }

  GenericNoneParamsCallback<R> cb = () {
    R result = bo.eventCallback(eventCallbackID);
    return result;
  };

  return cb;
}

/// ValueChanged<T>闭包。
ValueChanged<T> createValueChangedGenericClosure<T>(MXBuildOwner bo, dynamic eventCallbackID) {
  if (eventCallbackID == null) {
    return null;
  }

  ValueChanged<T> cb = (T b) {
    bo.eventCallback(eventCallbackID, args: [b]);
  };

  return cb;
}

/// GenericFunctionGenericCallback<R, T>闭包。返回值T要支持json.encode，否则要自己实现该闭包。
GenericFunctionGenericCallback<R, T> createGenericValueGenericClosure<R, T>(
    MXBuildOwner bo, dynamic eventCallbackID) {
  if (eventCallbackID == null) {
    return null;
  }

  GenericFunctionGenericCallback<R, T> cb = (T b) {
    R result = bo.syncEventCallback(eventCallbackID, args: [b]);
    return result;
  };

  return cb;
}

/// VoidTwoGenericParamsCallback<T, S>闭包。
VoidTwoGenericParamsCallback<T, S> createVoidTwoParamsClosure<T, S>(MXBuildOwner bo, dynamic eventCallbackID) {
  if (eventCallbackID == null) {
    return null;
  }

  VoidTwoGenericParamsCallback<T, S> cb = (T arg1, S arg2) {
    bo.eventCallback(eventCallbackID, args: [arg1, arg2]);
  };

  return cb;
}

/// GenericTwoGenericParamsCallback<R, T, S>闭包。返回值T、S要支持json.encode，否则要自己实现该闭包。
GenericTwoGenericParamsCallback<R, T, S> createGenericTwoParamsClosure<R, T, S>(
    MXBuildOwner bo, dynamic eventCallbackID) {
  if (eventCallbackID == null) {
    return null;
  }

  GenericTwoGenericParamsCallback<R, T, S> cb = (T arg1, S arg2) {
    R result = bo.syncEventCallback(eventCallbackID, args: [arg1, arg2]);
    return result;
  };

  return cb;
}

/// VoidThreeGenericParamsCallback<T, S, W>闭包。
VoidThreeGenericParamsCallback<T, S, W> createVoidThreeParamsClosure<T, S, W>(
    MXBuildOwner bo, dynamic eventCallbackID) {
  if (eventCallbackID == null) {
    return null;
  }

  VoidThreeGenericParamsCallback<T, S, W> cb = (T arg1, S arg2, W arg3) {
    bo.eventCallback(eventCallbackID, args: [arg1, arg2, arg3]);
  };

  return cb;
}

/// GenericThreeGenericParamsCallback<R, T, S, W>闭包。返回值T、S、W要支持json.encode，否则要自己实现该闭包。
GenericThreeGenericParamsCallback<R, T, S, W> createGenericThreeParamsClosure<R, T, S, W>(
    MXBuildOwner bo, dynamic eventCallbackID) {
  if (eventCallbackID == null) {
    return null;
  }

  GenericThreeGenericParamsCallback<R, T, S, W> cb = (T arg1, S arg2, W arg3) {
    R result = bo.syncEventCallback(eventCallbackID, args: [arg1, arg2, arg3]);
    return result;
  };

  return cb;
}

/// VoidFourGenericParamsCallback<T, U>闭包。
VoidFourGenericParamsCallback<T, S, W, V> createVoidFourParamsClosure<T, S, W, V>(
    MXBuildOwner bo, dynamic eventCallbackID) {
  if (eventCallbackID == null) {
    return null;
  }

  VoidFourGenericParamsCallback<T, S, W, V> cb = (T arg1, S arg2, W arg3, V arg4) {
    bo.eventCallback(eventCallbackID, args: [arg1, arg2, arg3, arg4]);
  };

  return cb;
}

/// GenericFourGenericParamsCallback<R, T, S, W, V>闭包。返回值T、S、W、V要支持json.encode，否则要自己实现该闭包。
GenericFourGenericParamsCallback<R, T, S, W, V> createGenericFourParamsClosure<R, T, S, W, V>(
    MXBuildOwner bo, dynamic eventCallbackID) {
  if (eventCallbackID == null) {
    return null;
  }

  GenericFourGenericParamsCallback<R, T, S, W, V> cb = (T arg1, S arg2, W arg3, V arg4) {
    R result = bo.syncEventCallback(eventCallbackID, args: [arg1, arg2, arg3, arg4]);
    return result;
  };

  return cb;
}

/// VoidFiveGenericParamsCallback<T, U>闭包。
VoidFiveGenericParamsCallback<T, S, W, V, U> createVoidFiveParamsClosure<T, S, W, V, U>(
    MXBuildOwner bo, dynamic eventCallbackID) {
  if (eventCallbackID == null) {
    return null;
  }

  VoidFiveGenericParamsCallback<T, S, W, V, U> cb = (T arg1, S arg2, W arg3, V arg4, U arg5) {
    bo.eventCallback(eventCallbackID, args: [arg1, arg2, arg3, arg4, arg5]);
  };

  return cb;
}

/// GenericFiveGenericParamsCallback<R, T, S, W, V, U>闭包。返回值T、S、W、V、U要支持json.encode，否则要自己实现该闭包。
GenericFiveGenericParamsCallback<R, T, S, W, V, U> createGenericFiveParamsClosure<R, T, S, W, V, U>(
    MXBuildOwner bo, dynamic eventCallbackID) {
  if (eventCallbackID == null) {
    return null;
  }

  GenericFiveGenericParamsCallback<R, T, S, W, V, U> cb = (T arg1, S arg2, W arg3, V arg4, U arg5) {
    R result = bo.syncEventCallback(eventCallbackID, args: [arg1, arg2, arg3, arg4, arg5]);
    return result;
  };

  return cb;
}
