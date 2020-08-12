import 'package:flutter/material.dart';
import 'mx_json_build_owner.dart';
import 'mx_json_to_dart.dart';
import 'mx_js_widget.dart';

class MXProxyMXJSStatefulWidget extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName1 = "MXJSStatefulWidget";

    ///**@@@  3 替换类构造函数
    return {
      regClassName1: () =>
          MXProxyMXJSStatefulWidget()..init(className: regClassName1)
    };
  }

  @override
  MXJSStatefulWidget constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = MXJSStatefulWidget(
        key: mxj2d(bo, jsonMap["key"]),
        name: mxj2d(bo, jsonMap["name"]),
        widgetID: mxj2d(bo, jsonMap["widgetID"]),
        widgetData: jsonMap["widgetData"],
        buildingWidgetDataSeq: mxj2d(bo, jsonMap["buildWidgetDataSeq"]),
        navPushingWidgetElementID: jsonMap["navPushingWidgetElementID"],
        parentBuildOwner: bo);
    return widget;
  }
}

class MXProxyMXJSStatelessWidget extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName1 = "MXJSStatelessWidget";

    ///**@@@  3 替换类构造函数
    return {
      regClassName1: () =>
          MXProxyMXJSStatelessWidget()..init(className: regClassName1)
    };
  }

  @override
  MXJSStatelessWidget constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = MXJSStatelessWidget(
        key: mxj2d(bo, jsonMap["key"]),
        name: mxj2d(bo, jsonMap["name"]),
        widgetID: mxj2d(bo, jsonMap["widgetID"]),
        widgetData: jsonMap["widgetData"],
        buildingWidgetDataSeq: mxj2d(bo, jsonMap["buildWidgetDataSeq"]),
        navPushingWidgetElementID: jsonMap["navPushingWidgetElementID"],
        parentBuildOwner: bo);
    return widget;
  }
}
