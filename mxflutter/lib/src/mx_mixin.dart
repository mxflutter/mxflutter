import 'package:flutter/material.dart';
import 'mx_build_owner.dart';
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
}
