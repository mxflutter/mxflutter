//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'dart:async';
import 'dart:io';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/focus_traversal.dart';
import 'package:flutter/src/widgets/framework.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerFocusManagerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_unfocusDisposition.funName] = _unfocusDisposition;
  m[_focusNode.funName] = _focusNode;
  m[_focusScopeNode.funName] = _focusScopeNode;
  m[_focusHighlightMode.funName] = _focusHighlightMode;
  m[_focusHighlightStrategy.funName] = _focusHighlightStrategy;
  m[_focusManager.funName] = _focusManager;
  return m;
}
var _unfocusDisposition = MXFunctionInvoke(
    "UnfocusDisposition",
    ({Map args}) => MXUnfocusDisposition.parse(args),
  );
var _focusNode = MXFunctionInvoke(
    "FocusNode",
    (
      {
      String debugLabel,
      dynamic onKey,
      bool skipTraversal = false,
      bool canRequestFocus = true,
      }
    ) =>
      FocusNode(
      debugLabel: debugLabel,
      onKey: null,
      skipTraversal: skipTraversal,
      canRequestFocus: canRequestFocus,
    ),
);
var _focusScopeNode = MXFunctionInvoke(
    "FocusScopeNode",
    (
      {
      String debugLabel,
      dynamic onKey,
      bool skipTraversal = false,
      bool canRequestFocus = true,
      }
    ) =>
      FocusScopeNode(
      debugLabel: debugLabel,
      onKey: null,
      skipTraversal: skipTraversal,
      canRequestFocus: canRequestFocus,
    ),
);
var _focusHighlightMode = MXFunctionInvoke(
    "FocusHighlightMode",
    ({Map args}) => MXFocusHighlightMode.parse(args),
  );
var _focusHighlightStrategy = MXFunctionInvoke(
    "FocusHighlightStrategy",
    ({Map args}) => MXFocusHighlightStrategy.parse(args),
  );
var _focusManager = MXFunctionInvoke(
    "FocusManager",
    (
    ) =>
      FocusManager(
    ),
);
class MXUnfocusDisposition {
  static Map str2VMap = {
    'UnfocusDisposition.scope': UnfocusDisposition.scope,
    'UnfocusDisposition.previouslyFocusedChild': UnfocusDisposition.previouslyFocusedChild,
  };
  static UnfocusDisposition parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXFocusHighlightMode {
  static Map str2VMap = {
    'FocusHighlightMode.touch': FocusHighlightMode.touch,
    'FocusHighlightMode.traditional': FocusHighlightMode.traditional,
  };
  static FocusHighlightMode parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXFocusHighlightStrategy {
  static Map str2VMap = {
    'FocusHighlightStrategy.automatic': FocusHighlightStrategy.automatic,
    'FocusHighlightStrategy.alwaysTouch': FocusHighlightStrategy.alwaysTouch,
    'FocusHighlightStrategy.alwaysTraditional': FocusHighlightStrategy.alwaysTraditional,
  };
  static FocusHighlightStrategy parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
