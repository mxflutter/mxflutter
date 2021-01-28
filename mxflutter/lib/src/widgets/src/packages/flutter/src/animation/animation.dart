//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:flutter/animation.dart';
import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/animation/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/animation/tween.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerAnimationSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_animationStatus.funName] = _animationStatus;
  m[_animation.funName] = _animation;
  return m;
}

var _animationStatus = MXFunctionInvoke(
    "AnimationStatus", ({String name, int index}) => MXAnimationStatus.parse(name, index), ["name", "index"]);

/// MX modified begin
var _animation = MXFunctionInvoke("Animation", ({
  Tween tween,
  AnimationController controller,
  dynamic statusListenerList,
  dynamic listenerList,
  dynamic mirrorID,
}) {
  Animation animation = tween.animate(controller);
  if (statusListenerList != null && statusListenerList.length > 0) {
    animation.addStatusListener(_createStatusListenerHandle(_animation.buildOwner, mirrorID, 'statusListenerCallback'));
  }
  return animation;
}, [
  "tween",
  "controller",
  "statusListenerList",
  "listenerList",
  "mirrorID",
]);

/// MX modified end

AnimationStatusListener _createStatusListenerHandle(dynamic bo, String mirrorID, String functionName) {
  AnimationStatusListener cb = (AnimationStatus status) {
    bo.mirrorObjEventCallback(
        mirrorID: mirrorID, functionName: functionName, p: MXAnimationStatus.encodeString(status));
  };
  return cb;
}

class MXAnimationStatus {
  static AnimationStatus parse(String name, int index) {
    switch (name) {
      case 'AnimationStatus.dismissed':
        return AnimationStatus.dismissed;
      case 'AnimationStatus.forward':
        return AnimationStatus.forward;
      case 'AnimationStatus.reverse':
        return AnimationStatus.reverse;
      case 'AnimationStatus.completed':
        return AnimationStatus.completed;
    }
    return null;
  }

  static Map encodeString(AnimationStatus status) {
    Map retValut = {"_name": "AnimationStatus.dismissed", "index": 0};
    switch (status) {
      case AnimationStatus.dismissed:
        retValut = {"_name": "AnimationStatus.dismissed", "index": 0};
        break;
      case AnimationStatus.forward:
        retValut = {"_name": "AnimationStatus.forward", "index": 1};
        break;
      case AnimationStatus.reverse:
        retValut = {"_name": "AnimationStatus.reverse", "index": 2};
        break;
      case AnimationStatus.completed:
        retValut = {"_name": "AnimationStatus.completed", "index": 3};
        break;
      default:
        break;
    }
    return retValut;
  }
}
