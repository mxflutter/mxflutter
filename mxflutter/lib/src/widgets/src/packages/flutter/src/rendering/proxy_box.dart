//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/proxy_box.dart';


class MXProxyProxyBox {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[renderProxyBox.funName] = renderProxyBox;
    m[hitTestBehavior.funName] = hitTestBehavior;
    m[renderConstrainedBox.funName] = renderConstrainedBox;
    m[renderLimitedBox.funName] = renderLimitedBox;
    m[renderAspectRatio.funName] = renderAspectRatio;
    m[renderIntrinsicWidth.funName] = renderIntrinsicWidth;
    m[renderIntrinsicHeight.funName] = renderIntrinsicHeight;
    m[renderOpacity.funName] = renderOpacity;
    m[renderAnimatedOpacity.funName] = renderAnimatedOpacity;
    m[renderShaderMask.funName] = renderShaderMask;
    m[renderBackdropFilter.funName] = renderBackdropFilter;
    m[shapeBorderClipper.funName] = shapeBorderClipper;
    m[renderClipRect.funName] = renderClipRect;
    m[renderClipRRect.funName] = renderClipRRect;
    m[renderClipOval.funName] = renderClipOval;
    m[renderClipPath.funName] = renderClipPath;
    m[renderPhysicalModel.funName] = renderPhysicalModel;
    m[renderPhysicalShape.funName] = renderPhysicalShape;
    m[decorationPosition.funName] = decorationPosition;
    m[renderDecoratedBox.funName] = renderDecoratedBox;
    m[renderTransform.funName] = renderTransform;
    m[renderFittedBox.funName] = renderFittedBox;
    m[renderFractionalTranslation.funName] = renderFractionalTranslation;
    m[renderPointerListener.funName] = renderPointerListener;
    m[renderMouseRegion.funName] = renderMouseRegion;
    m[renderRepaintBoundary.funName] = renderRepaintBoundary;
    m[renderIgnorePointer.funName] = renderIgnorePointer;
    m[renderOffstage.funName] = renderOffstage;
    m[renderAbsorbPointer.funName] = renderAbsorbPointer;
    m[renderMetaData.funName] = renderMetaData;
    m[renderSemanticsGestureHandler.funName] = renderSemanticsGestureHandler;
    m[renderSemanticsAnnotations.funName] = renderSemanticsAnnotations;
    m[renderBlockSemantics.funName] = renderBlockSemantics;
    m[renderMergeSemantics.funName] = renderMergeSemantics;
    m[renderExcludeSemantics.funName] = renderExcludeSemantics;
    m[renderIndexedSemantics.funName] = renderIndexedSemantics;
    m[renderLeaderLayer.funName] = renderLeaderLayer;
    m[renderFollowerLayer.funName] = renderFollowerLayer;
    m[renderAnnotatedRegion.funName] = renderAnnotatedRegion;
    return m;
  }
  static var renderProxyBox = MXFunctionInvoke(
      "RenderProxyBox",
      ({
        RenderBox child,
      }) =>
        RenderProxyBox(
        child,
      ),
    );
  static var hitTestBehavior = MXFunctionInvoke(
      "HitTestBehavior",
      ({Map args}) => MXHitTestBehavior.parse(args),
  );
  static var renderConstrainedBox = MXFunctionInvoke(
      "RenderConstrainedBox",
      ({
        RenderBox child,
        BoxConstraints additionalConstraints,
      }) =>
        RenderConstrainedBox(
        child: child,
        additionalConstraints: additionalConstraints,
      ),
    );
  static var renderLimitedBox = MXFunctionInvoke(
      "RenderLimitedBox",
      ({
        RenderBox child,
        dynamic maxWidth = Infinity,
        dynamic maxHeight = Infinity,
      }) =>
        RenderLimitedBox(
        child: child,
        maxWidth: maxWidth?.toDouble(),
        maxHeight: maxHeight?.toDouble(),
      ),
    );
  static var renderAspectRatio = MXFunctionInvoke(
      "RenderAspectRatio",
      ({
        RenderBox child,
        dynamic aspectRatio,
      }) =>
        RenderAspectRatio(
        child: child,
        aspectRatio: aspectRatio?.toDouble(),
      ),
    );
  static var renderIntrinsicWidth = MXFunctionInvoke(
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
    );
  static var renderIntrinsicHeight = MXFunctionInvoke(
      "RenderIntrinsicHeight",
      ({
        RenderBox child,
      }) =>
        RenderIntrinsicHeight(
        child: child,
      ),
    );
  static var renderOpacity = MXFunctionInvoke(
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
    );
  static var renderAnimatedOpacity = MXFunctionInvoke(
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
    );
  static var renderShaderMask = MXFunctionInvoke(
      "RenderShaderMask",
      ({
        RenderBox child,
        dynamic shaderCallback,
        BlendMode blendMode = BlendMode.modulate,
      }) =>
        RenderShaderMask(
        child: child,
        shaderCallback: createGenericValueGenericClosure<Shader, Rect>(renderShaderMask.buildOwner, shaderCallback),
        blendMode: blendMode,
      ),
    );
  static var renderBackdropFilter = MXFunctionInvoke(
      "RenderBackdropFilter",
      ({
        RenderBox child,
        ImageFilter filter,
      }) =>
        RenderBackdropFilter(
        child: child,
        filter: filter,
      ),
    );
  static var shapeBorderClipper = MXFunctionInvoke(
      "ShapeBorderClipper",
      ({
        ShapeBorder shape,
        TextDirection textDirection,
      }) =>
        ShapeBorderClipper(
        shape: shape,
        textDirection: textDirection,
      ),
    );
  static var renderClipRect = MXFunctionInvoke(
      "RenderClipRect",
      ({
        RenderBox child,
        CustomClipper<Rect> clipper,
        Clip clipBehavior = Clip.antiAlias,
      }) =>
        RenderClipRect(
        child: child,
        clipper: clipper,
        clipBehavior: clipBehavior,
      ),
    );
  static var renderClipRRect = MXFunctionInvoke(
      "RenderClipRRect",
      ({
        RenderBox child,
        BorderRadius borderRadius,
        CustomClipper<RRect> clipper,
        Clip clipBehavior = Clip.antiAlias,
      }) =>
        RenderClipRRect(
        child: child,
        borderRadius: borderRadius,
        clipper: clipper,
        clipBehavior: clipBehavior,
      ),
    );
  static var renderClipOval = MXFunctionInvoke(
      "RenderClipOval",
      ({
        RenderBox child,
        CustomClipper<Rect> clipper,
        Clip clipBehavior = Clip.antiAlias,
      }) =>
        RenderClipOval(
        child: child,
        clipper: clipper,
        clipBehavior: clipBehavior,
      ),
    );
  static var renderClipPath = MXFunctionInvoke(
      "RenderClipPath",
      ({
        RenderBox child,
        CustomClipper<Path> clipper,
        Clip clipBehavior = Clip.antiAlias,
      }) =>
        RenderClipPath(
        child: child,
        clipper: clipper,
        clipBehavior: clipBehavior,
      ),
    );
  static var renderPhysicalModel = MXFunctionInvoke(
      "RenderPhysicalModel",
      ({
        RenderBox child,
        BoxShape shape = BoxShape.rectangle,
        Clip clipBehavior = Clip.none,
        BorderRadius borderRadius,
        dynamic elevation = 0.0,
        Color color,
        Color shadowColor,
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
    );
  static var renderPhysicalShape = MXFunctionInvoke(
      "RenderPhysicalShape",
      ({
        RenderBox child,
        CustomClipper<Path> clipper,
        Clip clipBehavior = Clip.none,
        dynamic elevation = 0.0,
        Color color,
        Color shadowColor,
      }) =>
        RenderPhysicalShape(
        child: child,
        clipper: clipper,
        clipBehavior: clipBehavior,
        elevation: elevation?.toDouble(),
        color: color,
        shadowColor: shadowColor,
      ),
    );
  static var decorationPosition = MXFunctionInvoke(
      "DecorationPosition",
      ({Map args}) => MXDecorationPosition.parse(args),
  );
  static var renderDecoratedBox = MXFunctionInvoke(
      "RenderDecoratedBox",
      ({
        Decoration decoration,
        DecorationPosition position = DecorationPosition.background,
        ImageConfiguration configuration,
        RenderBox child,
      }) =>
        RenderDecoratedBox(
        decoration: decoration,
        position: position,
        configuration: configuration,
        child: child,
      ),
    );
  static var renderTransform = MXFunctionInvoke(
      "RenderTransform",
      ({
        Matrix4 transform,
        Offset origin,
        AlignmentGeometry alignment,
        TextDirection textDirection,
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
    );
  static var renderFittedBox = MXFunctionInvoke(
      "RenderFittedBox",
      ({
        BoxFit fit = BoxFit.contain,
        AlignmentGeometry alignment,
        TextDirection textDirection,
        RenderBox child,
      }) =>
        RenderFittedBox(
        fit: fit,
        alignment: alignment,
        textDirection: textDirection,
        child: child,
      ),
    );
  static var renderFractionalTranslation = MXFunctionInvoke(
      "RenderFractionalTranslation",
      ({
        Offset translation,
        bool transformHitTests = true,
        RenderBox child,
      }) =>
        RenderFractionalTranslation(
        translation: translation,
        transformHitTests: transformHitTests,
        child: child,
      ),
    );
  static var renderPointerListener = MXFunctionInvoke(
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
        onPointerDown: createValueChangedGenericClosure<PointerDownEvent>(renderPointerListener.buildOwner, onPointerDown),
        onPointerMove: createValueChangedGenericClosure<PointerMoveEvent>(renderPointerListener.buildOwner, onPointerMove),
        onPointerUp: createValueChangedGenericClosure<PointerUpEvent>(renderPointerListener.buildOwner, onPointerUp),
        onPointerCancel: createValueChangedGenericClosure<PointerCancelEvent>(renderPointerListener.buildOwner, onPointerCancel),
        onPointerSignal: createValueChangedGenericClosure<PointerSignalEvent>(renderPointerListener.buildOwner, onPointerSignal),
        behavior: behavior,
        child: child,
      ),
    );
  static var renderMouseRegion = MXFunctionInvoke(
      "RenderMouseRegion",
      ({
        dynamic onEnter,
        dynamic onHover,
        dynamic onExit,
        bool opaque = true,
        RenderBox child,
      }) =>
        RenderMouseRegion(
        onEnter: createValueChangedGenericClosure<PointerEnterEvent>(renderMouseRegion.buildOwner, onEnter),
        onHover: createValueChangedGenericClosure<PointerHoverEvent>(renderMouseRegion.buildOwner, onHover),
        onExit: createValueChangedGenericClosure<PointerExitEvent>(renderMouseRegion.buildOwner, onExit),
        opaque: opaque,
        child: child,
      ),
    );
  static var renderRepaintBoundary = MXFunctionInvoke(
      "RenderRepaintBoundary",
      ({
        RenderBox child,
      }) =>
        RenderRepaintBoundary(
        child: child,
      ),
    );
  static var renderIgnorePointer = MXFunctionInvoke(
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
    );
  static var renderOffstage = MXFunctionInvoke(
      "RenderOffstage",
      ({
        bool offstage = true,
        RenderBox child,
      }) =>
        RenderOffstage(
        offstage: offstage,
        child: child,
      ),
    );
  static var renderAbsorbPointer = MXFunctionInvoke(
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
    );
  static var renderMetaData = MXFunctionInvoke(
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
    );
  static var renderSemanticsGestureHandler = MXFunctionInvoke(
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
        onTap: createVoidCallbackClosure(renderSemanticsGestureHandler.buildOwner, onTap),
        onLongPress: createVoidCallbackClosure(renderSemanticsGestureHandler.buildOwner, onLongPress),
        onHorizontalDragUpdate: createValueChangedGenericClosure<DragUpdateDetails>(renderSemanticsGestureHandler.buildOwner, onHorizontalDragUpdate),
        onVerticalDragUpdate: createValueChangedGenericClosure<DragUpdateDetails>(renderSemanticsGestureHandler.buildOwner, onVerticalDragUpdate),
        scrollFactor: scrollFactor?.toDouble(),
      ),
    );
  static var renderSemanticsAnnotations = MXFunctionInvoke(
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
        TextDirection textDirection,
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
        Map<CustomSemanticsAction*, void Function()> customSemanticsActions,
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
        onTap: createVoidCallbackClosure(renderSemanticsAnnotations.buildOwner, onTap),
        onDismiss: createVoidCallbackClosure(renderSemanticsAnnotations.buildOwner, onDismiss),
        onLongPress: createVoidCallbackClosure(renderSemanticsAnnotations.buildOwner, onLongPress),
        onScrollLeft: createVoidCallbackClosure(renderSemanticsAnnotations.buildOwner, onScrollLeft),
        onScrollRight: createVoidCallbackClosure(renderSemanticsAnnotations.buildOwner, onScrollRight),
        onScrollUp: createVoidCallbackClosure(renderSemanticsAnnotations.buildOwner, onScrollUp),
        onScrollDown: createVoidCallbackClosure(renderSemanticsAnnotations.buildOwner, onScrollDown),
        onIncrease: createVoidCallbackClosure(renderSemanticsAnnotations.buildOwner, onIncrease),
        onDecrease: createVoidCallbackClosure(renderSemanticsAnnotations.buildOwner, onDecrease),
        onCopy: createVoidCallbackClosure(renderSemanticsAnnotations.buildOwner, onCopy),
        onCut: createVoidCallbackClosure(renderSemanticsAnnotations.buildOwner, onCut),
        onPaste: createVoidCallbackClosure(renderSemanticsAnnotations.buildOwner, onPaste),
        onMoveCursorForwardByCharacter: createValueChangedGenericClosure<bool>(renderSemanticsAnnotations.buildOwner, onMoveCursorForwardByCharacter),
        onMoveCursorBackwardByCharacter: createValueChangedGenericClosure<bool>(renderSemanticsAnnotations.buildOwner, onMoveCursorBackwardByCharacter),
        onMoveCursorForwardByWord: createValueChangedGenericClosure<bool>(renderSemanticsAnnotations.buildOwner, onMoveCursorForwardByWord),
        onMoveCursorBackwardByWord: createValueChangedGenericClosure<bool>(renderSemanticsAnnotations.buildOwner, onMoveCursorBackwardByWord),
        onSetSelection: createValueChangedGenericClosure<TextSelection>(renderSemanticsAnnotations.buildOwner, onSetSelection),
        onDidGainAccessibilityFocus: createVoidCallbackClosure(renderSemanticsAnnotations.buildOwner, onDidGainAccessibilityFocus),
        onDidLoseAccessibilityFocus: createVoidCallbackClosure(renderSemanticsAnnotations.buildOwner, onDidLoseAccessibilityFocus),
        customSemanticsActions: customSemanticsActions,
      ),
    );
  static var renderBlockSemantics = MXFunctionInvoke(
      "RenderBlockSemantics",
      ({
        RenderBox child,
        bool blocking = true,
      }) =>
        RenderBlockSemantics(
        child: child,
        blocking: blocking,
      ),
    );
  static var renderMergeSemantics = MXFunctionInvoke(
      "RenderMergeSemantics",
      ({
        RenderBox child,
      }) =>
        RenderMergeSemantics(
        child: child,
      ),
    );
  static var renderExcludeSemantics = MXFunctionInvoke(
      "RenderExcludeSemantics",
      ({
        RenderBox child,
        bool excluding = true,
      }) =>
        RenderExcludeSemantics(
        child: child,
        excluding: excluding,
      ),
    );
  static var renderIndexedSemantics = MXFunctionInvoke(
      "RenderIndexedSemantics",
      ({
        RenderBox child,
        int index,
      }) =>
        RenderIndexedSemantics(
        child: child,
        index: index,
      ),
    );
  static var renderLeaderLayer = MXFunctionInvoke(
      "RenderLeaderLayer",
      ({
        LayerLink link,
        RenderBox child,
      }) =>
        RenderLeaderLayer(
        link: link,
        child: child,
      ),
    );
  static var renderFollowerLayer = MXFunctionInvoke(
      "RenderFollowerLayer",
      ({
        LayerLink link,
        bool showWhenUnlinked = true,
        Offset offset,
        RenderBox child,
      }) =>
        RenderFollowerLayer(
        link: link,
        showWhenUnlinked: showWhenUnlinked,
        offset: offset,
        child: child,
      ),
    );
  static var renderAnnotatedRegion = MXFunctionInvoke(
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
    );
}
class MXHitTestBehavior {
  static Map str2VMap = {
    'HitTestBehavior.deferToChild': HitTestBehavior.deferToChild,
    'HitTestBehavior.opaque': HitTestBehavior.opaque,
    'HitTestBehavior.translucent': HitTestBehavior.translucent,
  };
  static HitTestBehavior parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXDecorationPosition {
  static Map str2VMap = {
    'DecorationPosition.background': DecorationPosition.background,
    'DecorationPosition.foreground': DecorationPosition.foreground,
  };
  static DecorationPosition parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
