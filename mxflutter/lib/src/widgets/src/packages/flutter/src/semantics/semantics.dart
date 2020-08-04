//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/semantics/semantics.dart';


class MXProxySemantics {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[semanticsTag.funName] = semanticsTag;
    m[customSemanticsAction.funName] = customSemanticsAction;
    m[customSemanticsAction_overridingAction.funName] = customSemanticsAction_overridingAction;
    m[semanticsData.funName] = semanticsData;
    m[semanticsHintOverrides.funName] = semanticsHintOverrides;
    m[semanticsProperties.funName] = semanticsProperties;
    m[semanticsNode.funName] = semanticsNode;
    m[semanticsNode_root.funName] = semanticsNode_root;
    m[semanticsOwner.funName] = semanticsOwner;
    m[semanticsConfiguration.funName] = semanticsConfiguration;
    m[debugSemanticsDumpOrder.funName] = debugSemanticsDumpOrder;
    m[ordinalSortKey.funName] = ordinalSortKey;
    return m;
  }
  static var semanticsTag = MXFunctionInvoke(
      "SemanticsTag",
      ({
        String name,
      }) =>
        SemanticsTag(
        name,
      ),
    );
  static var customSemanticsAction = MXFunctionInvoke(
      "CustomSemanticsAction",
      ({
        String label,
      }) =>
        CustomSemanticsAction(
        label: label,
      ),
    );
  static var customSemanticsAction_overridingAction = MXFunctionInvoke(
    "customSemanticsAction.overridingAction",
      ({
        String hint,
        SemanticsAction action,
      }) =>
        CustomSemanticsAction.overridingAction(
        hint: hint,
        action: action,
      ),
    );
  static var semanticsData = MXFunctionInvoke(
      "SemanticsData",
      ({
        int flags,
        int actions,
        String label,
        String increasedValue,
        String value,
        String decreasedValue,
        String hint,
        TextDirection textDirection,
        Rect rect,
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
        List<int> customSemanticsActionIds,
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
        customSemanticsActionIds: customSemanticsActionIds,
      ),
    );
  static var semanticsHintOverrides = MXFunctionInvoke(
      "SemanticsHintOverrides",
      ({
        String onTapHint,
        String onLongPressHint,
      }) =>
        SemanticsHintOverrides(
        onTapHint: onTapHint,
        onLongPressHint: onLongPressHint,
      ),
    );
  static var semanticsProperties = MXFunctionInvoke(
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
        TextDirection textDirection,
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
        Map<CustomSemanticsAction*, void Function()> customSemanticsActions,
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
        onTap: createVoidCallbackClosure(semanticsProperties.buildOwner, onTap),
        onLongPress: createVoidCallbackClosure(semanticsProperties.buildOwner, onLongPress),
        onScrollLeft: createVoidCallbackClosure(semanticsProperties.buildOwner, onScrollLeft),
        onScrollRight: createVoidCallbackClosure(semanticsProperties.buildOwner, onScrollRight),
        onScrollUp: createVoidCallbackClosure(semanticsProperties.buildOwner, onScrollUp),
        onScrollDown: createVoidCallbackClosure(semanticsProperties.buildOwner, onScrollDown),
        onIncrease: createVoidCallbackClosure(semanticsProperties.buildOwner, onIncrease),
        onDecrease: createVoidCallbackClosure(semanticsProperties.buildOwner, onDecrease),
        onCopy: createVoidCallbackClosure(semanticsProperties.buildOwner, onCopy),
        onCut: createVoidCallbackClosure(semanticsProperties.buildOwner, onCut),
        onPaste: createVoidCallbackClosure(semanticsProperties.buildOwner, onPaste),
        onMoveCursorForwardByCharacter: createValueChangedGenericClosure<bool>(semanticsProperties.buildOwner, onMoveCursorForwardByCharacter),
        onMoveCursorBackwardByCharacter: createValueChangedGenericClosure<bool>(semanticsProperties.buildOwner, onMoveCursorBackwardByCharacter),
        onMoveCursorForwardByWord: createValueChangedGenericClosure<bool>(semanticsProperties.buildOwner, onMoveCursorForwardByWord),
        onMoveCursorBackwardByWord: createValueChangedGenericClosure<bool>(semanticsProperties.buildOwner, onMoveCursorBackwardByWord),
        onSetSelection: createValueChangedGenericClosure<TextSelection>(semanticsProperties.buildOwner, onSetSelection),
        onDidGainAccessibilityFocus: createVoidCallbackClosure(semanticsProperties.buildOwner, onDidGainAccessibilityFocus),
        onDidLoseAccessibilityFocus: createVoidCallbackClosure(semanticsProperties.buildOwner, onDidLoseAccessibilityFocus),
        onDismiss: createVoidCallbackClosure(semanticsProperties.buildOwner, onDismiss),
        customSemanticsActions: customSemanticsActions,
      ),
    );
  static var semanticsNode = MXFunctionInvoke(
      "SemanticsNode",
      ({
        Key key,
        dynamic showOnScreen,
      }) =>
        SemanticsNode(
        key: key,
        showOnScreen: createVoidCallbackClosure(semanticsNode.buildOwner, showOnScreen),
      ),
    );
  static var semanticsNode_root = MXFunctionInvoke(
    "semanticsNode.root",
      ({
        Key key,
        dynamic showOnScreen,
        SemanticsOwner owner,
      }) =>
        SemanticsNode.root(
        key: key,
        showOnScreen: createVoidCallbackClosure(semanticsNode_root.buildOwner, showOnScreen),
        owner: owner,
      ),
    );
  static var semanticsOwner = MXFunctionInvoke(
      "SemanticsOwner",
      ({
      }) =>
        SemanticsOwner(
      ),
    );
  static var semanticsConfiguration = MXFunctionInvoke(
      "SemanticsConfiguration",
      ({
      }) =>
        SemanticsConfiguration(
      ),
    );
  static var debugSemanticsDumpOrder = MXFunctionInvoke(
      "DebugSemanticsDumpOrder",
      ({Map args}) => MXDebugSemanticsDumpOrder.parse(args),
  );
  static var ordinalSortKey = MXFunctionInvoke(
      "OrdinalSortKey",
      ({
        double order,
        String name,
      }) =>
        OrdinalSortKey(
        order,
        name: name,
      ),
    );
}
class MXDebugSemanticsDumpOrder {
  static Map str2VMap = {
    'DebugSemanticsDumpOrder.inverseHitTest': DebugSemanticsDumpOrder.inverseHitTest,
    'DebugSemanticsDumpOrder.traversalOrder': DebugSemanticsDumpOrder.traversalOrder,
  };
  static DebugSemanticsDumpOrder parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
