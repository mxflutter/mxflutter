//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/widget_span.dart';
import 'package:flutter/src/widgets/table.dart';
import 'package:flutter/src/widgets/inherited_model.dart';
import 'package:flutter/src/widgets/widget_inspector.dart';
import 'package:flutter/src/widgets/title.dart';
import 'package:flutter/src/widgets/shortcuts.dart';
import 'package:flutter/src/widgets/semantics_debugger.dart';
import 'package:flutter/src/widgets/performance_overlay.dart';
import 'package:flutter/src/widgets/pages.dart';
import 'package:flutter/src/widgets/modal_barrier.dart';
import 'package:flutter/src/widgets/routes.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/visibility.dart';
import 'package:flutter/src/widgets/inherited_theme.dart';
import 'package:flutter/src/widgets/text.dart';
import 'package:flutter/src/widgets/transitions.dart';
import 'package:flutter/src/widgets/overlay.dart';
import 'package:flutter/src/widgets/text_selection.dart';
import 'package:flutter/src/widgets/viewport.dart';
import 'package:flutter/src/widgets/scroll_position_with_single_context.dart';
import 'package:flutter/src/widgets/scroll_activity.dart';
import 'package:flutter/src/widgets/page_storage.dart';
import 'package:flutter/src/widgets/scroll_position.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_context.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/src/widgets/scroll_notification.dart';
import 'package:flutter/src/widgets/overscroll_indicator.dart';
import 'package:flutter/src/widgets/scroll_configuration.dart';
import 'package:flutter/src/widgets/gesture_detector.dart';
import 'package:flutter/src/widgets/scrollable.dart';
import 'package:flutter/src/widgets/scroll_aware_image_provider.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/widgets/disposable_build_context.dart';
import 'package:flutter/src/widgets/image.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/localizations.dart';
import 'package:flutter/src/widgets/inherited_notifier.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/sliver.dart';
import 'package:flutter/src/widgets/notification_listener.dart';
import 'package:flutter/src/widgets/automatic_keep_alive.dart';
import 'package:flutter/src/widgets/editable_text.dart';
import 'package:flutter/src/widgets/focus_traversal.dart';
import 'package:flutter/src/widgets/banner.dart';
import 'package:flutter/src/widgets/app.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/actions.dart';


class MXProxyWidgetSpan {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[widgetSpan.funName] = widgetSpan;
    m[tableRow.funName] = tableRow;
    m[table.funName] = table;
    m[tableCell.funName] = tableCell;
    m[inheritedElement.funName] = inheritedElement;
    m[inheritedModelElement.funName] = inheritedModelElement;
    m[widgetInspector.funName] = widgetInspector;
    m[inspectorSelection.funName] = inspectorSelection;
    m[inspectorSerializationDelegate.funName] = inspectorSerializationDelegate;
    m[title.funName] = title;
    m[keySet.funName] = keySet;
    m[keySet_fromSet.funName] = keySet_fromSet;
    m[logicalKeySet.funName] = logicalKeySet;
    m[logicalKeySet_fromSet.funName] = logicalKeySet_fromSet;
    m[shortcutMapProperty.funName] = shortcutMapProperty;
    m[shortcutManager.funName] = shortcutManager;
    m[shortcuts.funName] = shortcuts;
    m[semanticsDebugger.funName] = semanticsDebugger;
    m[performanceOverlay.funName] = performanceOverlay;
    m[performanceOverlay_allEnabled.funName] = performanceOverlay_allEnabled;
    m[pageRouteBuilder.funName] = pageRouteBuilder;
    m[modalBarrier.funName] = modalBarrier;
    m[animatedModalBarrier.funName] = animatedModalBarrier;
    m[localHistoryEntry.funName] = localHistoryEntry;
    m[navigatorObserver.funName] = navigatorObserver;
    m[routeObserver.funName] = routeObserver;
    m[routePopDisposition.funName] = routePopDisposition;
    m[routeSettings.funName] = routeSettings;
    m[customBuilderPage.funName] = customBuilderPage;
    m[defaultTransitionDelegate.funName] = defaultTransitionDelegate;
    m[navigator.funName] = navigator;
    m[navigatorState.funName] = navigatorState;
    m[visibility.funName] = visibility;
    m[sliverVisibility.funName] = sliverVisibility;
    m[defaultTextStyle.funName] = defaultTextStyle;
    m[defaultTextStyle_fallback.funName] = defaultTextStyle_fallback;
    m[text.funName] = text;
    m[text_rich.funName] = text_rich;
    m[slideTransition.funName] = slideTransition;
    m[scaleTransition.funName] = scaleTransition;
    m[rotationTransition.funName] = rotationTransition;
    m[sizeTransition.funName] = sizeTransition;
    m[fadeTransition.funName] = fadeTransition;
    m[sliverFadeTransition.funName] = sliverFadeTransition;
    m[relativeRectTween.funName] = relativeRectTween;
    m[positionedTransition.funName] = positionedTransition;
    m[relativePositionedTransition.funName] = relativePositionedTransition;
    m[decoratedBoxTransition.funName] = decoratedBoxTransition;
    m[alignTransition.funName] = alignTransition;
    m[defaultTextStyleTransition.funName] = defaultTextStyleTransition;
    m[animatedBuilder.funName] = animatedBuilder;
    m[overlayEntry.funName] = overlayEntry;
    m[overlay.funName] = overlay;
    m[overlayState.funName] = overlayState;
    m[textSelectionHandleType.funName] = textSelectionHandleType;
    m[textSelectionOverlay.funName] = textSelectionOverlay;
    m[textSelectionGestureDetectorBuilder.funName] = textSelectionGestureDetectorBuilder;
    m[textSelectionGestureDetector.funName] = textSelectionGestureDetector;
    m[viewport.funName] = viewport;
    m[shrinkWrappingViewport.funName] = shrinkWrappingViewport;
    m[scrollPositionWithSingleContext.funName] = scrollPositionWithSingleContext;
    m[idleScrollActivity.funName] = idleScrollActivity;
    m[holdScrollActivity.funName] = holdScrollActivity;
    m[scrollDragController.funName] = scrollDragController;
    m[dragScrollActivity.funName] = dragScrollActivity;
    m[ballisticScrollActivity.funName] = ballisticScrollActivity;
    m[drivenScrollActivity.funName] = drivenScrollActivity;
    m[pageStorageKey.funName] = pageStorageKey;
    m[pageStorageBucket.funName] = pageStorageBucket;
    m[pageStorage.funName] = pageStorage;
    m[scrollPositionAlignmentPolicy.funName] = scrollPositionAlignmentPolicy;
    m[scrollController.funName] = scrollController;
    m[trackingScrollController.funName] = trackingScrollController;
    m[scrollPhysics.funName] = scrollPhysics;
    m[bouncingScrollPhysics.funName] = bouncingScrollPhysics;
    m[clampingScrollPhysics.funName] = clampingScrollPhysics;
    m[alwaysScrollableScrollPhysics.funName] = alwaysScrollableScrollPhysics;
    m[neverScrollableScrollPhysics.funName] = neverScrollableScrollPhysics;
    m[tickerMode.funName] = tickerMode;
    m[scrollStartNotification.funName] = scrollStartNotification;
    m[scrollUpdateNotification.funName] = scrollUpdateNotification;
    m[overscrollNotification.funName] = overscrollNotification;
    m[scrollEndNotification.funName] = scrollEndNotification;
    m[userScrollNotification.funName] = userScrollNotification;
    m[glowingOverscrollIndicator.funName] = glowingOverscrollIndicator;
    m[overscrollIndicatorNotification.funName] = overscrollIndicatorNotification;
    m[scrollBehavior.funName] = scrollBehavior;
    m[scrollConfiguration.funName] = scrollConfiguration;
    m[gestureRecognizerFactoryWithHandlers.funName] = gestureRecognizerFactoryWithHandlers;
    m[gestureDetector.funName] = gestureDetector;
    m[rawGestureDetector.funName] = rawGestureDetector;
    m[rawGestureDetectorState.funName] = rawGestureDetectorState;
    m[scrollable.funName] = scrollable;
    m[scrollableState.funName] = scrollableState;
    m[scrollIncrementType.funName] = scrollIncrementType;
    m[scrollIncrementDetails.funName] = scrollIncrementDetails;
    m[intent.funName] = intent;
    m[scrollIntent.funName] = scrollIntent;
    m[scrollAction.funName] = scrollAction;
    m[scrollAwareImageProvider.funName] = scrollAwareImageProvider;
    m[orientation.funName] = orientation;
    m[mediaQueryData.funName] = mediaQueryData;
    m[mediaQueryData_fromWindow.funName] = mediaQueryData_fromWindow;
    m[mediaQuery.funName] = mediaQuery;
    m[mediaQuery_removePadding.funName] = mediaQuery_removePadding;
    m[mediaQuery_removeViewInsets.funName] = mediaQuery_removeViewInsets;
    m[mediaQuery_removeViewPadding.funName] = mediaQuery_removeViewPadding;
    m[disposableBuildContext.funName] = disposableBuildContext;
    m[image.funName] = image;
    m[image_network.funName] = image_network;
    m[image_file.funName] = image_file;
    m[image_asset.funName] = image_asset;
    m[image_memory.funName] = image_memory;
    m[decoratedBox.funName] = decoratedBox;
    m[container.funName] = container;
    m[defaultWidgetsLocalizations.funName] = defaultWidgetsLocalizations;
    m[localizations.funName] = localizations;
    m[localizations_override.funName] = localizations_override;
    m[focus.funName] = focus;
    m[focusScope.funName] = focusScope;
    m[sliverChildBuilderDelegate.funName] = sliverChildBuilderDelegate;
    m[sliverChildListDelegate.funName] = sliverChildListDelegate;
    m[sliverChildListDelegate_fixed.funName] = sliverChildListDelegate_fixed;
    m[sliverList.funName] = sliverList;
    m[sliverFixedExtentList.funName] = sliverFixedExtentList;
    m[sliverGrid.funName] = sliverGrid;
    m[sliverGrid_count.funName] = sliverGrid_count;
    m[sliverGrid_extent.funName] = sliverGrid_extent;
    m[sliverMultiBoxAdaptorElement.funName] = sliverMultiBoxAdaptorElement;
    m[sliverOpacity.funName] = sliverOpacity;
    m[sliverIgnorePointer.funName] = sliverIgnorePointer;
    m[sliverOffstage.funName] = sliverOffstage;
    m[keepAlive.funName] = keepAlive;
    m[notificationListener.funName] = notificationListener;
    m[layoutChangedNotification.funName] = layoutChangedNotification;
    m[automaticKeepAlive.funName] = automaticKeepAlive;
    m[keepAliveNotification.funName] = keepAliveNotification;
    m[keepAliveHandle.funName] = keepAliveHandle;
    m[textEditingController.funName] = textEditingController;
    m[textEditingController_fromValue.funName] = textEditingController_fromValue;
    m[toolbarOptions.funName] = toolbarOptions;
    m[editableText.funName] = editableText;
    m[editableTextState.funName] = editableTextState;
    m[traversalDirection.funName] = traversalDirection;
    m[widgetOrderTraversalPolicy.funName] = widgetOrderTraversalPolicy;
    m[readingOrderTraversalPolicy.funName] = readingOrderTraversalPolicy;
    m[numericFocusOrder.funName] = numericFocusOrder;
    m[lexicalFocusOrder.funName] = lexicalFocusOrder;
    m[orderedTraversalPolicy.funName] = orderedTraversalPolicy;
    m[focusTraversalOrder.funName] = focusTraversalOrder;
    m[focusTraversalGroup.funName] = focusTraversalGroup;
    m[requestFocusAction.funName] = requestFocusAction;
    m[nextFocusAction.funName] = nextFocusAction;
    m[previousFocusAction.funName] = previousFocusAction;
    m[directionalFocusIntent.funName] = directionalFocusIntent;
    m[directionalFocusAction.funName] = directionalFocusAction;
    m[bannerLocation.funName] = bannerLocation;
    m[bannerPainter.funName] = bannerPainter;
    m[banner.funName] = banner;
    m[checkedModeBanner.funName] = checkedModeBanner;
    m[widgetsApp.funName] = widgetsApp;
    m[renderObjectToWidgetAdapter.funName] = renderObjectToWidgetAdapter;
    m[renderObjectToWidgetElement.funName] = renderObjectToWidgetElement;
    m[widgetsFlutterBinding.funName] = widgetsFlutterBinding;
    m[focusAttachment_.funName] = focusAttachment_;
    m[unfocusDisposition.funName] = unfocusDisposition;
    m[focusNode.funName] = focusNode;
    m[focusScopeNode.funName] = focusScopeNode;
    m[focusHighlightMode.funName] = focusHighlightMode;
    m[focusHighlightStrategy.funName] = focusHighlightStrategy;
    m[focusManager.funName] = focusManager;
    m[uniqueKey.funName] = uniqueKey;
    m[objectKey.funName] = objectKey;
    m[labeledGlobalKey.funName] = labeledGlobalKey;
    m[globalObjectKey.funName] = globalObjectKey;
    m[typeMatcher.funName] = typeMatcher;
    m[buildOwner.funName] = buildOwner;
    m[errorWidget.funName] = errorWidget;
    m[errorWidget_withDetails.funName] = errorWidget_withDetails;
    m[statelessElement.funName] = statelessElement;
    m[statefulElement.funName] = statefulElement;
    m[parentDataElement.funName] = parentDataElement;
    m[leafRenderObjectElement.funName] = leafRenderObjectElement;
    m[singleChildRenderObjectElement.funName] = singleChildRenderObjectElement;
    m[multiChildRenderObjectElement.funName] = multiChildRenderObjectElement;
    m[debugCreator.funName] = debugCreator;
    m[indexedSlot.funName] = indexedSlot;
    m[directionality.funName] = directionality;
    m[opacity.funName] = opacity;
    m[shaderMask.funName] = shaderMask;
    m[backdropFilter.funName] = backdropFilter;
    m[customPaint.funName] = customPaint;
    m[clipRect.funName] = clipRect;
    m[clipRRect.funName] = clipRRect;
    m[clipOval.funName] = clipOval;
    m[clipPath.funName] = clipPath;
    m[physicalModel.funName] = physicalModel;
    m[physicalShape.funName] = physicalShape;
    m[transform.funName] = transform;
    m[transform_rotate.funName] = transform_rotate;
    m[transform_translate.funName] = transform_translate;
    m[transform_scale.funName] = transform_scale;
    m[compositedTransformTarget.funName] = compositedTransformTarget;
    m[compositedTransformFollower.funName] = compositedTransformFollower;
    m[fittedBox.funName] = fittedBox;
    m[fractionalTranslation.funName] = fractionalTranslation;
    m[rotatedBox.funName] = rotatedBox;
    m[padding.funName] = padding;
    m[align.funName] = align;
    m[center.funName] = center;
    m[customSingleChildLayout.funName] = customSingleChildLayout;
    m[layoutId.funName] = layoutId;
    m[customMultiChildLayout.funName] = customMultiChildLayout;
    m[sizedBox.funName] = sizedBox;
    m[sizedBox_expand.funName] = sizedBox_expand;
    m[sizedBox_shrink.funName] = sizedBox_shrink;
    m[sizedBox_fromSize.funName] = sizedBox_fromSize;
    m[constrainedBox.funName] = constrainedBox;
    m[unconstrainedBox.funName] = unconstrainedBox;
    m[fractionallySizedBox.funName] = fractionallySizedBox;
    m[limitedBox.funName] = limitedBox;
    m[overflowBox.funName] = overflowBox;
    m[sizedOverflowBox.funName] = sizedOverflowBox;
    m[offstage.funName] = offstage;
    m[aspectRatio.funName] = aspectRatio;
    m[intrinsicWidth.funName] = intrinsicWidth;
    m[intrinsicHeight.funName] = intrinsicHeight;
    m[baseline.funName] = baseline;
    m[sliverToBoxAdapter.funName] = sliverToBoxAdapter;
    m[sliverPadding.funName] = sliverPadding;
    m[listBody.funName] = listBody;
    m[stack.funName] = stack;
    m[indexedStack.funName] = indexedStack;
    m[positioned.funName] = positioned;
    m[positioned_directional.funName] = positioned_directional;
    m[positioned_fromRect.funName] = positioned_fromRect;
    m[positioned_fromRelativeRect.funName] = positioned_fromRelativeRect;
    m[positioned_fill.funName] = positioned_fill;
    m[positionedDirectional.funName] = positionedDirectional;
    m[flex.funName] = flex;
    m[row.funName] = row;
    m[column.funName] = column;
    m[flexible.funName] = flexible;
    m[expanded.funName] = expanded;
    m[wrap.funName] = wrap;
    m[flow.funName] = flow;
    m[flow_unwrapped.funName] = flow_unwrapped;
    m[richText.funName] = richText;
    m[rawImage.funName] = rawImage;
    m[defaultAssetBundle.funName] = defaultAssetBundle;
    m[widgetToRenderBoxAdapter.funName] = widgetToRenderBoxAdapter;
    m[listener.funName] = listener;
    m[mouseRegion.funName] = mouseRegion;
    m[repaintBoundary.funName] = repaintBoundary;
    m[repaintBoundary_wrap.funName] = repaintBoundary_wrap;
    m[ignorePointer.funName] = ignorePointer;
    m[absorbPointer.funName] = absorbPointer;
    m[metaData.funName] = metaData;
    m[semantics.funName] = semantics;
    m[semantics_fromProperties.funName] = semantics_fromProperties;
    m[mergeSemantics.funName] = mergeSemantics;
    m[blockSemantics.funName] = blockSemantics;
    m[excludeSemantics.funName] = excludeSemantics;
    m[indexedSemantics.funName] = indexedSemantics;
    m[keyedSubtree.funName] = keyedSubtree;
    m[keyedSubtree_wrap.funName] = keyedSubtree_wrap;
    m[builder.funName] = builder;
    m[statefulBuilder.funName] = statefulBuilder;
    m[coloredBox.funName] = coloredBox;
    m[callbackAction.funName] = callbackAction;
    m[actionDispatcher.funName] = actionDispatcher;
    m[actions.funName] = actions;
    m[focusableActionDetector.funName] = focusableActionDetector;
    m[doNothingAction.funName] = doNothingAction;
    return m;
  }
  static var widgetSpan = MXFunctionInvoke(
      "WidgetSpan",
      ({
        Widget child,
        PlaceholderAlignment alignment = PlaceholderAlignment.bottom,
        TextBaseline baseline,
        TextStyle style,
      }) =>
        WidgetSpan(
        child: child,
        alignment: alignment,
        baseline: baseline,
        style: style,
      ),
    );
  static var tableRow = MXFunctionInvoke(
      "TableRow",
      ({
        LocalKey key,
        Decoration decoration,
        List<Widget> children,
      }) =>
        TableRow(
        key: key,
        decoration: decoration,
        children: children,
      ),
    );
  static var table = MXFunctionInvoke(
      "Table",
      ({
        Key key,
        List<TableRow> children,
        Map<int*, TableColumnWidth> columnWidths,
        TableColumnWidth defaultColumnWidth,
        TextDirection textDirection,
        TableBorder border,
        TableCellVerticalAlignment defaultVerticalAlignment = TableCellVerticalAlignment.top,
        TextBaseline textBaseline,
      }) =>
        Table(
        key: key,
        children: children,
        columnWidths: columnWidths,
        defaultColumnWidth: defaultColumnWidth,
        textDirection: textDirection,
        border: border,
        defaultVerticalAlignment: defaultVerticalAlignment,
        textBaseline: textBaseline,
      ),
    );
  static var tableCell = MXFunctionInvoke(
      "TableCell",
      ({
        Key key,
        TableCellVerticalAlignment verticalAlignment,
        Widget child,
      }) =>
        TableCell(
        key: key,
        verticalAlignment: verticalAlignment,
        child: child,
      ),
    );
  static var inheritedElement = MXFunctionInvoke(
      "InheritedElement",
      ({
        InheritedWidget widget,
      }) =>
        InheritedElement(
        widget,
      ),
    );
  static var inheritedModelElement = MXFunctionInvoke(
      "InheritedModelElement",
      ({
        InheritedModel<InheritedModelElement::T> widget,
      }) =>
        InheritedModelElement(
        widget,
      ),
    );
  static var widgetInspector = MXFunctionInvoke(
      "WidgetInspector",
      ({
        Key key,
        Widget child,
        dynamic selectButtonBuilder,
      }) =>
        WidgetInspector(
        key: key,
        child: child,
        selectButtonBuilder: selectButtonBuilder,
      ),
    );
  static var inspectorSelection = MXFunctionInvoke(
      "InspectorSelection",
      ({
      }) =>
        InspectorSelection(
      ),
    );
  static var inspectorSerializationDelegate = MXFunctionInvoke(
      "InspectorSerializationDelegate",
      ({
        String groupName,
        bool summaryTree = false,
        int maxDescendentsTruncatableNode = -1,
        bool expandPropertyValues = true,
        int subtreeDepth = 1,
        bool includeProperties = false,
        WidgetInspectorService service,
        dynamic addAdditionalPropertiesCallback,
      }) =>
        InspectorSerializationDelegate(
        groupName: groupName,
        summaryTree: summaryTree,
        maxDescendentsTruncatableNode: maxDescendentsTruncatableNode,
        expandPropertyValues: expandPropertyValues,
        subtreeDepth: subtreeDepth,
        includeProperties: includeProperties,
        service: service,
        addAdditionalPropertiesCallback: addAdditionalPropertiesCallback,
      ),
    );
  static var title = MXFunctionInvoke(
      "Title",
      ({
        Key key,
        String title = ,
        Color color,
        Widget child,
      }) =>
        Title(
        key: key,
        title: title,
        color: color,
        child: child,
      ),
    );
  static var keySet = MXFunctionInvoke(
      "KeySet",
      ({
        dynamic key1,
        dynamic key2,
        dynamic key3,
        dynamic key4,
      }) =>
        KeySet(
        key1,
        key2,
        key3,
        key4,
      ),
    );
  static var keySet_fromSet = MXFunctionInvoke(
    "keySet.fromSet",
      ({
        Set<KeySet::T> keys,
      }) =>
        KeySet.fromSet(
        keys,
      ),
    );
  static var logicalKeySet = MXFunctionInvoke(
      "LogicalKeySet",
      ({
        LogicalKeyboardKey key1,
        LogicalKeyboardKey key2,
        LogicalKeyboardKey key3,
        LogicalKeyboardKey key4,
      }) =>
        LogicalKeySet(
        key1,
        key2,
        key3,
        key4,
      ),
    );
  static var logicalKeySet_fromSet = MXFunctionInvoke(
    "logicalKeySet.fromSet",
      ({
        Set<LogicalKeyboardKey> keys,
      }) =>
        LogicalKeySet.fromSet(
        keys,
      ),
    );
  static var shortcutMapProperty = MXFunctionInvoke(
      "ShortcutMapProperty",
      ({
        String name,
        Map<LogicalKeySet*, Intent> value,
        bool showName = true,
        Object defaultValue,
        DiagnosticLevel level = DiagnosticLevel.info,
        String description,
      }) =>
        ShortcutMapProperty(
        name,
        value,
        showName: showName,
        defaultValue: defaultValue,
        level: level,
        description: description,
      ),
    );
  static var shortcutManager = MXFunctionInvoke(
      "ShortcutManager",
      ({
        Map<LogicalKeySet*, Intent> shortcuts,
        bool modal = false,
      }) =>
        ShortcutManager(
        shortcuts: shortcuts,
        modal: modal,
      ),
    );
  static var shortcuts = MXFunctionInvoke(
      "Shortcuts",
      ({
        Key key,
        ShortcutManager manager,
        Map<LogicalKeySet*, Intent> shortcuts,
        Widget child,
        String debugLabel,
      }) =>
        Shortcuts(
        key: key,
        manager: manager,
        shortcuts: shortcuts,
        child: child,
        debugLabel: debugLabel,
      ),
    );
  static var semanticsDebugger = MXFunctionInvoke(
      "SemanticsDebugger",
      ({
        Key key,
        Widget child,
        TextStyle labelStyle,
      }) =>
        SemanticsDebugger(
        key: key,
        child: child,
        labelStyle: labelStyle,
      ),
    );
  static var performanceOverlay = MXFunctionInvoke(
      "PerformanceOverlay",
      ({
        Key key,
        int optionsMask = 0,
        int rasterizerThreshold = 0,
        bool checkerboardRasterCacheImages = false,
        bool checkerboardOffscreenLayers = false,
      }) =>
        PerformanceOverlay(
        key: key,
        optionsMask: optionsMask,
        rasterizerThreshold: rasterizerThreshold,
        checkerboardRasterCacheImages: checkerboardRasterCacheImages,
        checkerboardOffscreenLayers: checkerboardOffscreenLayers,
      ),
    );
  static var performanceOverlay_allEnabled = MXFunctionInvoke(
    "performanceOverlay.allEnabled",
      ({
        Key key,
        int rasterizerThreshold = 0,
        bool checkerboardRasterCacheImages = false,
        bool checkerboardOffscreenLayers = false,
      }) =>
        PerformanceOverlay.allEnabled(
        key: key,
        rasterizerThreshold: rasterizerThreshold,
        checkerboardRasterCacheImages: checkerboardRasterCacheImages,
        checkerboardOffscreenLayers: checkerboardOffscreenLayers,
      ),
    );
  static var pageRouteBuilder = MXFunctionInvoke(
      "PageRouteBuilder",
      ({
        RouteSettings settings,
        dynamic pageBuilder,
        dynamic transitionsBuilder,
        Duration transitionDuration,
        bool opaque = true,
        bool barrierDismissible = false,
        Color barrierColor,
        String barrierLabel,
        bool maintainState = true,
        bool fullscreenDialog = false,
      }) =>
        PageRouteBuilder(
        settings: settings,
        pageBuilder: pageBuilder,
        transitionsBuilder: transitionsBuilder,
        transitionDuration: transitionDuration,
        opaque: opaque,
        barrierDismissible: barrierDismissible,
        barrierColor: barrierColor,
        barrierLabel: barrierLabel,
        maintainState: maintainState,
        fullscreenDialog: fullscreenDialog,
      ),
    );
  static var modalBarrier = MXFunctionInvoke(
      "ModalBarrier",
      ({
        Key key,
        Color color,
        bool dismissible = true,
        String semanticsLabel,
        bool barrierSemanticsDismissible = true,
      }) =>
        ModalBarrier(
        key: key,
        color: color,
        dismissible: dismissible,
        semanticsLabel: semanticsLabel,
        barrierSemanticsDismissible: barrierSemanticsDismissible,
      ),
    );
  static var animatedModalBarrier = MXFunctionInvoke(
      "AnimatedModalBarrier",
      ({
        Key key,
        Animation<Color> color,
        bool dismissible = true,
        String semanticsLabel,
        bool barrierSemanticsDismissible,
      }) =>
        AnimatedModalBarrier(
        key: key,
        color: color,
        dismissible: dismissible,
        semanticsLabel: semanticsLabel,
        barrierSemanticsDismissible: barrierSemanticsDismissible,
      ),
    );
  static var localHistoryEntry = MXFunctionInvoke(
      "LocalHistoryEntry",
      ({
        dynamic onRemove,
      }) =>
        LocalHistoryEntry(
        onRemove: createVoidCallbackClosure(localHistoryEntry.buildOwner, onRemove),
      ),
    );
  static var navigatorObserver = MXFunctionInvoke(
      "NavigatorObserver",
      ({
      }) =>
        NavigatorObserver(
      ),
    );
  static var routeObserver = MXFunctionInvoke(
      "RouteObserver",
      ({
      }) =>
        RouteObserver(
      ),
    );
  static var routePopDisposition = MXFunctionInvoke(
      "RoutePopDisposition",
      ({Map args}) => MXRoutePopDisposition.parse(args),
  );
  static var routeSettings = MXFunctionInvoke(
      "RouteSettings",
      ({
        String name,
        Object arguments,
      }) =>
        RouteSettings(
        name: name,
        arguments: arguments,
      ),
    );
  static var customBuilderPage = MXFunctionInvoke(
      "CustomBuilderPage",
      ({
        LocalKey key,
        dynamic routeBuilder,
        String name,
        Object arguments,
      }) =>
        CustomBuilderPage(
        key: key,
        routeBuilder: routeBuilder,
        name: name,
        arguments: arguments,
      ),
    );
  static var defaultTransitionDelegate = MXFunctionInvoke(
      "DefaultTransitionDelegate",
      ({
      }) =>
        DefaultTransitionDelegate(
      ),
    );
  static var navigator = MXFunctionInvoke(
      "Navigator",
      ({
        Key key,
        List<Page<dynamic>> pages,
        dynamic onPopPage,
        String initialRoute,
        dynamic onGenerateInitialRoutes,
        dynamic onGenerateRoute,
        dynamic onUnknownRoute,
        TransitionDelegate<dynamic> transitionDelegate,
        List<NavigatorObserver> observers,
      }) =>
        Navigator(
        key: key,
        pages: pages,
        onPopPage: onPopPage,
        initialRoute: initialRoute,
        onGenerateInitialRoutes: onGenerateInitialRoutes,
        onGenerateRoute: createGenericValueGenericClosure<Route<dynamic>, RouteSettings>(navigator.buildOwner, onGenerateRoute),
        onUnknownRoute: createGenericValueGenericClosure<Route<dynamic>, RouteSettings>(navigator.buildOwner, onUnknownRoute),
        transitionDelegate: transitionDelegate,
        observers: observers,
      ),
    );
  static var navigatorState = MXFunctionInvoke(
      "NavigatorState",
      ({
      }) =>
        NavigatorState(
      ),
    );
  static var visibility = MXFunctionInvoke(
      "Visibility",
      ({
        Key key,
        Widget child,
        Widget replacement,
        bool visible = true,
        bool maintainState = false,
        bool maintainAnimation = false,
        bool maintainSize = false,
        bool maintainSemantics = false,
        bool maintainInteractivity = false,
      }) =>
        Visibility(
        key: key,
        child: child,
        replacement: replacement,
        visible: visible,
        maintainState: maintainState,
        maintainAnimation: maintainAnimation,
        maintainSize: maintainSize,
        maintainSemantics: maintainSemantics,
        maintainInteractivity: maintainInteractivity,
      ),
    );
  static var sliverVisibility = MXFunctionInvoke(
      "SliverVisibility",
      ({
        Key key,
        Widget sliver,
        Widget replacementSliver,
        bool visible = true,
        bool maintainState = false,
        bool maintainAnimation = false,
        bool maintainSize = false,
        bool maintainSemantics = false,
        bool maintainInteractivity = false,
      }) =>
        SliverVisibility(
        key: key,
        sliver: sliver,
        replacementSliver: replacementSliver,
        visible: visible,
        maintainState: maintainState,
        maintainAnimation: maintainAnimation,
        maintainSize: maintainSize,
        maintainSemantics: maintainSemantics,
        maintainInteractivity: maintainInteractivity,
      ),
    );
  static var defaultTextStyle = MXFunctionInvoke(
      "DefaultTextStyle",
      ({
        Key key,
        TextStyle style,
        TextAlign textAlign,
        bool softWrap = true,
        TextOverflow overflow = TextOverflow.clip,
        int maxLines,
        TextWidthBasis textWidthBasis = TextWidthBasis.parent,
        TextHeightBehavior textHeightBehavior,
        Widget child,
      }) =>
        DefaultTextStyle(
        key: key,
        style: style,
        textAlign: textAlign,
        softWrap: softWrap,
        overflow: overflow,
        maxLines: maxLines,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior,
        child: child,
      ),
    );
  static var defaultTextStyle_fallback = MXFunctionInvoke(
    "defaultTextStyle.fallback",
      ({
        Key key,
      }) =>
        DefaultTextStyle.fallback(
        key: key,
      ),
    );
  static var text = MXFunctionInvoke(
      "Text",
      ({
        String data,
        Key key,
        TextStyle style,
        StrutStyle strutStyle,
        TextAlign textAlign,
        TextDirection textDirection,
        Locale locale,
        bool softWrap,
        TextOverflow overflow,
        dynamic textScaleFactor,
        int maxLines,
        String semanticsLabel,
        TextWidthBasis textWidthBasis,
        TextHeightBehavior textHeightBehavior,
      }) =>
        Text(
        data,
        key: key,
        style: style,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor?.toDouble(),
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior,
      ),
    );
  static var text_rich = MXFunctionInvoke(
    "text.rich",
      ({
        InlineSpan textSpan,
        Key key,
        TextStyle style,
        StrutStyle strutStyle,
        TextAlign textAlign,
        TextDirection textDirection,
        Locale locale,
        bool softWrap,
        TextOverflow overflow,
        dynamic textScaleFactor,
        int maxLines,
        String semanticsLabel,
        TextWidthBasis textWidthBasis,
        TextHeightBehavior textHeightBehavior,
      }) =>
        Text.rich(
        textSpan,
        key: key,
        style: style,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor?.toDouble(),
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior,
      ),
    );
  static var slideTransition = MXFunctionInvoke(
      "SlideTransition",
      ({
        Key key,
        Animation<Offset> position,
        bool transformHitTests = true,
        TextDirection textDirection,
        Widget child,
      }) =>
        SlideTransition(
        key: key,
        position: position,
        transformHitTests: transformHitTests,
        textDirection: textDirection,
        child: child,
      ),
    );
  static var scaleTransition = MXFunctionInvoke(
      "ScaleTransition",
      ({
        Key key,
        Animation<double> scale,
        Alignment alignment,
        Widget child,
      }) =>
        ScaleTransition(
        key: key,
        scale: scale,
        alignment: alignment,
        child: child,
      ),
    );
  static var rotationTransition = MXFunctionInvoke(
      "RotationTransition",
      ({
        Key key,
        Animation<double> turns,
        Alignment alignment,
        Widget child,
      }) =>
        RotationTransition(
        key: key,
        turns: turns,
        alignment: alignment,
        child: child,
      ),
    );
  static var sizeTransition = MXFunctionInvoke(
      "SizeTransition",
      ({
        Key key,
        Axis axis = Axis.vertical,
        Animation<double> sizeFactor,
        dynamic axisAlignment = 0.0,
        Widget child,
      }) =>
        SizeTransition(
        key: key,
        axis: axis,
        sizeFactor: sizeFactor,
        axisAlignment: axisAlignment?.toDouble(),
        child: child,
      ),
    );
  static var fadeTransition = MXFunctionInvoke(
      "FadeTransition",
      ({
        Key key,
        Animation<double> opacity,
        bool alwaysIncludeSemantics = false,
        Widget child,
      }) =>
        FadeTransition(
        key: key,
        opacity: opacity,
        alwaysIncludeSemantics: alwaysIncludeSemantics,
        child: child,
      ),
    );
  static var sliverFadeTransition = MXFunctionInvoke(
      "SliverFadeTransition",
      ({
        Key key,
        Animation<double> opacity,
        bool alwaysIncludeSemantics = false,
        Widget sliver,
      }) =>
        SliverFadeTransition(
        key: key,
        opacity: opacity,
        alwaysIncludeSemantics: alwaysIncludeSemantics,
        sliver: sliver,
      ),
    );
  static var relativeRectTween = MXFunctionInvoke(
      "RelativeRectTween",
      ({
        RelativeRect begin,
        RelativeRect end,
      }) =>
        RelativeRectTween(
        begin: begin,
        end: end,
      ),
    );
  static var positionedTransition = MXFunctionInvoke(
      "PositionedTransition",
      ({
        Key key,
        Animation<RelativeRect> rect,
        Widget child,
      }) =>
        PositionedTransition(
        key: key,
        rect: rect,
        child: child,
      ),
    );
  static var relativePositionedTransition = MXFunctionInvoke(
      "RelativePositionedTransition",
      ({
        Key key,
        Animation<Rect> rect,
        Size size,
        Widget child,
      }) =>
        RelativePositionedTransition(
        key: key,
        rect: rect,
        size: size,
        child: child,
      ),
    );
  static var decoratedBoxTransition = MXFunctionInvoke(
      "DecoratedBoxTransition",
      ({
        Key key,
        Animation<Decoration> decoration,
        DecorationPosition position = DecorationPosition.background,
        Widget child,
      }) =>
        DecoratedBoxTransition(
        key: key,
        decoration: decoration,
        position: position,
        child: child,
      ),
    );
  static var alignTransition = MXFunctionInvoke(
      "AlignTransition",
      ({
        Key key,
        Animation<AlignmentGeometry> alignment,
        Widget child,
        dynamic widthFactor,
        dynamic heightFactor,
      }) =>
        AlignTransition(
        key: key,
        alignment: alignment,
        child: child,
        widthFactor: widthFactor?.toDouble(),
        heightFactor: heightFactor?.toDouble(),
      ),
    );
  static var defaultTextStyleTransition = MXFunctionInvoke(
      "DefaultTextStyleTransition",
      ({
        Key key,
        Animation<TextStyle> style,
        Widget child,
        TextAlign textAlign,
        bool softWrap = true,
        TextOverflow overflow = TextOverflow.clip,
        int maxLines,
      }) =>
        DefaultTextStyleTransition(
        key: key,
        style: style,
        child: child,
        textAlign: textAlign,
        softWrap: softWrap,
        overflow: overflow,
        maxLines: maxLines,
      ),
    );
  static var animatedBuilder = MXFunctionInvoke(
      "AnimatedBuilder",
      ({
        Key key,
        Listenable animation,
        dynamic builder,
        Widget child,
      }) =>
        AnimatedBuilder(
        key: key,
        animation: animation,
        builder: builder,
        child: child,
      ),
    );
  static var overlayEntry = MXFunctionInvoke(
      "OverlayEntry",
      ({
        dynamic builder,
        bool opaque = false,
        bool maintainState = false,
      }) =>
        OverlayEntry(
        builder: createGenericValueGenericClosure<Widget, BuildContext>(overlayEntry.buildOwner, builder),
        opaque: opaque,
        maintainState: maintainState,
      ),
    );
  static var overlay = MXFunctionInvoke(
      "Overlay",
      ({
        Key key,
        List<OverlayEntry> initialEntries,
      }) =>
        Overlay(
        key: key,
        initialEntries: initialEntries,
      ),
    );
  static var overlayState = MXFunctionInvoke(
      "OverlayState",
      ({
      }) =>
        OverlayState(
      ),
    );
  static var textSelectionHandleType = MXFunctionInvoke(
      "TextSelectionHandleType",
      ({Map args}) => MXTextSelectionHandleType.parse(args),
  );
  static var textSelectionOverlay = MXFunctionInvoke(
      "TextSelectionOverlay",
      ({
        TextEditingValue value,
        BuildContext context,
        Widget debugRequiredFor,
        LayerLink toolbarLayerLink,
        LayerLink startHandleLayerLink,
        LayerLink endHandleLayerLink,
        RenderEditable renderObject,
        TextSelectionControls selectionControls,
        bool handlesVisible = false,
        TextSelectionDelegate selectionDelegate,
        DragStartBehavior dragStartBehavior = DragStartBehavior.start,
        dynamic onSelectionHandleTapped,
      }) =>
        TextSelectionOverlay(
        value: value,
        context: context,
        debugRequiredFor: debugRequiredFor,
        toolbarLayerLink: toolbarLayerLink,
        startHandleLayerLink: startHandleLayerLink,
        endHandleLayerLink: endHandleLayerLink,
        renderObject: renderObject,
        selectionControls: selectionControls,
        handlesVisible: handlesVisible,
        selectionDelegate: selectionDelegate,
        dragStartBehavior: dragStartBehavior,
        onSelectionHandleTapped: createVoidCallbackClosure(textSelectionOverlay.buildOwner, onSelectionHandleTapped),
      ),
    );
  static var textSelectionGestureDetectorBuilder = MXFunctionInvoke(
      "TextSelectionGestureDetectorBuilder",
      ({
        TextSelectionGestureDetectorBuilderDelegate delegate,
      }) =>
        TextSelectionGestureDetectorBuilder(
        delegate: delegate,
      ),
    );
  static var textSelectionGestureDetector = MXFunctionInvoke(
      "TextSelectionGestureDetector",
      ({
        Key key,
        dynamic onTapDown,
        dynamic onForcePressStart,
        dynamic onForcePressEnd,
        dynamic onSingleTapUp,
        dynamic onSingleTapCancel,
        dynamic onSingleLongTapStart,
        dynamic onSingleLongTapMoveUpdate,
        dynamic onSingleLongTapEnd,
        dynamic onDoubleTapDown,
        dynamic onDragSelectionStart,
        dynamic onDragSelectionUpdate,
        dynamic onDragSelectionEnd,
        HitTestBehavior behavior,
        Widget child,
      }) =>
        TextSelectionGestureDetector(
        key: key,
        onTapDown: createValueChangedGenericClosure<TapDownDetails>(textSelectionGestureDetector.buildOwner, onTapDown),
        onForcePressStart: createValueChangedGenericClosure<ForcePressDetails>(textSelectionGestureDetector.buildOwner, onForcePressStart),
        onForcePressEnd: createValueChangedGenericClosure<ForcePressDetails>(textSelectionGestureDetector.buildOwner, onForcePressEnd),
        onSingleTapUp: createValueChangedGenericClosure<TapUpDetails>(textSelectionGestureDetector.buildOwner, onSingleTapUp),
        onSingleTapCancel: createVoidCallbackClosure(textSelectionGestureDetector.buildOwner, onSingleTapCancel),
        onSingleLongTapStart: createValueChangedGenericClosure<LongPressStartDetails>(textSelectionGestureDetector.buildOwner, onSingleLongTapStart),
        onSingleLongTapMoveUpdate: createValueChangedGenericClosure<LongPressMoveUpdateDetails>(textSelectionGestureDetector.buildOwner, onSingleLongTapMoveUpdate),
        onSingleLongTapEnd: createValueChangedGenericClosure<LongPressEndDetails>(textSelectionGestureDetector.buildOwner, onSingleLongTapEnd),
        onDoubleTapDown: createValueChangedGenericClosure<TapDownDetails>(textSelectionGestureDetector.buildOwner, onDoubleTapDown),
        onDragSelectionStart: createValueChangedGenericClosure<DragStartDetails>(textSelectionGestureDetector.buildOwner, onDragSelectionStart),
        onDragSelectionUpdate: createVoidCallbackClosure(textSelectionGestureDetector.buildOwner, onDragSelectionUpdate),
        onDragSelectionEnd: createValueChangedGenericClosure<DragEndDetails>(textSelectionGestureDetector.buildOwner, onDragSelectionEnd),
        behavior: behavior,
        child: child,
      ),
    );
  static var viewport = MXFunctionInvoke(
      "Viewport",
      ({
        Key key,
        AxisDirection axisDirection = AxisDirection.down,
        AxisDirection crossAxisDirection,
        dynamic anchor = 0.0,
        ViewportOffset offset,
        Key center,
        dynamic cacheExtent,
        CacheExtentStyle cacheExtentStyle = CacheExtentStyle.pixel,
        List<Widget> slivers,
      }) =>
        Viewport(
        key: key,
        axisDirection: axisDirection,
        crossAxisDirection: crossAxisDirection,
        anchor: anchor?.toDouble(),
        offset: offset,
        center: center,
        cacheExtent: cacheExtent?.toDouble(),
        cacheExtentStyle: cacheExtentStyle,
        slivers: slivers,
      ),
    );
  static var shrinkWrappingViewport = MXFunctionInvoke(
      "ShrinkWrappingViewport",
      ({
        Key key,
        AxisDirection axisDirection = AxisDirection.down,
        AxisDirection crossAxisDirection,
        ViewportOffset offset,
        List<Widget> slivers,
      }) =>
        ShrinkWrappingViewport(
        key: key,
        axisDirection: axisDirection,
        crossAxisDirection: crossAxisDirection,
        offset: offset,
        slivers: slivers,
      ),
    );
  static var scrollPositionWithSingleContext = MXFunctionInvoke(
      "ScrollPositionWithSingleContext",
      ({
        ScrollPhysics physics,
        ScrollContext context,
        dynamic initialPixels = 0.0,
        bool keepScrollOffset = true,
        ScrollPosition oldPosition,
        String debugLabel,
      }) =>
        ScrollPositionWithSingleContext(
        physics: physics,
        context: context,
        initialPixels: initialPixels?.toDouble(),
        keepScrollOffset: keepScrollOffset,
        oldPosition: oldPosition,
        debugLabel: debugLabel,
      ),
    );
  static var idleScrollActivity = MXFunctionInvoke(
      "IdleScrollActivity",
      ({
        ScrollActivityDelegate delegate,
      }) =>
        IdleScrollActivity(
        delegate,
      ),
    );
  static var holdScrollActivity = MXFunctionInvoke(
      "HoldScrollActivity",
      ({
        ScrollActivityDelegate delegate,
        dynamic onHoldCanceled,
      }) =>
        HoldScrollActivity(
        delegate: delegate,
        onHoldCanceled: createVoidCallbackClosure(holdScrollActivity.buildOwner, onHoldCanceled),
      ),
    );
  static var scrollDragController = MXFunctionInvoke(
      "ScrollDragController",
      ({
        ScrollActivityDelegate delegate,
        DragStartDetails details,
        dynamic onDragCanceled,
        dynamic carriedVelocity,
        dynamic motionStartDistanceThreshold,
      }) =>
        ScrollDragController(
        delegate: delegate,
        details: details,
        onDragCanceled: createVoidCallbackClosure(scrollDragController.buildOwner, onDragCanceled),
        carriedVelocity: carriedVelocity?.toDouble(),
        motionStartDistanceThreshold: motionStartDistanceThreshold?.toDouble(),
      ),
    );
  static var dragScrollActivity = MXFunctionInvoke(
      "DragScrollActivity",
      ({
        ScrollActivityDelegate delegate,
        ScrollDragController controller,
      }) =>
        DragScrollActivity(
        delegate,
        controller,
      ),
    );
  static var ballisticScrollActivity = MXFunctionInvoke(
      "BallisticScrollActivity",
      ({
        ScrollActivityDelegate delegate,
        Simulation simulation,
        TickerProvider vsync,
      }) =>
        BallisticScrollActivity(
        delegate,
        simulation,
        vsync,
      ),
    );
  static var drivenScrollActivity = MXFunctionInvoke(
      "DrivenScrollActivity",
      ({
        ScrollActivityDelegate delegate,
        dynamic from,
        dynamic to,
        Duration duration,
        Curve curve,
        TickerProvider vsync,
      }) =>
        DrivenScrollActivity(
        delegate,
        from: from?.toDouble(),
        to: to?.toDouble(),
        duration: duration,
        curve: curve,
        vsync: vsync,
      ),
    );
  static var pageStorageKey = MXFunctionInvoke(
      "PageStorageKey",
      ({
        dynamic value,
      }) =>
        PageStorageKey(
        value,
      ),
    );
  static var pageStorageBucket = MXFunctionInvoke(
      "PageStorageBucket",
      ({
      }) =>
        PageStorageBucket(
      ),
    );
  static var pageStorage = MXFunctionInvoke(
      "PageStorage",
      ({
        Key key,
        PageStorageBucket bucket,
        Widget child,
      }) =>
        PageStorage(
        key: key,
        bucket: bucket,
        child: child,
      ),
    );
  static var scrollPositionAlignmentPolicy = MXFunctionInvoke(
      "ScrollPositionAlignmentPolicy",
      ({Map args}) => MXScrollPositionAlignmentPolicy.parse(args),
  );
  static var scrollController = MXFunctionInvoke(
      "ScrollController",
      ({
        dynamic initialScrollOffset = 0.0,
        bool keepScrollOffset = true,
        String debugLabel,
      }) =>
        ScrollController(
        initialScrollOffset: initialScrollOffset?.toDouble(),
        keepScrollOffset: keepScrollOffset,
        debugLabel: debugLabel,
      ),
    );
  static var trackingScrollController = MXFunctionInvoke(
      "TrackingScrollController",
      ({
        dynamic initialScrollOffset = 0.0,
        bool keepScrollOffset = true,
        String debugLabel,
      }) =>
        TrackingScrollController(
        initialScrollOffset: initialScrollOffset?.toDouble(),
        keepScrollOffset: keepScrollOffset,
        debugLabel: debugLabel,
      ),
    );
  static var scrollPhysics = MXFunctionInvoke(
      "ScrollPhysics",
      ({
        ScrollPhysics parent,
      }) =>
        ScrollPhysics(
        parent: parent,
      ),
    );
  static var bouncingScrollPhysics = MXFunctionInvoke(
      "BouncingScrollPhysics",
      ({
        ScrollPhysics parent,
      }) =>
        BouncingScrollPhysics(
        parent: parent,
      ),
    );
  static var clampingScrollPhysics = MXFunctionInvoke(
      "ClampingScrollPhysics",
      ({
        ScrollPhysics parent,
      }) =>
        ClampingScrollPhysics(
        parent: parent,
      ),
    );
  static var alwaysScrollableScrollPhysics = MXFunctionInvoke(
      "AlwaysScrollableScrollPhysics",
      ({
        ScrollPhysics parent,
      }) =>
        AlwaysScrollableScrollPhysics(
        parent: parent,
      ),
    );
  static var neverScrollableScrollPhysics = MXFunctionInvoke(
      "NeverScrollableScrollPhysics",
      ({
        ScrollPhysics parent,
      }) =>
        NeverScrollableScrollPhysics(
        parent: parent,
      ),
    );
  static var tickerMode = MXFunctionInvoke(
      "TickerMode",
      ({
        Key key,
        bool enabled,
        Widget child,
      }) =>
        TickerMode(
        key: key,
        enabled: enabled,
        child: child,
      ),
    );
  static var scrollStartNotification = MXFunctionInvoke(
      "ScrollStartNotification",
      ({
        ScrollMetrics metrics,
        BuildContext context,
        DragStartDetails dragDetails,
      }) =>
        ScrollStartNotification(
        metrics: metrics,
        context: context,
        dragDetails: dragDetails,
      ),
    );
  static var scrollUpdateNotification = MXFunctionInvoke(
      "ScrollUpdateNotification",
      ({
        ScrollMetrics metrics,
        BuildContext context,
        DragUpdateDetails dragDetails,
        dynamic scrollDelta,
      }) =>
        ScrollUpdateNotification(
        metrics: metrics,
        context: context,
        dragDetails: dragDetails,
        scrollDelta: scrollDelta?.toDouble(),
      ),
    );
  static var overscrollNotification = MXFunctionInvoke(
      "OverscrollNotification",
      ({
        ScrollMetrics metrics,
        BuildContext context,
        DragUpdateDetails dragDetails,
        dynamic overscroll,
        dynamic velocity = 0.0,
      }) =>
        OverscrollNotification(
        metrics: metrics,
        context: context,
        dragDetails: dragDetails,
        overscroll: overscroll?.toDouble(),
        velocity: velocity?.toDouble(),
      ),
    );
  static var scrollEndNotification = MXFunctionInvoke(
      "ScrollEndNotification",
      ({
        ScrollMetrics metrics,
        BuildContext context,
        DragEndDetails dragDetails,
      }) =>
        ScrollEndNotification(
        metrics: metrics,
        context: context,
        dragDetails: dragDetails,
      ),
    );
  static var userScrollNotification = MXFunctionInvoke(
      "UserScrollNotification",
      ({
        ScrollMetrics metrics,
        BuildContext context,
        ScrollDirection direction,
      }) =>
        UserScrollNotification(
        metrics: metrics,
        context: context,
        direction: direction,
      ),
    );
  static var glowingOverscrollIndicator = MXFunctionInvoke(
      "GlowingOverscrollIndicator",
      ({
        Key key,
        bool showLeading = true,
        bool showTrailing = true,
        AxisDirection axisDirection,
        Color color,
        dynamic notificationPredicate,
        Widget child,
      }) =>
        GlowingOverscrollIndicator(
        key: key,
        showLeading: showLeading,
        showTrailing: showTrailing,
        axisDirection: axisDirection,
        color: color,
        notificationPredicate: createGenericValueGenericClosure<bool, ScrollNotification>(glowingOverscrollIndicator.buildOwner, notificationPredicate),
        child: child,
      ),
    );
  static var overscrollIndicatorNotification = MXFunctionInvoke(
      "OverscrollIndicatorNotification",
      ({
        bool leading,
      }) =>
        OverscrollIndicatorNotification(
        leading: leading,
      ),
    );
  static var scrollBehavior = MXFunctionInvoke(
      "ScrollBehavior",
      ({
      }) =>
        ScrollBehavior(
      ),
    );
  static var scrollConfiguration = MXFunctionInvoke(
      "ScrollConfiguration",
      ({
        Key key,
        ScrollBehavior behavior,
        Widget child,
      }) =>
        ScrollConfiguration(
        key: key,
        behavior: behavior,
        child: child,
      ),
    );
  static var gestureRecognizerFactoryWithHandlers = MXFunctionInvoke(
      "GestureRecognizerFactoryWithHandlers",
      ({
        dynamic _constructor,
        dynamic _initializer,
      }) =>
        GestureRecognizerFactoryWithHandlers(
        _constructor,
        _initializer,
      ),
    );
  static var gestureDetector = MXFunctionInvoke(
      "GestureDetector",
      ({
        Key key,
        Widget child,
        dynamic onTapDown,
        dynamic onTapUp,
        dynamic onTap,
        dynamic onTapCancel,
        dynamic onSecondaryTapDown,
        dynamic onSecondaryTapUp,
        dynamic onSecondaryTapCancel,
        dynamic onDoubleTap,
        dynamic onLongPress,
        dynamic onLongPressStart,
        dynamic onLongPressMoveUpdate,
        dynamic onLongPressUp,
        dynamic onLongPressEnd,
        dynamic onVerticalDragDown,
        dynamic onVerticalDragStart,
        dynamic onVerticalDragUpdate,
        dynamic onVerticalDragEnd,
        dynamic onVerticalDragCancel,
        dynamic onHorizontalDragDown,
        dynamic onHorizontalDragStart,
        dynamic onHorizontalDragUpdate,
        dynamic onHorizontalDragEnd,
        dynamic onHorizontalDragCancel,
        dynamic onForcePressStart,
        dynamic onForcePressPeak,
        dynamic onForcePressUpdate,
        dynamic onForcePressEnd,
        dynamic onPanDown,
        dynamic onPanStart,
        dynamic onPanUpdate,
        dynamic onPanEnd,
        dynamic onPanCancel,
        dynamic onScaleStart,
        dynamic onScaleUpdate,
        dynamic onScaleEnd,
        HitTestBehavior behavior,
        bool excludeFromSemantics = false,
        DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      }) =>
        GestureDetector(
        key: key,
        child: child,
        onTapDown: createValueChangedGenericClosure<TapDownDetails>(gestureDetector.buildOwner, onTapDown),
        onTapUp: createValueChangedGenericClosure<TapUpDetails>(gestureDetector.buildOwner, onTapUp),
        onTap: createVoidCallbackClosure(gestureDetector.buildOwner, onTap),
        onTapCancel: createVoidCallbackClosure(gestureDetector.buildOwner, onTapCancel),
        onSecondaryTapDown: createValueChangedGenericClosure<TapDownDetails>(gestureDetector.buildOwner, onSecondaryTapDown),
        onSecondaryTapUp: createValueChangedGenericClosure<TapUpDetails>(gestureDetector.buildOwner, onSecondaryTapUp),
        onSecondaryTapCancel: createVoidCallbackClosure(gestureDetector.buildOwner, onSecondaryTapCancel),
        onDoubleTap: createVoidCallbackClosure(gestureDetector.buildOwner, onDoubleTap),
        onLongPress: createVoidCallbackClosure(gestureDetector.buildOwner, onLongPress),
        onLongPressStart: createValueChangedGenericClosure<LongPressStartDetails>(gestureDetector.buildOwner, onLongPressStart),
        onLongPressMoveUpdate: createValueChangedGenericClosure<LongPressMoveUpdateDetails>(gestureDetector.buildOwner, onLongPressMoveUpdate),
        onLongPressUp: createVoidCallbackClosure(gestureDetector.buildOwner, onLongPressUp),
        onLongPressEnd: createValueChangedGenericClosure<LongPressEndDetails>(gestureDetector.buildOwner, onLongPressEnd),
        onVerticalDragDown: createValueChangedGenericClosure<DragDownDetails>(gestureDetector.buildOwner, onVerticalDragDown),
        onVerticalDragStart: createValueChangedGenericClosure<DragStartDetails>(gestureDetector.buildOwner, onVerticalDragStart),
        onVerticalDragUpdate: createValueChangedGenericClosure<DragUpdateDetails>(gestureDetector.buildOwner, onVerticalDragUpdate),
        onVerticalDragEnd: createValueChangedGenericClosure<DragEndDetails>(gestureDetector.buildOwner, onVerticalDragEnd),
        onVerticalDragCancel: createVoidCallbackClosure(gestureDetector.buildOwner, onVerticalDragCancel),
        onHorizontalDragDown: createValueChangedGenericClosure<DragDownDetails>(gestureDetector.buildOwner, onHorizontalDragDown),
        onHorizontalDragStart: createValueChangedGenericClosure<DragStartDetails>(gestureDetector.buildOwner, onHorizontalDragStart),
        onHorizontalDragUpdate: createValueChangedGenericClosure<DragUpdateDetails>(gestureDetector.buildOwner, onHorizontalDragUpdate),
        onHorizontalDragEnd: createValueChangedGenericClosure<DragEndDetails>(gestureDetector.buildOwner, onHorizontalDragEnd),
        onHorizontalDragCancel: createVoidCallbackClosure(gestureDetector.buildOwner, onHorizontalDragCancel),
        onForcePressStart: createValueChangedGenericClosure<ForcePressDetails>(gestureDetector.buildOwner, onForcePressStart),
        onForcePressPeak: createValueChangedGenericClosure<ForcePressDetails>(gestureDetector.buildOwner, onForcePressPeak),
        onForcePressUpdate: createValueChangedGenericClosure<ForcePressDetails>(gestureDetector.buildOwner, onForcePressUpdate),
        onForcePressEnd: createValueChangedGenericClosure<ForcePressDetails>(gestureDetector.buildOwner, onForcePressEnd),
        onPanDown: createValueChangedGenericClosure<DragDownDetails>(gestureDetector.buildOwner, onPanDown),
        onPanStart: createValueChangedGenericClosure<DragStartDetails>(gestureDetector.buildOwner, onPanStart),
        onPanUpdate: createValueChangedGenericClosure<DragUpdateDetails>(gestureDetector.buildOwner, onPanUpdate),
        onPanEnd: createValueChangedGenericClosure<DragEndDetails>(gestureDetector.buildOwner, onPanEnd),
        onPanCancel: createVoidCallbackClosure(gestureDetector.buildOwner, onPanCancel),
        onScaleStart: createValueChangedGenericClosure<ScaleStartDetails>(gestureDetector.buildOwner, onScaleStart),
        onScaleUpdate: createValueChangedGenericClosure<ScaleUpdateDetails>(gestureDetector.buildOwner, onScaleUpdate),
        onScaleEnd: createValueChangedGenericClosure<ScaleEndDetails>(gestureDetector.buildOwner, onScaleEnd),
        behavior: behavior,
        excludeFromSemantics: excludeFromSemantics,
        dragStartBehavior: dragStartBehavior,
      ),
    );
  static var rawGestureDetector = MXFunctionInvoke(
      "RawGestureDetector",
      ({
        Key key,
        Widget child,
        Map<Type*, GestureRecognizerFactory<GestureRecognizer>> gestures,
        HitTestBehavior behavior,
        bool excludeFromSemantics = false,
        SemanticsGestureDelegate semantics,
      }) =>
        RawGestureDetector(
        key: key,
        child: child,
        gestures: gestures,
        behavior: behavior,
        excludeFromSemantics: excludeFromSemantics,
        semantics: semantics,
      ),
    );
  static var rawGestureDetectorState = MXFunctionInvoke(
      "RawGestureDetectorState",
      ({
      }) =>
        RawGestureDetectorState(
      ),
    );
  static var scrollable = MXFunctionInvoke(
      "Scrollable",
      ({
        Key key,
        AxisDirection axisDirection = AxisDirection.down,
        ScrollController controller,
        ScrollPhysics physics,
        dynamic viewportBuilder,
        dynamic incrementCalculator,
        bool excludeFromSemantics = false,
        int semanticChildCount,
        DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      }) =>
        Scrollable(
        key: key,
        axisDirection: axisDirection,
        controller: controller,
        physics: physics,
        viewportBuilder: viewportBuilder,
        incrementCalculator: createGenericValueGenericClosure<double, ScrollIncrementDetails>(scrollable.buildOwner, incrementCalculator),
        excludeFromSemantics: excludeFromSemantics,
        semanticChildCount: semanticChildCount,
        dragStartBehavior: dragStartBehavior,
      ),
    );
  static var scrollableState = MXFunctionInvoke(
      "ScrollableState",
      ({
      }) =>
        ScrollableState(
      ),
    );
  static var scrollIncrementType = MXFunctionInvoke(
      "ScrollIncrementType",
      ({Map args}) => MXScrollIncrementType.parse(args),
  );
  static var scrollIncrementDetails = MXFunctionInvoke(
      "ScrollIncrementDetails",
      ({
        ScrollIncrementType type,
        ScrollMetrics metrics,
      }) =>
        ScrollIncrementDetails(
        type: type,
        metrics: metrics,
      ),
    );
  static var intent = MXFunctionInvoke(
      "Intent",
      ({
        LocalKey key,
      }) =>
        Intent(
        key,
      ),
    );
  static var scrollIntent = MXFunctionInvoke(
      "ScrollIntent",
      ({
        AxisDirection direction,
        ScrollIncrementType type = ScrollIncrementType.line,
      }) =>
        ScrollIntent(
        direction: direction,
        type: type,
      ),
    );
  static var scrollAction = MXFunctionInvoke(
      "ScrollAction",
      ({
      }) =>
        ScrollAction(
      ),
    );
  static var scrollAwareImageProvider = MXFunctionInvoke(
      "ScrollAwareImageProvider",
      ({
        DisposableBuildContext<State<StatefulWidget>> context,
        ImageProvider<ScrollAwareImageProvider::T> imageProvider,
      }) =>
        ScrollAwareImageProvider(
        context: context,
        imageProvider: imageProvider,
      ),
    );
  static var orientation = MXFunctionInvoke(
      "Orientation",
      ({Map args}) => MXOrientation.parse(args),
  );
  static var mediaQueryData = MXFunctionInvoke(
      "MediaQueryData",
      ({
        Size size,
        dynamic devicePixelRatio = 1.0,
        dynamic textScaleFactor = 1.0,
        Brightness platformBrightness = Brightness.light,
        EdgeInsets padding,
        EdgeInsets viewInsets,
        EdgeInsets systemGestureInsets,
        EdgeInsets viewPadding,
        dynamic physicalDepth = 1.7976931348623157e+308,
        bool alwaysUse24HourFormat = false,
        bool accessibleNavigation = false,
        bool invertColors = false,
        bool highContrast = false,
        bool disableAnimations = false,
        bool boldText = false,
      }) =>
        MediaQueryData(
        size: size,
        devicePixelRatio: devicePixelRatio?.toDouble(),
        textScaleFactor: textScaleFactor?.toDouble(),
        platformBrightness: platformBrightness,
        padding: padding,
        viewInsets: viewInsets,
        systemGestureInsets: systemGestureInsets,
        viewPadding: viewPadding,
        physicalDepth: physicalDepth?.toDouble(),
        alwaysUse24HourFormat: alwaysUse24HourFormat,
        accessibleNavigation: accessibleNavigation,
        invertColors: invertColors,
        highContrast: highContrast,
        disableAnimations: disableAnimations,
        boldText: boldText,
      ),
    );
  static var mediaQueryData_fromWindow = MXFunctionInvoke(
    "mediaQueryData.fromWindow",
      ({
        Window window,
      }) =>
        MediaQueryData.fromWindow(
        window,
      ),
    );
  static var mediaQuery = MXFunctionInvoke(
      "MediaQuery",
      ({
        Key key,
        MediaQueryData data,
        Widget child,
      }) =>
        MediaQuery(
        key: key,
        data: data,
        child: child,
      ),
    );
  static var mediaQuery_removePadding = MXFunctionInvoke(
    "mediaQuery.removePadding",
      ({
        Key key,
        BuildContext context,
        bool removeLeft = false,
        bool removeTop = false,
        bool removeRight = false,
        bool removeBottom = false,
        Widget child,
      }) =>
        MediaQuery.removePadding(
        key: key,
        context: context,
        removeLeft: removeLeft,
        removeTop: removeTop,
        removeRight: removeRight,
        removeBottom: removeBottom,
        child: child,
      ),
    );
  static var mediaQuery_removeViewInsets = MXFunctionInvoke(
    "mediaQuery.removeViewInsets",
      ({
        Key key,
        BuildContext context,
        bool removeLeft = false,
        bool removeTop = false,
        bool removeRight = false,
        bool removeBottom = false,
        Widget child,
      }) =>
        MediaQuery.removeViewInsets(
        key: key,
        context: context,
        removeLeft: removeLeft,
        removeTop: removeTop,
        removeRight: removeRight,
        removeBottom: removeBottom,
        child: child,
      ),
    );
  static var mediaQuery_removeViewPadding = MXFunctionInvoke(
    "mediaQuery.removeViewPadding",
      ({
        Key key,
        BuildContext context,
        bool removeLeft = false,
        bool removeTop = false,
        bool removeRight = false,
        bool removeBottom = false,
        Widget child,
      }) =>
        MediaQuery.removeViewPadding(
        key: key,
        context: context,
        removeLeft: removeLeft,
        removeTop: removeTop,
        removeRight: removeRight,
        removeBottom: removeBottom,
        child: child,
      ),
    );
  static var disposableBuildContext = MXFunctionInvoke(
      "DisposableBuildContext",
      ({
        dynamic _state,
      }) =>
        DisposableBuildContext(
        _state,
      ),
    );
  static var image = MXFunctionInvoke(
      "Image",
      ({
        Key key,
        ImageProvider<dynamic> image,
        dynamic frameBuilder,
        dynamic loadingBuilder,
        dynamic errorBuilder,
        String semanticLabel,
        bool excludeFromSemantics = false,
        dynamic width,
        dynamic height,
        Color color,
        BlendMode colorBlendMode,
        BoxFit fit,
        AlignmentGeometry alignment,
        ImageRepeat repeat = ImageRepeat.noRepeat,
        Rect centerSlice,
        bool matchTextDirection = false,
        bool gaplessPlayback = false,
        FilterQuality filterQuality = FilterQuality.low,
      }) =>
        Image(
        key: key,
        image: image,
        frameBuilder: frameBuilder,
        loadingBuilder: loadingBuilder,
        errorBuilder: errorBuilder,
        semanticLabel: semanticLabel,
        excludeFromSemantics: excludeFromSemantics,
        width: width?.toDouble(),
        height: height?.toDouble(),
        color: color,
        colorBlendMode: colorBlendMode,
        fit: fit,
        alignment: alignment,
        repeat: repeat,
        centerSlice: centerSlice,
        matchTextDirection: matchTextDirection,
        gaplessPlayback: gaplessPlayback,
        filterQuality: filterQuality,
      ),
    );
  static var image_network = MXFunctionInvoke(
    "image.network",
      ({
        String src,
        Key key,
        dynamic scale = 1.0,
        dynamic frameBuilder,
        dynamic loadingBuilder,
        dynamic errorBuilder,
        String semanticLabel,
        bool excludeFromSemantics = false,
        dynamic width,
        dynamic height,
        Color color,
        BlendMode colorBlendMode,
        BoxFit fit,
        AlignmentGeometry alignment,
        ImageRepeat repeat = ImageRepeat.noRepeat,
        Rect centerSlice,
        bool matchTextDirection = false,
        bool gaplessPlayback = false,
        FilterQuality filterQuality = FilterQuality.low,
        Map<String*, String> headers,
        int cacheWidth,
        int cacheHeight,
      }) =>
        Image.network(
        src,
        key: key,
        scale: scale?.toDouble(),
        frameBuilder: frameBuilder,
        loadingBuilder: loadingBuilder,
        errorBuilder: errorBuilder,
        semanticLabel: semanticLabel,
        excludeFromSemantics: excludeFromSemantics,
        width: width?.toDouble(),
        height: height?.toDouble(),
        color: color,
        colorBlendMode: colorBlendMode,
        fit: fit,
        alignment: alignment,
        repeat: repeat,
        centerSlice: centerSlice,
        matchTextDirection: matchTextDirection,
        gaplessPlayback: gaplessPlayback,
        filterQuality: filterQuality,
        headers: headers,
        cacheWidth: cacheWidth,
        cacheHeight: cacheHeight,
      ),
    );
  static var image_file = MXFunctionInvoke(
    "image.file",
      ({
        File file,
        Key key,
        dynamic scale = 1.0,
        dynamic frameBuilder,
        dynamic errorBuilder,
        String semanticLabel,
        bool excludeFromSemantics = false,
        dynamic width,
        dynamic height,
        Color color,
        BlendMode colorBlendMode,
        BoxFit fit,
        AlignmentGeometry alignment,
        ImageRepeat repeat = ImageRepeat.noRepeat,
        Rect centerSlice,
        bool matchTextDirection = false,
        bool gaplessPlayback = false,
        FilterQuality filterQuality = FilterQuality.low,
        int cacheWidth,
        int cacheHeight,
      }) =>
        Image.file(
        file,
        key: key,
        scale: scale?.toDouble(),
        frameBuilder: frameBuilder,
        errorBuilder: errorBuilder,
        semanticLabel: semanticLabel,
        excludeFromSemantics: excludeFromSemantics,
        width: width?.toDouble(),
        height: height?.toDouble(),
        color: color,
        colorBlendMode: colorBlendMode,
        fit: fit,
        alignment: alignment,
        repeat: repeat,
        centerSlice: centerSlice,
        matchTextDirection: matchTextDirection,
        gaplessPlayback: gaplessPlayback,
        filterQuality: filterQuality,
        cacheWidth: cacheWidth,
        cacheHeight: cacheHeight,
      ),
    );
  static var image_asset = MXFunctionInvoke(
    "image.asset",
      ({
        String name,
        Key key,
        AssetBundle bundle,
        dynamic frameBuilder,
        dynamic errorBuilder,
        String semanticLabel,
        bool excludeFromSemantics = false,
        dynamic scale,
        dynamic width,
        dynamic height,
        Color color,
        BlendMode colorBlendMode,
        BoxFit fit,
        AlignmentGeometry alignment,
        ImageRepeat repeat = ImageRepeat.noRepeat,
        Rect centerSlice,
        bool matchTextDirection = false,
        bool gaplessPlayback = false,
        String package,
        FilterQuality filterQuality = FilterQuality.low,
        int cacheWidth,
        int cacheHeight,
      }) =>
        Image.asset(
        name,
        key: key,
        bundle: bundle,
        frameBuilder: frameBuilder,
        errorBuilder: errorBuilder,
        semanticLabel: semanticLabel,
        excludeFromSemantics: excludeFromSemantics,
        scale: scale?.toDouble(),
        width: width?.toDouble(),
        height: height?.toDouble(),
        color: color,
        colorBlendMode: colorBlendMode,
        fit: fit,
        alignment: alignment,
        repeat: repeat,
        centerSlice: centerSlice,
        matchTextDirection: matchTextDirection,
        gaplessPlayback: gaplessPlayback,
        package: package,
        filterQuality: filterQuality,
        cacheWidth: cacheWidth,
        cacheHeight: cacheHeight,
      ),
    );
  static var image_memory = MXFunctionInvoke(
    "image.memory",
      ({
        Uint8List bytes,
        Key key,
        dynamic scale = 1.0,
        dynamic frameBuilder,
        dynamic errorBuilder,
        String semanticLabel,
        bool excludeFromSemantics = false,
        dynamic width,
        dynamic height,
        Color color,
        BlendMode colorBlendMode,
        BoxFit fit,
        AlignmentGeometry alignment,
        ImageRepeat repeat = ImageRepeat.noRepeat,
        Rect centerSlice,
        bool matchTextDirection = false,
        bool gaplessPlayback = false,
        FilterQuality filterQuality = FilterQuality.low,
        int cacheWidth,
        int cacheHeight,
      }) =>
        Image.memory(
        bytes,
        key: key,
        scale: scale?.toDouble(),
        frameBuilder: frameBuilder,
        errorBuilder: errorBuilder,
        semanticLabel: semanticLabel,
        excludeFromSemantics: excludeFromSemantics,
        width: width?.toDouble(),
        height: height?.toDouble(),
        color: color,
        colorBlendMode: colorBlendMode,
        fit: fit,
        alignment: alignment,
        repeat: repeat,
        centerSlice: centerSlice,
        matchTextDirection: matchTextDirection,
        gaplessPlayback: gaplessPlayback,
        filterQuality: filterQuality,
        cacheWidth: cacheWidth,
        cacheHeight: cacheHeight,
      ),
    );
  static var decoratedBox = MXFunctionInvoke(
      "DecoratedBox",
      ({
        Key key,
        Decoration decoration,
        DecorationPosition position = DecorationPosition.background,
        Widget child,
      }) =>
        DecoratedBox(
        key: key,
        decoration: decoration,
        position: position,
        child: child,
      ),
    );
  static var container = MXFunctionInvoke(
      "Container",
      ({
        Key key,
        AlignmentGeometry alignment,
        EdgeInsetsGeometry padding,
        Color color,
        Decoration decoration,
        Decoration foregroundDecoration,
        dynamic width,
        dynamic height,
        BoxConstraints constraints,
        EdgeInsetsGeometry margin,
        Matrix4 transform,
        Widget child,
        Clip clipBehavior = Clip.none,
      }) =>
        Container(
        key: key,
        alignment: alignment,
        padding: padding,
        color: color,
        decoration: decoration,
        foregroundDecoration: foregroundDecoration,
        width: width?.toDouble(),
        height: height?.toDouble(),
        constraints: constraints,
        margin: margin,
        transform: transform,
        child: child,
        clipBehavior: clipBehavior,
      ),
    );
  static var defaultWidgetsLocalizations = MXFunctionInvoke(
      "DefaultWidgetsLocalizations",
      ({
      }) =>
        DefaultWidgetsLocalizations(
      ),
    );
  static var localizations = MXFunctionInvoke(
      "Localizations",
      ({
        Key key,
        Locale locale,
        List<LocalizationsDelegate<dynamic>> delegates,
        Widget child,
      }) =>
        Localizations(
        key: key,
        locale: locale,
        delegates: delegates,
        child: child,
      ),
    );
  static var localizations_override = MXFunctionInvoke(
    "localizations.override",
      ({
        Key key,
        BuildContext context,
        Locale locale,
        List<LocalizationsDelegate<dynamic>> delegates,
        Widget child,
      }) =>
        Localizations.override(
        key: key,
        context: context,
        locale: locale,
        delegates: delegates,
        child: child,
      ),
    );
  static var focus = MXFunctionInvoke(
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
        bool skipTraversal,
        bool includeSemantics = true,
      }) =>
        Focus(
        key: key,
        child: child,
        focusNode: focusNode,
        autofocus: autofocus,
        onFocusChange: createValueChangedGenericClosure<bool>(focus.buildOwner, onFocusChange),
        onKey: onKey,
        debugLabel: debugLabel,
        canRequestFocus: canRequestFocus,
        skipTraversal: skipTraversal,
        includeSemantics: includeSemantics,
      ),
    );
  static var focusScope = MXFunctionInvoke(
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
        onFocusChange: createValueChangedGenericClosure<bool>(focusScope.buildOwner, onFocusChange),
        canRequestFocus: canRequestFocus,
        skipTraversal: skipTraversal,
        onKey: onKey,
        debugLabel: debugLabel,
      ),
    );
  static var sliverChildBuilderDelegate = MXFunctionInvoke(
      "SliverChildBuilderDelegate",
      ({
        dynamic builder,
        dynamic findChildIndexCallback,
        int childCount,
        bool addAutomaticKeepAlives = true,
        bool addRepaintBoundaries = true,
        bool addSemanticIndexes = true,
        dynamic semanticIndexCallback,
        int semanticIndexOffset = 0,
      }) =>
        SliverChildBuilderDelegate(
        builder,
        findChildIndexCallback: createGenericValueGenericClosure<int, Key>(sliverChildBuilderDelegate.buildOwner, findChildIndexCallback),
        childCount: childCount,
        addAutomaticKeepAlives: addAutomaticKeepAlives,
        addRepaintBoundaries: addRepaintBoundaries,
        addSemanticIndexes: addSemanticIndexes,
        semanticIndexCallback: semanticIndexCallback,
        semanticIndexOffset: semanticIndexOffset,
      ),
    );
  static var sliverChildListDelegate = MXFunctionInvoke(
      "SliverChildListDelegate",
      ({
        List<Widget> children,
        bool addAutomaticKeepAlives = true,
        bool addRepaintBoundaries = true,
        bool addSemanticIndexes = true,
        dynamic semanticIndexCallback,
        int semanticIndexOffset = 0,
      }) =>
        SliverChildListDelegate(
        children,
        addAutomaticKeepAlives: addAutomaticKeepAlives,
        addRepaintBoundaries: addRepaintBoundaries,
        addSemanticIndexes: addSemanticIndexes,
        semanticIndexCallback: semanticIndexCallback,
        semanticIndexOffset: semanticIndexOffset,
      ),
    );
  static var sliverChildListDelegate_fixed = MXFunctionInvoke(
    "sliverChildListDelegate.fixed",
      ({
        List<Widget> children,
        bool addAutomaticKeepAlives = true,
        bool addRepaintBoundaries = true,
        bool addSemanticIndexes = true,
        dynamic semanticIndexCallback,
        int semanticIndexOffset = 0,
      }) =>
        SliverChildListDelegate.fixed(
        children,
        addAutomaticKeepAlives: addAutomaticKeepAlives,
        addRepaintBoundaries: addRepaintBoundaries,
        addSemanticIndexes: addSemanticIndexes,
        semanticIndexCallback: semanticIndexCallback,
        semanticIndexOffset: semanticIndexOffset,
      ),
    );
  static var sliverList = MXFunctionInvoke(
      "SliverList",
      ({
        Key key,
        SliverChildDelegate delegate,
      }) =>
        SliverList(
        key: key,
        delegate: delegate,
      ),
    );
  static var sliverFixedExtentList = MXFunctionInvoke(
      "SliverFixedExtentList",
      ({
        Key key,
        SliverChildDelegate delegate,
        dynamic itemExtent,
      }) =>
        SliverFixedExtentList(
        key: key,
        delegate: delegate,
        itemExtent: itemExtent?.toDouble(),
      ),
    );
  static var sliverGrid = MXFunctionInvoke(
      "SliverGrid",
      ({
        Key key,
        SliverChildDelegate delegate,
        SliverGridDelegate gridDelegate,
      }) =>
        SliverGrid(
        key: key,
        delegate: delegate,
        gridDelegate: gridDelegate,
      ),
    );
  static var sliverGrid_count = MXFunctionInvoke(
    "sliverGrid.count",
      ({
        Key key,
        int crossAxisCount,
        dynamic mainAxisSpacing = 0.0,
        dynamic crossAxisSpacing = 0.0,
        dynamic childAspectRatio = 1.0,
        List<Widget> children,
      }) =>
        SliverGrid.count(
        key: key,
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: mainAxisSpacing?.toDouble(),
        crossAxisSpacing: crossAxisSpacing?.toDouble(),
        childAspectRatio: childAspectRatio?.toDouble(),
        children: children,
      ),
    );
  static var sliverGrid_extent = MXFunctionInvoke(
    "sliverGrid.extent",
      ({
        Key key,
        dynamic maxCrossAxisExtent,
        dynamic mainAxisSpacing = 0.0,
        dynamic crossAxisSpacing = 0.0,
        dynamic childAspectRatio = 1.0,
        List<Widget> children,
      }) =>
        SliverGrid.extent(
        key: key,
        maxCrossAxisExtent: maxCrossAxisExtent?.toDouble(),
        mainAxisSpacing: mainAxisSpacing?.toDouble(),
        crossAxisSpacing: crossAxisSpacing?.toDouble(),
        childAspectRatio: childAspectRatio?.toDouble(),
        children: children,
      ),
    );
  static var sliverMultiBoxAdaptorElement = MXFunctionInvoke(
      "SliverMultiBoxAdaptorElement",
      ({
        SliverMultiBoxAdaptorWidget widget,
      }) =>
        SliverMultiBoxAdaptorElement(
        widget,
      ),
    );
  static var sliverOpacity = MXFunctionInvoke(
      "SliverOpacity",
      ({
        Key key,
        dynamic opacity,
        bool alwaysIncludeSemantics = false,
        Widget sliver,
      }) =>
        SliverOpacity(
        key: key,
        opacity: opacity?.toDouble(),
        alwaysIncludeSemantics: alwaysIncludeSemantics,
        sliver: sliver,
      ),
    );
  static var sliverIgnorePointer = MXFunctionInvoke(
      "SliverIgnorePointer",
      ({
        Key key,
        bool ignoring = true,
        bool ignoringSemantics,
        Widget sliver,
      }) =>
        SliverIgnorePointer(
        key: key,
        ignoring: ignoring,
        ignoringSemantics: ignoringSemantics,
        sliver: sliver,
      ),
    );
  static var sliverOffstage = MXFunctionInvoke(
      "SliverOffstage",
      ({
        Key key,
        bool offstage = true,
        Widget sliver,
      }) =>
        SliverOffstage(
        key: key,
        offstage: offstage,
        sliver: sliver,
      ),
    );
  static var keepAlive = MXFunctionInvoke(
      "KeepAlive",
      ({
        Key key,
        bool keepAlive,
        Widget child,
      }) =>
        KeepAlive(
        key: key,
        keepAlive: keepAlive,
        child: child,
      ),
    );
  static var notificationListener = MXFunctionInvoke(
      "NotificationListener",
      ({
        Key key,
        Widget child,
        dynamic onNotification,
      }) =>
        NotificationListener(
        key: key,
        child: child,
        onNotification: createGenericValueGenericClosure<bool, TypeParameterType(NotificationListener::T>(notificationListener.buildOwner, onNotification),
      ),
    );
  static var layoutChangedNotification = MXFunctionInvoke(
      "LayoutChangedNotification",
      ({
      }) =>
        LayoutChangedNotification(
      ),
    );
  static var automaticKeepAlive = MXFunctionInvoke(
      "AutomaticKeepAlive",
      ({
        Key key,
        Widget child,
      }) =>
        AutomaticKeepAlive(
        key: key,
        child: child,
      ),
    );
  static var keepAliveNotification = MXFunctionInvoke(
      "KeepAliveNotification",
      ({
        Listenable handle,
      }) =>
        KeepAliveNotification(
        handle,
      ),
    );
  static var keepAliveHandle = MXFunctionInvoke(
      "KeepAliveHandle",
      ({
      }) =>
        KeepAliveHandle(
      ),
    );
  static var textEditingController = MXFunctionInvoke(
      "TextEditingController",
      ({
        String text,
      }) =>
        TextEditingController(
        text: text,
      ),
    );
  static var textEditingController_fromValue = MXFunctionInvoke(
    "textEditingController.fromValue",
      ({
        TextEditingValue value,
      }) =>
        TextEditingController.fromValue(
        value,
      ),
    );
  static var toolbarOptions = MXFunctionInvoke(
      "ToolbarOptions",
      ({
        bool copy = false,
        bool cut = false,
        bool paste = false,
        bool selectAll = false,
      }) =>
        ToolbarOptions(
        copy: copy,
        cut: cut,
        paste: paste,
        selectAll: selectAll,
      ),
    );
  static var editableText = MXFunctionInvoke(
      "EditableText",
      ({
        Key key,
        TextEditingController controller,
        FocusNode focusNode,
        bool readOnly = false,
        bool obscureText = false,
        bool autocorrect = true,
        SmartDashesType smartDashesType,
        SmartQuotesType smartQuotesType,
        bool enableSuggestions = true,
        TextStyle style,
        StrutStyle strutStyle,
        Color cursorColor,
        Color backgroundCursorColor,
        TextAlign textAlign = TextAlign.start,
        TextDirection textDirection,
        Locale locale,
        dynamic textScaleFactor,
        int maxLines = 1,
        int minLines,
        bool expands = false,
        bool forceLine = true,
        TextWidthBasis textWidthBasis = TextWidthBasis.parent,
        bool autofocus = false,
        bool showCursor,
        bool showSelectionHandles = false,
        Color selectionColor,
        TextSelectionControls selectionControls,
        TextInputType keyboardType,
        TextInputAction textInputAction,
        TextCapitalization textCapitalization = TextCapitalization.none,
        dynamic onChanged,
        dynamic onEditingComplete,
        dynamic onSubmitted,
        dynamic onSelectionChanged,
        dynamic onSelectionHandleTapped,
        List<TextInputFormatter> inputFormatters,
        bool rendererIgnoresPointer = false,
        dynamic cursorWidth = 2.0,
        Radius cursorRadius,
        bool cursorOpacityAnimates = false,
        Offset cursorOffset,
        bool paintCursorAboveText = false,
        BoxHeightStyle selectionHeightStyle = BoxHeightStyle.tight,
        BoxWidthStyle selectionWidthStyle = BoxWidthStyle.tight,
        EdgeInsets scrollPadding,
        Brightness keyboardAppearance = Brightness.light,
        DragStartBehavior dragStartBehavior = DragStartBehavior.start,
        bool enableInteractiveSelection = true,
        ScrollController scrollController,
        ScrollPhysics scrollPhysics,
        ToolbarOptions toolbarOptions,
      }) =>
        EditableText(
        key: key,
        controller: controller,
        focusNode: focusNode,
        readOnly: readOnly,
        obscureText: obscureText,
        autocorrect: autocorrect,
        smartDashesType: smartDashesType,
        smartQuotesType: smartQuotesType,
        enableSuggestions: enableSuggestions,
        style: style,
        strutStyle: strutStyle,
        cursorColor: cursorColor,
        backgroundCursorColor: backgroundCursorColor,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        textScaleFactor: textScaleFactor?.toDouble(),
        maxLines: maxLines,
        minLines: minLines,
        expands: expands,
        forceLine: forceLine,
        textWidthBasis: textWidthBasis,
        autofocus: autofocus,
        showCursor: showCursor,
        showSelectionHandles: showSelectionHandles,
        selectionColor: selectionColor,
        selectionControls: selectionControls,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        textCapitalization: textCapitalization,
        onChanged: createValueChangedGenericClosure<String>(editableText.buildOwner, onChanged),
        onEditingComplete: createVoidCallbackClosure(editableText.buildOwner, onEditingComplete),
        onSubmitted: createValueChangedGenericClosure<String>(editableText.buildOwner, onSubmitted),
        onSelectionChanged: createVoidCallbackClosure(editableText.buildOwner, onSelectionChanged),
        onSelectionHandleTapped: createVoidCallbackClosure(editableText.buildOwner, onSelectionHandleTapped),
        inputFormatters: inputFormatters,
        rendererIgnoresPointer: rendererIgnoresPointer,
        cursorWidth: cursorWidth?.toDouble(),
        cursorRadius: cursorRadius,
        cursorOpacityAnimates: cursorOpacityAnimates,
        cursorOffset: cursorOffset,
        paintCursorAboveText: paintCursorAboveText,
        selectionHeightStyle: selectionHeightStyle,
        selectionWidthStyle: selectionWidthStyle,
        scrollPadding: scrollPadding,
        keyboardAppearance: keyboardAppearance,
        dragStartBehavior: dragStartBehavior,
        enableInteractiveSelection: enableInteractiveSelection,
        scrollController: scrollController,
        scrollPhysics: scrollPhysics,
        toolbarOptions: toolbarOptions,
      ),
    );
  static var editableTextState = MXFunctionInvoke(
      "EditableTextState",
      ({
      }) =>
        EditableTextState(
      ),
    );
  static var traversalDirection = MXFunctionInvoke(
      "TraversalDirection",
      ({Map args}) => MXTraversalDirection.parse(args),
  );
  static var widgetOrderTraversalPolicy = MXFunctionInvoke(
      "WidgetOrderTraversalPolicy",
      ({
      }) =>
        WidgetOrderTraversalPolicy(
      ),
    );
  static var readingOrderTraversalPolicy = MXFunctionInvoke(
      "ReadingOrderTraversalPolicy",
      ({
      }) =>
        ReadingOrderTraversalPolicy(
      ),
    );
  static var numericFocusOrder = MXFunctionInvoke(
      "NumericFocusOrder",
      ({
        double order,
      }) =>
        NumericFocusOrder(
        order,
      ),
    );
  static var lexicalFocusOrder = MXFunctionInvoke(
      "LexicalFocusOrder",
      ({
        String order,
      }) =>
        LexicalFocusOrder(
        order,
      ),
    );
  static var orderedTraversalPolicy = MXFunctionInvoke(
      "OrderedTraversalPolicy",
      ({
        FocusTraversalPolicy secondary,
      }) =>
        OrderedTraversalPolicy(
        secondary: secondary,
      ),
    );
  static var focusTraversalOrder = MXFunctionInvoke(
      "FocusTraversalOrder",
      ({
        Key key,
        FocusOrder order,
        Widget child,
      }) =>
        FocusTraversalOrder(
        key: key,
        order: order,
        child: child,
      ),
    );
  static var focusTraversalGroup = MXFunctionInvoke(
      "FocusTraversalGroup",
      ({
        Key key,
        FocusTraversalPolicy policy,
        Widget child,
      }) =>
        FocusTraversalGroup(
        key: key,
        policy: policy,
        child: child,
      ),
    );
  static var requestFocusAction = MXFunctionInvoke(
      "RequestFocusAction",
      ({
      }) =>
        RequestFocusAction(
      ),
    );
  static var nextFocusAction = MXFunctionInvoke(
      "NextFocusAction",
      ({
      }) =>
        NextFocusAction(
      ),
    );
  static var previousFocusAction = MXFunctionInvoke(
      "PreviousFocusAction",
      ({
      }) =>
        PreviousFocusAction(
      ),
    );
  static var directionalFocusIntent = MXFunctionInvoke(
      "DirectionalFocusIntent",
      ({
        TraversalDirection direction,
        bool ignoreTextFields = true,
      }) =>
        DirectionalFocusIntent(
        direction,
        ignoreTextFields: ignoreTextFields,
      ),
    );
  static var directionalFocusAction = MXFunctionInvoke(
      "DirectionalFocusAction",
      ({
      }) =>
        DirectionalFocusAction(
      ),
    );
  static var bannerLocation = MXFunctionInvoke(
      "BannerLocation",
      ({Map args}) => MXBannerLocation.parse(args),
  );
  static var bannerPainter = MXFunctionInvoke(
      "BannerPainter",
      ({
        String message,
        TextDirection textDirection,
        BannerLocation location,
        TextDirection layoutDirection,
        Color color,
        TextStyle textStyle,
      }) =>
        BannerPainter(
        message: message,
        textDirection: textDirection,
        location: location,
        layoutDirection: layoutDirection,
        color: color,
        textStyle: textStyle,
      ),
    );
  static var banner = MXFunctionInvoke(
      "Banner",
      ({
        Key key,
        Widget child,
        String message,
        TextDirection textDirection,
        BannerLocation location,
        TextDirection layoutDirection,
        Color color,
        TextStyle textStyle,
      }) =>
        Banner(
        key: key,
        child: child,
        message: message,
        textDirection: textDirection,
        location: location,
        layoutDirection: layoutDirection,
        color: color,
        textStyle: textStyle,
      ),
    );
  static var checkedModeBanner = MXFunctionInvoke(
      "CheckedModeBanner",
      ({
        Key key,
        Widget child,
      }) =>
        CheckedModeBanner(
        key: key,
        child: child,
      ),
    );
  static var widgetsApp = MXFunctionInvoke(
      "WidgetsApp",
      ({
        Key key,
        GlobalKey<NavigatorState> navigatorKey,
        dynamic onGenerateRoute,
        dynamic onGenerateInitialRoutes,
        dynamic onUnknownRoute,
        List<NavigatorObserver> navigatorObservers,
        String initialRoute,
        dynamic pageRouteBuilder,
        Widget home,
        Map<String*, Widget* Function(BuildContext> routes,
        dynamic builder,
        String title = ,
        dynamic onGenerateTitle,
        TextStyle textStyle,
        Color color,
        Locale locale,
        Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates,
        dynamic localeListResolutionCallback,
        dynamic localeResolutionCallback,
        Iterable<Locale> supportedLocales,
        bool showPerformanceOverlay = false,
        bool checkerboardRasterCacheImages = false,
        bool checkerboardOffscreenLayers = false,
        bool showSemanticsDebugger = false,
        bool debugShowWidgetInspector = false,
        bool debugShowCheckedModeBanner = true,
        dynamic inspectorSelectButtonBuilder,
        Map<LogicalKeySet*, Intent> shortcuts,
        Map<LocalKey*, Action* Function()> actions,
      }) =>
        WidgetsApp(
        key: key,
        navigatorKey: navigatorKey,
        onGenerateRoute: createGenericValueGenericClosure<Route<dynamic>, RouteSettings>(widgetsApp.buildOwner, onGenerateRoute),
        onGenerateInitialRoutes: createGenericValueGenericClosure<List<Route<dynamic>>, String>(widgetsApp.buildOwner, onGenerateInitialRoutes),
        onUnknownRoute: createGenericValueGenericClosure<Route<dynamic>, RouteSettings>(widgetsApp.buildOwner, onUnknownRoute),
        navigatorObservers: navigatorObservers,
        initialRoute: initialRoute,
        pageRouteBuilder: pageRouteBuilder,
        home: home,
        routes: routes,
        builder: builder,
        title: title,
        onGenerateTitle: createGenericValueGenericClosure<String, BuildContext>(widgetsApp.buildOwner, onGenerateTitle),
        textStyle: textStyle,
        color: color,
        locale: locale,
        localizationsDelegates: localizationsDelegates,
        localeListResolutionCallback: localeListResolutionCallback,
        localeResolutionCallback: localeResolutionCallback,
        supportedLocales: supportedLocales,
        showPerformanceOverlay: showPerformanceOverlay,
        checkerboardRasterCacheImages: checkerboardRasterCacheImages,
        checkerboardOffscreenLayers: checkerboardOffscreenLayers,
        showSemanticsDebugger: showSemanticsDebugger,
        debugShowWidgetInspector: debugShowWidgetInspector,
        debugShowCheckedModeBanner: debugShowCheckedModeBanner,
        inspectorSelectButtonBuilder: inspectorSelectButtonBuilder,
        shortcuts: shortcuts,
        actions: actions,
      ),
    );
  static var renderObjectToWidgetAdapter = MXFunctionInvoke(
      "RenderObjectToWidgetAdapter",
      ({
        Widget child,
        RenderObjectWithChildMixin<RenderObjectToWidgetAdapter::T> container,
        String debugShortDescription,
      }) =>
        RenderObjectToWidgetAdapter(
        child: child,
        container: container,
        debugShortDescription: debugShortDescription,
      ),
    );
  static var renderObjectToWidgetElement = MXFunctionInvoke(
      "RenderObjectToWidgetElement",
      ({
        RenderObjectToWidgetAdapter<RenderObjectToWidgetElement::T> widget,
      }) =>
        RenderObjectToWidgetElement(
        widget,
      ),
    );
  static var widgetsFlutterBinding = MXFunctionInvoke(
      "WidgetsFlutterBinding",
      ({
      }) =>
        WidgetsFlutterBinding(
      ),
    );
  static var focusAttachment_ = MXFunctionInvoke(
    "focusAttachment.",
      ({
        FocusNode _node,
      }) =>
        FocusAttachment.(
        _node,
      ),
    );
  static var unfocusDisposition = MXFunctionInvoke(
      "UnfocusDisposition",
      ({Map args}) => MXUnfocusDisposition.parse(args),
  );
  static var focusNode = MXFunctionInvoke(
      "FocusNode",
      ({
        String debugLabel,
        dynamic onKey,
        bool skipTraversal = false,
        bool canRequestFocus = true,
      }) =>
        FocusNode(
        debugLabel: debugLabel,
        onKey: onKey,
        skipTraversal: skipTraversal,
        canRequestFocus: canRequestFocus,
      ),
    );
  static var focusScopeNode = MXFunctionInvoke(
      "FocusScopeNode",
      ({
        String debugLabel,
        dynamic onKey,
        bool skipTraversal = false,
        bool canRequestFocus = true,
      }) =>
        FocusScopeNode(
        debugLabel: debugLabel,
        onKey: onKey,
        skipTraversal: skipTraversal,
        canRequestFocus: canRequestFocus,
      ),
    );
  static var focusHighlightMode = MXFunctionInvoke(
      "FocusHighlightMode",
      ({Map args}) => MXFocusHighlightMode.parse(args),
  );
  static var focusHighlightStrategy = MXFunctionInvoke(
      "FocusHighlightStrategy",
      ({Map args}) => MXFocusHighlightStrategy.parse(args),
  );
  static var focusManager = MXFunctionInvoke(
      "FocusManager",
      ({
      }) =>
        FocusManager(
      ),
    );
  static var uniqueKey = MXFunctionInvoke(
      "UniqueKey",
      ({
      }) =>
        UniqueKey(
      ),
    );
  static var objectKey = MXFunctionInvoke(
      "ObjectKey",
      ({
        Object value,
      }) =>
        ObjectKey(
        value,
      ),
    );
  static var labeledGlobalKey = MXFunctionInvoke(
      "LabeledGlobalKey",
      ({
        String _debugLabel,
      }) =>
        LabeledGlobalKey(
        _debugLabel,
      ),
    );
  static var globalObjectKey = MXFunctionInvoke(
      "GlobalObjectKey",
      ({
        Object value,
      }) =>
        GlobalObjectKey(
        value,
      ),
    );
  static var typeMatcher = MXFunctionInvoke(
      "TypeMatcher",
      ({
      }) =>
        TypeMatcher(
      ),
    );
  static var buildOwner = MXFunctionInvoke(
      "BuildOwner",
      ({
        dynamic onBuildScheduled,
      }) =>
        BuildOwner(
        onBuildScheduled: createVoidCallbackClosure(buildOwner.buildOwner, onBuildScheduled),
      ),
    );
  static var errorWidget = MXFunctionInvoke(
      "ErrorWidget",
      ({
        Object exception,
      }) =>
        ErrorWidget(
        exception,
      ),
    );
  static var errorWidget_withDetails = MXFunctionInvoke(
    "errorWidget.withDetails",
      ({
        String message = ,
        FlutterError error,
      }) =>
        ErrorWidget.withDetails(
        message: message,
        error: error,
      ),
    );
  static var statelessElement = MXFunctionInvoke(
      "StatelessElement",
      ({
        StatelessWidget widget,
      }) =>
        StatelessElement(
        widget,
      ),
    );
  static var statefulElement = MXFunctionInvoke(
      "StatefulElement",
      ({
        StatefulWidget widget,
      }) =>
        StatefulElement(
        widget,
      ),
    );
  static var parentDataElement = MXFunctionInvoke(
      "ParentDataElement",
      ({
        ParentDataWidget<ParentDataElement::T> widget,
      }) =>
        ParentDataElement(
        widget,
      ),
    );
  static var leafRenderObjectElement = MXFunctionInvoke(
      "LeafRenderObjectElement",
      ({
        LeafRenderObjectWidget widget,
      }) =>
        LeafRenderObjectElement(
        widget,
      ),
    );
  static var singleChildRenderObjectElement = MXFunctionInvoke(
      "SingleChildRenderObjectElement",
      ({
        SingleChildRenderObjectWidget widget,
      }) =>
        SingleChildRenderObjectElement(
        widget,
      ),
    );
  static var multiChildRenderObjectElement = MXFunctionInvoke(
      "MultiChildRenderObjectElement",
      ({
        MultiChildRenderObjectWidget widget,
      }) =>
        MultiChildRenderObjectElement(
        widget,
      ),
    );
  static var debugCreator = MXFunctionInvoke(
      "DebugCreator",
      ({
        Element element,
      }) =>
        DebugCreator(
        element,
      ),
    );
  static var indexedSlot = MXFunctionInvoke(
      "IndexedSlot",
      ({
        int index,
        dynamic value,
      }) =>
        IndexedSlot(
        index,
        value,
      ),
    );
  static var directionality = MXFunctionInvoke(
      "Directionality",
      ({
        Key key,
        TextDirection textDirection,
        Widget child,
      }) =>
        Directionality(
        key: key,
        textDirection: textDirection,
        child: child,
      ),
    );
  static var opacity = MXFunctionInvoke(
      "Opacity",
      ({
        Key key,
        dynamic opacity,
        bool alwaysIncludeSemantics = false,
        Widget child,
      }) =>
        Opacity(
        key: key,
        opacity: opacity?.toDouble(),
        alwaysIncludeSemantics: alwaysIncludeSemantics,
        child: child,
      ),
    );
  static var shaderMask = MXFunctionInvoke(
      "ShaderMask",
      ({
        Key key,
        dynamic shaderCallback,
        BlendMode blendMode = BlendMode.modulate,
        Widget child,
      }) =>
        ShaderMask(
        key: key,
        shaderCallback: createGenericValueGenericClosure<Shader, Rect>(shaderMask.buildOwner, shaderCallback),
        blendMode: blendMode,
        child: child,
      ),
    );
  static var backdropFilter = MXFunctionInvoke(
      "BackdropFilter",
      ({
        Key key,
        ImageFilter filter,
        Widget child,
      }) =>
        BackdropFilter(
        key: key,
        filter: filter,
        child: child,
      ),
    );
  static var customPaint = MXFunctionInvoke(
      "CustomPaint",
      ({
        Key key,
        CustomPainter painter,
        CustomPainter foregroundPainter,
        Size size,
        bool isComplex = false,
        bool willChange = false,
        Widget child,
      }) =>
        CustomPaint(
        key: key,
        painter: painter,
        foregroundPainter: foregroundPainter,
        size: size,
        isComplex: isComplex,
        willChange: willChange,
        child: child,
      ),
    );
  static var clipRect = MXFunctionInvoke(
      "ClipRect",
      ({
        Key key,
        CustomClipper<Rect> clipper,
        Clip clipBehavior = Clip.hardEdge,
        Widget child,
      }) =>
        ClipRect(
        key: key,
        clipper: clipper,
        clipBehavior: clipBehavior,
        child: child,
      ),
    );
  static var clipRRect = MXFunctionInvoke(
      "ClipRRect",
      ({
        Key key,
        BorderRadius borderRadius,
        CustomClipper<RRect> clipper,
        Clip clipBehavior = Clip.antiAlias,
        Widget child,
      }) =>
        ClipRRect(
        key: key,
        borderRadius: borderRadius,
        clipper: clipper,
        clipBehavior: clipBehavior,
        child: child,
      ),
    );
  static var clipOval = MXFunctionInvoke(
      "ClipOval",
      ({
        Key key,
        CustomClipper<Rect> clipper,
        Clip clipBehavior = Clip.antiAlias,
        Widget child,
      }) =>
        ClipOval(
        key: key,
        clipper: clipper,
        clipBehavior: clipBehavior,
        child: child,
      ),
    );
  static var clipPath = MXFunctionInvoke(
      "ClipPath",
      ({
        Key key,
        CustomClipper<Path> clipper,
        Clip clipBehavior = Clip.antiAlias,
        Widget child,
      }) =>
        ClipPath(
        key: key,
        clipper: clipper,
        clipBehavior: clipBehavior,
        child: child,
      ),
    );
  static var physicalModel = MXFunctionInvoke(
      "PhysicalModel",
      ({
        Key key,
        BoxShape shape = BoxShape.rectangle,
        Clip clipBehavior = Clip.none,
        BorderRadius borderRadius,
        dynamic elevation = 0.0,
        Color color,
        Color shadowColor,
        Widget child,
      }) =>
        PhysicalModel(
        key: key,
        shape: shape,
        clipBehavior: clipBehavior,
        borderRadius: borderRadius,
        elevation: elevation?.toDouble(),
        color: color,
        shadowColor: shadowColor,
        child: child,
      ),
    );
  static var physicalShape = MXFunctionInvoke(
      "PhysicalShape",
      ({
        Key key,
        CustomClipper<Path> clipper,
        Clip clipBehavior = Clip.none,
        dynamic elevation = 0.0,
        Color color,
        Color shadowColor,
        Widget child,
      }) =>
        PhysicalShape(
        key: key,
        clipper: clipper,
        clipBehavior: clipBehavior,
        elevation: elevation?.toDouble(),
        color: color,
        shadowColor: shadowColor,
        child: child,
      ),
    );
  static var transform = MXFunctionInvoke(
      "Transform",
      ({
        Key key,
        Matrix4 transform,
        Offset origin,
        AlignmentGeometry alignment,
        bool transformHitTests = true,
        Widget child,
      }) =>
        Transform(
        key: key,
        transform: transform,
        origin: origin,
        alignment: alignment,
        transformHitTests: transformHitTests,
        child: child,
      ),
    );
  static var transform_rotate = MXFunctionInvoke(
    "transform.rotate",
      ({
        Key key,
        dynamic angle,
        Offset origin,
        AlignmentGeometry alignment,
        bool transformHitTests = true,
        Widget child,
      }) =>
        Transform.rotate(
        key: key,
        angle: angle?.toDouble(),
        origin: origin,
        alignment: alignment,
        transformHitTests: transformHitTests,
        child: child,
      ),
    );
  static var transform_translate = MXFunctionInvoke(
    "transform.translate",
      ({
        Key key,
        Offset offset,
        bool transformHitTests = true,
        Widget child,
      }) =>
        Transform.translate(
        key: key,
        offset: offset,
        transformHitTests: transformHitTests,
        child: child,
      ),
    );
  static var transform_scale = MXFunctionInvoke(
    "transform.scale",
      ({
        Key key,
        dynamic scale,
        Offset origin,
        AlignmentGeometry alignment,
        bool transformHitTests = true,
        Widget child,
      }) =>
        Transform.scale(
        key: key,
        scale: scale?.toDouble(),
        origin: origin,
        alignment: alignment,
        transformHitTests: transformHitTests,
        child: child,
      ),
    );
  static var compositedTransformTarget = MXFunctionInvoke(
      "CompositedTransformTarget",
      ({
        Key key,
        LayerLink link,
        Widget child,
      }) =>
        CompositedTransformTarget(
        key: key,
        link: link,
        child: child,
      ),
    );
  static var compositedTransformFollower = MXFunctionInvoke(
      "CompositedTransformFollower",
      ({
        Key key,
        LayerLink link,
        bool showWhenUnlinked = true,
        Offset offset,
        Widget child,
      }) =>
        CompositedTransformFollower(
        key: key,
        link: link,
        showWhenUnlinked: showWhenUnlinked,
        offset: offset,
        child: child,
      ),
    );
  static var fittedBox = MXFunctionInvoke(
      "FittedBox",
      ({
        Key key,
        BoxFit fit = BoxFit.contain,
        AlignmentGeometry alignment,
        Widget child,
      }) =>
        FittedBox(
        key: key,
        fit: fit,
        alignment: alignment,
        child: child,
      ),
    );
  static var fractionalTranslation = MXFunctionInvoke(
      "FractionalTranslation",
      ({
        Key key,
        Offset translation,
        bool transformHitTests = true,
        Widget child,
      }) =>
        FractionalTranslation(
        key: key,
        translation: translation,
        transformHitTests: transformHitTests,
        child: child,
      ),
    );
  static var rotatedBox = MXFunctionInvoke(
      "RotatedBox",
      ({
        Key key,
        int quarterTurns,
        Widget child,
      }) =>
        RotatedBox(
        key: key,
        quarterTurns: quarterTurns,
        child: child,
      ),
    );
  static var padding = MXFunctionInvoke(
      "Padding",
      ({
        Key key,
        EdgeInsetsGeometry padding,
        Widget child,
      }) =>
        Padding(
        key: key,
        padding: padding,
        child: child,
      ),
    );
  static var align = MXFunctionInvoke(
      "Align",
      ({
        Key key,
        AlignmentGeometry alignment,
        dynamic widthFactor,
        dynamic heightFactor,
        Widget child,
      }) =>
        Align(
        key: key,
        alignment: alignment,
        widthFactor: widthFactor?.toDouble(),
        heightFactor: heightFactor?.toDouble(),
        child: child,
      ),
    );
  static var center = MXFunctionInvoke(
      "Center",
      ({
        Key key,
        dynamic widthFactor,
        dynamic heightFactor,
        Widget child,
      }) =>
        Center(
        key: key,
        widthFactor: widthFactor?.toDouble(),
        heightFactor: heightFactor?.toDouble(),
        child: child,
      ),
    );
  static var customSingleChildLayout = MXFunctionInvoke(
      "CustomSingleChildLayout",
      ({
        Key key,
        SingleChildLayoutDelegate delegate,
        Widget child,
      }) =>
        CustomSingleChildLayout(
        key: key,
        delegate: delegate,
        child: child,
      ),
    );
  static var layoutId = MXFunctionInvoke(
      "LayoutId",
      ({
        Key key,
        Object id,
        Widget child,
      }) =>
        LayoutId(
        key: key,
        id: id,
        child: child,
      ),
    );
  static var customMultiChildLayout = MXFunctionInvoke(
      "CustomMultiChildLayout",
      ({
        Key key,
        MultiChildLayoutDelegate delegate,
        List<Widget> children,
      }) =>
        CustomMultiChildLayout(
        key: key,
        delegate: delegate,
        children: children,
      ),
    );
  static var sizedBox = MXFunctionInvoke(
      "SizedBox",
      ({
        Key key,
        dynamic width,
        dynamic height,
        Widget child,
      }) =>
        SizedBox(
        key: key,
        width: width?.toDouble(),
        height: height?.toDouble(),
        child: child,
      ),
    );
  static var sizedBox_expand = MXFunctionInvoke(
    "sizedBox.expand",
      ({
        Key key,
        Widget child,
      }) =>
        SizedBox.expand(
        key: key,
        child: child,
      ),
    );
  static var sizedBox_shrink = MXFunctionInvoke(
    "sizedBox.shrink",
      ({
        Key key,
        Widget child,
      }) =>
        SizedBox.shrink(
        key: key,
        child: child,
      ),
    );
  static var sizedBox_fromSize = MXFunctionInvoke(
    "sizedBox.fromSize",
      ({
        Key key,
        Widget child,
        Size size,
      }) =>
        SizedBox.fromSize(
        key: key,
        child: child,
        size: size,
      ),
    );
  static var constrainedBox = MXFunctionInvoke(
      "ConstrainedBox",
      ({
        Key key,
        BoxConstraints constraints,
        Widget child,
      }) =>
        ConstrainedBox(
        key: key,
        constraints: constraints,
        child: child,
      ),
    );
  static var unconstrainedBox = MXFunctionInvoke(
      "UnconstrainedBox",
      ({
        Key key,
        Widget child,
        TextDirection textDirection,
        AlignmentGeometry alignment,
        Axis constrainedAxis,
      }) =>
        UnconstrainedBox(
        key: key,
        child: child,
        textDirection: textDirection,
        alignment: alignment,
        constrainedAxis: constrainedAxis,
      ),
    );
  static var fractionallySizedBox = MXFunctionInvoke(
      "FractionallySizedBox",
      ({
        Key key,
        AlignmentGeometry alignment,
        dynamic widthFactor,
        dynamic heightFactor,
        Widget child,
      }) =>
        FractionallySizedBox(
        key: key,
        alignment: alignment,
        widthFactor: widthFactor?.toDouble(),
        heightFactor: heightFactor?.toDouble(),
        child: child,
      ),
    );
  static var limitedBox = MXFunctionInvoke(
      "LimitedBox",
      ({
        Key key,
        dynamic maxWidth = Infinity,
        dynamic maxHeight = Infinity,
        Widget child,
      }) =>
        LimitedBox(
        key: key,
        maxWidth: maxWidth?.toDouble(),
        maxHeight: maxHeight?.toDouble(),
        child: child,
      ),
    );
  static var overflowBox = MXFunctionInvoke(
      "OverflowBox",
      ({
        Key key,
        AlignmentGeometry alignment,
        dynamic minWidth,
        dynamic maxWidth,
        dynamic minHeight,
        dynamic maxHeight,
        Widget child,
      }) =>
        OverflowBox(
        key: key,
        alignment: alignment,
        minWidth: minWidth?.toDouble(),
        maxWidth: maxWidth?.toDouble(),
        minHeight: minHeight?.toDouble(),
        maxHeight: maxHeight?.toDouble(),
        child: child,
      ),
    );
  static var sizedOverflowBox = MXFunctionInvoke(
      "SizedOverflowBox",
      ({
        Key key,
        Size size,
        AlignmentGeometry alignment,
        Widget child,
      }) =>
        SizedOverflowBox(
        key: key,
        size: size,
        alignment: alignment,
        child: child,
      ),
    );
  static var offstage = MXFunctionInvoke(
      "Offstage",
      ({
        Key key,
        bool offstage = true,
        Widget child,
      }) =>
        Offstage(
        key: key,
        offstage: offstage,
        child: child,
      ),
    );
  static var aspectRatio = MXFunctionInvoke(
      "AspectRatio",
      ({
        Key key,
        dynamic aspectRatio,
        Widget child,
      }) =>
        AspectRatio(
        key: key,
        aspectRatio: aspectRatio?.toDouble(),
        child: child,
      ),
    );
  static var intrinsicWidth = MXFunctionInvoke(
      "IntrinsicWidth",
      ({
        Key key,
        dynamic stepWidth,
        dynamic stepHeight,
        Widget child,
      }) =>
        IntrinsicWidth(
        key: key,
        stepWidth: stepWidth?.toDouble(),
        stepHeight: stepHeight?.toDouble(),
        child: child,
      ),
    );
  static var intrinsicHeight = MXFunctionInvoke(
      "IntrinsicHeight",
      ({
        Key key,
        Widget child,
      }) =>
        IntrinsicHeight(
        key: key,
        child: child,
      ),
    );
  static var baseline = MXFunctionInvoke(
      "Baseline",
      ({
        Key key,
        dynamic baseline,
        TextBaseline baselineType,
        Widget child,
      }) =>
        Baseline(
        key: key,
        baseline: baseline?.toDouble(),
        baselineType: baselineType,
        child: child,
      ),
    );
  static var sliverToBoxAdapter = MXFunctionInvoke(
      "SliverToBoxAdapter",
      ({
        Key key,
        Widget child,
      }) =>
        SliverToBoxAdapter(
        key: key,
        child: child,
      ),
    );
  static var sliverPadding = MXFunctionInvoke(
      "SliverPadding",
      ({
        Key key,
        EdgeInsetsGeometry padding,
        Widget sliver,
      }) =>
        SliverPadding(
        key: key,
        padding: padding,
        sliver: sliver,
      ),
    );
  static var listBody = MXFunctionInvoke(
      "ListBody",
      ({
        Key key,
        Axis mainAxis = Axis.vertical,
        bool reverse = false,
        List<Widget> children,
      }) =>
        ListBody(
        key: key,
        mainAxis: mainAxis,
        reverse: reverse,
        children: children,
      ),
    );
  static var stack = MXFunctionInvoke(
      "Stack",
      ({
        Key key,
        AlignmentGeometry alignment,
        TextDirection textDirection,
        StackFit fit = StackFit.loose,
        Overflow overflow = Overflow.clip,
        List<Widget> children,
      }) =>
        Stack(
        key: key,
        alignment: alignment,
        textDirection: textDirection,
        fit: fit,
        overflow: overflow,
        children: children,
      ),
    );
  static var indexedStack = MXFunctionInvoke(
      "IndexedStack",
      ({
        Key key,
        AlignmentGeometry alignment,
        TextDirection textDirection,
        StackFit sizing = StackFit.loose,
        int index = 0,
        List<Widget> children,
      }) =>
        IndexedStack(
        key: key,
        alignment: alignment,
        textDirection: textDirection,
        sizing: sizing,
        index: index,
        children: children,
      ),
    );
  static var positioned = MXFunctionInvoke(
      "Positioned",
      ({
        Key key,
        dynamic left,
        dynamic top,
        dynamic right,
        dynamic bottom,
        dynamic width,
        dynamic height,
        Widget child,
      }) =>
        Positioned(
        key: key,
        left: left?.toDouble(),
        top: top?.toDouble(),
        right: right?.toDouble(),
        bottom: bottom?.toDouble(),
        width: width?.toDouble(),
        height: height?.toDouble(),
        child: child,
      ),
    );
  static var positioned_directional = MXFunctionInvoke(
    "positioned.directional",
      ({
        Key key,
        TextDirection textDirection,
        dynamic start,
        dynamic top,
        dynamic end,
        dynamic bottom,
        dynamic width,
        dynamic height,
        Widget child,
      }) =>
        Positioned.directional(
        key: key,
        textDirection: textDirection,
        start: start?.toDouble(),
        top: top?.toDouble(),
        end: end?.toDouble(),
        bottom: bottom?.toDouble(),
        width: width?.toDouble(),
        height: height?.toDouble(),
        child: child,
      ),
    );
  static var positioned_fromRect = MXFunctionInvoke(
    "positioned.fromRect",
      ({
        Key key,
        Rect rect,
        Widget child,
      }) =>
        Positioned.fromRect(
        key: key,
        rect: rect,
        child: child,
      ),
    );
  static var positioned_fromRelativeRect = MXFunctionInvoke(
    "positioned.fromRelativeRect",
      ({
        Key key,
        RelativeRect rect,
        Widget child,
      }) =>
        Positioned.fromRelativeRect(
        key: key,
        rect: rect,
        child: child,
      ),
    );
  static var positioned_fill = MXFunctionInvoke(
    "positioned.fill",
      ({
        Key key,
        dynamic left = 0.0,
        dynamic top = 0.0,
        dynamic right = 0.0,
        dynamic bottom = 0.0,
        Widget child,
      }) =>
        Positioned.fill(
        key: key,
        left: left?.toDouble(),
        top: top?.toDouble(),
        right: right?.toDouble(),
        bottom: bottom?.toDouble(),
        child: child,
      ),
    );
  static var positionedDirectional = MXFunctionInvoke(
      "PositionedDirectional",
      ({
        Key key,
        dynamic start,
        dynamic top,
        dynamic end,
        dynamic bottom,
        dynamic width,
        dynamic height,
        Widget child,
      }) =>
        PositionedDirectional(
        key: key,
        start: start?.toDouble(),
        top: top?.toDouble(),
        end: end?.toDouble(),
        bottom: bottom?.toDouble(),
        width: width?.toDouble(),
        height: height?.toDouble(),
        child: child,
      ),
    );
  static var flex = MXFunctionInvoke(
      "Flex",
      ({
        Key key,
        Axis direction,
        MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
        MainAxisSize mainAxisSize = MainAxisSize.max,
        CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
        TextDirection textDirection,
        VerticalDirection verticalDirection = VerticalDirection.down,
        TextBaseline textBaseline,
        List<Widget> children,
      }) =>
        Flex(
        key: key,
        direction: direction,
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        crossAxisAlignment: crossAxisAlignment,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        textBaseline: textBaseline,
        children: children,
      ),
    );
  static var row = MXFunctionInvoke(
      "Row",
      ({
        Key key,
        MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
        MainAxisSize mainAxisSize = MainAxisSize.max,
        CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
        TextDirection textDirection,
        VerticalDirection verticalDirection = VerticalDirection.down,
        TextBaseline textBaseline,
        List<Widget> children,
      }) =>
        Row(
        key: key,
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        crossAxisAlignment: crossAxisAlignment,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        textBaseline: textBaseline,
        children: children,
      ),
    );
  static var column = MXFunctionInvoke(
      "Column",
      ({
        Key key,
        MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
        MainAxisSize mainAxisSize = MainAxisSize.max,
        CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
        TextDirection textDirection,
        VerticalDirection verticalDirection = VerticalDirection.down,
        TextBaseline textBaseline,
        List<Widget> children,
      }) =>
        Column(
        key: key,
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        crossAxisAlignment: crossAxisAlignment,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        textBaseline: textBaseline,
        children: children,
      ),
    );
  static var flexible = MXFunctionInvoke(
      "Flexible",
      ({
        Key key,
        int flex = 1,
        FlexFit fit = FlexFit.loose,
        Widget child,
      }) =>
        Flexible(
        key: key,
        flex: flex,
        fit: fit,
        child: child,
      ),
    );
  static var expanded = MXFunctionInvoke(
      "Expanded",
      ({
        Key key,
        int flex = 1,
        Widget child,
      }) =>
        Expanded(
        key: key,
        flex: flex,
        child: child,
      ),
    );
  static var wrap = MXFunctionInvoke(
      "Wrap",
      ({
        Key key,
        Axis direction = Axis.horizontal,
        WrapAlignment alignment = WrapAlignment.start,
        dynamic spacing = 0.0,
        WrapAlignment runAlignment = WrapAlignment.start,
        dynamic runSpacing = 0.0,
        WrapCrossAlignment crossAxisAlignment = WrapCrossAlignment.start,
        TextDirection textDirection,
        VerticalDirection verticalDirection = VerticalDirection.down,
        List<Widget> children,
      }) =>
        Wrap(
        key: key,
        direction: direction,
        alignment: alignment,
        spacing: spacing?.toDouble(),
        runAlignment: runAlignment,
        runSpacing: runSpacing?.toDouble(),
        crossAxisAlignment: crossAxisAlignment,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        children: children,
      ),
    );
  static var flow = MXFunctionInvoke(
      "Flow",
      ({
        Key key,
        FlowDelegate delegate,
        List<Widget> children,
      }) =>
        Flow(
        key: key,
        delegate: delegate,
        children: children,
      ),
    );
  static var flow_unwrapped = MXFunctionInvoke(
    "flow.unwrapped",
      ({
        Key key,
        FlowDelegate delegate,
        List<Widget> children,
      }) =>
        Flow.unwrapped(
        key: key,
        delegate: delegate,
        children: children,
      ),
    );
  static var richText = MXFunctionInvoke(
      "RichText",
      ({
        Key key,
        InlineSpan text,
        TextAlign textAlign = TextAlign.start,
        TextDirection textDirection,
        bool softWrap = true,
        TextOverflow overflow = TextOverflow.clip,
        dynamic textScaleFactor = 1.0,
        int maxLines,
        Locale locale,
        StrutStyle strutStyle,
        TextWidthBasis textWidthBasis = TextWidthBasis.parent,
        TextHeightBehavior textHeightBehavior,
      }) =>
        RichText(
        key: key,
        text: text,
        textAlign: textAlign,
        textDirection: textDirection,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor?.toDouble(),
        maxLines: maxLines,
        locale: locale,
        strutStyle: strutStyle,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior,
      ),
    );
  static var rawImage = MXFunctionInvoke(
      "RawImage",
      ({
        Key key,
        Image image,
        dynamic width,
        dynamic height,
        dynamic scale = 1.0,
        Color color,
        BlendMode colorBlendMode,
        BoxFit fit,
        AlignmentGeometry alignment,
        ImageRepeat repeat = ImageRepeat.noRepeat,
        Rect centerSlice,
        bool matchTextDirection = false,
        bool invertColors = false,
        FilterQuality filterQuality = FilterQuality.low,
      }) =>
        RawImage(
        key: key,
        image: image,
        width: width?.toDouble(),
        height: height?.toDouble(),
        scale: scale?.toDouble(),
        color: color,
        colorBlendMode: colorBlendMode,
        fit: fit,
        alignment: alignment,
        repeat: repeat,
        centerSlice: centerSlice,
        matchTextDirection: matchTextDirection,
        invertColors: invertColors,
        filterQuality: filterQuality,
      ),
    );
  static var defaultAssetBundle = MXFunctionInvoke(
      "DefaultAssetBundle",
      ({
        Key key,
        AssetBundle bundle,
        Widget child,
      }) =>
        DefaultAssetBundle(
        key: key,
        bundle: bundle,
        child: child,
      ),
    );
  static var widgetToRenderBoxAdapter = MXFunctionInvoke(
      "WidgetToRenderBoxAdapter",
      ({
        RenderBox renderBox,
        dynamic onBuild,
      }) =>
        WidgetToRenderBoxAdapter(
        renderBox: renderBox,
        onBuild: createVoidCallbackClosure(widgetToRenderBoxAdapter.buildOwner, onBuild),
      ),
    );
  static var listener = MXFunctionInvoke(
      "Listener",
      ({
        Key key,
        dynamic onPointerDown,
        dynamic onPointerMove,
        dynamic onPointerEnter,
        dynamic onPointerExit,
        dynamic onPointerHover,
        dynamic onPointerUp,
        dynamic onPointerCancel,
        dynamic onPointerSignal,
        HitTestBehavior behavior = HitTestBehavior.deferToChild,
        Widget child,
      }) =>
        Listener(
        key: key,
        onPointerDown: createValueChangedGenericClosure<PointerDownEvent>(listener.buildOwner, onPointerDown),
        onPointerMove: createValueChangedGenericClosure<PointerMoveEvent>(listener.buildOwner, onPointerMove),
        onPointerEnter: createValueChangedGenericClosure<PointerEnterEvent>(listener.buildOwner, onPointerEnter),
        onPointerExit: createValueChangedGenericClosure<PointerExitEvent>(listener.buildOwner, onPointerExit),
        onPointerHover: createValueChangedGenericClosure<PointerHoverEvent>(listener.buildOwner, onPointerHover),
        onPointerUp: createValueChangedGenericClosure<PointerUpEvent>(listener.buildOwner, onPointerUp),
        onPointerCancel: createValueChangedGenericClosure<PointerCancelEvent>(listener.buildOwner, onPointerCancel),
        onPointerSignal: createValueChangedGenericClosure<PointerSignalEvent>(listener.buildOwner, onPointerSignal),
        behavior: behavior,
        child: child,
      ),
    );
  static var mouseRegion = MXFunctionInvoke(
      "MouseRegion",
      ({
        Key key,
        dynamic onEnter,
        dynamic onExit,
        dynamic onHover,
        bool opaque = true,
        Widget child,
      }) =>
        MouseRegion(
        key: key,
        onEnter: createValueChangedGenericClosure<PointerEnterEvent>(mouseRegion.buildOwner, onEnter),
        onExit: createValueChangedGenericClosure<PointerExitEvent>(mouseRegion.buildOwner, onExit),
        onHover: createValueChangedGenericClosure<PointerHoverEvent>(mouseRegion.buildOwner, onHover),
        opaque: opaque,
        child: child,
      ),
    );
  static var repaintBoundary = MXFunctionInvoke(
      "RepaintBoundary",
      ({
        Key key,
        Widget child,
      }) =>
        RepaintBoundary(
        key: key,
        child: child,
      ),
    );
  static var repaintBoundary_wrap = MXFunctionInvoke(
    "repaintBoundary.wrap",
      ({
        Widget child,
        int childIndex,
      }) =>
        RepaintBoundary.wrap(
        child,
        childIndex,
      ),
    );
  static var ignorePointer = MXFunctionInvoke(
      "IgnorePointer",
      ({
        Key key,
        bool ignoring = true,
        bool ignoringSemantics,
        Widget child,
      }) =>
        IgnorePointer(
        key: key,
        ignoring: ignoring,
        ignoringSemantics: ignoringSemantics,
        child: child,
      ),
    );
  static var absorbPointer = MXFunctionInvoke(
      "AbsorbPointer",
      ({
        Key key,
        bool absorbing = true,
        Widget child,
        bool ignoringSemantics,
      }) =>
        AbsorbPointer(
        key: key,
        absorbing: absorbing,
        child: child,
        ignoringSemantics: ignoringSemantics,
      ),
    );
  static var metaData = MXFunctionInvoke(
      "MetaData",
      ({
        Key key,
        dynamic metaData,
        HitTestBehavior behavior = HitTestBehavior.deferToChild,
        Widget child,
      }) =>
        MetaData(
        key: key,
        metaData: metaData,
        behavior: behavior,
        child: child,
      ),
    );
  static var semantics = MXFunctionInvoke(
      "Semantics",
      ({
        Key key,
        Widget child,
        bool container = false,
        bool explicitChildNodes = false,
        bool excludeSemantics = false,
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
        String onTapHint,
        String onLongPressHint,
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
        dynamic onDismiss,
        dynamic onMoveCursorForwardByCharacter,
        dynamic onMoveCursorBackwardByCharacter,
        dynamic onSetSelection,
        dynamic onDidGainAccessibilityFocus,
        dynamic onDidLoseAccessibilityFocus,
        Map<CustomSemanticsAction*, void Function()> customSemanticsActions,
      }) =>
        Semantics(
        key: key,
        child: child,
        container: container,
        explicitChildNodes: explicitChildNodes,
        excludeSemantics: excludeSemantics,
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
        onTapHint: onTapHint,
        onLongPressHint: onLongPressHint,
        textDirection: textDirection,
        sortKey: sortKey,
        onTap: createVoidCallbackClosure(semantics.buildOwner, onTap),
        onLongPress: createVoidCallbackClosure(semantics.buildOwner, onLongPress),
        onScrollLeft: createVoidCallbackClosure(semantics.buildOwner, onScrollLeft),
        onScrollRight: createVoidCallbackClosure(semantics.buildOwner, onScrollRight),
        onScrollUp: createVoidCallbackClosure(semantics.buildOwner, onScrollUp),
        onScrollDown: createVoidCallbackClosure(semantics.buildOwner, onScrollDown),
        onIncrease: createVoidCallbackClosure(semantics.buildOwner, onIncrease),
        onDecrease: createVoidCallbackClosure(semantics.buildOwner, onDecrease),
        onCopy: createVoidCallbackClosure(semantics.buildOwner, onCopy),
        onCut: createVoidCallbackClosure(semantics.buildOwner, onCut),
        onPaste: createVoidCallbackClosure(semantics.buildOwner, onPaste),
        onDismiss: createVoidCallbackClosure(semantics.buildOwner, onDismiss),
        onMoveCursorForwardByCharacter: createValueChangedGenericClosure<bool>(semantics.buildOwner, onMoveCursorForwardByCharacter),
        onMoveCursorBackwardByCharacter: createValueChangedGenericClosure<bool>(semantics.buildOwner, onMoveCursorBackwardByCharacter),
        onSetSelection: createValueChangedGenericClosure<TextSelection>(semantics.buildOwner, onSetSelection),
        onDidGainAccessibilityFocus: createVoidCallbackClosure(semantics.buildOwner, onDidGainAccessibilityFocus),
        onDidLoseAccessibilityFocus: createVoidCallbackClosure(semantics.buildOwner, onDidLoseAccessibilityFocus),
        customSemanticsActions: customSemanticsActions,
      ),
    );
  static var semantics_fromProperties = MXFunctionInvoke(
    "semantics.fromProperties",
      ({
        Key key,
        Widget child,
        bool container = false,
        bool explicitChildNodes = false,
        bool excludeSemantics = false,
        SemanticsProperties properties,
      }) =>
        Semantics.fromProperties(
        key: key,
        child: child,
        container: container,
        explicitChildNodes: explicitChildNodes,
        excludeSemantics: excludeSemantics,
        properties: properties,
      ),
    );
  static var mergeSemantics = MXFunctionInvoke(
      "MergeSemantics",
      ({
        Key key,
        Widget child,
      }) =>
        MergeSemantics(
        key: key,
        child: child,
      ),
    );
  static var blockSemantics = MXFunctionInvoke(
      "BlockSemantics",
      ({
        Key key,
        bool blocking = true,
        Widget child,
      }) =>
        BlockSemantics(
        key: key,
        blocking: blocking,
        child: child,
      ),
    );
  static var excludeSemantics = MXFunctionInvoke(
      "ExcludeSemantics",
      ({
        Key key,
        bool excluding = true,
        Widget child,
      }) =>
        ExcludeSemantics(
        key: key,
        excluding: excluding,
        child: child,
      ),
    );
  static var indexedSemantics = MXFunctionInvoke(
      "IndexedSemantics",
      ({
        Key key,
        int index,
        Widget child,
      }) =>
        IndexedSemantics(
        key: key,
        index: index,
        child: child,
      ),
    );
  static var keyedSubtree = MXFunctionInvoke(
      "KeyedSubtree",
      ({
        Key key,
        Widget child,
      }) =>
        KeyedSubtree(
        key: key,
        child: child,
      ),
    );
  static var keyedSubtree_wrap = MXFunctionInvoke(
    "keyedSubtree.wrap",
      ({
        Widget child,
        int childIndex,
      }) =>
        KeyedSubtree.wrap(
        child,
        childIndex,
      ),
    );
  static var builder = MXFunctionInvoke(
      "Builder",
      ({
        Key key,
        dynamic builder,
      }) =>
        Builder(
        key: key,
        builder: createGenericValueGenericClosure<Widget, BuildContext>(builder.buildOwner, builder),
      ),
    );
  static var statefulBuilder = MXFunctionInvoke(
      "StatefulBuilder",
      ({
        Key key,
        dynamic builder,
      }) =>
        StatefulBuilder(
        key: key,
        builder: builder,
      ),
    );
  static var coloredBox = MXFunctionInvoke(
      "ColoredBox",
      ({
        Color color,
        Widget child,
        Key key,
      }) =>
        ColoredBox(
        color: color,
        child: child,
        key: key,
      ),
    );
  static var callbackAction = MXFunctionInvoke(
      "CallbackAction",
      ({
        LocalKey intentKey,
        dynamic onInvoke,
      }) =>
        CallbackAction(
        intentKey,
        onInvoke: createVoidCallbackClosure(callbackAction.buildOwner, onInvoke),
      ),
    );
  static var actionDispatcher = MXFunctionInvoke(
      "ActionDispatcher",
      ({
      }) =>
        ActionDispatcher(
      ),
    );
  static var actions = MXFunctionInvoke(
      "Actions",
      ({
        Key key,
        ActionDispatcher dispatcher,
        Map<LocalKey*, Action* Function()> actions,
        Widget child,
      }) =>
        Actions(
        key: key,
        dispatcher: dispatcher,
        actions: actions,
        child: child,
      ),
    );
  static var focusableActionDetector = MXFunctionInvoke(
      "FocusableActionDetector",
      ({
        Key key,
        bool enabled = true,
        FocusNode focusNode,
        bool autofocus = false,
        Map<LogicalKeySet*, Intent> shortcuts,
        Map<LocalKey*, Action* Function()> actions,
        dynamic onShowFocusHighlight,
        dynamic onShowHoverHighlight,
        dynamic onFocusChange,
        Widget child,
      }) =>
        FocusableActionDetector(
        key: key,
        enabled: enabled,
        focusNode: focusNode,
        autofocus: autofocus,
        shortcuts: shortcuts,
        actions: actions,
        onShowFocusHighlight: createValueChangedGenericClosure<bool>(focusableActionDetector.buildOwner, onShowFocusHighlight),
        onShowHoverHighlight: createValueChangedGenericClosure<bool>(focusableActionDetector.buildOwner, onShowHoverHighlight),
        onFocusChange: createValueChangedGenericClosure<bool>(focusableActionDetector.buildOwner, onFocusChange),
        child: child,
      ),
    );
  static var doNothingAction = MXFunctionInvoke(
      "DoNothingAction",
      ({
      }) =>
        DoNothingAction(
      ),
    );
}
class MXRoutePopDisposition {
  static Map str2VMap = {
    'RoutePopDisposition.pop': RoutePopDisposition.pop,
    'RoutePopDisposition.doNotPop': RoutePopDisposition.doNotPop,
    'RoutePopDisposition.bubble': RoutePopDisposition.bubble,
  };
  static RoutePopDisposition parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXTextSelectionHandleType {
  static Map str2VMap = {
    'TextSelectionHandleType.left': TextSelectionHandleType.left,
    'TextSelectionHandleType.right': TextSelectionHandleType.right,
    'TextSelectionHandleType.collapsed': TextSelectionHandleType.collapsed,
  };
  static TextSelectionHandleType parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXScrollPositionAlignmentPolicy {
  static Map str2VMap = {
    'ScrollPositionAlignmentPolicy.explicit': ScrollPositionAlignmentPolicy.explicit,
    'ScrollPositionAlignmentPolicy.keepVisibleAtEnd': ScrollPositionAlignmentPolicy.keepVisibleAtEnd,
    'ScrollPositionAlignmentPolicy.keepVisibleAtStart': ScrollPositionAlignmentPolicy.keepVisibleAtStart,
  };
  static ScrollPositionAlignmentPolicy parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXScrollIncrementType {
  static Map str2VMap = {
    'ScrollIncrementType.line': ScrollIncrementType.line,
    'ScrollIncrementType.page': ScrollIncrementType.page,
  };
  static ScrollIncrementType parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXOrientation {
  static Map str2VMap = {
    'Orientation.portrait': Orientation.portrait,
    'Orientation.landscape': Orientation.landscape,
  };
  static Orientation parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXTraversalDirection {
  static Map str2VMap = {
    'TraversalDirection.up': TraversalDirection.up,
    'TraversalDirection.right': TraversalDirection.right,
    'TraversalDirection.down': TraversalDirection.down,
    'TraversalDirection.left': TraversalDirection.left,
  };
  static TraversalDirection parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXBannerLocation {
  static Map str2VMap = {
    'BannerLocation.topStart': BannerLocation.topStart,
    'BannerLocation.topEnd': BannerLocation.topEnd,
    'BannerLocation.bottomStart': BannerLocation.bottomStart,
    'BannerLocation.bottomEnd': BannerLocation.bottomEnd,
  };
  static BannerLocation parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
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
