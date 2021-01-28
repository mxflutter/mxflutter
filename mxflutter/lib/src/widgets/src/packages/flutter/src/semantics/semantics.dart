//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/semantics/semantics.dart';
import 'dart:math' as math;
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/semantics/binding.dart';
import 'package:flutter/src/semantics/semantics_event.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSemanticsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_semanticsTag.funName] = _semanticsTag;
  m[_customSemanticsAction.funName] = _customSemanticsAction;
  m[_customSemanticsActionOverridingAction.funName] = _customSemanticsActionOverridingAction;
  m[_semanticsData.funName] = _semanticsData;
  m[_semanticsHintOverrides.funName] = _semanticsHintOverrides;
  m[_semanticsProperties.funName] = _semanticsProperties;
  m[_semanticsNode.funName] = _semanticsNode;
  m[_semanticsNodeRoot.funName] = _semanticsNodeRoot;
  m[_semanticsOwner.funName] = _semanticsOwner;
  m[_semanticsConfiguration.funName] = _semanticsConfiguration;
  m[_debugSemanticsDumpOrder.funName] = _debugSemanticsDumpOrder;
  m[_ordinalSortKey.funName] = _ordinalSortKey;
  return m;
}

var _semanticsTag = MXFunctionInvoke(
  "SemanticsTag",
  ({
    String name,
  }) =>
      SemanticsTag(
    name,
  ),
  [
    "name",
  ],
);
var _customSemanticsAction = MXFunctionInvoke(
  "CustomSemanticsAction",
  ({
    String label,
  }) =>
      CustomSemanticsAction(
    label: label,
  ),
  [
    "label",
  ],
);
var _customSemanticsActionOverridingAction = MXFunctionInvoke(
  "CustomSemanticsAction.overridingAction",
  ({
    String hint,
    ui.SemanticsAction action,
  }) =>
      CustomSemanticsAction.overridingAction(
    hint: hint,
    action: action,
  ),
  [
    "hint",
    "action",
  ],
);
var _semanticsData = MXFunctionInvoke(
  "SemanticsData",
  ({
    int flags,
    int actions,
    String label,
    String increasedValue,
    String value,
    String decreasedValue,
    String hint,
    ui.TextDirection textDirection,
    ui.Rect rect,
    dynamic elevation,
    dynamic thickness,
    TextSelection textSelection,
    int scrollIndex,
    int scrollChildCount,
    dynamic scrollPosition,
    dynamic scrollExtentMax,
    dynamic scrollExtentMin,
    int platformViewId,
    int maxValueLength,
    int currentValueLength,
    Set<SemanticsTag> tags,
    Matrix4 transform,
    dynamic customSemanticsActionIds,
  }) =>
      SemanticsData(
    flags: flags,
    actions: actions,
    label: label,
    increasedValue: increasedValue,
    value: value,
    decreasedValue: decreasedValue,
    hint: hint,
    textDirection: textDirection,
    rect: rect,
    elevation: elevation?.toDouble(),
    thickness: thickness?.toDouble(),
    textSelection: textSelection,
    scrollIndex: scrollIndex,
    scrollChildCount: scrollChildCount,
    scrollPosition: scrollPosition?.toDouble(),
    scrollExtentMax: scrollExtentMax?.toDouble(),
    scrollExtentMin: scrollExtentMin?.toDouble(),
    platformViewId: platformViewId,
    maxValueLength: maxValueLength,
    currentValueLength: currentValueLength,
    tags: tags,
    transform: transform,
    customSemanticsActionIds: toListT<int>(customSemanticsActionIds),
  ),
  [
    "flags",
    "actions",
    "label",
    "increasedValue",
    "value",
    "decreasedValue",
    "hint",
    "textDirection",
    "rect",
    "elevation",
    "thickness",
    "textSelection",
    "scrollIndex",
    "scrollChildCount",
    "scrollPosition",
    "scrollExtentMax",
    "scrollExtentMin",
    "platformViewId",
    "maxValueLength",
    "currentValueLength",
    "tags",
    "transform",
    "customSemanticsActionIds",
  ],
);
var _semanticsHintOverrides = MXFunctionInvoke(
  "SemanticsHintOverrides",
  ({
    String onTapHint,
    String onLongPressHint,
  }) =>
      SemanticsHintOverrides(
    onTapHint: onTapHint,
    onLongPressHint: onLongPressHint,
  ),
  [
    "onTapHint",
    "onLongPressHint",
  ],
);
var _semanticsProperties = MXFunctionInvoke(
  "SemanticsProperties",
  ({
    bool enabled,
    bool checked,
    bool selected,
    bool toggled,
    bool button,
    bool link,
    bool header,
    bool textField,
    bool readOnly,
    bool focusable,
    bool focused,
    bool inMutuallyExclusiveGroup,
    bool hidden,
    bool obscured,
    bool multiline,
    bool scopesRoute,
    bool namesRoute,
    bool image,
    bool liveRegion,
    int maxValueLength,
    int currentValueLength,
    String label,
    String value,
    String increasedValue,
    String decreasedValue,
    String hint,
    SemanticsHintOverrides hintOverrides,
    ui.TextDirection textDirection,
    SemanticsSortKey sortKey,
    dynamic onTap,
    dynamic onLongPress,
    dynamic onScrollLeft,
    dynamic onScrollRight,
    dynamic onScrollUp,
    dynamic onScrollDown,
    dynamic onIncrease,
    dynamic onDecrease,
    dynamic onCopy,
    dynamic onCut,
    dynamic onPaste,
    dynamic onMoveCursorForwardByCharacter,
    dynamic onMoveCursorBackwardByCharacter,
    dynamic onMoveCursorForwardByWord,
    dynamic onMoveCursorBackwardByWord,
    dynamic onSetSelection,
    dynamic onDidGainAccessibilityFocus,
    dynamic onDidLoseAccessibilityFocus,
    dynamic onDismiss,
    dynamic customSemanticsActions,
  }) =>
      SemanticsProperties(
    enabled: enabled,
    checked: checked,
    selected: selected,
    toggled: toggled,
    button: button,
    link: link,
    header: header,
    textField: textField,
    readOnly: readOnly,
    focusable: focusable,
    focused: focused,
    inMutuallyExclusiveGroup: inMutuallyExclusiveGroup,
    hidden: hidden,
    obscured: obscured,
    multiline: multiline,
    scopesRoute: scopesRoute,
    namesRoute: namesRoute,
    image: image,
    liveRegion: liveRegion,
    maxValueLength: maxValueLength,
    currentValueLength: currentValueLength,
    label: label,
    value: value,
    increasedValue: increasedValue,
    decreasedValue: decreasedValue,
    hint: hint,
    hintOverrides: hintOverrides,
    textDirection: textDirection,
    sortKey: sortKey,
    onTap: createVoidCallbackClosure(_semanticsProperties.buildOwner, onTap),
    onLongPress: createVoidCallbackClosure(_semanticsProperties.buildOwner, onLongPress),
    onScrollLeft: createVoidCallbackClosure(_semanticsProperties.buildOwner, onScrollLeft),
    onScrollRight: createVoidCallbackClosure(_semanticsProperties.buildOwner, onScrollRight),
    onScrollUp: createVoidCallbackClosure(_semanticsProperties.buildOwner, onScrollUp),
    onScrollDown: createVoidCallbackClosure(_semanticsProperties.buildOwner, onScrollDown),
    onIncrease: createVoidCallbackClosure(_semanticsProperties.buildOwner, onIncrease),
    onDecrease: createVoidCallbackClosure(_semanticsProperties.buildOwner, onDecrease),
    onCopy: createVoidCallbackClosure(_semanticsProperties.buildOwner, onCopy),
    onCut: createVoidCallbackClosure(_semanticsProperties.buildOwner, onCut),
    onPaste: createVoidCallbackClosure(_semanticsProperties.buildOwner, onPaste),
    onMoveCursorForwardByCharacter:
        createValueChangedGenericClosure<bool>(_semanticsProperties.buildOwner, onMoveCursorForwardByCharacter),
    onMoveCursorBackwardByCharacter:
        createValueChangedGenericClosure<bool>(_semanticsProperties.buildOwner, onMoveCursorBackwardByCharacter),
    onMoveCursorForwardByWord:
        createValueChangedGenericClosure<bool>(_semanticsProperties.buildOwner, onMoveCursorForwardByWord),
    onMoveCursorBackwardByWord:
        createValueChangedGenericClosure<bool>(_semanticsProperties.buildOwner, onMoveCursorBackwardByWord),
    onSetSelection: createValueChangedGenericClosure<TextSelection>(_semanticsProperties.buildOwner, onSetSelection),
    onDidGainAccessibilityFocus:
        createVoidCallbackClosure(_semanticsProperties.buildOwner, onDidGainAccessibilityFocus),
    onDidLoseAccessibilityFocus:
        createVoidCallbackClosure(_semanticsProperties.buildOwner, onDidLoseAccessibilityFocus),
    onDismiss: createVoidCallbackClosure(_semanticsProperties.buildOwner, onDismiss),
    customSemanticsActions: toMapT<CustomSemanticsAction, void Function()>(customSemanticsActions),
  ),
  [
    "enabled",
    "checked",
    "selected",
    "toggled",
    "button",
    "link",
    "header",
    "textField",
    "readOnly",
    "focusable",
    "focused",
    "inMutuallyExclusiveGroup",
    "hidden",
    "obscured",
    "multiline",
    "scopesRoute",
    "namesRoute",
    "image",
    "liveRegion",
    "maxValueLength",
    "currentValueLength",
    "label",
    "value",
    "increasedValue",
    "decreasedValue",
    "hint",
    "hintOverrides",
    "textDirection",
    "sortKey",
    "onTap",
    "onLongPress",
    "onScrollLeft",
    "onScrollRight",
    "onScrollUp",
    "onScrollDown",
    "onIncrease",
    "onDecrease",
    "onCopy",
    "onCut",
    "onPaste",
    "onMoveCursorForwardByCharacter",
    "onMoveCursorBackwardByCharacter",
    "onMoveCursorForwardByWord",
    "onMoveCursorBackwardByWord",
    "onSetSelection",
    "onDidGainAccessibilityFocus",
    "onDidLoseAccessibilityFocus",
    "onDismiss",
    "customSemanticsActions",
  ],
);
var _semanticsNode = MXFunctionInvoke(
  "SemanticsNode",
  ({
    Key key,
    dynamic showOnScreen,
  }) =>
      SemanticsNode(
    key: key,
    showOnScreen: createVoidCallbackClosure(_semanticsNode.buildOwner, showOnScreen),
  ),
  [
    "key",
    "showOnScreen",
  ],
);
var _semanticsNodeRoot = MXFunctionInvoke(
  "SemanticsNode.root",
  ({
    Key key,
    dynamic showOnScreen,
    SemanticsOwner owner,
  }) =>
      SemanticsNode.root(
    key: key,
    showOnScreen: createVoidCallbackClosure(_semanticsNodeRoot.buildOwner, showOnScreen),
    owner: owner,
  ),
  [
    "key",
    "showOnScreen",
    "__mx_owner",
  ],
);
var _semanticsOwner = MXFunctionInvoke(
  "SemanticsOwner",
  () => SemanticsOwner(),
  [],
);
var _semanticsConfiguration = MXFunctionInvoke(
  "SemanticsConfiguration",
  () => SemanticsConfiguration(),
  [],
);
var _debugSemanticsDumpOrder = MXFunctionInvoke("DebugSemanticsDumpOrder",
    ({String name, int index}) => MXDebugSemanticsDumpOrder.parse(name, index), ["name", "index"]);
var _ordinalSortKey = MXFunctionInvoke(
  "OrdinalSortKey",
  ({
    dynamic order,
    String name,
  }) =>
      OrdinalSortKey(
    order?.toDouble(),
    name: name,
  ),
  [
    "order",
    "name",
  ],
);

class MXDebugSemanticsDumpOrder {
  static DebugSemanticsDumpOrder parse(String name, int index) {
    switch (name) {
      case 'DebugSemanticsDumpOrder.inverseHitTest':
        return DebugSemanticsDumpOrder.inverseHitTest;
      case 'DebugSemanticsDumpOrder.traversalOrder':
        return DebugSemanticsDumpOrder.traversalOrder;
    }
    return null;
  }
}
