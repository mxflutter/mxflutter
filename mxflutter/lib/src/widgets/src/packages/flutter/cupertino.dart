//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'src/cupertino/action_sheet.dart';
import 'src/cupertino/activity_indicator.dart';
import 'src/cupertino/app.dart';
import 'src/cupertino/bottom_tab_bar.dart';
import 'src/cupertino/button.dart';
import 'src/cupertino/text_theme.dart';
import 'src/cupertino/context_menu.dart';
import 'src/cupertino/context_menu_action.dart';
import 'src/cupertino/date_picker.dart';
import 'src/cupertino/dialog.dart';
import 'src/cupertino/icons.dart';
import 'src/cupertino/interface_level.dart';
import 'src/cupertino/nav_bar.dart';
import 'src/cupertino/page_scaffold.dart';
import 'src/cupertino/picker.dart';
import 'src/cupertino/refresh.dart';
import 'src/cupertino/route.dart';
import 'src/cupertino/scrollbar.dart';
import 'src/cupertino/segmented_control.dart';
import 'src/cupertino/slider.dart';
import 'src/cupertino/sliding_segmented_control.dart';
import 'src/cupertino/switch.dart';
import 'src/cupertino/tab_scaffold.dart';
import 'src/cupertino/tab_view.dart';
import 'src/cupertino/text_field.dart';
import 'src/cupertino/text_selection.dart';
import 'src/cupertino/thumb_painter.dart';
import 'src/cupertino/constants.dart';


class MXProxyCupertino {
  static Map<String, MXFunctionInvoke> registerSeries() {
    Map<String, MXFunctionInvoke> m = {};
    m.addAll(MXProxyActionSheet.registerSeries());
    m.addAll(MXProxyActivityIndicator.registerSeries());
    m.addAll(MXProxyApp.registerSeries());
    m.addAll(MXProxyBottomTabBar.registerSeries());
    m.addAll(MXProxyButton.registerSeries());
    m.addAll(MXProxyTextTheme.registerSeries());
    m.addAll(MXProxyContextMenu.registerSeries());
    m.addAll(MXProxyContextMenuAction.registerSeries());
    m.addAll(MXProxyDatePicker.registerSeries());
    m.addAll(MXProxyDialog.registerSeries());
    m.addAll(MXProxyIcons.registerSeries());
    m.addAll(MXProxyInterfaceLevel.registerSeries());
    m.addAll(MXProxyNavBar.registerSeries());
    m.addAll(MXProxyPageScaffold.registerSeries());
    m.addAll(MXProxyPicker.registerSeries());
    m.addAll(MXProxyRefresh.registerSeries());
    m.addAll(MXProxyRoute.registerSeries());
    m.addAll(MXProxyScrollbar.registerSeries());
    m.addAll(MXProxySegmentedControl.registerSeries());
    m.addAll(MXProxySlider.registerSeries());
    m.addAll(MXProxySlidingSegmentedControl.registerSeries());
    m.addAll(MXProxySwitch.registerSeries());
    m.addAll(MXProxyTabScaffold.registerSeries());
    m.addAll(MXProxyTabView.registerSeries());
    m.addAll(MXProxyTextField.registerSeries());
    m.addAll(MXProxyTextSelection.registerSeries());
    m.addAll(MXProxyThumbPainter.registerSeries());
    m.addAll(MXProxyConstants.registerSeries());
    return m;
  }
}
