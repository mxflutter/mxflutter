//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/expansion_panel.dart';


class MXProxyExpansionPanel {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[expansionPanel.funName] = expansionPanel;
    m[expansionPanelRadio.funName] = expansionPanelRadio;
    m[expansionPanelList.funName] = expansionPanelList;
    m[expansionPanelList_radio.funName] = expansionPanelList_radio;
    return m;
  }
  static var expansionPanel = MXFunctionInvoke(
      "ExpansionPanel",
      ({
        dynamic headerBuilder,
        Widget body,
        bool isExpanded = false,
        bool canTapOnHeader = false,
      }) =>
        ExpansionPanel(
        headerBuilder: headerBuilder,
        body: body,
        isExpanded: isExpanded,
        canTapOnHeader: canTapOnHeader,
      ),
    );
  static var expansionPanelRadio = MXFunctionInvoke(
      "ExpansionPanelRadio",
      ({
        Object value,
        dynamic headerBuilder,
        Widget body,
        bool canTapOnHeader = false,
      }) =>
        ExpansionPanelRadio(
        value: value,
        headerBuilder: headerBuilder,
        body: body,
        canTapOnHeader: canTapOnHeader,
      ),
    );
  static var expansionPanelList = MXFunctionInvoke(
      "ExpansionPanelList",
      ({
        Key key,
        List<ExpansionPanel> children,
        dynamic expansionCallback,
        Duration animationDuration,
        EdgeInsets expandedHeaderPadding,
      }) =>
        ExpansionPanelList(
        key: key,
        children: children,
        expansionCallback: createVoidCallbackClosure(expansionPanelList.buildOwner, expansionCallback),
        animationDuration: animationDuration,
        expandedHeaderPadding: expandedHeaderPadding,
      ),
    );
  static var expansionPanelList_radio = MXFunctionInvoke(
    "expansionPanelList.radio",
      ({
        Key key,
        List<ExpansionPanel> children,
        dynamic expansionCallback,
        Duration animationDuration,
        Object initialOpenPanelValue,
        EdgeInsets expandedHeaderPadding,
      }) =>
        ExpansionPanelList.radio(
        key: key,
        children: children,
        expansionCallback: createVoidCallbackClosure(expansionPanelList_radio.buildOwner, expansionCallback),
        animationDuration: animationDuration,
        initialOpenPanelValue: initialOpenPanelValue,
        expandedHeaderPadding: expandedHeaderPadding,
      ),
    );
}
