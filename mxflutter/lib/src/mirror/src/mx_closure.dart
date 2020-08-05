//  mx_closure.dart
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mx_build_owner.dart';
import 'package:flutter/material.dart';

typedef GenericFunctionGenericCallback<R, T> = R Function(T value);

/// 生成VoidCallback闭包
VoidCallback createVoidCallbackClosure(
    MXJsonBuildOwner bo, dynamic eventCallbackID) {
  VoidCallback cb = () {
    bo.eventCallback(eventCallbackID);
  };

  return cb;
}

/// 生成ValueChanged<dynamic>闭包
ValueChanged<dynamic> createValueChangedDynamicClosure(
    MXJsonBuildOwner bo, dynamic eventCallbackID) {
  if (eventCallbackID == null) {
    return null;
  }

  ValueChanged<dynamic> cb = (dynamic b) {
    bo.eventCallback(eventCallbackID, b);
  };

  return cb;
}

/// 生成ValueChanged<T>闭包
ValueChanged<T> createValueChangedGenericClosure<T>(
    MXJsonBuildOwner bo, dynamic eventCallbackID) {
  if (eventCallbackID == null) {
    return null;
  }

  ValueChanged<T> cb = (T b) {
    bo.eventCallback(eventCallbackID, b);
  };

  return cb;
}

//生成StringFunctionGenericCallback<T> 闭包
GenericFunctionGenericCallback<R, T> createGenericValueGenericClosure<R, T>(
    MXJsonBuildOwner bo, dynamic eventCallbackID) {
  if (eventCallbackID == null) {
    return null;
  }

  GenericFunctionGenericCallback<R, T> cb = (T b) {
    R result = bo.eventCallback(eventCallbackID, b);
    return result;
  };

  return cb;
}
