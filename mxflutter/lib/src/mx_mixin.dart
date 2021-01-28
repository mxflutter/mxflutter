//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:flutter/material.dart';

import 'mx_build_owner.dart';
import 'mx_widget.dart';

class MXSingleTickerMixinWidget extends MXJSStatefulWidget {
  MXSingleTickerMixinWidget(
      {Key key,
      String name,
      String widgetID,
      Map widgetBuildData,
      String widgetBuildDataSeq,
      String navPushingWidgetID,
      MXBuildOwner parentBuildOwnerNode,
      bool isJSLazyWidget})
      : super(
            key: key,
            name: name,
            widgetID: widgetID,
            widgetBuildData: widgetBuildData,
            widgetBuildDataSeq: widgetBuildDataSeq,
            navPushingWidgetID: navPushingWidgetID,
            parentBuildOwnerNode: parentBuildOwnerNode,
            isJSLazyWidget: isJSLazyWidget);

  @override
  State<StatefulWidget> createState() {
    return MXSingleTickerMixinWidgetState();
  }
}

class MXSingleTickerMixinWidgetState extends MXJSWidgetState with SingleTickerProviderStateMixin {
  @override
  void dispose() {
    buildOwnerNode.onDispose();
    super.dispose();
  }
}

class MXTickerMixinWidget extends MXJSStatefulWidget {
  MXTickerMixinWidget(
      {Key key,
      String name,
      String widgetID,
      Map widgetBuildData,
      String widgetBuildDataSeq,
      String navPushingWidgetID,
      MXBuildOwner parentBuildOwnerNode,
      bool isJSLazyWidget})
      : super(
            key: key,
            name: name,
            widgetID: widgetID,
            widgetBuildData: widgetBuildData,
            widgetBuildDataSeq: widgetBuildDataSeq,
            navPushingWidgetID: navPushingWidgetID,
            parentBuildOwnerNode: parentBuildOwnerNode,
            isJSLazyWidget: isJSLazyWidget);

  @override
  State<StatefulWidget> createState() {
    return MXTickerMixinWidgetState();
  }
}

class MXTickerMixinWidgetState extends MXJSWidgetState with TickerProviderStateMixin {
  @override
  void dispose() {
    buildOwnerNode.onDispose();
    super.dispose();
  }
}

class MXKeepAliveMixinWidget extends MXJSStatefulWidget {
  MXKeepAliveMixinWidget(
      {Key key,
      String name,
      String widgetID,
      Map widgetBuildData,
      String widgetBuildDataSeq,
      String navPushingWidgetID,
      MXBuildOwner parentBuildOwnerNode,
      bool isJSLazyWidget})
      : super(
            key: key,
            name: name,
            widgetID: widgetID,
            widgetBuildData: widgetBuildData,
            widgetBuildDataSeq: widgetBuildDataSeq,
            navPushingWidgetID: navPushingWidgetID,
            parentBuildOwnerNode: parentBuildOwnerNode,
            isJSLazyWidget: isJSLazyWidget);

  @override
  State<StatefulWidget> createState() {
    return MXKeepAliveMixinWidgetState();
  }
}

class MXKeepAliveMixinWidgetState extends MXJSWidgetState with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return buildWidget(context);
  }

  @override
  bool get wantKeepAlive => true;
}

class MXSingleTickerAndKeepAliveMixinWidget extends MXJSStatefulWidget {
  MXSingleTickerAndKeepAliveMixinWidget(
      {Key key,
      String name,
      String widgetID,
      Map widgetBuildData,
      String widgetBuildDataSeq,
      String navPushingWidgetID,
      MXBuildOwner parentBuildOwnerNode,
      bool isJSLazyWidget})
      : super(
            key: key,
            name: name,
            widgetID: widgetID,
            widgetBuildData: widgetBuildData,
            widgetBuildDataSeq: widgetBuildDataSeq,
            navPushingWidgetID: navPushingWidgetID,
            parentBuildOwnerNode: parentBuildOwnerNode,
            isJSLazyWidget: isJSLazyWidget);

  @override
  State<StatefulWidget> createState() {
    return MXSingleTickerAndKeepAliveMixinWidgetState();
  }
}

class MXSingleTickerAndKeepAliveMixinWidgetState extends MXJSWidgetState
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return buildWidget(context);
  }

  @override
  bool get wantKeepAlive => true;

  @override
  void dispose() {
    buildOwnerNode.onDispose();
    super.dispose();
  }
}

class MXTickerAndKeepAliveMixinWidget extends MXJSStatefulWidget {
  MXTickerAndKeepAliveMixinWidget(
      {Key key,
      String name,
      String widgetID,
      Map widgetBuildData,
      String widgetBuildDataSeq,
      String navPushingWidgetID,
      MXBuildOwner parentBuildOwnerNode,
      bool isJSLazyWidget})
      : super(
            key: key,
            name: name,
            widgetID: widgetID,
            widgetBuildData: widgetBuildData,
            widgetBuildDataSeq: widgetBuildDataSeq,
            navPushingWidgetID: navPushingWidgetID,
            parentBuildOwnerNode: parentBuildOwnerNode,
            isJSLazyWidget: isJSLazyWidget);

  @override
  State<StatefulWidget> createState() {
    return MXTickerAndKeepAliveMixinWidgetState();
  }
}

class MXTickerAndKeepAliveMixinWidgetState extends MXJSWidgetState
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return buildWidget(context);
  }

  @override
  bool get wantKeepAlive => true;

  @override
  void dispose() {
    buildOwnerNode.onDispose();
    super.dispose();
  }
}
