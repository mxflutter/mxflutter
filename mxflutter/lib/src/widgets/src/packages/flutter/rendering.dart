//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'src/rendering/animated_size.dart';
import 'src/rendering/layer.dart';
import 'src/rendering/custom_layout.dart';
import 'src/rendering/custom_paint.dart';
import 'src/rendering/debug_overflow_indicator.dart';
import 'src/rendering/editable.dart';
import 'src/rendering/error.dart';
import 'src/rendering/flex.dart';
import 'src/rendering/flow.dart';
import 'src/rendering/image.dart';
import 'src/rendering/list_body.dart';
import 'src/rendering/list_wheel_viewport.dart';
import 'src/rendering/mouse_tracking.dart';
import 'src/rendering/paragraph.dart';
import 'src/rendering/performance_overlay.dart';
import 'src/rendering/platform_view.dart';
import 'src/rendering/proxy_box.dart';
import 'src/rendering/proxy_sliver.dart';
import 'src/rendering/rotated_box.dart';
import 'src/rendering/shifted_box.dart';
import 'src/rendering/sliver.dart';
import 'src/rendering/sliver_fill.dart';
import 'src/rendering/sliver_fixed_extent_list.dart';
import 'src/rendering/sliver_grid.dart';
import 'src/rendering/sliver_list.dart';
import 'src/rendering/sliver_multi_box_adaptor.dart';
import 'src/rendering/sliver_padding.dart';
import 'src/rendering/sliver_persistent_header.dart';
import 'src/rendering/stack.dart';
import 'src/rendering/table.dart';
import 'src/rendering/table_border.dart';
import 'src/rendering/texture.dart';
import 'src/rendering/tweens.dart';
import 'src/rendering/viewport_offset.dart';
import 'src/rendering/wrap.dart';


class MXProxyRendering {
  static Map<String, MXFunctionInvoke> registerSeries() {
    Map<String, MXFunctionInvoke> m = {};
    m.addAll(MXProxyAnimatedSize.registerSeries());
    m.addAll(MXProxyLayer.registerSeries());
    m.addAll(MXProxyCustomLayout.registerSeries());
    m.addAll(MXProxyCustomPaint.registerSeries());
    m.addAll(MXProxyDebugOverflowIndicator.registerSeries());
    m.addAll(MXProxyEditable.registerSeries());
    m.addAll(MXProxyError.registerSeries());
    m.addAll(MXProxyFlex.registerSeries());
    m.addAll(MXProxyFlow.registerSeries());
    m.addAll(MXProxyImage.registerSeries());
    m.addAll(MXProxyListBody.registerSeries());
    m.addAll(MXProxyListWheelViewport.registerSeries());
    m.addAll(MXProxyMouseTracking.registerSeries());
    m.addAll(MXProxyParagraph.registerSeries());
    m.addAll(MXProxyPerformanceOverlay.registerSeries());
    m.addAll(MXProxyPlatformView.registerSeries());
    m.addAll(MXProxyProxyBox.registerSeries());
    m.addAll(MXProxyProxySliver.registerSeries());
    m.addAll(MXProxyRotatedBox.registerSeries());
    m.addAll(MXProxyShiftedBox.registerSeries());
    m.addAll(MXProxySliver.registerSeries());
    m.addAll(MXProxySliverFill.registerSeries());
    m.addAll(MXProxySliverFixedExtentList.registerSeries());
    m.addAll(MXProxySliverGrid.registerSeries());
    m.addAll(MXProxySliverList.registerSeries());
    m.addAll(MXProxySliverMultiBoxAdaptor.registerSeries());
    m.addAll(MXProxySliverPadding.registerSeries());
    m.addAll(MXProxySliverPersistentHeader.registerSeries());
    m.addAll(MXProxyStack.registerSeries());
    m.addAll(MXProxyTable.registerSeries());
    m.addAll(MXProxyTableBorder.registerSeries());
    m.addAll(MXProxyTexture.registerSeries());
    m.addAll(MXProxyTweens.registerSeries());
    m.addAll(MXProxyViewportOffset.registerSeries());
    m.addAll(MXProxyWrap.registerSeries());
    return m;
  }
}
