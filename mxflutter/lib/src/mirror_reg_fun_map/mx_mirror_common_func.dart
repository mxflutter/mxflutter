import 'package:flutter/material.dart';
import '../mirror/mx_mirror.dart';
import '../mx_widget.dart';

/// 注册common方法
void registerMirrorCommonFunc() {
  var funMap = <String, MXFunctionInvoke>{};

  // 移除Mirror对象
  var removeMirrorObject = MXFunctionInvoke(
      "MXMirrorObject#removeMirrorObject",
      ({String mirrorID}) =>
          MXMirror.getInstance().removeMirrorObject(mirrorID));
  funMap[removeMirrorObject.funName] = removeMirrorObject;

  // 其他方法往这里加

  MXMirror.getInstance().registerFunctions(funMap);

  MXMirror.getInstance().registerFunctions(registerMXJSStateWidgetSeries());
}

Map<String, MXFunctionInvoke> registerMXJSStateWidgetSeries() {
  var m = <String, MXFunctionInvoke>{};

  m[_mxJSStatefulWidget.funName] = _mxJSStatefulWidget;
  m[_mxJSStatelessWidget.funName] = _mxJSStatelessWidget;

  return m;
}

var _mxJSStatefulWidget = MXFunctionInvoke(
  "MXJSStatefulWidget",
  (
          {Key key,
          String name,
          String widgetID,
          Map widgetData,
          String buildWidgetDataSeq,
          String navPushingWidgetElementID}) =>
      MXJSStatefulWidget(
    key: key,
    name: name,
    widgetID: widgetID,
    widgetBuildData: widgetData,
    widgetBuildDataSeq: buildWidgetDataSeq,
    navPushingWidgetID: navPushingWidgetElementID,
    parentBuildOwnerNode: _mxJSStatefulWidget.buildOwner,
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
