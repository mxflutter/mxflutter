//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/rendering/proxy_box.dart';
import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/binding.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/mouse_cursor.dart';
import 'package:flutter/src/rendering/mouse_tracking.dart';
import 'package:flutter/src/rendering/object.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerProxyBoxSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_renderProxyBox.funName] = _renderProxyBox;
  m[_hitTestBehavior.funName] = _hitTestBehavior;
  m[_renderConstrainedBox.funName] = _renderConstrainedBox;
  m[_renderLimitedBox.funName] = _renderLimitedBox;
  m[_renderAspectRatio.funName] = _renderAspectRatio;
  m[_renderIntrinsicWidth.funName] = _renderIntrinsicWidth;
  m[_renderIntrinsicHeight.funName] = _renderIntrinsicHeight;
  m[_renderOpacity.funName] = _renderOpacity;
  m[_renderAnimatedOpacity.funName] = _renderAnimatedOpacity;
  m[_renderShaderMask.funName] = _renderShaderMask;
  m[_renderBackdropFilter.funName] = _renderBackdropFilter;
  m[_shapeBorderClipper.funName] = _shapeBorderClipper;
  m[_renderClipRect.funName] = _renderClipRect;
  m[_renderClipRRect.funName] = _renderClipRRect;
  m[_renderClipOval.funName] = _renderClipOval;
  m[_renderClipPath.funName] = _renderClipPath;
  m[_renderPhysicalModel.funName] = _renderPhysicalModel;
  m[_renderPhysicalShape.funName] = _renderPhysicalShape;
  m[_decorationPosition.funName] = _decorationPosition;
  m[_renderDecoratedBox.funName] = _renderDecoratedBox;
  m[_renderTransform.funName] = _renderTransform;
  m[_renderFittedBox.funName] = _renderFittedBox;
  m[_renderFractionalTranslation.funName] = _renderFractionalTranslation;
  m[_renderPointerListener.funName] = _renderPointerListener;
  m[_renderMouseRegion.funName] = _renderMouseRegion;
  m[_renderRepaintBoundary.funName] = _renderRepaintBoundary;
  m[_renderIgnorePointer.funName] = _renderIgnorePointer;
  m[_renderOffstage.funName] = _renderOffstage;
  m[_renderAbsorbPointer.funName] = _renderAbsorbPointer;
  m[_renderMetaData.funName] = _renderMetaData;
  m[_renderSemanticsGestureHandler.funName] = _renderSemanticsGestureHandler;
  m[_renderSemanticsAnnotations.funName] = _renderSemanticsAnnotations;
  m[_renderBlockSemantics.funName] = _renderBlockSemantics;
  m[_renderMergeSemantics.funName] = _renderMergeSemantics;
  m[_renderExcludeSemantics.funName] = _renderExcludeSemantics;
  m[_renderIndexedSemantics.funName] = _renderIndexedSemantics;
  m[_renderLeaderLayer.funName] = _renderLeaderLayer;
  m[_renderFollowerLayer.funName] = _renderFollowerLayer;
  m[_renderAnnotatedRegion.funName] = _renderAnnotatedRegion;
  return m;
}

var _renderProxyBox = MXFunctionInvoke(
  "RenderProxyBox",
  ({
    RenderBox child,
  }) =>
      RenderProxyBox(
    child,
  ),
  [
    "child",
  ],
);
var _hitTestBehavior = MXFunctionInvoke(
    "HitTestBehavior", ({String name, int index}) => MXHitTestBehavior.parse(name, index), ["name", "index"]);
var _renderConstrainedBox = MXFunctionInvoke(
  "RenderConstrainedBox",
  ({
    RenderBox child,
    BoxConstraints additionalConstraints,
  }) =>
      RenderConstrainedBox(
    child: child,
    additionalConstraints: additionalConstraints,
  ),
  [
    "child",
    "additionalConstraints",
  ],
);
var _renderLimitedBox = MXFunctionInvoke(
  "RenderLimitedBox",
  ({
    RenderBox child,
    dynamic maxWidth = double.infinity,
    dynamic maxHeight = double.infinity,
  }) =>
      RenderLimitedBox(
    child: child,
    maxWidth: maxWidth?.toDouble(),
    maxHeight: maxHeight?.toDouble(),
  ),
  [
    "child",
    "maxWidth",
    "maxHeight",
  ],
);
var _renderAspectRatio = MXFunctionInvoke(
  "RenderAspectRatio",
  ({
    RenderBox child,
    dynamic aspectRatio,
  }) =>
      RenderAspectRatio(
    child: child,
    aspectRatio: aspectRatio?.toDouble(),
  ),
  [
    "child",
    "aspectRatio",
  ],
);
var _renderIntrinsicWidth = MXFunctionInvoke(
  "RenderIntrinsicWidth",
  ({
    dynamic stepWidth,
    dynamic stepHeight,
    RenderBox child,
  }) =>
      RenderIntrinsicWidth(
    stepWidth: stepWidth?.toDouble(),
    stepHeight: stepHeight?.toDouble(),
    child: child,
  ),
  [
    "stepWidth",
    "stepHeight",
    "child",
  ],
);
var _renderIntrinsicHeight = MXFunctionInvoke(
  "RenderIntrinsicHeight",
  ({
    RenderBox child,
  }) =>
      RenderIntrinsicHeight(
    child: child,
  ),
  [
    "child",
  ],
);
var _renderOpacity = MXFunctionInvoke(
  "RenderOpacity",
  ({
    dynamic opacity = 1.0,
    bool alwaysIncludeSemantics = false,
    RenderBox child,
  }) =>
      RenderOpacity(
    opacity: opacity?.toDouble(),
    alwaysIncludeSemantics: alwaysIncludeSemantics,
    child: child,
  ),
  [
    "opacity",
    "alwaysIncludeSemantics",
    "child",
  ],
);
var _renderAnimatedOpacity = MXFunctionInvoke(
  "RenderAnimatedOpacity",
  ({
    Animation<double> opacity,
    bool alwaysIncludeSemantics = false,
    RenderBox child,
  }) =>
      RenderAnimatedOpacity(
    opacity: opacity,
    alwaysIncludeSemantics: alwaysIncludeSemantics,
    child: child,
  ),
  [
    "opacity",
    "alwaysIncludeSemantics",
    "child",
  ],
);
var _renderShaderMask = MXFunctionInvoke(
  "RenderShaderMask",
  ({
    RenderBox child,
    dynamic shaderCallback,
    ui.BlendMode blendMode = BlendMode.modulate,
  }) =>
      RenderShaderMask(
    child: child,
    shaderCallback: null,
    blendMode: blendMode,
  ),
  [
    "child",
    "shaderCallback",
    "blendMode",
  ],
);
var _renderBackdropFilter = MXFunctionInvoke(
  "RenderBackdropFilter",
  ({
    RenderBox child,
    ui.ImageFilter filter,
  }) =>
      RenderBackdropFilter(
    child: child,
    filter: filter,
  ),
  [
    "child",
    "filter",
  ],
);
var _shapeBorderClipper = MXFunctionInvoke(
  "ShapeBorderClipper",
  ({
    ShapeBorder shape,
    ui.TextDirection textDirection,
  }) =>
      ShapeBorderClipper(
    shape: shape,
    textDirection: textDirection,
  ),
  [
    "shape",
    "textDirection",
  ],
);
var _renderClipRect = MXFunctionInvoke(
  "RenderClipRect",
  ({
    RenderBox child,
    CustomClipper<ui.Rect> clipper,
    ui.Clip clipBehavior = Clip.antiAlias,
  }) =>
      RenderClipRect(
    child: child,
    clipper: clipper,
    clipBehavior: clipBehavior,
  ),
  [
    "child",
    "clipper",
    "clipBehavior",
  ],
);
var _renderClipRRect = MXFunctionInvoke(
  "RenderClipRRect",
  ({
    RenderBox child,
    BorderRadius borderRadius = BorderRadius.zero,
    CustomClipper<ui.RRect> clipper,
    ui.Clip clipBehavior = Clip.antiAlias,
  }) =>
      RenderClipRRect(
    child: child,
    borderRadius: borderRadius,
    clipper: clipper,
    clipBehavior: clipBehavior,
  ),
  [
    "child",
    "borderRadius",
    "clipper",
    "clipBehavior",
  ],
);
var _renderClipOval = MXFunctionInvoke(
  "RenderClipOval",
  ({
    RenderBox child,
    CustomClipper<ui.Rect> clipper,
    ui.Clip clipBehavior = Clip.antiAlias,
  }) =>
      RenderClipOval(
    child: child,
    clipper: clipper,
    clipBehavior: clipBehavior,
  ),
  [
    "child",
    "clipper",
    "clipBehavior",
  ],
);
var _renderClipPath = MXFunctionInvoke(
  "RenderClipPath",
  ({
    RenderBox child,
    CustomClipper<ui.Path> clipper,
    ui.Clip clipBehavior = Clip.antiAlias,
  }) =>
      RenderClipPath(
    child: child,
    clipper: clipper,
    clipBehavior: clipBehavior,
  ),
  [
    "child",
    "clipper",
    "clipBehavior",
  ],
);
var _renderPhysicalModel = MXFunctionInvoke(
  "RenderPhysicalModel",
  ({
    RenderBox child,
    BoxShape shape = BoxShape.rectangle,
    ui.Clip clipBehavior = Clip.none,
    BorderRadius borderRadius,
    dynamic elevation = 0.0,
    ui.Color color,
    ui.Color shadowColor = const Color(0xFF000000),
  }) =>
      RenderPhysicalModel(
    child: child,
    shape: shape,
    clipBehavior: clipBehavior,
    borderRadius: borderRadius,
    elevation: elevation?.toDouble(),
    color: color,
    shadowColor: shadowColor,
  ),
  [
    "child",
    "shape",
    "clipBehavior",
    "borderRadius",
    "elevation",
    "color",
    "shadowColor",
  ],
);
var _renderPhysicalShape = MXFunctionInvoke(
  "RenderPhysicalShape",
  ({
    RenderBox child,
    CustomClipper<ui.Path> clipper,
    ui.Clip clipBehavior = Clip.none,
    dynamic elevation = 0.0,
    ui.Color color,
    ui.Color shadowColor = const Color(0xFF000000),
  }) =>
      RenderPhysicalShape(
    child: child,
    clipper: clipper,
    clipBehavior: clipBehavior,
    elevation: elevation?.toDouble(),
    color: color,
    shadowColor: shadowColor,
  ),
  [
    "child",
    "clipper",
    "clipBehavior",
    "elevation",
    "color",
    "shadowColor",
  ],
);
var _decorationPosition = MXFunctionInvoke(
    "DecorationPosition", ({String name, int index}) => MXDecorationPosition.parse(name, index), ["name", "index"]);
var _renderDecoratedBox = MXFunctionInvoke(
  "RenderDecoratedBox",
  ({
    Decoration decoration,
    DecorationPosition position = DecorationPosition.background,
    ImageConfiguration configuration = ImageConfiguration.empty,
    RenderBox child,
  }) =>
      RenderDecoratedBox(
    decoration: decoration,
    position: position,
    configuration: configuration,
    child: child,
  ),
  [
    "decoration",
    "position",
    "configuration",
    "child",
  ],
);
var _renderTransform = MXFunctionInvoke(
  "RenderTransform",
  ({
    Matrix4 transform,
    ui.Offset origin,
    AlignmentGeometry alignment,
    ui.TextDirection textDirection,
    bool transformHitTests = true,
    RenderBox child,
  }) =>
      RenderTransform(
    transform: transform,
    origin: origin,
    alignment: alignment,
    textDirection: textDirection,
    transformHitTests: transformHitTests,
    child: child,
  ),
  [
    "transform",
    "origin",
    "alignment",
    "textDirection",
    "transformHitTests",
    "child",
  ],
);
var _renderFittedBox = MXFunctionInvoke(
  "RenderFittedBox",
  ({
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    ui.TextDirection textDirection,
    RenderBox child,
    ui.Clip clipBehavior = Clip.none,
  }) =>
      RenderFittedBox(
    fit: fit,
    alignment: alignment,
    textDirection: textDirection,
    child: child,
    clipBehavior: clipBehavior,
  ),
  [
    "fit",
    "alignment",
    "textDirection",
    "child",
    "clipBehavior",
  ],
);
var _renderFractionalTranslation = MXFunctionInvoke(
  "RenderFractionalTranslation",
  ({
    ui.Offset translation,
    bool transformHitTests = true,
    RenderBox child,
  }) =>
      RenderFractionalTranslation(
    translation: translation,
    transformHitTests: transformHitTests,
    child: child,
  ),
  [
    "translation",
    "transformHitTests",
    "child",
  ],
);
var _renderPointerListener = MXFunctionInvoke(
  "RenderPointerListener",
  ({
    dynamic onPointerDown,
    dynamic onPointerMove,
    dynamic onPointerUp,
    dynamic onPointerCancel,
    dynamic onPointerSignal,
    HitTestBehavior behavior = HitTestBehavior.deferToChild,
    RenderBox child,
  }) =>
      RenderPointerListener(
    onPointerDown: createValueChangedGenericClosure<PointerDownEvent>(_renderPointerListener.buildOwner, onPointerDown),
    onPointerMove: createValueChangedGenericClosure<PointerMoveEvent>(_renderPointerListener.buildOwner, onPointerMove),
    onPointerUp: createValueChangedGenericClosure<PointerUpEvent>(_renderPointerListener.buildOwner, onPointerUp),
    onPointerCancel:
        createValueChangedGenericClosure<PointerCancelEvent>(_renderPointerListener.buildOwner, onPointerCancel),
    onPointerSignal:
        createValueChangedGenericClosure<PointerSignalEvent>(_renderPointerListener.buildOwner, onPointerSignal),
    behavior: behavior,
    child: child,
  ),
  [
    "onPointerDown",
    "onPointerMove",
    "onPointerUp",
    "onPointerCancel",
    "onPointerSignal",
    "behavior",
    "child",
  ],
);
var _renderMouseRegion = MXFunctionInvoke(
  "RenderMouseRegion",
  ({
    dynamic onEnter,
    dynamic onHover,
    dynamic onExit,
    MouseCursor cursor = MouseCursor.defer,
    bool opaque = true,
    RenderBox child,
  }) =>
      RenderMouseRegion(
    onEnter: createValueChangedGenericClosure<PointerEnterEvent>(_renderMouseRegion.buildOwner, onEnter),
    onHover: createValueChangedGenericClosure<PointerHoverEvent>(_renderMouseRegion.buildOwner, onHover),
    onExit: createValueChangedGenericClosure<PointerExitEvent>(_renderMouseRegion.buildOwner, onExit),
    cursor: cursor,
    opaque: opaque,
    child: child,
  ),
  [
    "onEnter",
    "onHover",
    "onExit",
    "cursor",
    "opaque",
    "child",
  ],
);
var _renderRepaintBoundary = MXFunctionInvoke(
  "RenderRepaintBoundary",
  ({
    RenderBox child,
  }) =>
      RenderRepaintBoundary(
    child: child,
  ),
  [
    "child",
  ],
);
var _renderIgnorePointer = MXFunctionInvoke(
  "RenderIgnorePointer",
  ({
    RenderBox child,
    bool ignoring = true,
    bool ignoringSemantics,
  }) =>
      RenderIgnorePointer(
    child: child,
    ignoring: ignoring,
    ignoringSemantics: ignoringSemantics,
  ),
  [
    "child",
    "ignoring",
    "ignoringSemantics",
  ],
);
var _renderOffstage = MXFunctionInvoke(
  "RenderOffstage",
  ({
    bool offstage = true,
    RenderBox child,
  }) =>
      RenderOffstage(
    offstage: offstage,
    child: child,
  ),
  [
    "offstage",
    "child",
  ],
);
var _renderAbsorbPointer = MXFunctionInvoke(
  "RenderAbsorbPointer",
  ({
    RenderBox child,
    bool absorbing = true,
    bool ignoringSemantics,
  }) =>
      RenderAbsorbPointer(
    child: child,
    absorbing: absorbing,
    ignoringSemantics: ignoringSemantics,
  ),
  [
    "child",
    "absorbing",
    "ignoringSemantics",
  ],
);
var _renderMetaData = MXFunctionInvoke(
  "RenderMetaData",
  ({
    dynamic metaData,
    HitTestBehavior behavior = HitTestBehavior.deferToChild,
    RenderBox child,
  }) =>
      RenderMetaData(
    metaData: metaData,
    behavior: behavior,
    child: child,
  ),
  [
    "metaData",
    "behavior",
    "child",
  ],
);
var _renderSemanticsGestureHandler = MXFunctionInvoke(
  "RenderSemanticsGestureHandler",
  ({
    RenderBox child,
    dynamic onTap,
    dynamic onLongPress,
    dynamic onHorizontalDragUpdate,
    dynamic onVerticalDragUpdate,
    dynamic scrollFactor = 0.8,
  }) =>
      RenderSemanticsGestureHandler(
    child: child,
    onTap: createVoidCallbackClosure(_renderSemanticsGestureHandler.buildOwner, onTap),
    onLongPress: createVoidCallbackClosure(_renderSemanticsGestureHandler.buildOwner, onLongPress),
    onHorizontalDragUpdate: createValueChangedGenericClosure<DragUpdateDetails>(
        _renderSemanticsGestureHandler.buildOwner, onHorizontalDragUpdate),
    onVerticalDragUpdate: createValueChangedGenericClosure<DragUpdateDetails>(
        _renderSemanticsGestureHandler.buildOwner, onVerticalDragUpdate),
    scrollFactor: scrollFactor?.toDouble(),
  ),
  [
    "child",
    "onTap",
    "onLongPress",
    "onHorizontalDragUpdate",
    "onVerticalDragUpdate",
    "scrollFactor",
  ],
);
var _renderSemanticsAnnotations = MXFunctionInvoke(
  "RenderSemanticsAnnotations",
  ({
    RenderBox child,
    bool container = false,
    bool explicitChildNodes,
    bool excludeSemantics = false,
    bool enabled,
    bool checked,
    bool toggled,
    bool selected,
    bool button,
    bool link,
    bool header,
    bool textField,
    bool readOnly,
    bool focusable,
    bool focused,
    bool inMutuallyExclusiveGroup,
    bool obscured,
    bool multiline,
    bool scopesRoute,
    bool namesRoute,
    bool hidden,
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
    dynamic onDismiss,
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
    dynamic customSemanticsActions,
  }) =>
      RenderSemanticsAnnotations(
    child: child,
    container: container,
    explicitChildNodes: explicitChildNodes,
    excludeSemantics: excludeSemantics,
    enabled: enabled,
    checked: checked,
    toggled: toggled,
    selected: selected,
    button: button,
    link: link,
    header: header,
    textField: textField,
    readOnly: readOnly,
    focusable: focusable,
    focused: focused,
    inMutuallyExclusiveGroup: inMutuallyExclusiveGroup,
    obscured: obscured,
    multiline: multiline,
    scopesRoute: scopesRoute,
    namesRoute: namesRoute,
    hidden: hidden,
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
    onTap: createVoidCallbackClosure(_renderSemanticsAnnotations.buildOwner, onTap),
    onDismiss: createVoidCallbackClosure(_renderSemanticsAnnotations.buildOwner, onDismiss),
    onLongPress: createVoidCallbackClosure(_renderSemanticsAnnotations.buildOwner, onLongPress),
    onScrollLeft: createVoidCallbackClosure(_renderSemanticsAnnotations.buildOwner, onScrollLeft),
    onScrollRight: createVoidCallbackClosure(_renderSemanticsAnnotations.buildOwner, onScrollRight),
    onScrollUp: createVoidCallbackClosure(_renderSemanticsAnnotations.buildOwner, onScrollUp),
    onScrollDown: createVoidCallbackClosure(_renderSemanticsAnnotations.buildOwner, onScrollDown),
    onIncrease: createVoidCallbackClosure(_renderSemanticsAnnotations.buildOwner, onIncrease),
    onDecrease: createVoidCallbackClosure(_renderSemanticsAnnotations.buildOwner, onDecrease),
    onCopy: createVoidCallbackClosure(_renderSemanticsAnnotations.buildOwner, onCopy),
    onCut: createVoidCallbackClosure(_renderSemanticsAnnotations.buildOwner, onCut),
    onPaste: createVoidCallbackClosure(_renderSemanticsAnnotations.buildOwner, onPaste),
    onMoveCursorForwardByCharacter:
        createValueChangedGenericClosure<bool>(_renderSemanticsAnnotations.buildOwner, onMoveCursorForwardByCharacter),
    onMoveCursorBackwardByCharacter:
        createValueChangedGenericClosure<bool>(_renderSemanticsAnnotations.buildOwner, onMoveCursorBackwardByCharacter),
    onMoveCursorForwardByWord:
        createValueChangedGenericClosure<bool>(_renderSemanticsAnnotations.buildOwner, onMoveCursorForwardByWord),
    onMoveCursorBackwardByWord:
        createValueChangedGenericClosure<bool>(_renderSemanticsAnnotations.buildOwner, onMoveCursorBackwardByWord),
    onSetSelection:
        createValueChangedGenericClosure<TextSelection>(_renderSemanticsAnnotations.buildOwner, onSetSelection),
    onDidGainAccessibilityFocus:
        createVoidCallbackClosure(_renderSemanticsAnnotations.buildOwner, onDidGainAccessibilityFocus),
    onDidLoseAccessibilityFocus:
        createVoidCallbackClosure(_renderSemanticsAnnotations.buildOwner, onDidLoseAccessibilityFocus),
    customSemanticsActions: toMapT<CustomSemanticsAction, void Function()>(customSemanticsActions),
  ),
  [
    "child",
    "container",
    "explicitChildNodes",
    "excludeSemantics",
    "enabled",
    "checked",
    "toggled",
    "selected",
    "button",
    "link",
    "header",
    "textField",
    "readOnly",
    "focusable",
    "focused",
    "inMutuallyExclusiveGroup",
    "obscured",
    "multiline",
    "scopesRoute",
    "namesRoute",
    "hidden",
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
    "onDismiss",
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
    "customSemanticsActions",
  ],
);
var _renderBlockSemantics = MXFunctionInvoke(
  "RenderBlockSemantics",
  ({
    RenderBox child,
    bool blocking = true,
  }) =>
      RenderBlockSemantics(
    child: child,
    blocking: blocking,
  ),
  [
    "child",
    "blocking",
  ],
);
var _renderMergeSemantics = MXFunctionInvoke(
  "RenderMergeSemantics",
  ({
    RenderBox child,
  }) =>
      RenderMergeSemantics(
    child: child,
  ),
  [
    "child",
  ],
);
var _renderExcludeSemantics = MXFunctionInvoke(
  "RenderExcludeSemantics",
  ({
    RenderBox child,
    bool excluding = true,
  }) =>
      RenderExcludeSemantics(
    child: child,
    excluding: excluding,
  ),
  [
    "child",
    "excluding",
  ],
);
var _renderIndexedSemantics = MXFunctionInvoke(
  "RenderIndexedSemantics",
  ({
    RenderBox child,
    int index,
  }) =>
      RenderIndexedSemantics(
    child: child,
    index: index,
  ),
  [
    "child",
    "index",
  ],
);
var _renderLeaderLayer = MXFunctionInvoke(
  "RenderLeaderLayer",
  ({
    LayerLink link,
    RenderBox child,
  }) =>
      RenderLeaderLayer(
    link: link,
    child: child,
  ),
  [
    "link",
    "child",
  ],
);
var _renderFollowerLayer = MXFunctionInvoke(
  "RenderFollowerLayer",
  ({
    LayerLink link,
    bool showWhenUnlinked = true,
    ui.Offset offset = Offset.zero,
    RenderBox child,
  }) =>
      RenderFollowerLayer(
    link: link,
    showWhenUnlinked: showWhenUnlinked,
    offset: offset,
    child: child,
  ),
  [
    "link",
    "showWhenUnlinked",
    "offset",
    "child",
  ],
);
var _renderAnnotatedRegion = MXFunctionInvoke(
  "RenderAnnotatedRegion",
  ({
    dynamic value,
    bool sized,
    RenderBox child,
  }) =>
      RenderAnnotatedRegion(
    value: value,
    sized: sized,
    child: child,
  ),
  [
    "value",
    "sized",
    "child",
  ],
);

class MXHitTestBehavior {
  static HitTestBehavior parse(String name, int index) {
    switch (name) {
      case 'HitTestBehavior.deferToChild':
        return HitTestBehavior.deferToChild;
      case 'HitTestBehavior.opaque':
        return HitTestBehavior.opaque;
      case 'HitTestBehavior.translucent':
        return HitTestBehavior.translucent;
    }
    return null;
  }
}

class MXDecorationPosition {
  static DecorationPosition parse(String name, int index) {
    switch (name) {
      case 'DecorationPosition.background':
        return DecorationPosition.background;
      case 'DecorationPosition.foreground':
        return DecorationPosition.foreground;
    }
    return null;
  }
}
