//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/inherited_notifier.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerFocusScopeSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_focus.funName] = _focus;
  m[_focusScope.funName] = _focusScope;
  m[_excludeFocus.funName] = _excludeFocus;
  return m;
}

var _focus = MXFunctionInvoke(
  "Focus",
  ({
    Key key,
    Widget child,
    FocusNode focusNode,
    bool autofocus = false,
    dynamic onFocusChange,
    dynamic onKey,
    String debugLabel,
    bool canRequestFocus,
    bool descendantsAreFocusable = true,
    bool skipTraversal,
    bool includeSemantics = true,
  }) =>
      Focus(
    key: key,
    child: child,
    focusNode: focusNode,
    autofocus: autofocus,
    onFocusChange: createValueChangedGenericClosure<bool>(_focus.buildOwner, onFocusChange),
    onKey: null,
    debugLabel: debugLabel,
    canRequestFocus: canRequestFocus,
    descendantsAreFocusable: descendantsAreFocusable,
    skipTraversal: skipTraversal,
    includeSemantics: includeSemantics,
  ),
  [
    "key",
    "child",
    "focusNode",
    "autofocus",
    "onFocusChange",
    "onKey",
    "debugLabel",
    "canRequestFocus",
    "descendantsAreFocusable",
    "skipTraversal",
    "includeSemantics",
  ],
);
var _focusScope = MXFunctionInvoke(
  "FocusScope",
  ({
    Key key,
    FocusScopeNode node,
    Widget child,
    bool autofocus = false,
    dynamic onFocusChange,
    bool canRequestFocus,
    bool skipTraversal,
    dynamic onKey,
    String debugLabel,
  }) =>
      FocusScope(
    key: key,
    node: node,
    child: child,
    autofocus: autofocus,
    onFocusChange: createValueChangedGenericClosure<bool>(_focusScope.buildOwner, onFocusChange),
    canRequestFocus: canRequestFocus,
    skipTraversal: skipTraversal,
    onKey: null,
    debugLabel: debugLabel,
  ),
  [
    "key",
    "node",
    "child",
    "autofocus",
    "onFocusChange",
    "canRequestFocus",
    "skipTraversal",
    "onKey",
    "debugLabel",
  ],
);
var _excludeFocus = MXFunctionInvoke(
  "ExcludeFocus",
  ({
    Key key,
    bool excluding = true,
    Widget child,
  }) =>
      ExcludeFocus(
    key: key,
    excluding: excluding,
    child: child,
  ),
  [
    "key",
    "excluding",
    "child",
  ],
);
