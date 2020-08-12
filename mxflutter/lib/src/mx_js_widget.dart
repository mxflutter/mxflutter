//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:flutter/material.dart';
import 'mx_json_build_owner.dart';
import 'mx_js_flutter_common.dart';
import 'mx_json_to_dart.dart';

mixin MXJSWidgetBase {
  /// Flutter 侧生成的MXWidget widgetID 从1开始，为奇数 +2
  static int _widgetIDFeed = 1;

  String get widgetID;
  Map get widgetData;
  String get buildWidgetDataSeq;

  Widget get errorWidget {
    return Container(
        color: Colors.white,
        child: Center(
          child: CircularProgressIndicator(),
        ));
  }

  Widget get loadingWidget {
    return Container(
        color: Colors.white,
        child: Center(
          child: CircularProgressIndicator(),
        ));
  }

  static String generateWidgetID() {
    //Flutter 侧生成的MXWidget widgetID 从1开始，为奇数 +2
    _widgetIDFeed = _widgetIDFeed + 2;
    return _widgetIDFeed.toString();
  }
}

/// 封装JSWidget

class MXJSStatefulWidget extends StatefulWidget with MXJSWidgetBase {
  final String name;
  final String widgetID;
  final Map widgetData;

  /// widgetData的seq
  final String buildWidgetDataSeq;

  /// The Widget Pages that pushed this Widget ID
  /// 把当前widget（this） push 出来的widget ID
  final String navPushingWidgetID;

  /// 通过 MXJsonBuildOwner 组成MXJSWidget的树形结构，管理MXJSWidget build过程
  final MXJsonBuildOwner parentBuildOwnerNode;

  final bool isHostWidget;

  MXJSStatefulWidget(
      {Key key,
      this.name,
      this.widgetID,
      this.widgetData,
      this.buildWidgetDataSeq,
      this.navPushingWidgetID,
      this.parentBuildOwnerNode})
      : this.isHostWidget = false,
        super(key: key);

  ///由dart侧创建MXWidget壳子
  MXJSStatefulWidget.hostWidget({Key key, this.name, this.parentBuildOwnerNode})
      : this.widgetID = MXJSWidgetBase.generateWidgetID(),
        this.widgetData = null,
        this.isHostWidget = true,
        this.buildWidgetDataSeq = null,
        this.navPushingWidgetID = null,
        super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MXJSWidgetState();
  }

  @override
  MXJSStatefulElement createElement() {
    var element = MXJSStatefulElement(this);
    element.buildOwnerNode = MXJsonBuildOwner(element);
    parentBuildOwnerNode.addChild(widgetID, element.buildOwnerNode);
    return element;
  }
}

class MXJSStatefulElement extends StatefulElement {
  MXJsonBuildOwner buildOwnerNode;

  MXJSStatefulElement(MXJSStatefulWidget widget) : super(widget);

  @override
  MXJSStatefulWidget get widget => super.widget as MXJSStatefulWidget;

  @override
  void unmount() {
    buildOwnerNode.onUnmount();
    super.unmount();
  }
}

class MXJSWidgetState extends State<MXJSStatefulWidget>
    with SingleTickerProviderStateMixin {
  // 三个场景会更新widgetData
  // 1. 初始化 2. MXJSStatefulWidget的element被复用 3. MXJSWidgetState本身被js 刷新
  Map widgetData;
  String buildWidgetDataSeq;

  MXJSWidgetState();

  @override
  void initState() {
    super.initState();

    _updateStateWidgetData();
  }

  @override
  void didUpdateWidget(MXJSStatefulWidget old) {
    super.didUpdateWidget(old);
    // 当MXJSStatefulWidget 在element树中被复用，需要更新widgetData
    _updateStateWidgetData();
  }

  _updateStateWidgetData() {
    // state初始化时，用widget的widgetData ，之后等js侧的刷新
    widgetData = widget.widgetData;
    buildWidgetDataSeq = widget.buildWidgetDataSeq;
  }

  @override
  void dispose() {
    super.dispose();
  }

  MXJsonBuildOwner get buildOwnerNode =>
      (context as MXJSStatefulElement).buildOwnerNode;

  @override
  Widget build(BuildContext context) {
    assert(buildOwnerNode != null);

    MXJSLog.log("MXJSStatefulWidget:build begin: widgetID ${widget.widgetID}"
        "curBuildWidgetDataSeq:${widget.buildWidgetDataSeq} ");

    if (widgetData == null) {
      // host 等待js刷新，先显示loading页面
      // TODO: 定制loading页面和 error 页面
      if (widget.isHostWidget) {
        return widget.loadingWidget;
      } else {
        MXJSLog.error("MXJSWidgetState:build: widget.widgetData == null "
            "this.widget.widgetID:${this.widget.widgetID}");
        return widget.errorWidget;
      }
    }

    Widget child = _j2dBuild(widgetData, context);

    if (child == null) {
      MXJSLog.error(
          "MXJSWidgetState:build: _j2dBuild(widgetData, context) == null error; "
          "this.widget.widgetID:${this.widget.widgetID}");
      child = widget.errorWidget;
    }

    //call JS层，Flutter UI 使用当前JSWidget哪个序列号的数据构建，callbackID,widgetID  与之对应
    MXJSLog.debug("MXJSStatefulWidget:building: widget:$child callJSOnBuildEnd "
        "widgetID ${widget.widgetID} curBuildWidgetDataSeq:$buildWidgetDataSeq");

    buildOwnerNode.callJSOnBuildEnd();

    MXJSLog.log("MXJSStatefulWidget:build end: widget:$child "
        "callJSOnBuildEnd  widgetID ${widget.widgetID} "
        "buildWidgetDataSeq:$buildWidgetDataSeq} ");
    return child;
  }

  Widget _j2dBuild(Map widgetData, BuildContext context) {
    return MXJsonObjToDartObject.jsonToDartObj(widgetData,
        buildOwner: buildOwnerNode, context: context);
  }
}

/// 静态json生成Widget
class MXJSStatelessWidget extends StatelessWidget with MXJSWidgetBase {
  final String name;
  final String widgetID;
  final Map widgetData;

  /// widgetData的seq
  final String buildWidgetDataSeq;

  /// The Widget Pages that pushed this Widget ID
  /// 把当前widget（this） push 出来的widget ID
  final String navPushingWidgetID;

  /// 通过 MXJsonBuildOwner 组成MXJSWidget的树形结构，管理MXJSWidget build过程
  final MXJsonBuildOwner parentBuildOwnerNode;

  MXJSStatelessWidget(
      {Key key,
      this.name,
      this.widgetID,
      this.widgetData,
      this.buildWidgetDataSeq,
      this.navPushingWidgetID,
      this.parentBuildOwnerNode})
      : super(key: key);

  @override
  MXJSStatelessElement createElement() {
    var element = MXJSStatelessElement(this);
    element.buildOwnerNode = MXJsonBuildOwner(element);
    parentBuildOwnerNode.addChild(widgetID, element.buildOwnerNode);
    return element;
  }

  @override
  Widget build(BuildContext context) {
    assert(parentBuildOwnerNode != null);

    MXJSLog.log("MXJSStatelessWidget:build begin: widgetID $widgetID"
        "curBuildWidgetDataSeq:$buildWidgetDataSeq ");

    if (widgetData == null) {
      // host 等待js刷新，先显示loading页面
      // TODO: 定制loading页面和 error 页面
      MXJSLog.error("MXJSWidgetState:build: widgetData == null "
          "this.widget.widgetID:${this.widgetID}");
      return errorWidget;
    }

    Widget child = _j2dBuild(widgetData, context);

    if (child == null) {
      MXJSLog.error(
          "MXJSWidgetState:build: _j2dBuild(widgetData, context) == null error; "
              "this.widget.widgetID:$widgetID");
      child = errorWidget;
    }

    //call JS层，Flutter UI 使用当前JSWidget哪个序列号的数据构建，callbackID,widgetID  与之对应
    MXJSLog.debug("MXJSStatefulWidget:building: widget:$child callJSOnBuildEnd "
        "widgetID $widgetID curBuildWidgetDataSeq:$buildWidgetDataSeq");

    parentBuildOwnerNode.callJSOnBuildEnd();

    MXJSLog.log("MXJSStatefulWidget:build end: widget:$child "
        "callJSOnBuildEnd  widgetID $widgetID "
        "buildWidgetDataSeq:$buildWidgetDataSeq} ");
    return child;

  }

  Widget _j2dBuild(Map widgetData, BuildContext context) {
    return MXJsonObjToDartObject.jsonToDartObj(widgetData,
        buildOwner: parentBuildOwnerNode, context: context);
  }
}

class MXJSStatelessElement extends StatelessElement {
  MXJsonBuildOwner buildOwnerNode;

  MXJSStatelessElement(MXJSStatelessWidget widget) : super(widget);

  @override
  MXJSStatelessWidget get widget => super.widget as MXJSStatelessWidget;

  @override
  void unmount() {
    buildOwnerNode.onUnmount();
    super.unmount();
  }
}
