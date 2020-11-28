import 'package:flutter/material.dart';

import '../mirror/mx_mirror.dart';
import '../mx_mixin.dart';
import '../mx_widget.dart';

/// 注册common方法
void mxRegisterMirrorCommonFunc() {
  MXMirror.getInstance().registerFunctions(registerMXJSStateWidgetSeries());
}

Map<String, MXFunctionInvoke> registerMXJSStateWidgetSeries() {
  var m = <String, MXFunctionInvoke>{};

  m[_mxJSStatefulWidget.funName] = _mxJSStatefulWidget;
  m[_mxJSStatelessWidget.funName] = _mxJSStatelessWidget;
  m[_mxSingleTickerMixinWidget.funName] = _mxSingleTickerMixinWidget;
  m[_mxTickerMixinWidget.funName] = _mxTickerMixinWidget;
  m[_mxKeepAliveMixinWidget.funName] = _mxKeepAliveMixinWidget;
  m[_mxSingleTickerAndKeepAliveMixinWidget.funName] =
      _mxSingleTickerAndKeepAliveMixinWidget;
  m[_mxTickerAndKeepAliveMixinWidget.funName] =
      _mxTickerAndKeepAliveMixinWidget;

  return m;
}

var _mxJSStatefulWidget = MXFunctionInvoke(
  "MXJSStatefulWidget",
  ({
    Key key,
    String name,
    String widgetID,
    Map widgetData,
    String buildWidgetDataSeq,
    String navPushingWidgetElementID,
    bool isJSLazyWidget = false,
  }) =>
      MXJSStatefulWidget(
          key: key,
          name: name,
          widgetID: widgetID,
          widgetBuildData: widgetData,
          widgetBuildDataSeq: buildWidgetDataSeq,
          navPushingWidgetID: navPushingWidgetElementID,
          parentBuildOwnerNode: _mxJSStatefulWidget.buildOwner,
          isJSLazyWidget: isJSLazyWidget),
  [
    "key",
    "name",
    "widgetID",
    "widgetData",
    "buildWidgetDataSeq",
    "navPushingWidgetElementID",
    "isJSLazyWidget"
  ],
  [
    "widgetData",
  ],
);

var _mxJSStatelessWidget = MXFunctionInvoke(
  "MXJSStatelessWidget",
  (
          {Key key,
          String name,
          String widgetID,
          Map widgetData,
          String buildWidgetDataSeq,
          String navPushingWidgetElementID}) =>
      MXJSStatelessWidget(
    key: key,
    name: name,
    widgetID: widgetID,
    widgetBuildData: widgetData,
    widgetBuildDataSeq: buildWidgetDataSeq,
    navPushingWidgetID: navPushingWidgetElementID,
    parentBuildOwnerNode: _mxJSStatelessWidget.buildOwner,
  ),
  [
    "key",
    "name",
    "widgetID",
    "widgetData",
    "buildWidgetDataSeq",
    "navPushingWidgetElementID",
  ],
  [
    "widgetData",
  ],
);

var _mxSingleTickerMixinWidget = MXFunctionInvoke(
  "MXSingleTickerMixinWidget",
  ({
    Key key,
    String name,
    String widgetID,
    Map widgetData,
    String buildWidgetDataSeq,
    String navPushingWidgetElementID,
    bool isJSLazyWidget = false,
  }) =>
      MXSingleTickerMixinWidget(
    key: key,
    name: name,
    widgetID: widgetID,
    widgetBuildData: widgetData,
    widgetBuildDataSeq: buildWidgetDataSeq,
    navPushingWidgetID: navPushingWidgetElementID,
    parentBuildOwnerNode: _mxSingleTickerMixinWidget.buildOwner,
    isJSLazyWidget: isJSLazyWidget,
  ),
  [
    "key",
    "name",
    "widgetID",
    "widgetData",
    "buildWidgetDataSeq",
    "navPushingWidgetElementID",
    "isJSLazyWidget",
  ],
  [
    "widgetData",
  ],
);

var _mxTickerMixinWidget = MXFunctionInvoke(
  "MXTickerMixinWidget",
  ({
    Key key,
    String name,
    String widgetID,
    Map widgetData,
    String buildWidgetDataSeq,
    String navPushingWidgetElementID,
    bool isJSLazyWidget = false,
  }) =>
      MXTickerMixinWidget(
    key: key,
    name: name,
    widgetID: widgetID,
    widgetBuildData: widgetData,
    widgetBuildDataSeq: buildWidgetDataSeq,
    navPushingWidgetID: navPushingWidgetElementID,
    parentBuildOwnerNode: _mxTickerMixinWidget.buildOwner,
    isJSLazyWidget: isJSLazyWidget,
  ),
  [
    "key",
    "name",
    "widgetID",
    "widgetData",
    "buildWidgetDataSeq",
    "navPushingWidgetElementID",
    "isJSLazyWidget",
  ],
  [
    "widgetData",
  ],
);

var _mxKeepAliveMixinWidget = MXFunctionInvoke(
  "MXKeepAliveMixinWidget",
  ({
    Key key,
    String name,
    String widgetID,
    Map widgetData,
    String buildWidgetDataSeq,
    String navPushingWidgetElementID,
    bool isJSLazyWidget = false,
  }) =>
      MXKeepAliveMixinWidget(
    key: key,
    name: name,
    widgetID: widgetID,
    widgetBuildData: widgetData,
    widgetBuildDataSeq: buildWidgetDataSeq,
    navPushingWidgetID: navPushingWidgetElementID,
    parentBuildOwnerNode: _mxKeepAliveMixinWidget.buildOwner,
    isJSLazyWidget: isJSLazyWidget,
  ),
  [
    "key",
    "name",
    "widgetID",
    "widgetData",
    "buildWidgetDataSeq",
    "navPushingWidgetElementID",
    "isJSLazyWidget",
  ],
  [
    "widgetData",
  ],
);

var _mxSingleTickerAndKeepAliveMixinWidget = MXFunctionInvoke(
  "MXSingleTickerAndKeepAliveMixinWidget",
  ({
    Key key,
    String name,
    String widgetID,
    Map widgetData,
    String buildWidgetDataSeq,
    String navPushingWidgetElementID,
    bool isJSLazyWidget = false,
  }) =>
      MXSingleTickerAndKeepAliveMixinWidget(
    key: key,
    name: name,
    widgetID: widgetID,
    widgetBuildData: widgetData,
    widgetBuildDataSeq: buildWidgetDataSeq,
    navPushingWidgetID: navPushingWidgetElementID,
    parentBuildOwnerNode: _mxSingleTickerAndKeepAliveMixinWidget.buildOwner,
    isJSLazyWidget: isJSLazyWidget,
  ),
  [
    "key",
    "name",
    "widgetID",
    "widgetData",
    "buildWidgetDataSeq",
    "navPushingWidgetElementID",
    "isJSLazyWidget",
  ],
  [
    "widgetData",
  ],
);

var _mxTickerAndKeepAliveMixinWidget = MXFunctionInvoke(
  "MXTickerAndKeepAliveMixinWidget",
  ({
    Key key,
    String name,
    String widgetID,
    Map widgetData,
    String buildWidgetDataSeq,
    String navPushingWidgetElementID,
    bool isJSLazyWidget = false,
  }) =>
      MXTickerAndKeepAliveMixinWidget(
    key: key,
    name: name,
    widgetID: widgetID,
    widgetBuildData: widgetData,
    widgetBuildDataSeq: buildWidgetDataSeq,
    navPushingWidgetID: navPushingWidgetElementID,
    parentBuildOwnerNode: _mxTickerAndKeepAliveMixinWidget.buildOwner,
    isJSLazyWidget: isJSLazyWidget,
  ),
  [
    "key",
    "name",
    "widgetID",
    "widgetData",
    "buildWidgetDataSeq",
    "navPushingWidgetElementID",
    "isJSLazyWidget",
  ],
  [
    "widgetData",
  ],
);
