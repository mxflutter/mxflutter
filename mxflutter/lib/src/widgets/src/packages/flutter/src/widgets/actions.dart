//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/actions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/widgets/shortcuts.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerActionsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_intent.funName] = _intent;
  m[_intentDoNothing.funName] = _intentDoNothing;
  m[_actionListener.funName] = _actionListener;
  m[_callbackAction.funName] = _callbackAction;
  m[_actionDispatcher.funName] = _actionDispatcher;
  m[_actions.funName] = _actions;
  m[_focusableActionDetector.funName] = _focusableActionDetector;
  m[_doNothingIntent.funName] = _doNothingIntent;
  m[_doNothingAction.funName] = _doNothingAction;
  m[_activateIntent.funName] = _activateIntent;
  m[_selectIntent.funName] = _selectIntent;
  m[_dismissIntent.funName] = _dismissIntent;
  return m;
}

var _intent = MXFunctionInvoke(
  "Intent",
  () => Intent(),
  [],
);
var _intentDoNothing = MXFunctionInvoke("Intent.doNothing", () => Intent.doNothing);
var _actionListener = MXFunctionInvoke(
  "ActionListener",
  ({
    Key key,
    dynamic listener,
    Action<Intent> action,
    Widget child,
  }) =>
      ActionListener(
    key: key,
    listener: createValueChangedGenericClosure<Action<Intent>>(_actionListener.buildOwner, listener),
    action: action,
    child: child,
  ),
  [
    "key",
    "listener",
    "action",
    "child",
  ],
);
var _callbackAction = MXFunctionInvoke(
  "CallbackAction",
  ({
    dynamic onInvoke,
  }) =>
      CallbackAction(
    onInvoke: null,
  ),
  [
    "onInvoke",
  ],
);
var _actionDispatcher = MXFunctionInvoke(
  "ActionDispatcher",
  () => ActionDispatcher(),
  [],
);
var _actions = MXFunctionInvoke(
  "Actions",
  ({
    Key key,
    ActionDispatcher dispatcher,
    dynamic actions,
    Widget child,
  }) =>
      Actions(
    key: key,
    dispatcher: dispatcher,
    actions: toMapT<Type, Action<Intent>>(actions),
    child: child,
  ),
  [
    "key",
    "dispatcher",
    "actions",
    "child",
  ],
);
var _focusableActionDetector = MXFunctionInvoke(
  "FocusableActionDetector",
  ({
    Key key,
    bool enabled = true,
    FocusNode focusNode,
    bool autofocus = false,
    dynamic shortcuts,
    dynamic actions,
    dynamic onShowFocusHighlight,
    dynamic onShowHoverHighlight,
    dynamic onFocusChange,
    MouseCursor mouseCursor = MouseCursor.defer,
    Widget child,
  }) =>
      FocusableActionDetector(
    key: key,
    enabled: enabled,
    focusNode: focusNode,
    autofocus: autofocus,
    shortcuts: toMapT<LogicalKeySet, Intent>(shortcuts),
    actions: toMapT<Type, Action<Intent>>(actions),
    onShowFocusHighlight:
        createValueChangedGenericClosure<bool>(_focusableActionDetector.buildOwner, onShowFocusHighlight),
    onShowHoverHighlight:
        createValueChangedGenericClosure<bool>(_focusableActionDetector.buildOwner, onShowHoverHighlight),
    onFocusChange: createValueChangedGenericClosure<bool>(_focusableActionDetector.buildOwner, onFocusChange),
    mouseCursor: mouseCursor,
    child: child,
  ),
  [
    "key",
    "enabled",
    "focusNode",
    "autofocus",
    "shortcuts",
    "actions",
    "onShowFocusHighlight",
    "onShowHoverHighlight",
    "onFocusChange",
    "mouseCursor",
    "child",
  ],
);
var _doNothingIntent = MXFunctionInvoke(
  "DoNothingIntent",
  () => DoNothingIntent(),
  [],
);
var _doNothingAction = MXFunctionInvoke(
  "DoNothingAction",
  () => DoNothingAction(),
  [],
);
var _activateIntent = MXFunctionInvoke(
  "ActivateIntent",
  () => ActivateIntent(),
  [],
);
var _selectIntent = MXFunctionInvoke(
  "SelectIntent",
  () => SelectIntent(),
  [],
);
var _dismissIntent = MXFunctionInvoke(
  "DismissIntent",
  () => DismissIntent(),
  [],
);
