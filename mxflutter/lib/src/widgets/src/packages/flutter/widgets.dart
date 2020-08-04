//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'src/widgets/widget_span.dart';
import 'src/widgets/animated_cross_fade.dart';
import 'src/widgets/animated_list.dart';
import 'src/widgets/animated_size.dart';
import 'src/widgets/animated_switcher.dart';
import 'src/widgets/annotated_region.dart';
import 'src/widgets/async.dart';
import 'src/widgets/bottom_navigation_bar_item.dart';
import 'src/widgets/color_filter.dart';
import 'src/widgets/dismissible.dart';
import 'src/widgets/drag_target.dart';
import 'src/widgets/draggable_scrollable_sheet.dart';
import 'src/widgets/fade_in_image.dart';
import 'src/widgets/form.dart';
import 'src/widgets/grid_paper.dart';
import 'src/widgets/heroes.dart';
import 'src/widgets/icon.dart';
import 'src/widgets/icon_data.dart';
import 'src/widgets/icon_theme.dart';
import 'src/widgets/icon_theme_data.dart';
import 'src/widgets/image_filter.dart';
import 'src/widgets/image_icon.dart';
import 'src/widgets/implicit_animations.dart';
import 'src/widgets/layout_builder.dart';
import 'src/widgets/list_wheel_scroll_view.dart';
import 'src/widgets/navigation_toolbar.dart';
import 'src/widgets/nested_scroll_view.dart';
import 'src/widgets/orientation_builder.dart';
import 'src/widgets/page_view.dart';
import 'src/widgets/placeholder.dart';
import 'src/widgets/platform_view.dart';
import 'src/widgets/preferred_size.dart';
import 'src/widgets/primary_scroll_controller.dart';
import 'src/widgets/raw_keyboard_listener.dart';
import 'src/widgets/safe_area.dart';
import 'src/widgets/scroll_metrics.dart';
import 'src/widgets/scroll_simulation.dart';
import 'src/widgets/scroll_view.dart';
import 'src/widgets/scrollbar.dart';
import 'src/widgets/single_child_scroll_view.dart';
import 'src/widgets/size_changed_layout_notifier.dart';
import 'src/widgets/sliver_fill.dart';
import 'src/widgets/sliver_layout_builder.dart';
import 'src/widgets/sliver_persistent_header.dart';
import 'src/widgets/sliver_prototype_extent_list.dart';
import 'src/widgets/spacer.dart';
import 'src/widgets/status_transitions.dart';
import 'src/widgets/texture.dart';
import 'src/widgets/tween_animation_builder.dart';
import 'src/widgets/unique_widget.dart';
import 'src/widgets/value_listenable_builder.dart';
import 'src/widgets/will_pop_scope.dart';
import 'src/widgets/constants.dart';
import 'src/widgets/route_notification_messages.dart';


class MXProxyWidgets {
  static Map<String, MXFunctionInvoke> registerSeries() {
    Map<String, MXFunctionInvoke> m = {};
    m.addAll(MXProxyWidgetSpan.registerSeries());
    m.addAll(MXProxyAnimatedCrossFade.registerSeries());
    m.addAll(MXProxyAnimatedList.registerSeries());
    m.addAll(MXProxyAnimatedSize.registerSeries());
    m.addAll(MXProxyAnimatedSwitcher.registerSeries());
    m.addAll(MXProxyAnnotatedRegion.registerSeries());
    m.addAll(MXProxyAsync.registerSeries());
    m.addAll(MXProxyBottomNavigationBarItem.registerSeries());
    m.addAll(MXProxyColorFilter.registerSeries());
    m.addAll(MXProxyDismissible.registerSeries());
    m.addAll(MXProxyDragTarget.registerSeries());
    m.addAll(MXProxyDraggableScrollableSheet.registerSeries());
    m.addAll(MXProxyFadeInImage.registerSeries());
    m.addAll(MXProxyForm.registerSeries());
    m.addAll(MXProxyGridPaper.registerSeries());
    m.addAll(MXProxyHeroes.registerSeries());
    m.addAll(MXProxyIcon.registerSeries());
    m.addAll(MXProxyIconData.registerSeries());
    m.addAll(MXProxyIconTheme.registerSeries());
    m.addAll(MXProxyIconThemeData.registerSeries());
    m.addAll(MXProxyImageFilter.registerSeries());
    m.addAll(MXProxyImageIcon.registerSeries());
    m.addAll(MXProxyImplicitAnimations.registerSeries());
    m.addAll(MXProxyLayoutBuilder.registerSeries());
    m.addAll(MXProxyListWheelScrollView.registerSeries());
    m.addAll(MXProxyNavigationToolbar.registerSeries());
    m.addAll(MXProxyNestedScrollView.registerSeries());
    m.addAll(MXProxyOrientationBuilder.registerSeries());
    m.addAll(MXProxyPageView.registerSeries());
    m.addAll(MXProxyPlaceholder.registerSeries());
    m.addAll(MXProxyPlatformView.registerSeries());
    m.addAll(MXProxyPreferredSize.registerSeries());
    m.addAll(MXProxyPrimaryScrollController.registerSeries());
    m.addAll(MXProxyRawKeyboardListener.registerSeries());
    m.addAll(MXProxySafeArea.registerSeries());
    m.addAll(MXProxyScrollMetrics.registerSeries());
    m.addAll(MXProxyScrollSimulation.registerSeries());
    m.addAll(MXProxyScrollView.registerSeries());
    m.addAll(MXProxyScrollbar.registerSeries());
    m.addAll(MXProxySingleChildScrollView.registerSeries());
    m.addAll(MXProxySizeChangedLayoutNotifier.registerSeries());
    m.addAll(MXProxySliverFill.registerSeries());
    m.addAll(MXProxySliverLayoutBuilder.registerSeries());
    m.addAll(MXProxySliverPersistentHeader.registerSeries());
    m.addAll(MXProxySliverPrototypeExtentList.registerSeries());
    m.addAll(MXProxySpacer.registerSeries());
    m.addAll(MXProxyStatusTransitions.registerSeries());
    m.addAll(MXProxyTexture.registerSeries());
    m.addAll(MXProxyTweenAnimationBuilder.registerSeries());
    m.addAll(MXProxyUniqueWidget.registerSeries());
    m.addAll(MXProxyValueListenableBuilder.registerSeries());
    m.addAll(MXProxyWillPopScope.registerSeries());
    m.addAll(MXProxyConstants.registerSeries());
    m.addAll(MXProxyRouteNotificationMessages.registerSeries());
    return m;
  }
}
