//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/widget_span.dart';
import 'dart:ui';
import 'package:flutter/painting.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/table.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/image.dart';
import 'package:flutter/src/widgets/inherited_model.dart';
import 'package:flutter/src/widgets/widget_inspector.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:math';
import 'dart:typed_data';
import 'package:flutter/scheduler.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/widgets/app.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/gesture_detector.dart';
import 'package:flutter/src/widgets/title.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/shortcuts.dart';
import 'package:collection/collection.dart';
import 'package:flutter/src/widgets/actions.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/inherited_notifier.dart';
import 'package:flutter/src/widgets/semantics_debugger.dart';
import 'package:flutter/src/widgets/performance_overlay.dart';
import 'package:flutter/src/widgets/pages.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/routes.dart';
import 'package:flutter/src/widgets/modal_barrier.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/transitions.dart';
import 'package:flutter/src/widgets/overlay.dart';
import 'package:flutter/src/widgets/page_storage.dart';
import 'package:flutter/src/widgets/route_notification_messages.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/src/widgets/visibility.dart';
import 'package:flutter/src/widgets/sliver.dart';
import 'package:flutter/src/widgets/inherited_theme.dart';
import 'package:flutter/src/widgets/text.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/widgets/text_selection.dart';
import 'package:flutter/src/widgets/constants.dart';
import 'package:flutter/src/widgets/editable_text.dart';
import 'package:flutter/src/widgets/viewport.dart';
import 'package:flutter/src/widgets/scroll_position_with_single_context.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/src/widgets/scroll_activity.dart';
import 'package:flutter/src/widgets/scroll_context.dart';
import 'package:flutter/src/widgets/scroll_notification.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scroll_position.dart';
import 'package:flutter/src/widgets/scroll_metrics.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/src/widgets/overscroll_indicator.dart';
import 'package:flutter/src/widgets/scroll_simulation.dart';
import 'package:flutter/src/widgets/notification_listener.dart';
import 'package:flutter/src/widgets/scroll_configuration.dart';
import 'package:flutter/src/widgets/scrollable.dart';
import 'package:flutter/src/widgets/scroll_aware_image_provider.dart';
import 'package:flutter/src/widgets/disposable_build_context.dart';
import 'dart:io';
import 'package:flutter/semantics.dart';
import 'package:flutter/src/widgets/localizations.dart';
import 'package:flutter/src/widgets/automatic_keep_alive.dart';
import 'package:flutter/src/widgets/focus_traversal.dart';
import 'package:flutter/src/widgets/banner.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerWidgetSpanSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_widgetSpan.funName] = _widgetSpan;
  m[_tableRow.funName] = _tableRow;
  m[_table.funName] = _table;
  m[_tableCell.funName] = _tableCell;
  m[_inheritedElement.funName] = _inheritedElement;
  m[_inheritedModelElement.funName] = _inheritedModelElement;
  m[_widgetInspector.funName] = _widgetInspector;
  m[_inspectorSelection.funName] = _inspectorSelection;
  m[_inspectorSerializationDelegate.funName] = _inspectorSerializationDelegate;
  m[_title.funName] = _title;
  m[_keySet.funName] = _keySet;
  m[_keySet_fromSet.funName] = _keySet_fromSet;
  m[_logicalKeySet.funName] = _logicalKeySet;
  m[_logicalKeySet_fromSet.funName] = _logicalKeySet_fromSet;
  m[_shortcutMapProperty.funName] = _shortcutMapProperty;
  m[_shortcutManager.funName] = _shortcutManager;
  m[_shortcuts.funName] = _shortcuts;
  m[_semanticsDebugger.funName] = _semanticsDebugger;
  m[_performanceOverlay.funName] = _performanceOverlay;
  m[_performanceOverlay_allEnabled.funName] = _performanceOverlay_allEnabled;
  m[_pageRouteBuilder.funName] = _pageRouteBuilder;
  m[_modalBarrier.funName] = _modalBarrier;
  m[_animatedModalBarrier.funName] = _animatedModalBarrier;
  m[_localHistoryEntry.funName] = _localHistoryEntry;
  m[_navigatorObserver.funName] = _navigatorObserver;
  m[_routeObserver.funName] = _routeObserver;
  m[_routePopDisposition.funName] = _routePopDisposition;
  m[_routeSettings.funName] = _routeSettings;
  m[_customBuilderPage.funName] = _customBuilderPage;
  m[_defaultTransitionDelegate.funName] = _defaultTransitionDelegate;
  m[_navigator.funName] = _navigator;
  m[_navigatorState.funName] = _navigatorState;
  m[_visibility.funName] = _visibility;
  m[_sliverVisibility.funName] = _sliverVisibility;
  m[_defaultTextStyle.funName] = _defaultTextStyle;
  m[_defaultTextStyle_fallback.funName] = _defaultTextStyle_fallback;
  m[_text.funName] = _text;
  m[_text_rich.funName] = _text_rich;
  m[_slideTransition.funName] = _slideTransition;
  m[_scaleTransition.funName] = _scaleTransition;
  m[_rotationTransition.funName] = _rotationTransition;
  m[_sizeTransition.funName] = _sizeTransition;
  m[_fadeTransition.funName] = _fadeTransition;
  m[_sliverFadeTransition.funName] = _sliverFadeTransition;
  m[_relativeRectTween.funName] = _relativeRectTween;
  m[_positionedTransition.funName] = _positionedTransition;
  m[_relativePositionedTransition.funName] = _relativePositionedTransition;
  m[_decoratedBoxTransition.funName] = _decoratedBoxTransition;
  m[_alignTransition.funName] = _alignTransition;
  m[_defaultTextStyleTransition.funName] = _defaultTextStyleTransition;
  m[_animatedBuilder.funName] = _animatedBuilder;
  m[_overlayEntry.funName] = _overlayEntry;
  m[_overlay.funName] = _overlay;
  m[_overlayState.funName] = _overlayState;
  m[_textSelectionHandleType.funName] = _textSelectionHandleType;
  m[_textSelectionOverlay.funName] = _textSelectionOverlay;
  m[_textSelectionGestureDetectorBuilder.funName] = _textSelectionGestureDetectorBuilder;
  m[_textSelectionGestureDetector.funName] = _textSelectionGestureDetector;
  m[_viewport.funName] = _viewport;
  m[_shrinkWrappingViewport.funName] = _shrinkWrappingViewport;
  m[_scrollPositionWithSingleContext.funName] = _scrollPositionWithSingleContext;
  m[_idleScrollActivity.funName] = _idleScrollActivity;
  m[_holdScrollActivity.funName] = _holdScrollActivity;
  m[_scrollDragController.funName] = _scrollDragController;
  m[_dragScrollActivity.funName] = _dragScrollActivity;
  m[_ballisticScrollActivity.funName] = _ballisticScrollActivity;
  m[_drivenScrollActivity.funName] = _drivenScrollActivity;
  m[_pageStorageKey.funName] = _pageStorageKey;
  m[_pageStorageBucket.funName] = _pageStorageBucket;
  m[_pageStorage.funName] = _pageStorage;
  m[_scrollPositionAlignmentPolicy.funName] = _scrollPositionAlignmentPolicy;
  m[_scrollController.funName] = _scrollController;
  m[_trackingScrollController.funName] = _trackingScrollController;
  m[_scrollPhysics.funName] = _scrollPhysics;
  m[_bouncingScrollPhysics.funName] = _bouncingScrollPhysics;
  m[_clampingScrollPhysics.funName] = _clampingScrollPhysics;
  m[_alwaysScrollableScrollPhysics.funName] = _alwaysScrollableScrollPhysics;
  m[_neverScrollableScrollPhysics.funName] = _neverScrollableScrollPhysics;
  m[_tickerMode.funName] = _tickerMode;
  m[_scrollStartNotification.funName] = _scrollStartNotification;
  m[_scrollUpdateNotification.funName] = _scrollUpdateNotification;
  m[_overscrollNotification.funName] = _overscrollNotification;
  m[_scrollEndNotification.funName] = _scrollEndNotification;
  m[_userScrollNotification.funName] = _userScrollNotification;
  m[_glowingOverscrollIndicator.funName] = _glowingOverscrollIndicator;
  m[_overscrollIndicatorNotification.funName] = _overscrollIndicatorNotification;
  m[_scrollBehavior.funName] = _scrollBehavior;
  m[_scrollConfiguration.funName] = _scrollConfiguration;
  m[_gestureRecognizerFactoryWithHandlers.funName] = _gestureRecognizerFactoryWithHandlers;
  m[_gestureDetector.funName] = _gestureDetector;
  m[_rawGestureDetector.funName] = _rawGestureDetector;
  m[_rawGestureDetectorState.funName] = _rawGestureDetectorState;
  m[_scrollable.funName] = _scrollable;
  m[_scrollableState.funName] = _scrollableState;
  m[_scrollIncrementType.funName] = _scrollIncrementType;
  m[_scrollIncrementDetails.funName] = _scrollIncrementDetails;
  m[_intent.funName] = _intent;
  m[_scrollIntent.funName] = _scrollIntent;
  m[_scrollAction.funName] = _scrollAction;
  m[_scrollAwareImageProvider.funName] = _scrollAwareImageProvider;
  m[_orientation.funName] = _orientation;
  m[_mediaQueryData.funName] = _mediaQueryData;
  m[_mediaQueryData_fromWindow.funName] = _mediaQueryData_fromWindow;
  m[_mediaQuery.funName] = _mediaQuery;
  m[_mediaQuery_removePadding.funName] = _mediaQuery_removePadding;
  m[_mediaQuery_removeViewInsets.funName] = _mediaQuery_removeViewInsets;
  m[_mediaQuery_removeViewPadding.funName] = _mediaQuery_removeViewPadding;
  m[_disposableBuildContext.funName] = _disposableBuildContext;
  m[_image.funName] = _image;
  m[_image_network.funName] = _image_network;
  m[_image_file.funName] = _image_file;
  m[_image_asset.funName] = _image_asset;
  m[_image_memory.funName] = _image_memory;
  m[_decoratedBox.funName] = _decoratedBox;
  m[_container.funName] = _container;
  m[_defaultWidgetsLocalizations.funName] = _defaultWidgetsLocalizations;
  m[_localizations.funName] = _localizations;
  m[_localizations_override.funName] = _localizations_override;
  m[_focus.funName] = _focus;
  m[_focusScope.funName] = _focusScope;
  m[_sliverChildBuilderDelegate.funName] = _sliverChildBuilderDelegate;
  m[_sliverChildListDelegate.funName] = _sliverChildListDelegate;
  m[_sliverChildListDelegate_fixed.funName] = _sliverChildListDelegate_fixed;
  m[_sliverList.funName] = _sliverList;
  m[_sliverFixedExtentList.funName] = _sliverFixedExtentList;
  m[_sliverGrid.funName] = _sliverGrid;
  m[_sliverGrid_count.funName] = _sliverGrid_count;
  m[_sliverGrid_extent.funName] = _sliverGrid_extent;
  m[_sliverMultiBoxAdaptorElement.funName] = _sliverMultiBoxAdaptorElement;
  m[_sliverOpacity.funName] = _sliverOpacity;
  m[_sliverIgnorePointer.funName] = _sliverIgnorePointer;
  m[_sliverOffstage.funName] = _sliverOffstage;
  m[_keepAlive.funName] = _keepAlive;
  m[_notificationListener.funName] = _notificationListener;
  m[_layoutChangedNotification.funName] = _layoutChangedNotification;
  m[_automaticKeepAlive.funName] = _automaticKeepAlive;
  m[_keepAliveNotification.funName] = _keepAliveNotification;
  m[_keepAliveHandle.funName] = _keepAliveHandle;
  m[_textEditingController.funName] = _textEditingController;
  m[_textEditingController_fromValue.funName] = _textEditingController_fromValue;
  m[_toolbarOptions.funName] = _toolbarOptions;
  m[_editableText.funName] = _editableText;
  m[_editableTextState.funName] = _editableTextState;
  m[_traversalDirection.funName] = _traversalDirection;
  m[_widgetOrderTraversalPolicy.funName] = _widgetOrderTraversalPolicy;
  m[_readingOrderTraversalPolicy.funName] = _readingOrderTraversalPolicy;
  m[_numericFocusOrder.funName] = _numericFocusOrder;
  m[_lexicalFocusOrder.funName] = _lexicalFocusOrder;
  m[_orderedTraversalPolicy.funName] = _orderedTraversalPolicy;
  m[_focusTraversalOrder.funName] = _focusTraversalOrder;
  m[_focusTraversalGroup.funName] = _focusTraversalGroup;
  m[_requestFocusAction.funName] = _requestFocusAction;
  m[_nextFocusAction.funName] = _nextFocusAction;
  m[_previousFocusAction.funName] = _previousFocusAction;
  m[_directionalFocusIntent.funName] = _directionalFocusIntent;
  m[_directionalFocusAction.funName] = _directionalFocusAction;
  m[_bannerLocation.funName] = _bannerLocation;
  m[_bannerPainter.funName] = _bannerPainter;
  m[_banner.funName] = _banner;
  m[_checkedModeBanner.funName] = _checkedModeBanner;
  m[_widgetsApp.funName] = _widgetsApp;
  m[_renderObjectToWidgetAdapter.funName] = _renderObjectToWidgetAdapter;
  m[_renderObjectToWidgetElement.funName] = _renderObjectToWidgetElement;
  m[_widgetsFlutterBinding.funName] = _widgetsFlutterBinding;
  m[_unfocusDisposition.funName] = _unfocusDisposition;
  m[_focusNode.funName] = _focusNode;
  m[_focusScopeNode.funName] = _focusScopeNode;
  m[_focusHighlightMode.funName] = _focusHighlightMode;
  m[_focusHighlightStrategy.funName] = _focusHighlightStrategy;
  m[_focusManager.funName] = _focusManager;
  m[_uniqueKey.funName] = _uniqueKey;
  m[_objectKey.funName] = _objectKey;
  m[_labeledGlobalKey.funName] = _labeledGlobalKey;
  m[_globalObjectKey.funName] = _globalObjectKey;
  m[_typeMatcher.funName] = _typeMatcher;
  m[_buildOwner.funName] = _buildOwner;
  m[_errorWidget.funName] = _errorWidget;
  m[_errorWidget_withDetails.funName] = _errorWidget_withDetails;
  m[_statelessElement.funName] = _statelessElement;
  m[_statefulElement.funName] = _statefulElement;
  m[_parentDataElement.funName] = _parentDataElement;
  m[_leafRenderObjectElement.funName] = _leafRenderObjectElement;
  m[_singleChildRenderObjectElement.funName] = _singleChildRenderObjectElement;
  m[_multiChildRenderObjectElement.funName] = _multiChildRenderObjectElement;
  m[_debugCreator.funName] = _debugCreator;
  m[_indexedSlot.funName] = _indexedSlot;
  m[_directionality.funName] = _directionality;
  m[_opacity.funName] = _opacity;
  m[_shaderMask.funName] = _shaderMask;
  m[_backdropFilter.funName] = _backdropFilter;
  m[_customPaint.funName] = _customPaint;
  m[_clipRect.funName] = _clipRect;
  m[_clipRRect.funName] = _clipRRect;
  m[_clipOval.funName] = _clipOval;
  m[_clipPath.funName] = _clipPath;
  m[_physicalModel.funName] = _physicalModel;
  m[_physicalShape.funName] = _physicalShape;
  m[_transform.funName] = _transform;
  m[_transform_rotate.funName] = _transform_rotate;
  m[_transform_translate.funName] = _transform_translate;
  m[_transform_scale.funName] = _transform_scale;
  m[_compositedTransformTarget.funName] = _compositedTransformTarget;
  m[_compositedTransformFollower.funName] = _compositedTransformFollower;
  m[_fittedBox.funName] = _fittedBox;
  m[_fractionalTranslation.funName] = _fractionalTranslation;
  m[_rotatedBox.funName] = _rotatedBox;
  m[_padding.funName] = _padding;
  m[_align.funName] = _align;
  m[_center.funName] = _center;
  m[_customSingleChildLayout.funName] = _customSingleChildLayout;
  m[_layoutId.funName] = _layoutId;
  m[_customMultiChildLayout.funName] = _customMultiChildLayout;
  m[_sizedBox.funName] = _sizedBox;
  m[_sizedBox_expand.funName] = _sizedBox_expand;
  m[_sizedBox_shrink.funName] = _sizedBox_shrink;
  m[_sizedBox_fromSize.funName] = _sizedBox_fromSize;
  m[_constrainedBox.funName] = _constrainedBox;
  m[_unconstrainedBox.funName] = _unconstrainedBox;
  m[_fractionallySizedBox.funName] = _fractionallySizedBox;
  m[_limitedBox.funName] = _limitedBox;
  m[_overflowBox.funName] = _overflowBox;
  m[_sizedOverflowBox.funName] = _sizedOverflowBox;
  m[_offstage.funName] = _offstage;
  m[_aspectRatio.funName] = _aspectRatio;
  m[_intrinsicWidth.funName] = _intrinsicWidth;
  m[_intrinsicHeight.funName] = _intrinsicHeight;
  m[_baseline.funName] = _baseline;
  m[_sliverToBoxAdapter.funName] = _sliverToBoxAdapter;
  m[_sliverPadding.funName] = _sliverPadding;
  m[_listBody.funName] = _listBody;
  m[_stack.funName] = _stack;
  m[_indexedStack.funName] = _indexedStack;
  m[_positioned.funName] = _positioned;
  m[_positioned_directional.funName] = _positioned_directional;
  m[_positioned_fromRect.funName] = _positioned_fromRect;
  m[_positioned_fromRelativeRect.funName] = _positioned_fromRelativeRect;
  m[_positioned_fill.funName] = _positioned_fill;
  m[_positionedDirectional.funName] = _positionedDirectional;
  m[_flex.funName] = _flex;
  m[_row.funName] = _row;
  m[_column.funName] = _column;
  m[_flexible.funName] = _flexible;
  m[_expanded.funName] = _expanded;
  m[_wrap.funName] = _wrap;
  m[_flow.funName] = _flow;
  m[_flow_unwrapped.funName] = _flow_unwrapped;
  m[_richText.funName] = _richText;
  m[_rawImage.funName] = _rawImage;
  m[_defaultAssetBundle.funName] = _defaultAssetBundle;
  m[_widgetToRenderBoxAdapter.funName] = _widgetToRenderBoxAdapter;
  m[_listener.funName] = _listener;
  m[_mouseRegion.funName] = _mouseRegion;
  m[_repaintBoundary.funName] = _repaintBoundary;
  m[_repaintBoundary_wrap.funName] = _repaintBoundary_wrap;
  m[_ignorePointer.funName] = _ignorePointer;
  m[_absorbPointer.funName] = _absorbPointer;
  m[_metaData.funName] = _metaData;
  m[_semantics.funName] = _semantics;
  m[_semantics_fromProperties.funName] = _semantics_fromProperties;
  m[_mergeSemantics.funName] = _mergeSemantics;
  m[_blockSemantics.funName] = _blockSemantics;
  m[_excludeSemantics.funName] = _excludeSemantics;
  m[_indexedSemantics.funName] = _indexedSemantics;
  m[_keyedSubtree.funName] = _keyedSubtree;
  m[_keyedSubtree_wrap.funName] = _keyedSubtree_wrap;
  m[_builder.funName] = _builder;
  m[_statefulBuilder.funName] = _statefulBuilder;
  m[_coloredBox.funName] = _coloredBox;
  m[_callbackAction.funName] = _callbackAction;
  m[_actionDispatcher.funName] = _actionDispatcher;
  m[_actions.funName] = _actions;
  m[_focusableActionDetector.funName] = _focusableActionDetector;
  m[_doNothingAction.funName] = _doNothingAction;
  return m;
}
var _widgetSpan = MXFunctionInvoke(
    "WidgetSpan",
    (
      {
      Widget child,
      PlaceholderAlignment alignment = PlaceholderAlignment.bottom,
      TextBaseline baseline,
      TextStyle style,
      }
    ) =>
      WidgetSpan(
      child: child,
      alignment: alignment,
      baseline: baseline,
      style: style,
    ),
);
var _tableRow = MXFunctionInvoke(
    "TableRow",
    (
      {
      LocalKey key,
      Decoration decoration,
      List<Widget> children,
      }
    ) =>
      TableRow(
      key: key,
      decoration: decoration,
      children: children,
    ),
);
var _table = MXFunctionInvoke(
    "Table",
    (
      {
      Key key,
      List<TableRow> children,
      Map<int, TableColumnWidth> columnWidths,
      TableColumnWidth defaultColumnWidth,
      TextDirection textDirection,
      TableBorder border,
      TableCellVerticalAlignment defaultVerticalAlignment = TableCellVerticalAlignment.top,
      TextBaseline textBaseline,
      }
    ) =>
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
var _tableCell = MXFunctionInvoke(
    "TableCell",
    (
      {
      Key key,
      TableCellVerticalAlignment verticalAlignment,
      Widget child,
      }
    ) =>
      TableCell(
      key: key,
      verticalAlignment: verticalAlignment,
      child: child,
    ),
);
var _inheritedElement = MXFunctionInvoke(
    "InheritedElement",
    (
      {
      InheritedWidget widget,
      }
    ) =>
      InheritedElement(
      widget,
    ),
);
var _inheritedModelElement = MXFunctionInvoke(
    "InheritedModelElement",
    (
      {
      InheritedModel<dynamic> widget,
      }
    ) =>
      InheritedModelElement(
      widget,
    ),
);
var _widgetInspector = MXFunctionInvoke(
    "WidgetInspector",
    (
      {
      Key key,
      Widget child,
      dynamic selectButtonBuilder,
      }
    ) =>
      WidgetInspector(
      key: key,
      child: child,
      selectButtonBuilder: null,
    ),
);
var _inspectorSelection = MXFunctionInvoke(
    "InspectorSelection",
    (
    ) =>
      InspectorSelection(
    ),
);
var _inspectorSerializationDelegate = MXFunctionInvoke(
    "InspectorSerializationDelegate",
    (
      {
      String groupName,
      bool summaryTree = false,
      int maxDescendentsTruncatableNode = -1,
      bool expandPropertyValues = true,
      int subtreeDepth = 1,
      bool includeProperties = false,
      WidgetInspectorService service,
      dynamic addAdditionalPropertiesCallback,
      }
    ) =>
      InspectorSerializationDelegate(
      groupName: groupName,
      summaryTree: summaryTree,
      maxDescendentsTruncatableNode: maxDescendentsTruncatableNode,
      expandPropertyValues: expandPropertyValues,
      subtreeDepth: subtreeDepth,
      includeProperties: includeProperties,
      service: service,
      addAdditionalPropertiesCallback: null,
    ),
);
var _title = MXFunctionInvoke(
    "Title",
    (
      {
      Key key,
      String title = '',
      Color color,
      Widget child,
      }
    ) =>
      Title(
      key: key,
      title: title,
      color: color,
      child: child,
    ),
);
var _keySet = MXFunctionInvoke(
    "KeySet",
    (
      {
      KeyboardKey key1,
      KeyboardKey key2,
      KeyboardKey key3,
      KeyboardKey key4,
      }
    ) =>
      KeySet(
      key1,
      key2,
      key3,
      key4,
    ),
);
var _keySet_fromSet = MXFunctionInvoke(
  "keySet.fromSet",
    (
      {
      Set<KeyboardKey> keys,
      }
    ) =>
      KeySet.fromSet(
      keys,
    ),
);
var _logicalKeySet = MXFunctionInvoke(
    "LogicalKeySet",
    (
      {
      LogicalKeyboardKey key1,
      LogicalKeyboardKey key2,
      LogicalKeyboardKey key3,
      LogicalKeyboardKey key4,
      }
    ) =>
      LogicalKeySet(
      key1,
      key2,
      key3,
      key4,
    ),
);
var _logicalKeySet_fromSet = MXFunctionInvoke(
  "logicalKeySet.fromSet",
    (
      {
      Set<LogicalKeyboardKey> keys,
      }
    ) =>
      LogicalKeySet.fromSet(
      keys,
    ),
);
var _shortcutMapProperty = MXFunctionInvoke(
    "ShortcutMapProperty",
    (
      {
      String name,
      Map<LogicalKeySet, Intent> value,
      bool showName = true,
      Object defaultValue,
      DiagnosticLevel level = DiagnosticLevel.info,
      String description,
      }
    ) =>
      ShortcutMapProperty(
      name,
      value,
      showName: showName,
      defaultValue: defaultValue,
      level: level,
      description: description,
    ),
);
var _shortcutManager = MXFunctionInvoke(
    "ShortcutManager",
    (
      {
      Map<LogicalKeySet, Intent> shortcuts,
      bool modal = false,
      }
    ) =>
      ShortcutManager(
      shortcuts: shortcuts,
      modal: modal,
    ),
);
var _shortcuts = MXFunctionInvoke(
    "Shortcuts",
    (
      {
      Key key,
      ShortcutManager manager,
      Map<LogicalKeySet, Intent> shortcuts,
      Widget child,
      String debugLabel,
      }
    ) =>
      Shortcuts(
      key: key,
      manager: manager,
      shortcuts: shortcuts,
      child: child,
      debugLabel: debugLabel,
    ),
);
var _semanticsDebugger = MXFunctionInvoke(
    "SemanticsDebugger",
    (
      {
      Key key,
      Widget child,
      TextStyle labelStyle,
      }
    ) =>
      SemanticsDebugger(
      key: key,
      child: child,
      labelStyle: labelStyle,
    ),
);
var _performanceOverlay = MXFunctionInvoke(
    "PerformanceOverlay",
    (
      {
      Key key,
      int optionsMask = 0,
      int rasterizerThreshold = 0,
      bool checkerboardRasterCacheImages = false,
      bool checkerboardOffscreenLayers = false,
      }
    ) =>
      PerformanceOverlay(
      key: key,
      optionsMask: optionsMask,
      rasterizerThreshold: rasterizerThreshold,
      checkerboardRasterCacheImages: checkerboardRasterCacheImages,
      checkerboardOffscreenLayers: checkerboardOffscreenLayers,
    ),
);
var _performanceOverlay_allEnabled = MXFunctionInvoke(
  "performanceOverlay.allEnabled",
    (
      {
      Key key,
      int rasterizerThreshold = 0,
      bool checkerboardRasterCacheImages = false,
      bool checkerboardOffscreenLayers = false,
      }
    ) =>
      PerformanceOverlay.allEnabled(
      key: key,
      rasterizerThreshold: rasterizerThreshold,
      checkerboardRasterCacheImages: checkerboardRasterCacheImages,
      checkerboardOffscreenLayers: checkerboardOffscreenLayers,
    ),
);
var _pageRouteBuilder = MXFunctionInvoke(
    "PageRouteBuilder",
    (
      {
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
      }
    ) =>
      PageRouteBuilder(
      settings: settings,
      pageBuilder: null,
      transitionsBuilder: null,
      transitionDuration: transitionDuration,
      opaque: opaque,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      maintainState: maintainState,
      fullscreenDialog: fullscreenDialog,
    ),
);
var _modalBarrier = MXFunctionInvoke(
    "ModalBarrier",
    (
      {
      Key key,
      Color color,
      bool dismissible = true,
      String semanticsLabel,
      bool barrierSemanticsDismissible = true,
      }
    ) =>
      ModalBarrier(
      key: key,
      color: color,
      dismissible: dismissible,
      semanticsLabel: semanticsLabel,
      barrierSemanticsDismissible: barrierSemanticsDismissible,
    ),
);
var _animatedModalBarrier = MXFunctionInvoke(
    "AnimatedModalBarrier",
    (
      {
      Key key,
      Animation<Color> color,
      bool dismissible = true,
      String semanticsLabel,
      bool barrierSemanticsDismissible,
      }
    ) =>
      AnimatedModalBarrier(
      key: key,
      color: color,
      dismissible: dismissible,
      semanticsLabel: semanticsLabel,
      barrierSemanticsDismissible: barrierSemanticsDismissible,
    ),
);
var _localHistoryEntry = MXFunctionInvoke(
    "LocalHistoryEntry",
    (
      {
      dynamic onRemove,
      }
    ) =>
      LocalHistoryEntry(
      onRemove: createVoidCallbackClosure(_localHistoryEntry.buildOwner, onRemove),
    ),
);
var _navigatorObserver = MXFunctionInvoke(
    "NavigatorObserver",
    (
    ) =>
      NavigatorObserver(
    ),
);
var _routeObserver = MXFunctionInvoke(
    "RouteObserver",
    (
    ) =>
      RouteObserver(
    ),
);
var _routePopDisposition = MXFunctionInvoke(
    "RoutePopDisposition",
    ({Map args}) => MXRoutePopDisposition.parse(args),
  );
var _routeSettings = MXFunctionInvoke(
    "RouteSettings",
    (
      {
      String name,
      Object arguments,
      }
    ) =>
      RouteSettings(
      name: name,
      arguments: arguments,
    ),
);
var _customBuilderPage = MXFunctionInvoke(
    "CustomBuilderPage",
    (
      {
      LocalKey key,
      dynamic routeBuilder,
      String name,
      Object arguments,
      }
    ) =>
      CustomBuilderPage(
      key: key,
      routeBuilder: null,
      name: name,
      arguments: arguments,
    ),
);
var _defaultTransitionDelegate = MXFunctionInvoke(
    "DefaultTransitionDelegate",
    (
    ) =>
      DefaultTransitionDelegate(
    ),
);
var _navigator = MXFunctionInvoke(
    "Navigator",
    (
      {
      Key key,
      List<Page<dynamic>> pages,
      dynamic onPopPage,
      String initialRoute,
      dynamic onGenerateInitialRoutes,
      dynamic onGenerateRoute,
      dynamic onUnknownRoute,
      TransitionDelegate<dynamic> transitionDelegate,
      List<NavigatorObserver> observers,
      }
    ) =>
      Navigator(
      key: key,
      pages: pages,
      onPopPage: null,
      initialRoute: initialRoute,
      onGenerateInitialRoutes: null,
      onGenerateRoute: createGenericValueGenericClosure<Route<dynamic>, RouteSettings>(_navigator.buildOwner, onGenerateRoute),
      onUnknownRoute: createGenericValueGenericClosure<Route<dynamic>, RouteSettings>(_navigator.buildOwner, onUnknownRoute),
      transitionDelegate: transitionDelegate,
      observers: observers,
    ),
);
var _navigatorState = MXFunctionInvoke(
    "NavigatorState",
    (
    ) =>
      NavigatorState(
    ),
);
var _visibility = MXFunctionInvoke(
    "Visibility",
    (
      {
      Key key,
      Widget child,
      Widget replacement,
      bool visible = true,
      bool maintainState = false,
      bool maintainAnimation = false,
      bool maintainSize = false,
      bool maintainSemantics = false,
      bool maintainInteractivity = false,
      }
    ) =>
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
var _sliverVisibility = MXFunctionInvoke(
    "SliverVisibility",
    (
      {
      Key key,
      Widget sliver,
      Widget replacementSliver,
      bool visible = true,
      bool maintainState = false,
      bool maintainAnimation = false,
      bool maintainSize = false,
      bool maintainSemantics = false,
      bool maintainInteractivity = false,
      }
    ) =>
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
var _defaultTextStyle = MXFunctionInvoke(
    "DefaultTextStyle",
    (
      {
      Key key,
      TextStyle style,
      TextAlign textAlign,
      bool softWrap = true,
      TextOverflow overflow = TextOverflow.clip,
      int maxLines,
      TextWidthBasis textWidthBasis = TextWidthBasis.parent,
      TextHeightBehavior textHeightBehavior,
      Widget child,
      }
    ) =>
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
var _defaultTextStyle_fallback = MXFunctionInvoke(
  "defaultTextStyle.fallback",
    (
      {
      Key key,
      }
    ) =>
      DefaultTextStyle.fallback(
      key: key,
    ),
);
var _text = MXFunctionInvoke(
    "Text",
    (
      {
      String data,
      Key key,
      TextStyle style,
      StrutStyle strutStyle,
      TextAlign textAlign,
      TextDirection textDirection,
      Locale locale,
      bool softWrap,
      TextOverflow overflow,
      double textScaleFactor,
      int maxLines,
      String semanticsLabel,
      TextWidthBasis textWidthBasis,
      TextHeightBehavior textHeightBehavior,
      }
    ) =>
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
var _text_rich = MXFunctionInvoke(
  "text.rich",
    (
      {
      InlineSpan textSpan,
      Key key,
      TextStyle style,
      StrutStyle strutStyle,
      TextAlign textAlign,
      TextDirection textDirection,
      Locale locale,
      bool softWrap,
      TextOverflow overflow,
      double textScaleFactor,
      int maxLines,
      String semanticsLabel,
      TextWidthBasis textWidthBasis,
      TextHeightBehavior textHeightBehavior,
      }
    ) =>
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
var _slideTransition = MXFunctionInvoke(
    "SlideTransition",
    (
      {
      Key key,
      Animation<Offset> position,
      bool transformHitTests = true,
      TextDirection textDirection,
      Widget child,
      }
    ) =>
      SlideTransition(
      key: key,
      position: position,
      transformHitTests: transformHitTests,
      textDirection: textDirection,
      child: child,
    ),
);
var _scaleTransition = MXFunctionInvoke(
    "ScaleTransition",
    (
      {
      Key key,
      Animation<double> scale,
      Alignment alignment,
      Widget child,
      }
    ) =>
      ScaleTransition(
      key: key,
      scale: scale,
      alignment: alignment,
      child: child,
    ),
);
var _rotationTransition = MXFunctionInvoke(
    "RotationTransition",
    (
      {
      Key key,
      Animation<double> turns,
      Alignment alignment,
      Widget child,
      }
    ) =>
      RotationTransition(
      key: key,
      turns: turns,
      alignment: alignment,
      child: child,
    ),
);
var _sizeTransition = MXFunctionInvoke(
    "SizeTransition",
    (
      {
      Key key,
      Axis axis = Axis.vertical,
      Animation<double> sizeFactor,
      double axisAlignment = 0.0,
      Widget child,
      }
    ) =>
      SizeTransition(
      key: key,
      axis: axis,
      sizeFactor: sizeFactor,
      axisAlignment: axisAlignment?.toDouble(),
      child: child,
    ),
);
var _fadeTransition = MXFunctionInvoke(
    "FadeTransition",
    (
      {
      Key key,
      Animation<double> opacity,
      bool alwaysIncludeSemantics = false,
      Widget child,
      }
    ) =>
      FadeTransition(
      key: key,
      opacity: opacity,
      alwaysIncludeSemantics: alwaysIncludeSemantics,
      child: child,
    ),
);
var _sliverFadeTransition = MXFunctionInvoke(
    "SliverFadeTransition",
    (
      {
      Key key,
      Animation<double> opacity,
      bool alwaysIncludeSemantics = false,
      Widget sliver,
      }
    ) =>
      SliverFadeTransition(
      key: key,
      opacity: opacity,
      alwaysIncludeSemantics: alwaysIncludeSemantics,
      sliver: sliver,
    ),
);
var _relativeRectTween = MXFunctionInvoke(
    "RelativeRectTween",
    (
      {
      RelativeRect begin,
      RelativeRect end,
      }
    ) =>
      RelativeRectTween(
      begin: begin,
      end: end,
    ),
);
var _positionedTransition = MXFunctionInvoke(
    "PositionedTransition",
    (
      {
      Key key,
      Animation<RelativeRect> rect,
      Widget child,
      }
    ) =>
      PositionedTransition(
      key: key,
      rect: rect,
      child: child,
    ),
);
var _relativePositionedTransition = MXFunctionInvoke(
    "RelativePositionedTransition",
    (
      {
      Key key,
      Animation<Rect> rect,
      Size size,
      Widget child,
      }
    ) =>
      RelativePositionedTransition(
      key: key,
      rect: rect,
      size: size,
      child: child,
    ),
);
var _decoratedBoxTransition = MXFunctionInvoke(
    "DecoratedBoxTransition",
    (
      {
      Key key,
      Animation<Decoration> decoration,
      DecorationPosition position = DecorationPosition.background,
      Widget child,
      }
    ) =>
      DecoratedBoxTransition(
      key: key,
      decoration: decoration,
      position: position,
      child: child,
    ),
);
var _alignTransition = MXFunctionInvoke(
    "AlignTransition",
    (
      {
      Key key,
      Animation<AlignmentGeometry> alignment,
      Widget child,
      double widthFactor,
      double heightFactor,
      }
    ) =>
      AlignTransition(
      key: key,
      alignment: alignment,
      child: child,
      widthFactor: widthFactor?.toDouble(),
      heightFactor: heightFactor?.toDouble(),
    ),
);
var _defaultTextStyleTransition = MXFunctionInvoke(
    "DefaultTextStyleTransition",
    (
      {
      Key key,
      Animation<TextStyle> style,
      Widget child,
      TextAlign textAlign,
      bool softWrap = true,
      TextOverflow overflow = TextOverflow.clip,
      int maxLines,
      }
    ) =>
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
var _animatedBuilder = MXFunctionInvoke(
    "AnimatedBuilder",
    (
      {
      Key key,
      Listenable animation,
      dynamic builder,
      Widget child,
      }
    ) =>
      AnimatedBuilder(
      key: key,
      animation: animation,
      builder: null,
      child: child,
    ),
);
var _overlayEntry = MXFunctionInvoke(
    "OverlayEntry",
    (
      {
      dynamic builder,
      bool opaque = false,
      bool maintainState = false,
      }
    ) =>
      OverlayEntry(
      builder: createGenericValueGenericClosure<Widget, BuildContext>(_overlayEntry.buildOwner, builder),
      opaque: opaque,
      maintainState: maintainState,
    ),
);
var _overlay = MXFunctionInvoke(
    "Overlay",
    (
      {
      Key key,
      List<OverlayEntry> initialEntries,
      }
    ) =>
      Overlay(
      key: key,
      initialEntries: initialEntries,
    ),
);
var _overlayState = MXFunctionInvoke(
    "OverlayState",
    (
    ) =>
      OverlayState(
    ),
);
var _textSelectionHandleType = MXFunctionInvoke(
    "TextSelectionHandleType",
    ({Map args}) => MXTextSelectionHandleType.parse(args),
  );
var _textSelectionOverlay = MXFunctionInvoke(
    "TextSelectionOverlay",
    (
      {
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
      }
    ) =>
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
      onSelectionHandleTapped: createVoidCallbackClosure(_textSelectionOverlay.buildOwner, onSelectionHandleTapped),
    ),
);
var _textSelectionGestureDetectorBuilder = MXFunctionInvoke(
    "TextSelectionGestureDetectorBuilder",
    (
      {
      TextSelectionGestureDetectorBuilderDelegate delegate,
      }
    ) =>
      TextSelectionGestureDetectorBuilder(
      delegate: delegate,
    ),
);
var _textSelectionGestureDetector = MXFunctionInvoke(
    "TextSelectionGestureDetector",
    (
      {
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
      }
    ) =>
      TextSelectionGestureDetector(
      key: key,
      onTapDown: createValueChangedGenericClosure<TapDownDetails>(_textSelectionGestureDetector.buildOwner, onTapDown),
      onForcePressStart: createValueChangedGenericClosure<ForcePressDetails>(_textSelectionGestureDetector.buildOwner, onForcePressStart),
      onForcePressEnd: createValueChangedGenericClosure<ForcePressDetails>(_textSelectionGestureDetector.buildOwner, onForcePressEnd),
      onSingleTapUp: createValueChangedGenericClosure<TapUpDetails>(_textSelectionGestureDetector.buildOwner, onSingleTapUp),
      onSingleTapCancel: createVoidCallbackClosure(_textSelectionGestureDetector.buildOwner, onSingleTapCancel),
      onSingleLongTapStart: createValueChangedGenericClosure<LongPressStartDetails>(_textSelectionGestureDetector.buildOwner, onSingleLongTapStart),
      onSingleLongTapMoveUpdate: createValueChangedGenericClosure<LongPressMoveUpdateDetails>(_textSelectionGestureDetector.buildOwner, onSingleLongTapMoveUpdate),
      onSingleLongTapEnd: createValueChangedGenericClosure<LongPressEndDetails>(_textSelectionGestureDetector.buildOwner, onSingleLongTapEnd),
      onDoubleTapDown: createValueChangedGenericClosure<TapDownDetails>(_textSelectionGestureDetector.buildOwner, onDoubleTapDown),
      onDragSelectionStart: createValueChangedGenericClosure<DragStartDetails>(_textSelectionGestureDetector.buildOwner, onDragSelectionStart),
      onDragSelectionUpdate: null,
      onDragSelectionEnd: createValueChangedGenericClosure<DragEndDetails>(_textSelectionGestureDetector.buildOwner, onDragSelectionEnd),
      behavior: behavior,
      child: child,
    ),
);
var _viewport = MXFunctionInvoke(
    "Viewport",
    (
      {
      Key key,
      AxisDirection axisDirection = AxisDirection.down,
      AxisDirection crossAxisDirection,
      double anchor = 0.0,
      ViewportOffset offset,
      Key center,
      double cacheExtent,
      CacheExtentStyle cacheExtentStyle = CacheExtentStyle.pixel,
      List<Widget> slivers,
      }
    ) =>
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
var _shrinkWrappingViewport = MXFunctionInvoke(
    "ShrinkWrappingViewport",
    (
      {
      Key key,
      AxisDirection axisDirection = AxisDirection.down,
      AxisDirection crossAxisDirection,
      ViewportOffset offset,
      List<Widget> slivers,
      }
    ) =>
      ShrinkWrappingViewport(
      key: key,
      axisDirection: axisDirection,
      crossAxisDirection: crossAxisDirection,
      offset: offset,
      slivers: slivers,
    ),
);
var _scrollPositionWithSingleContext = MXFunctionInvoke(
    "ScrollPositionWithSingleContext",
    (
      {
      ScrollPhysics physics,
      ScrollContext context,
      double initialPixels = 0.0,
      bool keepScrollOffset = true,
      ScrollPosition oldPosition,
      String debugLabel,
      }
    ) =>
      ScrollPositionWithSingleContext(
      physics: physics,
      context: context,
      initialPixels: initialPixels?.toDouble(),
      keepScrollOffset: keepScrollOffset,
      oldPosition: oldPosition,
      debugLabel: debugLabel,
    ),
);
var _idleScrollActivity = MXFunctionInvoke(
    "IdleScrollActivity",
    (
      {
      ScrollActivityDelegate delegate,
      }
    ) =>
      IdleScrollActivity(
      delegate,
    ),
);
var _holdScrollActivity = MXFunctionInvoke(
    "HoldScrollActivity",
    (
      {
      ScrollActivityDelegate delegate,
      dynamic onHoldCanceled,
      }
    ) =>
      HoldScrollActivity(
      delegate: delegate,
      onHoldCanceled: createVoidCallbackClosure(_holdScrollActivity.buildOwner, onHoldCanceled),
    ),
);
var _scrollDragController = MXFunctionInvoke(
    "ScrollDragController",
    (
      {
      ScrollActivityDelegate delegate,
      DragStartDetails details,
      dynamic onDragCanceled,
      double carriedVelocity,
      double motionStartDistanceThreshold,
      }
    ) =>
      ScrollDragController(
      delegate: delegate,
      details: details,
      onDragCanceled: createVoidCallbackClosure(_scrollDragController.buildOwner, onDragCanceled),
      carriedVelocity: carriedVelocity?.toDouble(),
      motionStartDistanceThreshold: motionStartDistanceThreshold?.toDouble(),
    ),
);
var _dragScrollActivity = MXFunctionInvoke(
    "DragScrollActivity",
    (
      {
      ScrollActivityDelegate delegate,
      ScrollDragController controller,
      }
    ) =>
      DragScrollActivity(
      delegate,
      controller,
    ),
);
var _ballisticScrollActivity = MXFunctionInvoke(
    "BallisticScrollActivity",
    (
      {
      ScrollActivityDelegate delegate,
      Simulation simulation,
      TickerProvider vsync,
      }
    ) =>
      BallisticScrollActivity(
      delegate,
      simulation,
      vsync,
    ),
);
var _drivenScrollActivity = MXFunctionInvoke(
    "DrivenScrollActivity",
    (
      {
      ScrollActivityDelegate delegate,
      double from,
      double to,
      Duration duration,
      Curve curve,
      TickerProvider vsync,
      }
    ) =>
      DrivenScrollActivity(
      delegate,
      from: from?.toDouble(),
      to: to?.toDouble(),
      duration: duration,
      curve: curve,
      vsync: vsync,
    ),
);
var _pageStorageKey = MXFunctionInvoke(
    "PageStorageKey",
    (
      {
      dynamic value,
      }
    ) =>
      PageStorageKey(
      value,
    ),
);
var _pageStorageBucket = MXFunctionInvoke(
    "PageStorageBucket",
    (
    ) =>
      PageStorageBucket(
    ),
);
var _pageStorage = MXFunctionInvoke(
    "PageStorage",
    (
      {
      Key key,
      PageStorageBucket bucket,
      Widget child,
      }
    ) =>
      PageStorage(
      key: key,
      bucket: bucket,
      child: child,
    ),
);
var _scrollPositionAlignmentPolicy = MXFunctionInvoke(
    "ScrollPositionAlignmentPolicy",
    ({Map args}) => MXScrollPositionAlignmentPolicy.parse(args),
  );
var _scrollController = MXFunctionInvoke(
    "ScrollController",
    (
      {
      double initialScrollOffset = 0.0,
      bool keepScrollOffset = true,
      String debugLabel,
      }
    ) =>
      ScrollController(
      initialScrollOffset: initialScrollOffset?.toDouble(),
      keepScrollOffset: keepScrollOffset,
      debugLabel: debugLabel,
    ),
);
var _trackingScrollController = MXFunctionInvoke(
    "TrackingScrollController",
    (
      {
      double initialScrollOffset = 0.0,
      bool keepScrollOffset = true,
      String debugLabel,
      }
    ) =>
      TrackingScrollController(
      initialScrollOffset: initialScrollOffset?.toDouble(),
      keepScrollOffset: keepScrollOffset,
      debugLabel: debugLabel,
    ),
);
var _scrollPhysics = MXFunctionInvoke(
    "ScrollPhysics",
    (
      {
      ScrollPhysics parent,
      }
    ) =>
      ScrollPhysics(
      parent: parent,
    ),
);
var _bouncingScrollPhysics = MXFunctionInvoke(
    "BouncingScrollPhysics",
    (
      {
      ScrollPhysics parent,
      }
    ) =>
      BouncingScrollPhysics(
      parent: parent,
    ),
);
var _clampingScrollPhysics = MXFunctionInvoke(
    "ClampingScrollPhysics",
    (
      {
      ScrollPhysics parent,
      }
    ) =>
      ClampingScrollPhysics(
      parent: parent,
    ),
);
var _alwaysScrollableScrollPhysics = MXFunctionInvoke(
    "AlwaysScrollableScrollPhysics",
    (
      {
      ScrollPhysics parent,
      }
    ) =>
      AlwaysScrollableScrollPhysics(
      parent: parent,
    ),
);
var _neverScrollableScrollPhysics = MXFunctionInvoke(
    "NeverScrollableScrollPhysics",
    (
      {
      ScrollPhysics parent,
      }
    ) =>
      NeverScrollableScrollPhysics(
      parent: parent,
    ),
);
var _tickerMode = MXFunctionInvoke(
    "TickerMode",
    (
      {
      Key key,
      bool enabled,
      Widget child,
      }
    ) =>
      TickerMode(
      key: key,
      enabled: enabled,
      child: child,
    ),
);
var _scrollStartNotification = MXFunctionInvoke(
    "ScrollStartNotification",
    (
      {
      ScrollMetrics metrics,
      BuildContext context,
      DragStartDetails dragDetails,
      }
    ) =>
      ScrollStartNotification(
      metrics: metrics,
      context: context,
      dragDetails: dragDetails,
    ),
);
var _scrollUpdateNotification = MXFunctionInvoke(
    "ScrollUpdateNotification",
    (
      {
      ScrollMetrics metrics,
      BuildContext context,
      DragUpdateDetails dragDetails,
      double scrollDelta,
      }
    ) =>
      ScrollUpdateNotification(
      metrics: metrics,
      context: context,
      dragDetails: dragDetails,
      scrollDelta: scrollDelta?.toDouble(),
    ),
);
var _overscrollNotification = MXFunctionInvoke(
    "OverscrollNotification",
    (
      {
      ScrollMetrics metrics,
      BuildContext context,
      DragUpdateDetails dragDetails,
      double overscroll,
      double velocity = 0.0,
      }
    ) =>
      OverscrollNotification(
      metrics: metrics,
      context: context,
      dragDetails: dragDetails,
      overscroll: overscroll?.toDouble(),
      velocity: velocity?.toDouble(),
    ),
);
var _scrollEndNotification = MXFunctionInvoke(
    "ScrollEndNotification",
    (
      {
      ScrollMetrics metrics,
      BuildContext context,
      DragEndDetails dragDetails,
      }
    ) =>
      ScrollEndNotification(
      metrics: metrics,
      context: context,
      dragDetails: dragDetails,
    ),
);
var _userScrollNotification = MXFunctionInvoke(
    "UserScrollNotification",
    (
      {
      ScrollMetrics metrics,
      BuildContext context,
      ScrollDirection direction,
      }
    ) =>
      UserScrollNotification(
      metrics: metrics,
      context: context,
      direction: direction,
    ),
);
var _glowingOverscrollIndicator = MXFunctionInvoke(
    "GlowingOverscrollIndicator",
    (
      {
      Key key,
      bool showLeading = true,
      bool showTrailing = true,
      AxisDirection axisDirection,
      Color color,
      dynamic notificationPredicate,
      Widget child,
      }
    ) =>
      GlowingOverscrollIndicator(
      key: key,
      showLeading: showLeading,
      showTrailing: showTrailing,
      axisDirection: axisDirection,
      color: color,
      notificationPredicate: createGenericValueGenericClosure<bool, ScrollNotification>(_glowingOverscrollIndicator.buildOwner, notificationPredicate),
      child: child,
    ),
);
var _overscrollIndicatorNotification = MXFunctionInvoke(
    "OverscrollIndicatorNotification",
    (
      {
      bool leading,
      }
    ) =>
      OverscrollIndicatorNotification(
      leading: leading,
    ),
);
var _scrollBehavior = MXFunctionInvoke(
    "ScrollBehavior",
    (
    ) =>
      ScrollBehavior(
    ),
);
var _scrollConfiguration = MXFunctionInvoke(
    "ScrollConfiguration",
    (
      {
      Key key,
      ScrollBehavior behavior,
      Widget child,
      }
    ) =>
      ScrollConfiguration(
      key: key,
      behavior: behavior,
      child: child,
    ),
);
var _gestureRecognizerFactoryWithHandlers = MXFunctionInvoke(
    "GestureRecognizerFactoryWithHandlers",
    (
      {
      dynamic constructor,
      dynamic initializer,
      }
    ) =>
      GestureRecognizerFactoryWithHandlers(
      constructor,
      initializer,
    ),
);
var _gestureDetector = MXFunctionInvoke(
    "GestureDetector",
    (
      {
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
      }
    ) =>
      GestureDetector(
      key: key,
      child: child,
      onTapDown: createValueChangedGenericClosure<TapDownDetails>(_gestureDetector.buildOwner, onTapDown),
      onTapUp: createValueChangedGenericClosure<TapUpDetails>(_gestureDetector.buildOwner, onTapUp),
      onTap: createVoidCallbackClosure(_gestureDetector.buildOwner, onTap),
      onTapCancel: createVoidCallbackClosure(_gestureDetector.buildOwner, onTapCancel),
      onSecondaryTapDown: createValueChangedGenericClosure<TapDownDetails>(_gestureDetector.buildOwner, onSecondaryTapDown),
      onSecondaryTapUp: createValueChangedGenericClosure<TapUpDetails>(_gestureDetector.buildOwner, onSecondaryTapUp),
      onSecondaryTapCancel: createVoidCallbackClosure(_gestureDetector.buildOwner, onSecondaryTapCancel),
      onDoubleTap: createVoidCallbackClosure(_gestureDetector.buildOwner, onDoubleTap),
      onLongPress: createVoidCallbackClosure(_gestureDetector.buildOwner, onLongPress),
      onLongPressStart: createValueChangedGenericClosure<LongPressStartDetails>(_gestureDetector.buildOwner, onLongPressStart),
      onLongPressMoveUpdate: createValueChangedGenericClosure<LongPressMoveUpdateDetails>(_gestureDetector.buildOwner, onLongPressMoveUpdate),
      onLongPressUp: createVoidCallbackClosure(_gestureDetector.buildOwner, onLongPressUp),
      onLongPressEnd: createValueChangedGenericClosure<LongPressEndDetails>(_gestureDetector.buildOwner, onLongPressEnd),
      onVerticalDragDown: createValueChangedGenericClosure<DragDownDetails>(_gestureDetector.buildOwner, onVerticalDragDown),
      onVerticalDragStart: createValueChangedGenericClosure<DragStartDetails>(_gestureDetector.buildOwner, onVerticalDragStart),
      onVerticalDragUpdate: createValueChangedGenericClosure<DragUpdateDetails>(_gestureDetector.buildOwner, onVerticalDragUpdate),
      onVerticalDragEnd: createValueChangedGenericClosure<DragEndDetails>(_gestureDetector.buildOwner, onVerticalDragEnd),
      onVerticalDragCancel: createVoidCallbackClosure(_gestureDetector.buildOwner, onVerticalDragCancel),
      onHorizontalDragDown: createValueChangedGenericClosure<DragDownDetails>(_gestureDetector.buildOwner, onHorizontalDragDown),
      onHorizontalDragStart: createValueChangedGenericClosure<DragStartDetails>(_gestureDetector.buildOwner, onHorizontalDragStart),
      onHorizontalDragUpdate: createValueChangedGenericClosure<DragUpdateDetails>(_gestureDetector.buildOwner, onHorizontalDragUpdate),
      onHorizontalDragEnd: createValueChangedGenericClosure<DragEndDetails>(_gestureDetector.buildOwner, onHorizontalDragEnd),
      onHorizontalDragCancel: createVoidCallbackClosure(_gestureDetector.buildOwner, onHorizontalDragCancel),
      onForcePressStart: createValueChangedGenericClosure<ForcePressDetails>(_gestureDetector.buildOwner, onForcePressStart),
      onForcePressPeak: createValueChangedGenericClosure<ForcePressDetails>(_gestureDetector.buildOwner, onForcePressPeak),
      onForcePressUpdate: createValueChangedGenericClosure<ForcePressDetails>(_gestureDetector.buildOwner, onForcePressUpdate),
      onForcePressEnd: createValueChangedGenericClosure<ForcePressDetails>(_gestureDetector.buildOwner, onForcePressEnd),
      onPanDown: createValueChangedGenericClosure<DragDownDetails>(_gestureDetector.buildOwner, onPanDown),
      onPanStart: createValueChangedGenericClosure<DragStartDetails>(_gestureDetector.buildOwner, onPanStart),
      onPanUpdate: createValueChangedGenericClosure<DragUpdateDetails>(_gestureDetector.buildOwner, onPanUpdate),
      onPanEnd: createValueChangedGenericClosure<DragEndDetails>(_gestureDetector.buildOwner, onPanEnd),
      onPanCancel: createVoidCallbackClosure(_gestureDetector.buildOwner, onPanCancel),
      onScaleStart: createValueChangedGenericClosure<ScaleStartDetails>(_gestureDetector.buildOwner, onScaleStart),
      onScaleUpdate: createValueChangedGenericClosure<ScaleUpdateDetails>(_gestureDetector.buildOwner, onScaleUpdate),
      onScaleEnd: createValueChangedGenericClosure<ScaleEndDetails>(_gestureDetector.buildOwner, onScaleEnd),
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
    ),
);
var _rawGestureDetector = MXFunctionInvoke(
    "RawGestureDetector",
    (
      {
      Key key,
      Widget child,
      Map<Type, GestureRecognizerFactory<GestureRecognizer>> gestures,
      HitTestBehavior behavior,
      bool excludeFromSemantics = false,
      SemanticsGestureDelegate semantics,
      }
    ) =>
      RawGestureDetector(
      key: key,
      child: child,
      gestures: gestures,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      semantics: semantics,
    ),
);
var _rawGestureDetectorState = MXFunctionInvoke(
    "RawGestureDetectorState",
    (
    ) =>
      RawGestureDetectorState(
    ),
);
var _scrollable = MXFunctionInvoke(
    "Scrollable",
    (
      {
      Key key,
      AxisDirection axisDirection = AxisDirection.down,
      ScrollController controller,
      ScrollPhysics physics,
      dynamic viewportBuilder,
      dynamic incrementCalculator,
      bool excludeFromSemantics = false,
      int semanticChildCount,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      }
    ) =>
      Scrollable(
      key: key,
      axisDirection: axisDirection,
      controller: controller,
      physics: physics,
      viewportBuilder: null,
      incrementCalculator: createGenericValueGenericClosure<double, ScrollIncrementDetails>(_scrollable.buildOwner, incrementCalculator),
      excludeFromSemantics: excludeFromSemantics,
      semanticChildCount: semanticChildCount,
      dragStartBehavior: dragStartBehavior,
    ),
);
var _scrollableState = MXFunctionInvoke(
    "ScrollableState",
    (
    ) =>
      ScrollableState(
    ),
);
var _scrollIncrementType = MXFunctionInvoke(
    "ScrollIncrementType",
    ({Map args}) => MXScrollIncrementType.parse(args),
  );
var _scrollIncrementDetails = MXFunctionInvoke(
    "ScrollIncrementDetails",
    (
      {
      ScrollIncrementType type,
      ScrollMetrics metrics,
      }
    ) =>
      ScrollIncrementDetails(
      type: type,
      metrics: metrics,
    ),
);
var _intent = MXFunctionInvoke(
    "Intent",
    (
      {
      LocalKey key,
      }
    ) =>
      Intent(
      key,
    ),
);
var _scrollIntent = MXFunctionInvoke(
    "ScrollIntent",
    (
      {
      AxisDirection direction,
      ScrollIncrementType type = ScrollIncrementType.line,
      }
    ) =>
      ScrollIntent(
      direction: direction,
      type: type,
    ),
);
var _scrollAction = MXFunctionInvoke(
    "ScrollAction",
    (
    ) =>
      ScrollAction(
    ),
);
var _scrollAwareImageProvider = MXFunctionInvoke(
    "ScrollAwareImageProvider",
    (
      {
      DisposableBuildContext<State<StatefulWidget>> context,
      ImageProvider<dynamic> imageProvider,
      }
    ) =>
      ScrollAwareImageProvider(
      context: context,
      imageProvider: imageProvider,
    ),
);
var _orientation = MXFunctionInvoke(
    "Orientation",
    ({Map args}) => MXOrientation.parse(args),
  );
var _mediaQueryData = MXFunctionInvoke(
    "MediaQueryData",
    (
      {
      Size size,
      double devicePixelRatio = 1.0,
      double textScaleFactor = 1.0,
      Brightness platformBrightness = Brightness.light,
      EdgeInsets padding,
      EdgeInsets viewInsets,
      EdgeInsets systemGestureInsets,
      EdgeInsets viewPadding,
      double physicalDepth = 1.7976931348623157e+308,
      bool alwaysUse24HourFormat = false,
      bool accessibleNavigation = false,
      bool invertColors = false,
      bool highContrast = false,
      bool disableAnimations = false,
      bool boldText = false,
      }
    ) =>
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
var _mediaQueryData_fromWindow = MXFunctionInvoke(
  "mediaQueryData.fromWindow",
    (
      {
      Window window,
      }
    ) =>
      MediaQueryData.fromWindow(
      window,
    ),
);
var _mediaQuery = MXFunctionInvoke(
    "MediaQuery",
    (
      {
      Key key,
      MediaQueryData data,
      Widget child,
      }
    ) =>
      MediaQuery(
      key: key,
      data: data,
      child: child,
    ),
);
var _mediaQuery_removePadding = MXFunctionInvoke(
  "mediaQuery.removePadding",
    (
      {
      Key key,
      BuildContext context,
      bool removeLeft = false,
      bool removeTop = false,
      bool removeRight = false,
      bool removeBottom = false,
      Widget child,
      }
    ) =>
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
var _mediaQuery_removeViewInsets = MXFunctionInvoke(
  "mediaQuery.removeViewInsets",
    (
      {
      Key key,
      BuildContext context,
      bool removeLeft = false,
      bool removeTop = false,
      bool removeRight = false,
      bool removeBottom = false,
      Widget child,
      }
    ) =>
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
var _mediaQuery_removeViewPadding = MXFunctionInvoke(
  "mediaQuery.removeViewPadding",
    (
      {
      Key key,
      BuildContext context,
      bool removeLeft = false,
      bool removeTop = false,
      bool removeRight = false,
      bool removeBottom = false,
      Widget child,
      }
    ) =>
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
var _disposableBuildContext = MXFunctionInvoke(
    "DisposableBuildContext",
    (
      {
      State<StatefulWidget> state,
      }
    ) =>
      DisposableBuildContext(
      state,
    ),
);
var _image = MXFunctionInvoke(
    "Image",
    (
      {
      Key key,
      ImageProvider<dynamic> image,
      dynamic frameBuilder,
      dynamic loadingBuilder,
      dynamic errorBuilder,
      String semanticLabel,
      bool excludeFromSemantics = false,
      double width,
      double height,
      Color color,
      BlendMode colorBlendMode,
      BoxFit fit,
      AlignmentGeometry alignment,
      ImageRepeat repeat = ImageRepeat.noRepeat,
      Rect centerSlice,
      bool matchTextDirection = false,
      bool gaplessPlayback = false,
      FilterQuality filterQuality = FilterQuality.low,
      }
    ) =>
      Image(
      key: key,
      image: image,
      frameBuilder: null,
      loadingBuilder: null,
      errorBuilder: null,
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
var _image_network = MXFunctionInvoke(
  "image.network",
    (
      {
      String src,
      Key key,
      double scale = 1.0,
      dynamic frameBuilder,
      dynamic loadingBuilder,
      dynamic errorBuilder,
      String semanticLabel,
      bool excludeFromSemantics = false,
      double width,
      double height,
      Color color,
      BlendMode colorBlendMode,
      BoxFit fit,
      AlignmentGeometry alignment,
      ImageRepeat repeat = ImageRepeat.noRepeat,
      Rect centerSlice,
      bool matchTextDirection = false,
      bool gaplessPlayback = false,
      FilterQuality filterQuality = FilterQuality.low,
      Map<String, String> headers,
      int cacheWidth,
      int cacheHeight,
      }
    ) =>
      Image.network(
      src,
      key: key,
      scale: scale?.toDouble(),
      frameBuilder: null,
      loadingBuilder: null,
      errorBuilder: null,
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
var _image_file = MXFunctionInvoke(
  "image.file",
    (
      {
      File file,
      Key key,
      double scale = 1.0,
      dynamic frameBuilder,
      dynamic errorBuilder,
      String semanticLabel,
      bool excludeFromSemantics = false,
      double width,
      double height,
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
      }
    ) =>
      Image.file(
      file,
      key: key,
      scale: scale?.toDouble(),
      frameBuilder: null,
      errorBuilder: null,
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
var _image_asset = MXFunctionInvoke(
  "image.asset",
    (
      {
      String name,
      Key key,
      AssetBundle bundle,
      dynamic frameBuilder,
      dynamic errorBuilder,
      String semanticLabel,
      bool excludeFromSemantics = false,
      double scale,
      double width,
      double height,
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
      }
    ) =>
      Image.asset(
      name,
      key: key,
      bundle: bundle,
      frameBuilder: null,
      errorBuilder: null,
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
var _image_memory = MXFunctionInvoke(
  "image.memory",
    (
      {
      Uint8List bytes,
      Key key,
      double scale = 1.0,
      dynamic frameBuilder,
      dynamic errorBuilder,
      String semanticLabel,
      bool excludeFromSemantics = false,
      double width,
      double height,
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
      }
    ) =>
      Image.memory(
      bytes,
      key: key,
      scale: scale?.toDouble(),
      frameBuilder: null,
      errorBuilder: null,
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
var _decoratedBox = MXFunctionInvoke(
    "DecoratedBox",
    (
      {
      Key key,
      Decoration decoration,
      DecorationPosition position = DecorationPosition.background,
      Widget child,
      }
    ) =>
      DecoratedBox(
      key: key,
      decoration: decoration,
      position: position,
      child: child,
    ),
);
var _container = MXFunctionInvoke(
    "Container",
    (
      {
      Key key,
      AlignmentGeometry alignment,
      EdgeInsetsGeometry padding,
      Color color,
      Decoration decoration,
      Decoration foregroundDecoration,
      double width,
      double height,
      BoxConstraints constraints,
      EdgeInsetsGeometry margin,
      Matrix4 transform,
      Widget child,
      Clip clipBehavior = Clip.none,
      }
    ) =>
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
var _defaultWidgetsLocalizations = MXFunctionInvoke(
    "DefaultWidgetsLocalizations",
    (
    ) =>
      DefaultWidgetsLocalizations(
    ),
);
var _localizations = MXFunctionInvoke(
    "Localizations",
    (
      {
      Key key,
      Locale locale,
      List<LocalizationsDelegate<dynamic>> delegates,
      Widget child,
      }
    ) =>
      Localizations(
      key: key,
      locale: locale,
      delegates: delegates,
      child: child,
    ),
);
var _localizations_override = MXFunctionInvoke(
  "localizations.override",
    (
      {
      Key key,
      BuildContext context,
      Locale locale,
      List<LocalizationsDelegate<dynamic>> delegates,
      Widget child,
      }
    ) =>
      Localizations.override(
      key: key,
      context: context,
      locale: locale,
      delegates: delegates,
      child: child,
    ),
);
var _focus = MXFunctionInvoke(
    "Focus",
    (
      {
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
      }
    ) =>
      Focus(
      key: key,
      child: child,
      focusNode: focusNode,
      autofocus: autofocus,
      onFocusChange: createValueChangedGenericClosure<bool>(_focus.buildOwner, onFocusChange),
      onKey: null,
      debugLabel: debugLabel,
      canRequestFocus: canRequestFocus,
      skipTraversal: skipTraversal,
      includeSemantics: includeSemantics,
    ),
);
var _focusScope = MXFunctionInvoke(
    "FocusScope",
    (
      {
      Key key,
      FocusScopeNode node,
      Widget child,
      bool autofocus = false,
      dynamic onFocusChange,
      bool canRequestFocus,
      bool skipTraversal,
      dynamic onKey,
      String debugLabel,
      }
    ) =>
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
);
var _sliverChildBuilderDelegate = MXFunctionInvoke(
    "SliverChildBuilderDelegate",
    (
      {
      dynamic builder,
      dynamic findChildIndexCallback,
      int childCount,
      bool addAutomaticKeepAlives = true,
      bool addRepaintBoundaries = true,
      bool addSemanticIndexes = true,
      dynamic semanticIndexCallback,
      int semanticIndexOffset = 0,
      }
    ) =>
      SliverChildBuilderDelegate(
      builder,
      findChildIndexCallback: createGenericValueGenericClosure<int, Key>(_sliverChildBuilderDelegate.buildOwner, findChildIndexCallback),
      childCount: childCount,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      semanticIndexCallback: null,
      semanticIndexOffset: semanticIndexOffset,
    ),
);
var _sliverChildListDelegate = MXFunctionInvoke(
    "SliverChildListDelegate",
    (
      {
      List<Widget> children,
      bool addAutomaticKeepAlives = true,
      bool addRepaintBoundaries = true,
      bool addSemanticIndexes = true,
      dynamic semanticIndexCallback,
      int semanticIndexOffset = 0,
      }
    ) =>
      SliverChildListDelegate(
      children,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      semanticIndexCallback: null,
      semanticIndexOffset: semanticIndexOffset,
    ),
);
var _sliverChildListDelegate_fixed = MXFunctionInvoke(
  "sliverChildListDelegate.fixed",
    (
      {
      List<Widget> children,
      bool addAutomaticKeepAlives = true,
      bool addRepaintBoundaries = true,
      bool addSemanticIndexes = true,
      dynamic semanticIndexCallback,
      int semanticIndexOffset = 0,
      }
    ) =>
      SliverChildListDelegate.fixed(
      children,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      semanticIndexCallback: null,
      semanticIndexOffset: semanticIndexOffset,
    ),
);
var _sliverList = MXFunctionInvoke(
    "SliverList",
    (
      {
      Key key,
      SliverChildDelegate delegate,
      }
    ) =>
      SliverList(
      key: key,
      delegate: delegate,
    ),
);
var _sliverFixedExtentList = MXFunctionInvoke(
    "SliverFixedExtentList",
    (
      {
      Key key,
      SliverChildDelegate delegate,
      double itemExtent,
      }
    ) =>
      SliverFixedExtentList(
      key: key,
      delegate: delegate,
      itemExtent: itemExtent?.toDouble(),
    ),
);
var _sliverGrid = MXFunctionInvoke(
    "SliverGrid",
    (
      {
      Key key,
      SliverChildDelegate delegate,
      SliverGridDelegate gridDelegate,
      }
    ) =>
      SliverGrid(
      key: key,
      delegate: delegate,
      gridDelegate: gridDelegate,
    ),
);
var _sliverGrid_count = MXFunctionInvoke(
  "sliverGrid.count",
    (
      {
      Key key,
      int crossAxisCount,
      double mainAxisSpacing = 0.0,
      double crossAxisSpacing = 0.0,
      double childAspectRatio = 1.0,
      List<Widget> children,
      }
    ) =>
      SliverGrid.count(
      key: key,
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: mainAxisSpacing?.toDouble(),
      crossAxisSpacing: crossAxisSpacing?.toDouble(),
      childAspectRatio: childAspectRatio?.toDouble(),
      children: children,
    ),
);
var _sliverGrid_extent = MXFunctionInvoke(
  "sliverGrid.extent",
    (
      {
      Key key,
      double maxCrossAxisExtent,
      double mainAxisSpacing = 0.0,
      double crossAxisSpacing = 0.0,
      double childAspectRatio = 1.0,
      List<Widget> children,
      }
    ) =>
      SliverGrid.extent(
      key: key,
      maxCrossAxisExtent: maxCrossAxisExtent?.toDouble(),
      mainAxisSpacing: mainAxisSpacing?.toDouble(),
      crossAxisSpacing: crossAxisSpacing?.toDouble(),
      childAspectRatio: childAspectRatio?.toDouble(),
      children: children,
    ),
);
var _sliverMultiBoxAdaptorElement = MXFunctionInvoke(
    "SliverMultiBoxAdaptorElement",
    (
      {
      SliverMultiBoxAdaptorWidget widget,
      }
    ) =>
      SliverMultiBoxAdaptorElement(
      widget,
    ),
);
var _sliverOpacity = MXFunctionInvoke(
    "SliverOpacity",
    (
      {
      Key key,
      double opacity,
      bool alwaysIncludeSemantics = false,
      Widget sliver,
      }
    ) =>
      SliverOpacity(
      key: key,
      opacity: opacity?.toDouble(),
      alwaysIncludeSemantics: alwaysIncludeSemantics,
      sliver: sliver,
    ),
);
var _sliverIgnorePointer = MXFunctionInvoke(
    "SliverIgnorePointer",
    (
      {
      Key key,
      bool ignoring = true,
      bool ignoringSemantics,
      Widget sliver,
      }
    ) =>
      SliverIgnorePointer(
      key: key,
      ignoring: ignoring,
      ignoringSemantics: ignoringSemantics,
      sliver: sliver,
    ),
);
var _sliverOffstage = MXFunctionInvoke(
    "SliverOffstage",
    (
      {
      Key key,
      bool offstage = true,
      Widget sliver,
      }
    ) =>
      SliverOffstage(
      key: key,
      offstage: offstage,
      sliver: sliver,
    ),
);
var _keepAlive = MXFunctionInvoke(
    "KeepAlive",
    (
      {
      Key key,
      bool keepAlive,
      Widget child,
      }
    ) =>
      KeepAlive(
      key: key,
      keepAlive: keepAlive,
      child: child,
    ),
);
var _notificationListener = MXFunctionInvoke(
    "NotificationListener",
    (
      {
      Key key,
      Widget child,
      dynamic onNotification,
      }
    ) =>
      NotificationListener(
      key: key,
      child: child,
      onNotification: createGenericValueGenericClosure<bool, Notification>(_notificationListener.buildOwner, onNotification),
    ),
);
var _layoutChangedNotification = MXFunctionInvoke(
    "LayoutChangedNotification",
    (
    ) =>
      LayoutChangedNotification(
    ),
);
var _automaticKeepAlive = MXFunctionInvoke(
    "AutomaticKeepAlive",
    (
      {
      Key key,
      Widget child,
      }
    ) =>
      AutomaticKeepAlive(
      key: key,
      child: child,
    ),
);
var _keepAliveNotification = MXFunctionInvoke(
    "KeepAliveNotification",
    (
      {
      Listenable handle,
      }
    ) =>
      KeepAliveNotification(
      handle,
    ),
);
var _keepAliveHandle = MXFunctionInvoke(
    "KeepAliveHandle",
    (
    ) =>
      KeepAliveHandle(
    ),
);
var _textEditingController = MXFunctionInvoke(
    "TextEditingController",
    (
      {
      String text,
      }
    ) =>
      TextEditingController(
      text: text,
    ),
);
var _textEditingController_fromValue = MXFunctionInvoke(
  "textEditingController.fromValue",
    (
      {
      TextEditingValue value,
      }
    ) =>
      TextEditingController.fromValue(
      value,
    ),
);
var _toolbarOptions = MXFunctionInvoke(
    "ToolbarOptions",
    (
      {
      bool copy = false,
      bool cut = false,
      bool paste = false,
      bool selectAll = false,
      }
    ) =>
      ToolbarOptions(
      copy: copy,
      cut: cut,
      paste: paste,
      selectAll: selectAll,
    ),
);
var _editableText = MXFunctionInvoke(
    "EditableText",
    (
      {
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
      double textScaleFactor,
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
      double cursorWidth = 2.0,
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
      }
    ) =>
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
      onChanged: createValueChangedGenericClosure<String>(_editableText.buildOwner, onChanged),
      onEditingComplete: createVoidCallbackClosure(_editableText.buildOwner, onEditingComplete),
      onSubmitted: createValueChangedGenericClosure<String>(_editableText.buildOwner, onSubmitted),
      onSelectionChanged: null,
      onSelectionHandleTapped: createVoidCallbackClosure(_editableText.buildOwner, onSelectionHandleTapped),
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
var _editableTextState = MXFunctionInvoke(
    "EditableTextState",
    (
    ) =>
      EditableTextState(
    ),
);
var _traversalDirection = MXFunctionInvoke(
    "TraversalDirection",
    ({Map args}) => MXTraversalDirection.parse(args),
  );
var _widgetOrderTraversalPolicy = MXFunctionInvoke(
    "WidgetOrderTraversalPolicy",
    (
    ) =>
      WidgetOrderTraversalPolicy(
    ),
);
var _readingOrderTraversalPolicy = MXFunctionInvoke(
    "ReadingOrderTraversalPolicy",
    (
    ) =>
      ReadingOrderTraversalPolicy(
    ),
);
var _numericFocusOrder = MXFunctionInvoke(
    "NumericFocusOrder",
    (
      {
      double order,
      }
    ) =>
      NumericFocusOrder(
      order,
    ),
);
var _lexicalFocusOrder = MXFunctionInvoke(
    "LexicalFocusOrder",
    (
      {
      String order,
      }
    ) =>
      LexicalFocusOrder(
      order,
    ),
);
var _orderedTraversalPolicy = MXFunctionInvoke(
    "OrderedTraversalPolicy",
    (
      {
      FocusTraversalPolicy secondary,
      }
    ) =>
      OrderedTraversalPolicy(
      secondary: secondary,
    ),
);
var _focusTraversalOrder = MXFunctionInvoke(
    "FocusTraversalOrder",
    (
      {
      Key key,
      FocusOrder order,
      Widget child,
      }
    ) =>
      FocusTraversalOrder(
      key: key,
      order: order,
      child: child,
    ),
);
var _focusTraversalGroup = MXFunctionInvoke(
    "FocusTraversalGroup",
    (
      {
      Key key,
      FocusTraversalPolicy policy,
      Widget child,
      }
    ) =>
      FocusTraversalGroup(
      key: key,
      policy: policy,
      child: child,
    ),
);
var _requestFocusAction = MXFunctionInvoke(
    "RequestFocusAction",
    (
    ) =>
      RequestFocusAction(
    ),
);
var _nextFocusAction = MXFunctionInvoke(
    "NextFocusAction",
    (
    ) =>
      NextFocusAction(
    ),
);
var _previousFocusAction = MXFunctionInvoke(
    "PreviousFocusAction",
    (
    ) =>
      PreviousFocusAction(
    ),
);
var _directionalFocusIntent = MXFunctionInvoke(
    "DirectionalFocusIntent",
    (
      {
      TraversalDirection direction,
      bool ignoreTextFields = true,
      }
    ) =>
      DirectionalFocusIntent(
      direction,
      ignoreTextFields: ignoreTextFields,
    ),
);
var _directionalFocusAction = MXFunctionInvoke(
    "DirectionalFocusAction",
    (
    ) =>
      DirectionalFocusAction(
    ),
);
var _bannerLocation = MXFunctionInvoke(
    "BannerLocation",
    ({Map args}) => MXBannerLocation.parse(args),
  );
var _bannerPainter = MXFunctionInvoke(
    "BannerPainter",
    (
      {
      String message,
      TextDirection textDirection,
      BannerLocation location,
      TextDirection layoutDirection,
      Color color,
      TextStyle textStyle,
      }
    ) =>
      BannerPainter(
      message: message,
      textDirection: textDirection,
      location: location,
      layoutDirection: layoutDirection,
      color: color,
      textStyle: textStyle,
    ),
);
var _banner = MXFunctionInvoke(
    "Banner",
    (
      {
      Key key,
      Widget child,
      String message,
      TextDirection textDirection,
      BannerLocation location,
      TextDirection layoutDirection,
      Color color,
      TextStyle textStyle,
      }
    ) =>
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
var _checkedModeBanner = MXFunctionInvoke(
    "CheckedModeBanner",
    (
      {
      Key key,
      Widget child,
      }
    ) =>
      CheckedModeBanner(
      key: key,
      child: child,
    ),
);
var _widgetsApp = MXFunctionInvoke(
    "WidgetsApp",
    (
      {
      Key key,
      GlobalKey<NavigatorState> navigatorKey,
      dynamic onGenerateRoute,
      dynamic onGenerateInitialRoutes,
      dynamic onUnknownRoute,
      List<NavigatorObserver> navigatorObservers,
      String initialRoute,
      dynamic pageRouteBuilder,
      Widget home,
      Map<String, Widget Function(BuildContext)> routes,
      dynamic builder,
      String title = '',
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
      Map<LogicalKeySet, Intent> shortcuts,
      Map<LocalKey, Action Function()> actions,
      }
    ) =>
      WidgetsApp(
      key: key,
      navigatorKey: navigatorKey,
      onGenerateRoute: createGenericValueGenericClosure<Route<dynamic>, RouteSettings>(_widgetsApp.buildOwner, onGenerateRoute),
      onGenerateInitialRoutes: createGenericValueGenericClosure<List<Route<dynamic>>, String>(_widgetsApp.buildOwner, onGenerateInitialRoutes),
      onUnknownRoute: createGenericValueGenericClosure<Route<dynamic>, RouteSettings>(_widgetsApp.buildOwner, onUnknownRoute),
      navigatorObservers: navigatorObservers,
      initialRoute: initialRoute,
      pageRouteBuilder: null,
      home: home,
      routes: routes,
      builder: null,
      title: title,
      onGenerateTitle: createGenericValueGenericClosure<String, BuildContext>(_widgetsApp.buildOwner, onGenerateTitle),
      textStyle: textStyle,
      color: color,
      locale: locale,
      localizationsDelegates: localizationsDelegates,
      localeListResolutionCallback: null,
      localeResolutionCallback: null,
      supportedLocales: supportedLocales,
      showPerformanceOverlay: showPerformanceOverlay,
      checkerboardRasterCacheImages: checkerboardRasterCacheImages,
      checkerboardOffscreenLayers: checkerboardOffscreenLayers,
      showSemanticsDebugger: showSemanticsDebugger,
      debugShowWidgetInspector: debugShowWidgetInspector,
      debugShowCheckedModeBanner: debugShowCheckedModeBanner,
      inspectorSelectButtonBuilder: null,
      shortcuts: shortcuts,
      actions: actions,
    ),
);
var _renderObjectToWidgetAdapter = MXFunctionInvoke(
    "RenderObjectToWidgetAdapter",
    (
      {
      Widget child,
      RenderObjectWithChildMixin<RenderObject> container,
      String debugShortDescription,
      }
    ) =>
      RenderObjectToWidgetAdapter(
      child: child,
      container: container,
      debugShortDescription: debugShortDescription,
    ),
);
var _renderObjectToWidgetElement = MXFunctionInvoke(
    "RenderObjectToWidgetElement",
    (
      {
      RenderObjectToWidgetAdapter<RenderObject> widget,
      }
    ) =>
      RenderObjectToWidgetElement(
      widget,
    ),
);
var _widgetsFlutterBinding = MXFunctionInvoke(
    "WidgetsFlutterBinding",
    (
    ) =>
      WidgetsFlutterBinding(
    ),
);
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
var _uniqueKey = MXFunctionInvoke(
    "UniqueKey",
    (
    ) =>
      UniqueKey(
    ),
);
var _objectKey = MXFunctionInvoke(
    "ObjectKey",
    (
      {
      Object value,
      }
    ) =>
      ObjectKey(
      value,
    ),
);
var _labeledGlobalKey = MXFunctionInvoke(
    "LabeledGlobalKey",
    (
      {
      String debugLabel,
      }
    ) =>
      LabeledGlobalKey(
      debugLabel,
    ),
);
var _globalObjectKey = MXFunctionInvoke(
    "GlobalObjectKey",
    (
      {
      Object value,
      }
    ) =>
      GlobalObjectKey(
      value,
    ),
);
var _typeMatcher = MXFunctionInvoke(
    "TypeMatcher",
    (
    ) =>
      TypeMatcher(
    ),
);
var _buildOwner = MXFunctionInvoke(
    "BuildOwner",
    (
      {
      dynamic onBuildScheduled,
      }
    ) =>
      BuildOwner(
      onBuildScheduled: createVoidCallbackClosure(_buildOwner.buildOwner, onBuildScheduled),
    ),
);
var _errorWidget = MXFunctionInvoke(
    "ErrorWidget",
    (
      {
      Object exception,
      }
    ) =>
      ErrorWidget(
      exception,
    ),
);
var _errorWidget_withDetails = MXFunctionInvoke(
  "errorWidget.withDetails",
    (
      {
      String message = '',
      FlutterError error,
      }
    ) =>
      ErrorWidget.withDetails(
      message: message,
      error: error,
    ),
);
var _statelessElement = MXFunctionInvoke(
    "StatelessElement",
    (
      {
      StatelessWidget widget,
      }
    ) =>
      StatelessElement(
      widget,
    ),
);
var _statefulElement = MXFunctionInvoke(
    "StatefulElement",
    (
      {
      StatefulWidget widget,
      }
    ) =>
      StatefulElement(
      widget,
    ),
);
var _parentDataElement = MXFunctionInvoke(
    "ParentDataElement",
    (
      {
      ParentDataWidget<ParentData> widget,
      }
    ) =>
      ParentDataElement(
      widget,
    ),
);
var _leafRenderObjectElement = MXFunctionInvoke(
    "LeafRenderObjectElement",
    (
      {
      LeafRenderObjectWidget widget,
      }
    ) =>
      LeafRenderObjectElement(
      widget,
    ),
);
var _singleChildRenderObjectElement = MXFunctionInvoke(
    "SingleChildRenderObjectElement",
    (
      {
      SingleChildRenderObjectWidget widget,
      }
    ) =>
      SingleChildRenderObjectElement(
      widget,
    ),
);
var _multiChildRenderObjectElement = MXFunctionInvoke(
    "MultiChildRenderObjectElement",
    (
      {
      MultiChildRenderObjectWidget widget,
      }
    ) =>
      MultiChildRenderObjectElement(
      widget,
    ),
);
var _debugCreator = MXFunctionInvoke(
    "DebugCreator",
    (
      {
      Element element,
      }
    ) =>
      DebugCreator(
      element,
    ),
);
var _indexedSlot = MXFunctionInvoke(
    "IndexedSlot",
    (
      {
      int index,
      dynamic value,
      }
    ) =>
      IndexedSlot(
      index,
      value,
    ),
);
var _directionality = MXFunctionInvoke(
    "Directionality",
    (
      {
      Key key,
      TextDirection textDirection,
      Widget child,
      }
    ) =>
      Directionality(
      key: key,
      textDirection: textDirection,
      child: child,
    ),
);
var _opacity = MXFunctionInvoke(
    "Opacity",
    (
      {
      Key key,
      double opacity,
      bool alwaysIncludeSemantics = false,
      Widget child,
      }
    ) =>
      Opacity(
      key: key,
      opacity: opacity?.toDouble(),
      alwaysIncludeSemantics: alwaysIncludeSemantics,
      child: child,
    ),
);
var _shaderMask = MXFunctionInvoke(
    "ShaderMask",
    (
      {
      Key key,
      dynamic shaderCallback,
      BlendMode blendMode = BlendMode.modulate,
      Widget child,
      }
    ) =>
      ShaderMask(
      key: key,
      shaderCallback: createGenericValueGenericClosure<Shader, Rect>(_shaderMask.buildOwner, shaderCallback),
      blendMode: blendMode,
      child: child,
    ),
);
var _backdropFilter = MXFunctionInvoke(
    "BackdropFilter",
    (
      {
      Key key,
      ImageFilter filter,
      Widget child,
      }
    ) =>
      BackdropFilter(
      key: key,
      filter: filter,
      child: child,
    ),
);
var _customPaint = MXFunctionInvoke(
    "CustomPaint",
    (
      {
      Key key,
      CustomPainter painter,
      CustomPainter foregroundPainter,
      Size size,
      bool isComplex = false,
      bool willChange = false,
      Widget child,
      }
    ) =>
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
var _clipRect = MXFunctionInvoke(
    "ClipRect",
    (
      {
      Key key,
      CustomClipper<Rect> clipper,
      Clip clipBehavior = Clip.hardEdge,
      Widget child,
      }
    ) =>
      ClipRect(
      key: key,
      clipper: clipper,
      clipBehavior: clipBehavior,
      child: child,
    ),
);
var _clipRRect = MXFunctionInvoke(
    "ClipRRect",
    (
      {
      Key key,
      BorderRadius borderRadius,
      CustomClipper<RRect> clipper,
      Clip clipBehavior = Clip.antiAlias,
      Widget child,
      }
    ) =>
      ClipRRect(
      key: key,
      borderRadius: borderRadius,
      clipper: clipper,
      clipBehavior: clipBehavior,
      child: child,
    ),
);
var _clipOval = MXFunctionInvoke(
    "ClipOval",
    (
      {
      Key key,
      CustomClipper<Rect> clipper,
      Clip clipBehavior = Clip.antiAlias,
      Widget child,
      }
    ) =>
      ClipOval(
      key: key,
      clipper: clipper,
      clipBehavior: clipBehavior,
      child: child,
    ),
);
var _clipPath = MXFunctionInvoke(
    "ClipPath",
    (
      {
      Key key,
      CustomClipper<Path> clipper,
      Clip clipBehavior = Clip.antiAlias,
      Widget child,
      }
    ) =>
      ClipPath(
      key: key,
      clipper: clipper,
      clipBehavior: clipBehavior,
      child: child,
    ),
);
var _physicalModel = MXFunctionInvoke(
    "PhysicalModel",
    (
      {
      Key key,
      BoxShape shape = BoxShape.rectangle,
      Clip clipBehavior = Clip.none,
      BorderRadius borderRadius,
      double elevation = 0.0,
      Color color,
      Color shadowColor,
      Widget child,
      }
    ) =>
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
var _physicalShape = MXFunctionInvoke(
    "PhysicalShape",
    (
      {
      Key key,
      CustomClipper<Path> clipper,
      Clip clipBehavior = Clip.none,
      double elevation = 0.0,
      Color color,
      Color shadowColor,
      Widget child,
      }
    ) =>
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
var _transform = MXFunctionInvoke(
    "Transform",
    (
      {
      Key key,
      Matrix4 transform,
      Offset origin,
      AlignmentGeometry alignment,
      bool transformHitTests = true,
      Widget child,
      }
    ) =>
      Transform(
      key: key,
      transform: transform,
      origin: origin,
      alignment: alignment,
      transformHitTests: transformHitTests,
      child: child,
    ),
);
var _transform_rotate = MXFunctionInvoke(
  "transform.rotate",
    (
      {
      Key key,
      double angle,
      Offset origin,
      AlignmentGeometry alignment,
      bool transformHitTests = true,
      Widget child,
      }
    ) =>
      Transform.rotate(
      key: key,
      angle: angle?.toDouble(),
      origin: origin,
      alignment: alignment,
      transformHitTests: transformHitTests,
      child: child,
    ),
);
var _transform_translate = MXFunctionInvoke(
  "transform.translate",
    (
      {
      Key key,
      Offset offset,
      bool transformHitTests = true,
      Widget child,
      }
    ) =>
      Transform.translate(
      key: key,
      offset: offset,
      transformHitTests: transformHitTests,
      child: child,
    ),
);
var _transform_scale = MXFunctionInvoke(
  "transform.scale",
    (
      {
      Key key,
      double scale,
      Offset origin,
      AlignmentGeometry alignment,
      bool transformHitTests = true,
      Widget child,
      }
    ) =>
      Transform.scale(
      key: key,
      scale: scale?.toDouble(),
      origin: origin,
      alignment: alignment,
      transformHitTests: transformHitTests,
      child: child,
    ),
);
var _compositedTransformTarget = MXFunctionInvoke(
    "CompositedTransformTarget",
    (
      {
      Key key,
      LayerLink link,
      Widget child,
      }
    ) =>
      CompositedTransformTarget(
      key: key,
      link: link,
      child: child,
    ),
);
var _compositedTransformFollower = MXFunctionInvoke(
    "CompositedTransformFollower",
    (
      {
      Key key,
      LayerLink link,
      bool showWhenUnlinked = true,
      Offset offset,
      Widget child,
      }
    ) =>
      CompositedTransformFollower(
      key: key,
      link: link,
      showWhenUnlinked: showWhenUnlinked,
      offset: offset,
      child: child,
    ),
);
var _fittedBox = MXFunctionInvoke(
    "FittedBox",
    (
      {
      Key key,
      BoxFit fit = BoxFit.contain,
      AlignmentGeometry alignment,
      Widget child,
      }
    ) =>
      FittedBox(
      key: key,
      fit: fit,
      alignment: alignment,
      child: child,
    ),
);
var _fractionalTranslation = MXFunctionInvoke(
    "FractionalTranslation",
    (
      {
      Key key,
      Offset translation,
      bool transformHitTests = true,
      Widget child,
      }
    ) =>
      FractionalTranslation(
      key: key,
      translation: translation,
      transformHitTests: transformHitTests,
      child: child,
    ),
);
var _rotatedBox = MXFunctionInvoke(
    "RotatedBox",
    (
      {
      Key key,
      int quarterTurns,
      Widget child,
      }
    ) =>
      RotatedBox(
      key: key,
      quarterTurns: quarterTurns,
      child: child,
    ),
);
var _padding = MXFunctionInvoke(
    "Padding",
    (
      {
      Key key,
      EdgeInsetsGeometry padding,
      Widget child,
      }
    ) =>
      Padding(
      key: key,
      padding: padding,
      child: child,
    ),
);
var _align = MXFunctionInvoke(
    "Align",
    (
      {
      Key key,
      AlignmentGeometry alignment,
      double widthFactor,
      double heightFactor,
      Widget child,
      }
    ) =>
      Align(
      key: key,
      alignment: alignment,
      widthFactor: widthFactor?.toDouble(),
      heightFactor: heightFactor?.toDouble(),
      child: child,
    ),
);
var _center = MXFunctionInvoke(
    "Center",
    (
      {
      Key key,
      double widthFactor,
      double heightFactor,
      Widget child,
      }
    ) =>
      Center(
      key: key,
      widthFactor: widthFactor?.toDouble(),
      heightFactor: heightFactor?.toDouble(),
      child: child,
    ),
);
var _customSingleChildLayout = MXFunctionInvoke(
    "CustomSingleChildLayout",
    (
      {
      Key key,
      SingleChildLayoutDelegate delegate,
      Widget child,
      }
    ) =>
      CustomSingleChildLayout(
      key: key,
      delegate: delegate,
      child: child,
    ),
);
var _layoutId = MXFunctionInvoke(
    "LayoutId",
    (
      {
      Key key,
      Object id,
      Widget child,
      }
    ) =>
      LayoutId(
      key: key,
      id: id,
      child: child,
    ),
);
var _customMultiChildLayout = MXFunctionInvoke(
    "CustomMultiChildLayout",
    (
      {
      Key key,
      MultiChildLayoutDelegate delegate,
      List<Widget> children,
      }
    ) =>
      CustomMultiChildLayout(
      key: key,
      delegate: delegate,
      children: children,
    ),
);
var _sizedBox = MXFunctionInvoke(
    "SizedBox",
    (
      {
      Key key,
      double width,
      double height,
      Widget child,
      }
    ) =>
      SizedBox(
      key: key,
      width: width?.toDouble(),
      height: height?.toDouble(),
      child: child,
    ),
);
var _sizedBox_expand = MXFunctionInvoke(
  "sizedBox.expand",
    (
      {
      Key key,
      Widget child,
      }
    ) =>
      SizedBox.expand(
      key: key,
      child: child,
    ),
);
var _sizedBox_shrink = MXFunctionInvoke(
  "sizedBox.shrink",
    (
      {
      Key key,
      Widget child,
      }
    ) =>
      SizedBox.shrink(
      key: key,
      child: child,
    ),
);
var _sizedBox_fromSize = MXFunctionInvoke(
  "sizedBox.fromSize",
    (
      {
      Key key,
      Widget child,
      Size size,
      }
    ) =>
      SizedBox.fromSize(
      key: key,
      child: child,
      size: size,
    ),
);
var _constrainedBox = MXFunctionInvoke(
    "ConstrainedBox",
    (
      {
      Key key,
      BoxConstraints constraints,
      Widget child,
      }
    ) =>
      ConstrainedBox(
      key: key,
      constraints: constraints,
      child: child,
    ),
);
var _unconstrainedBox = MXFunctionInvoke(
    "UnconstrainedBox",
    (
      {
      Key key,
      Widget child,
      TextDirection textDirection,
      AlignmentGeometry alignment,
      Axis constrainedAxis,
      }
    ) =>
      UnconstrainedBox(
      key: key,
      child: child,
      textDirection: textDirection,
      alignment: alignment,
      constrainedAxis: constrainedAxis,
    ),
);
var _fractionallySizedBox = MXFunctionInvoke(
    "FractionallySizedBox",
    (
      {
      Key key,
      AlignmentGeometry alignment,
      double widthFactor,
      double heightFactor,
      Widget child,
      }
    ) =>
      FractionallySizedBox(
      key: key,
      alignment: alignment,
      widthFactor: widthFactor?.toDouble(),
      heightFactor: heightFactor?.toDouble(),
      child: child,
    ),
);
var _limitedBox = MXFunctionInvoke(
    "LimitedBox",
    (
      {
      Key key,
      double maxWidth = double.infinity,
      double maxHeight = double.infinity,
      Widget child,
      }
    ) =>
      LimitedBox(
      key: key,
      maxWidth: maxWidth?.toDouble(),
      maxHeight: maxHeight?.toDouble(),
      child: child,
    ),
);
var _overflowBox = MXFunctionInvoke(
    "OverflowBox",
    (
      {
      Key key,
      AlignmentGeometry alignment,
      double minWidth,
      double maxWidth,
      double minHeight,
      double maxHeight,
      Widget child,
      }
    ) =>
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
var _sizedOverflowBox = MXFunctionInvoke(
    "SizedOverflowBox",
    (
      {
      Key key,
      Size size,
      AlignmentGeometry alignment,
      Widget child,
      }
    ) =>
      SizedOverflowBox(
      key: key,
      size: size,
      alignment: alignment,
      child: child,
    ),
);
var _offstage = MXFunctionInvoke(
    "Offstage",
    (
      {
      Key key,
      bool offstage = true,
      Widget child,
      }
    ) =>
      Offstage(
      key: key,
      offstage: offstage,
      child: child,
    ),
);
var _aspectRatio = MXFunctionInvoke(
    "AspectRatio",
    (
      {
      Key key,
      double aspectRatio,
      Widget child,
      }
    ) =>
      AspectRatio(
      key: key,
      aspectRatio: aspectRatio?.toDouble(),
      child: child,
    ),
);
var _intrinsicWidth = MXFunctionInvoke(
    "IntrinsicWidth",
    (
      {
      Key key,
      double stepWidth,
      double stepHeight,
      Widget child,
      }
    ) =>
      IntrinsicWidth(
      key: key,
      stepWidth: stepWidth?.toDouble(),
      stepHeight: stepHeight?.toDouble(),
      child: child,
    ),
);
var _intrinsicHeight = MXFunctionInvoke(
    "IntrinsicHeight",
    (
      {
      Key key,
      Widget child,
      }
    ) =>
      IntrinsicHeight(
      key: key,
      child: child,
    ),
);
var _baseline = MXFunctionInvoke(
    "Baseline",
    (
      {
      Key key,
      double baseline,
      TextBaseline baselineType,
      Widget child,
      }
    ) =>
      Baseline(
      key: key,
      baseline: baseline?.toDouble(),
      baselineType: baselineType,
      child: child,
    ),
);
var _sliverToBoxAdapter = MXFunctionInvoke(
    "SliverToBoxAdapter",
    (
      {
      Key key,
      Widget child,
      }
    ) =>
      SliverToBoxAdapter(
      key: key,
      child: child,
    ),
);
var _sliverPadding = MXFunctionInvoke(
    "SliverPadding",
    (
      {
      Key key,
      EdgeInsetsGeometry padding,
      Widget sliver,
      }
    ) =>
      SliverPadding(
      key: key,
      padding: padding,
      sliver: sliver,
    ),
);
var _listBody = MXFunctionInvoke(
    "ListBody",
    (
      {
      Key key,
      Axis mainAxis = Axis.vertical,
      bool reverse = false,
      List<Widget> children,
      }
    ) =>
      ListBody(
      key: key,
      mainAxis: mainAxis,
      reverse: reverse,
      children: children,
    ),
);
var _stack = MXFunctionInvoke(
    "Stack",
    (
      {
      Key key,
      AlignmentGeometry alignment,
      TextDirection textDirection,
      StackFit fit = StackFit.loose,
      Overflow overflow = Overflow.clip,
      List<Widget> children,
      }
    ) =>
      Stack(
      key: key,
      alignment: alignment,
      textDirection: textDirection,
      fit: fit,
      overflow: overflow,
      children: children,
    ),
);
var _indexedStack = MXFunctionInvoke(
    "IndexedStack",
    (
      {
      Key key,
      AlignmentGeometry alignment,
      TextDirection textDirection,
      StackFit sizing = StackFit.loose,
      int index = 0,
      List<Widget> children,
      }
    ) =>
      IndexedStack(
      key: key,
      alignment: alignment,
      textDirection: textDirection,
      sizing: sizing,
      index: index,
      children: children,
    ),
);
var _positioned = MXFunctionInvoke(
    "Positioned",
    (
      {
      Key key,
      double left,
      double top,
      double right,
      double bottom,
      double width,
      double height,
      Widget child,
      }
    ) =>
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
var _positioned_directional = MXFunctionInvoke(
  "positioned.directional",
    (
      {
      Key key,
      TextDirection textDirection,
      double start,
      double top,
      double end,
      double bottom,
      double width,
      double height,
      Widget child,
      }
    ) =>
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
var _positioned_fromRect = MXFunctionInvoke(
  "positioned.fromRect",
    (
      {
      Key key,
      Rect rect,
      Widget child,
      }
    ) =>
      Positioned.fromRect(
      key: key,
      rect: rect,
      child: child,
    ),
);
var _positioned_fromRelativeRect = MXFunctionInvoke(
  "positioned.fromRelativeRect",
    (
      {
      Key key,
      RelativeRect rect,
      Widget child,
      }
    ) =>
      Positioned.fromRelativeRect(
      key: key,
      rect: rect,
      child: child,
    ),
);
var _positioned_fill = MXFunctionInvoke(
  "positioned.fill",
    (
      {
      Key key,
      double left = 0.0,
      double top = 0.0,
      double right = 0.0,
      double bottom = 0.0,
      Widget child,
      }
    ) =>
      Positioned.fill(
      key: key,
      left: left?.toDouble(),
      top: top?.toDouble(),
      right: right?.toDouble(),
      bottom: bottom?.toDouble(),
      child: child,
    ),
);
var _positionedDirectional = MXFunctionInvoke(
    "PositionedDirectional",
    (
      {
      Key key,
      double start,
      double top,
      double end,
      double bottom,
      double width,
      double height,
      Widget child,
      }
    ) =>
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
var _flex = MXFunctionInvoke(
    "Flex",
    (
      {
      Key key,
      Axis direction,
      MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down,
      TextBaseline textBaseline,
      List<Widget> children,
      }
    ) =>
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
var _row = MXFunctionInvoke(
    "Row",
    (
      {
      Key key,
      MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down,
      TextBaseline textBaseline,
      List<Widget> children,
      }
    ) =>
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
var _column = MXFunctionInvoke(
    "Column",
    (
      {
      Key key,
      MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down,
      TextBaseline textBaseline,
      List<Widget> children,
      }
    ) =>
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
var _flexible = MXFunctionInvoke(
    "Flexible",
    (
      {
      Key key,
      int flex = 1,
      FlexFit fit = FlexFit.loose,
      Widget child,
      }
    ) =>
      Flexible(
      key: key,
      flex: flex,
      fit: fit,
      child: child,
    ),
);
var _expanded = MXFunctionInvoke(
    "Expanded",
    (
      {
      Key key,
      int flex = 1,
      Widget child,
      }
    ) =>
      Expanded(
      key: key,
      flex: flex,
      child: child,
    ),
);
var _wrap = MXFunctionInvoke(
    "Wrap",
    (
      {
      Key key,
      Axis direction = Axis.horizontal,
      WrapAlignment alignment = WrapAlignment.start,
      double spacing = 0.0,
      WrapAlignment runAlignment = WrapAlignment.start,
      double runSpacing = 0.0,
      WrapCrossAlignment crossAxisAlignment = WrapCrossAlignment.start,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down,
      List<Widget> children,
      }
    ) =>
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
var _flow = MXFunctionInvoke(
    "Flow",
    (
      {
      Key key,
      FlowDelegate delegate,
      List<Widget> children,
      }
    ) =>
      Flow(
      key: key,
      delegate: delegate,
      children: children,
    ),
);
var _flow_unwrapped = MXFunctionInvoke(
  "flow.unwrapped",
    (
      {
      Key key,
      FlowDelegate delegate,
      List<Widget> children,
      }
    ) =>
      Flow.unwrapped(
      key: key,
      delegate: delegate,
      children: children,
    ),
);
var _richText = MXFunctionInvoke(
    "RichText",
    (
      {
      Key key,
      InlineSpan text,
      TextAlign textAlign = TextAlign.start,
      TextDirection textDirection,
      bool softWrap = true,
      TextOverflow overflow = TextOverflow.clip,
      double textScaleFactor = 1.0,
      int maxLines,
      Locale locale,
      StrutStyle strutStyle,
      TextWidthBasis textWidthBasis = TextWidthBasis.parent,
      TextHeightBehavior textHeightBehavior,
      }
    ) =>
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
var _rawImage = MXFunctionInvoke(
    "RawImage",
    (
      {
      Key key,
      Image image,
      double width,
      double height,
      double scale = 1.0,
      Color color,
      BlendMode colorBlendMode,
      BoxFit fit,
      AlignmentGeometry alignment,
      ImageRepeat repeat = ImageRepeat.noRepeat,
      Rect centerSlice,
      bool matchTextDirection = false,
      bool invertColors = false,
      FilterQuality filterQuality = FilterQuality.low,
      }
    ) =>
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
var _defaultAssetBundle = MXFunctionInvoke(
    "DefaultAssetBundle",
    (
      {
      Key key,
      AssetBundle bundle,
      Widget child,
      }
    ) =>
      DefaultAssetBundle(
      key: key,
      bundle: bundle,
      child: child,
    ),
);
var _widgetToRenderBoxAdapter = MXFunctionInvoke(
    "WidgetToRenderBoxAdapter",
    (
      {
      RenderBox renderBox,
      dynamic onBuild,
      }
    ) =>
      WidgetToRenderBoxAdapter(
      renderBox: renderBox,
      onBuild: createVoidCallbackClosure(_widgetToRenderBoxAdapter.buildOwner, onBuild),
    ),
);
var _listener = MXFunctionInvoke(
    "Listener",
    (
      {
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
      }
    ) =>
      Listener(
      key: key,
      onPointerDown: createValueChangedGenericClosure<PointerDownEvent>(_listener.buildOwner, onPointerDown),
      onPointerMove: createValueChangedGenericClosure<PointerMoveEvent>(_listener.buildOwner, onPointerMove),
      onPointerEnter: createValueChangedGenericClosure<PointerEnterEvent>(_listener.buildOwner, onPointerEnter),
      onPointerExit: createValueChangedGenericClosure<PointerExitEvent>(_listener.buildOwner, onPointerExit),
      onPointerHover: createValueChangedGenericClosure<PointerHoverEvent>(_listener.buildOwner, onPointerHover),
      onPointerUp: createValueChangedGenericClosure<PointerUpEvent>(_listener.buildOwner, onPointerUp),
      onPointerCancel: createValueChangedGenericClosure<PointerCancelEvent>(_listener.buildOwner, onPointerCancel),
      onPointerSignal: createValueChangedGenericClosure<PointerSignalEvent>(_listener.buildOwner, onPointerSignal),
      behavior: behavior,
      child: child,
    ),
);
var _mouseRegion = MXFunctionInvoke(
    "MouseRegion",
    (
      {
      Key key,
      dynamic onEnter,
      dynamic onExit,
      dynamic onHover,
      bool opaque = true,
      Widget child,
      }
    ) =>
      MouseRegion(
      key: key,
      onEnter: createValueChangedGenericClosure<PointerEnterEvent>(_mouseRegion.buildOwner, onEnter),
      onExit: createValueChangedGenericClosure<PointerExitEvent>(_mouseRegion.buildOwner, onExit),
      onHover: createValueChangedGenericClosure<PointerHoverEvent>(_mouseRegion.buildOwner, onHover),
      opaque: opaque,
      child: child,
    ),
);
var _repaintBoundary = MXFunctionInvoke(
    "RepaintBoundary",
    (
      {
      Key key,
      Widget child,
      }
    ) =>
      RepaintBoundary(
      key: key,
      child: child,
    ),
);
var _repaintBoundary_wrap = MXFunctionInvoke(
  "repaintBoundary.wrap",
    (
      {
      Widget child,
      int childIndex,
      }
    ) =>
      RepaintBoundary.wrap(
      child,
      childIndex,
    ),
);
var _ignorePointer = MXFunctionInvoke(
    "IgnorePointer",
    (
      {
      Key key,
      bool ignoring = true,
      bool ignoringSemantics,
      Widget child,
      }
    ) =>
      IgnorePointer(
      key: key,
      ignoring: ignoring,
      ignoringSemantics: ignoringSemantics,
      child: child,
    ),
);
var _absorbPointer = MXFunctionInvoke(
    "AbsorbPointer",
    (
      {
      Key key,
      bool absorbing = true,
      Widget child,
      bool ignoringSemantics,
      }
    ) =>
      AbsorbPointer(
      key: key,
      absorbing: absorbing,
      child: child,
      ignoringSemantics: ignoringSemantics,
    ),
);
var _metaData = MXFunctionInvoke(
    "MetaData",
    (
      {
      Key key,
      dynamic metaData,
      HitTestBehavior behavior = HitTestBehavior.deferToChild,
      Widget child,
      }
    ) =>
      MetaData(
      key: key,
      metaData: metaData,
      behavior: behavior,
      child: child,
    ),
);
var _semantics = MXFunctionInvoke(
    "Semantics",
    (
      {
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
      Map<CustomSemanticsAction, void Function()> customSemanticsActions,
      }
    ) =>
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
      onTap: createVoidCallbackClosure(_semantics.buildOwner, onTap),
      onLongPress: createVoidCallbackClosure(_semantics.buildOwner, onLongPress),
      onScrollLeft: createVoidCallbackClosure(_semantics.buildOwner, onScrollLeft),
      onScrollRight: createVoidCallbackClosure(_semantics.buildOwner, onScrollRight),
      onScrollUp: createVoidCallbackClosure(_semantics.buildOwner, onScrollUp),
      onScrollDown: createVoidCallbackClosure(_semantics.buildOwner, onScrollDown),
      onIncrease: createVoidCallbackClosure(_semantics.buildOwner, onIncrease),
      onDecrease: createVoidCallbackClosure(_semantics.buildOwner, onDecrease),
      onCopy: createVoidCallbackClosure(_semantics.buildOwner, onCopy),
      onCut: createVoidCallbackClosure(_semantics.buildOwner, onCut),
      onPaste: createVoidCallbackClosure(_semantics.buildOwner, onPaste),
      onDismiss: createVoidCallbackClosure(_semantics.buildOwner, onDismiss),
      onMoveCursorForwardByCharacter: createValueChangedGenericClosure<bool>(_semantics.buildOwner, onMoveCursorForwardByCharacter),
      onMoveCursorBackwardByCharacter: createValueChangedGenericClosure<bool>(_semantics.buildOwner, onMoveCursorBackwardByCharacter),
      onSetSelection: createValueChangedGenericClosure<TextSelection>(_semantics.buildOwner, onSetSelection),
      onDidGainAccessibilityFocus: createVoidCallbackClosure(_semantics.buildOwner, onDidGainAccessibilityFocus),
      onDidLoseAccessibilityFocus: createVoidCallbackClosure(_semantics.buildOwner, onDidLoseAccessibilityFocus),
      customSemanticsActions: customSemanticsActions,
    ),
);
var _semantics_fromProperties = MXFunctionInvoke(
  "semantics.fromProperties",
    (
      {
      Key key,
      Widget child,
      bool container = false,
      bool explicitChildNodes = false,
      bool excludeSemantics = false,
      SemanticsProperties properties,
      }
    ) =>
      Semantics.fromProperties(
      key: key,
      child: child,
      container: container,
      explicitChildNodes: explicitChildNodes,
      excludeSemantics: excludeSemantics,
      properties: properties,
    ),
);
var _mergeSemantics = MXFunctionInvoke(
    "MergeSemantics",
    (
      {
      Key key,
      Widget child,
      }
    ) =>
      MergeSemantics(
      key: key,
      child: child,
    ),
);
var _blockSemantics = MXFunctionInvoke(
    "BlockSemantics",
    (
      {
      Key key,
      bool blocking = true,
      Widget child,
      }
    ) =>
      BlockSemantics(
      key: key,
      blocking: blocking,
      child: child,
    ),
);
var _excludeSemantics = MXFunctionInvoke(
    "ExcludeSemantics",
    (
      {
      Key key,
      bool excluding = true,
      Widget child,
      }
    ) =>
      ExcludeSemantics(
      key: key,
      excluding: excluding,
      child: child,
    ),
);
var _indexedSemantics = MXFunctionInvoke(
    "IndexedSemantics",
    (
      {
      Key key,
      int index,
      Widget child,
      }
    ) =>
      IndexedSemantics(
      key: key,
      index: index,
      child: child,
    ),
);
var _keyedSubtree = MXFunctionInvoke(
    "KeyedSubtree",
    (
      {
      Key key,
      Widget child,
      }
    ) =>
      KeyedSubtree(
      key: key,
      child: child,
    ),
);
var _keyedSubtree_wrap = MXFunctionInvoke(
  "keyedSubtree.wrap",
    (
      {
      Widget child,
      int childIndex,
      }
    ) =>
      KeyedSubtree.wrap(
      child,
      childIndex,
    ),
);
var _builder = MXFunctionInvoke(
    "Builder",
    (
      {
      Key key,
      dynamic builder,
      }
    ) =>
      Builder(
      key: key,
      builder: createGenericValueGenericClosure<Widget, BuildContext>(_builder.buildOwner, builder),
    ),
);
var _statefulBuilder = MXFunctionInvoke(
    "StatefulBuilder",
    (
      {
      Key key,
      dynamic builder,
      }
    ) =>
      StatefulBuilder(
      key: key,
      builder: null,
    ),
);
var _coloredBox = MXFunctionInvoke(
    "ColoredBox",
    (
      {
      Color color,
      Widget child,
      Key key,
      }
    ) =>
      ColoredBox(
      color: color,
      child: child,
      key: key,
    ),
);
var _callbackAction = MXFunctionInvoke(
    "CallbackAction",
    (
      {
      LocalKey intentKey,
      dynamic onInvoke,
      }
    ) =>
      CallbackAction(
      intentKey,
      onInvoke: null,
    ),
);
var _actionDispatcher = MXFunctionInvoke(
    "ActionDispatcher",
    (
    ) =>
      ActionDispatcher(
    ),
);
var _actions = MXFunctionInvoke(
    "Actions",
    (
      {
      Key key,
      ActionDispatcher dispatcher,
      Map<LocalKey, Action Function()> actions,
      Widget child,
      }
    ) =>
      Actions(
      key: key,
      dispatcher: dispatcher,
      actions: actions,
      child: child,
    ),
);
var _focusableActionDetector = MXFunctionInvoke(
    "FocusableActionDetector",
    (
      {
      Key key,
      bool enabled = true,
      FocusNode focusNode,
      bool autofocus = false,
      Map<LogicalKeySet, Intent> shortcuts,
      Map<LocalKey, Action Function()> actions,
      dynamic onShowFocusHighlight,
      dynamic onShowHoverHighlight,
      dynamic onFocusChange,
      Widget child,
      }
    ) =>
      FocusableActionDetector(
      key: key,
      enabled: enabled,
      focusNode: focusNode,
      autofocus: autofocus,
      shortcuts: shortcuts,
      actions: actions,
      onShowFocusHighlight: createValueChangedGenericClosure<bool>(_focusableActionDetector.buildOwner, onShowFocusHighlight),
      onShowHoverHighlight: createValueChangedGenericClosure<bool>(_focusableActionDetector.buildOwner, onShowHoverHighlight),
      onFocusChange: createValueChangedGenericClosure<bool>(_focusableActionDetector.buildOwner, onFocusChange),
      child: child,
    ),
);
var _doNothingAction = MXFunctionInvoke(
    "DoNothingAction",
    (
    ) =>
      DoNothingAction(
    ),
);
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
