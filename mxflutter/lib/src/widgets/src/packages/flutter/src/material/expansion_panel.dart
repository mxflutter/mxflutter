//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/expansion_panel.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/expand_icon.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/mergeable_material.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerExpansionPanelSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_expansionPanel.funName] = _expansionPanel;
  m[_expansionPanelRadio.funName] = _expansionPanelRadio;
  m[_expansionPanelList.funName] = _expansionPanelList;
  m[_expansionPanelListRadio.funName] = _expansionPanelListRadio;
  return m;
}

var _expansionPanel = MXFunctionInvoke(
  "ExpansionPanel",
  ({
    dynamic headerBuilder,
    Widget body,
    bool isExpanded = false,
    bool canTapOnHeader = false,
  }) =>
      ExpansionPanel(
    headerBuilder: null,
    body: body,
    isExpanded: isExpanded,
    canTapOnHeader: canTapOnHeader,
  ),
  [
    "headerBuilder",
    "body",
    "isExpanded",
    "canTapOnHeader",
  ],
);
var _expansionPanelRadio = MXFunctionInvoke(
  "ExpansionPanelRadio",
  ({
    Object value,
    dynamic headerBuilder,
    Widget body,
    bool canTapOnHeader = false,
  }) =>
      ExpansionPanelRadio(
    value: value,
    headerBuilder: null,
    body: body,
    canTapOnHeader: canTapOnHeader,
  ),
  [
    "value",
    "headerBuilder",
    "body",
    "canTapOnHeader",
  ],
);
var _expansionPanelList = MXFunctionInvoke(
  "ExpansionPanelList",
  ({
    Key key,
    dynamic children = const <ExpansionPanel>[],
    dynamic expansionCallback,
    Duration animationDuration = kThemeAnimationDuration,
    EdgeInsets expandedHeaderPadding = const EdgeInsets.symmetric(vertical: 64.0 - 48.0),
    Color dividerColor,
  }) =>
      ExpansionPanelList(
    key: key,
    children: toListT<ExpansionPanel>(children),
    expansionCallback: createVoidTwoParamsClosure<int, bool>(_expansionPanelList.buildOwner, expansionCallback),
    animationDuration: animationDuration,
    expandedHeaderPadding: expandedHeaderPadding,
    dividerColor: dividerColor,
  ),
  [
    "key",
    "children",
    "expansionCallback",
    "animationDuration",
    "expandedHeaderPadding",
    "dividerColor",
  ],
);
var _expansionPanelListRadio = MXFunctionInvoke(
  "ExpansionPanelList.radio",
  ({
    Key key,
    dynamic children = const <ExpansionPanelRadio>[],
    dynamic expansionCallback,
    Duration animationDuration = kThemeAnimationDuration,
    Object initialOpenPanelValue,
    EdgeInsets expandedHeaderPadding = const EdgeInsets.symmetric(vertical: 64.0 - 48.0),
    Color dividerColor,
  }) =>
      ExpansionPanelList.radio(
    key: key,
    children: toListT<ExpansionPanel>(children),
    expansionCallback: createVoidTwoParamsClosure<int, bool>(_expansionPanelListRadio.buildOwner, expansionCallback),
    animationDuration: animationDuration,
    initialOpenPanelValue: initialOpenPanelValue,
    expandedHeaderPadding: expandedHeaderPadding,
    dividerColor: dividerColor,
  ),
  [
    "key",
    "children",
    "expansionCallback",
    "animationDuration",
    "initialOpenPanelValue",
    "expandedHeaderPadding",
    "dividerColor",
  ],
);
