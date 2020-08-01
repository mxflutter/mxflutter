//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.


import 'package:flutter/material.dart';

import 'mx_json_build_owner.dart';
import 'mx_js_flutter_common.dart';
import 'mx_js_widget_helper.dart';

class MXJSBaseWidget extends Object {
  //Flutter 侧生成的MXWidget widgetID 从1开始，为奇数 +2
  static int widgetIDFeed = 1;

  String name;
  String widgetID;
  Map widgetData;

  //正在构建的seq
  String buildingWidgetDataSeq;

  //buildingWidgetDataSeq真正构建成功后在切换成buildWidgetDataSeq
  String buildWidgetDataSeq;

  MXJsonBuildOwner parentBuildOwner;
  MXJsonBuildOwner buildOwner;

  // The Widget Pages that pushed this Widget ID
  // 把当前widget（this） push 出来的widget ID
  // 序列化到JSON里
  String navPushingWidgetID;

  // The Widget Pages that pushed this Widget
  // 把当前widget（this） push 出来的widget
  dynamic navPushingWidget;

  //The widget that was pushed by this widget
  //由自己this push的widget page
  List<dynamic> navPushedWidgets;

  // 辅助类，封装一些方法
  MXJSWidgetHelper helper;

  BuildContext context;

  // 性能数据
  bool enableProfile;
  Map profileInfo;

  static String generateWidgetID() {
    //Flutter 侧生成的MXWidget widgetID 从1开始，为奇数 +2
    widgetIDFeed = widgetIDFeed + 2;
    return widgetIDFeed.toString();
  }
}

///封装JSWidget
// ignore: must_be_immutable
class MXJSStatefulWidget extends StatefulWidget with MXJSBaseWidget {
  MXJSWidgetState _state;

  MXJSStatefulWidget(
      {Key key,
      String name,
      String widgetID,
      Map widgetData,
      String buildingWidgetDataSeq,
      String navPushingWidgetID,
      MXJsonBuildOwner parentBuildOwner})
      : super(key: key) {
    this.name = name;
    this.widgetID = widgetID;
    this.buildingWidgetDataSeq = buildingWidgetDataSeq;
    this.widgetData = widgetData;
    this.navPushingWidgetID = navPushingWidgetID;
    this.parentBuildOwner = parentBuildOwner;
    this.helper = MXJSWidgetHelper(this);
  }

  ///由dart侧创建MXWidget壳子
  static MXJSStatefulWidget createEmptyWidget(
      {Key key, String name, MXJsonBuildOwner parentBuildOwner}) {
    //由dart侧生成 widgetID
    String widgetID = MXJSBaseWidget.generateWidgetID();
    MXJSStatefulWidget widget = MXJSStatefulWidget(
        key: key,
        name: name,
        widgetID: widgetID,
        parentBuildOwner: parentBuildOwner);

    return widget;
  }

  get state => _state;

  @override
  State<StatefulWidget> createState() {
    _state = MXJSWidgetState();
    return _state;
  }

  void resetBuildOwner() {
    if (this.buildOwner == null) {
      this.buildOwner = MXJsonBuildOwner(this, this.parentBuildOwner);
    } else {
      this.parentBuildOwner.addChildBuildOwner(widgetID, this.buildOwner);
    }
  }
}

class MXJSWidgetState extends State<MXJSStatefulWidget>
    with SingleTickerProviderStateMixin {
  MXJSWidgetState();

  @override
  void initState() {
    super.initState();

    //widget 在Tabbar中时可能被dispose后又重新inflateWidget，dispose时会从父BuildOwner中删除自己的BuildOwner
    //flutter根据widget重新build，回先调用initState，重新插入BuildOwnerTree
    this.widget.resetBuildOwner();
  }

  @override
  void dispose() {
    super.dispose();

    this.widget.buildOwner.onDispose();
  }

  @override
  Widget build(BuildContext context) {
    MXJSLog.log(
        "MXJSStatefulWidget:build begin: widgetID ${widget.widgetID} curBuildWidgetDataSeq:${widget.buildWidgetDataSeq} buildingWidgetDataSeq:${widget.buildingWidgetDataSeq}");

    if (this.widget.buildOwner == null) {
      this.widget.buildOwner =
          MXJsonBuildOwner(this.widget, this.widget.parentBuildOwner);
    }

    if (widget.widgetData == null) {
      MXJSLog.error(
          "MXJSWidgetState:build: widget.widgetData == null this.widget.widgetID:${this.widget.widgetID}");
      return widget.helper.buildErrorWidget(context);
    }

    this.widget.context = context;
    var w = this.widget.buildOwner.build(widget.widgetData, context);

    //call JS层，Flutter UI 使用当前JSWidget哪个序列号的数据构建，callbackID,widgetID  与之对应
    MXJSLog.debug(
        "MXJSStatefulWidget:building: widget:$w callJSOnBuildEnd  widgetID ${widget.widgetID} curBuildWidgetDataSeq:${widget.buildWidgetDataSeq} buildingWidgetDataSeq:${widget.buildingWidgetDataSeq}");

    this.widget.buildWidgetDataSeq = this.widget.buildingWidgetDataSeq;
    this.widget.buildOwner.callJSOnBuildEnd();

    MXJSLog.log(
        "MXJSStatefulWidget:build end: widget:$w callJSOnBuildEnd  widgetID ${widget.widgetID} curBuildWidgetDataSeq:${widget.buildWidgetDataSeq} buildingWidgetDataSeq:${widget.buildingWidgetDataSeq}");
    return w;
  }
}

///静态json生成Widget
// ignore: must_be_immutable
class MXJSStatelessWidget extends StatelessWidget with MXJSBaseWidget {
  MXJSStatelessWidget(
      {Key key,
      String name,
      String widgetID,
      Map widgetData,
      String buildingWidgetDataSeq,
      String navPushingWidgetID,
      MXJsonBuildOwner parentBuildOwner})
      : super(key: key) {
    this.name = name;
    this.widgetID = widgetID;
    this.buildingWidgetDataSeq = buildingWidgetDataSeq;
    this.widgetData = widgetData;
    this.navPushingWidgetID = navPushingWidgetID;

    this.parentBuildOwner = parentBuildOwner;

    this.helper = MXJSWidgetHelper(this);

    this.buildOwner = MXJsonBuildOwner(this, this.parentBuildOwner);
  }

  @override
  Widget build(BuildContext context) {
    // MXJSLog.log("MXJSStatelessWidget:build: ${widget.widgetData} ");
    if (this.widgetData == null) {
      return this.helper.buildErrorWidget(context);
    }

    this.context = context;

    var w = this.buildOwner.build(this.widgetData, context);

    this.buildWidgetDataSeq = this.buildingWidgetDataSeq;
    //告诉JS层，使用当前JSWidget 序列号的数据构建，callbackID,widgetID  与之对应
    this.buildOwner.callJSOnBuildEnd();

    return w;
  }
}
