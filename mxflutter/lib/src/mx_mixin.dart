import 'package:flutter/material.dart';
import 'mx_build_owner.dart';
import 'mx_common.dart';
import 'mx_widget.dart';

// ignore: must_be_immutable
class MXSingleTickerMixinWidget extends MXJSStatefulWidget {
  MXSingleTickerMixinWidget(
      {Key key,
      String name,
      String widgetID,
      Map widgetBuildData,
      String widgetBuildDataSeq,
      String navPushingWidgetID,
      MXJsonBuildOwner parentBuildOwnerNode,
      bool isJSLazyWidget})
      : super(
            key: key,
            widgetID: widgetID,
            widgetBuildData: widgetBuildData,
            widgetBuildDataSeq: widgetBuildDataSeq,
            navPushingWidgetID: navPushingWidgetID,
            parentBuildOwnerNode: parentBuildOwnerNode);

  @override
  State<StatefulWidget> createState() {
    return MXSingleTickerMixinWidgetState();
  }

  @override
  MXJSStatefulElement createElement() {
    assert(parentBuildOwnerNode != null);
    var element = MXJSStatefulElement(this);
    element.buildOwnerNode = MXJsonBuildOwner(element);
    parentBuildOwnerNode.addChild(element.buildOwnerNode);
    return element;
  }
}

class MXSingleTickerMixinWidgetState extends MXJSWidgetState
    with SingleTickerProviderStateMixin {}

// ignore: must_be_immutable
class MXTickerMixinWidget extends MXJSStatefulWidget {
  MXTickerMixinWidget(
      {Key key,
      String name,
      String widgetID,
      Map widgetBuildData,
      String widgetBuildDataSeq,
      String navPushingWidgetID,
      MXJsonBuildOwner parentBuildOwnerNode,
      bool isJSLazyWidget})
      : super(
            key: key,
            widgetID: widgetID,
            widgetBuildData: widgetBuildData,
            widgetBuildDataSeq: widgetBuildDataSeq,
            navPushingWidgetID: navPushingWidgetID,
            parentBuildOwnerNode: parentBuildOwnerNode);

  @override
  State<StatefulWidget> createState() {
    return MXTickerMixinWidgetState();
  }

  @override
  MXJSStatefulElement createElement() {
    assert(parentBuildOwnerNode != null);
    var element = MXJSStatefulElement(this);
    element.buildOwnerNode = MXJsonBuildOwner(element);
    parentBuildOwnerNode.addChild(element.buildOwnerNode);
    return element;
  }
}

class MXTickerMixinWidgetState extends MXJSWidgetState
    with TickerProviderStateMixin {}

// ignore: must_be_immutable
class MXKeepAliveMixinWidget extends MXJSStatefulWidget {
  MXKeepAliveMixinWidget(
      {Key key,
      String name,
      String widgetID,
      Map widgetBuildData,
      String widgetBuildDataSeq,
      String navPushingWidgetID,
      MXJsonBuildOwner parentBuildOwnerNode,
      bool isJSLazyWidget})
      : super(
            key: key,
            widgetID: widgetID,
            widgetBuildData: widgetBuildData,
            widgetBuildDataSeq: widgetBuildDataSeq,
            navPushingWidgetID: navPushingWidgetID,
            parentBuildOwnerNode: parentBuildOwnerNode);

  @override
  State<StatefulWidget> createState() {
    return MXKeepAliveMixinWidgetState();
  }

  @override
  MXJSStatefulElement createElement() {
    assert(parentBuildOwnerNode != null);
    var element = MXJSStatefulElement(this);
    element.buildOwnerNode = MXJsonBuildOwner(element);
    parentBuildOwnerNode.addChild(element.buildOwnerNode);
    return element;
  }
}

class MXKeepAliveMixinWidgetState extends MXJSWidgetState
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return buildWidget(context);
  }

  @override
  bool get wantKeepAlive => true;
}

// ignore: must_be_immutable
class MXSingleTickerAndKeepAliveMixinWidget extends MXJSStatefulWidget {
  MXSingleTickerAndKeepAliveMixinWidget(
      {Key key,
      String name,
      String widgetID,
      Map widgetBuildData,
      String widgetBuildDataSeq,
      String navPushingWidgetID,
      MXJsonBuildOwner parentBuildOwnerNode,
      bool isJSLazyWidget})
      : super(
            key: key,
            widgetID: widgetID,
            widgetBuildData: widgetBuildData,
            widgetBuildDataSeq: widgetBuildDataSeq,
            navPushingWidgetID: navPushingWidgetID,
            parentBuildOwnerNode: parentBuildOwnerNode);

  @override
  State<StatefulWidget> createState() {
    return MXSingleTickerAndKeepAliveMixinWidgetState();
  }

  @override
  MXJSStatefulElement createElement() {
    assert(parentBuildOwnerNode != null);
    var element = MXJSStatefulElement(this);
    element.buildOwnerNode = MXJsonBuildOwner(element);
    parentBuildOwnerNode.addChild(element.buildOwnerNode);
    return element;
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
}

// ignore: must_be_immutable
class MXTickerAndKeepAliveMixinWidget extends MXJSStatefulWidget {
  MXTickerAndKeepAliveMixinWidget(
      {Key key,
      String name,
      String widgetID,
      Map widgetBuildData,
      String widgetBuildDataSeq,
      String navPushingWidgetID,
      MXJsonBuildOwner parentBuildOwnerNode,
      bool isJSLazyWidget})
      : super(
            key: key,
            widgetID: widgetID,
            widgetBuildData: widgetBuildData,
            widgetBuildDataSeq: widgetBuildDataSeq,
            navPushingWidgetID: navPushingWidgetID,
            parentBuildOwnerNode: parentBuildOwnerNode);

  @override
  State<StatefulWidget> createState() {
    return MXTickerAndKeepAliveMixinWidgetState();
  }

  @override
  MXJSStatefulElement createElement() {
    assert(parentBuildOwnerNode != null);
    var element = MXJSStatefulElement(this);
    element.buildOwnerNode = MXJsonBuildOwner(element);
    parentBuildOwnerNode.addChild(element.buildOwnerNode);
    return element;
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
}
