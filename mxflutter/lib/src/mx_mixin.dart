import 'package:flutter/material.dart';
import 'mx_build_owner.dart';
import 'mx_common.dart';
import 'mx_widget.dart';

class MXSingleTickerMixinWidget extends MXJSStatefulWidget {
  final String name;
  final String widgetID;

  final Map widgetBuildData;
  final String widgetBuildDataSeq;

  /// The Widget Pages that pushed this Widget ID
  /// 把当前widget（this） push 出来的widget ID
  final String navPushingWidgetID;

  /// 通过 MXJsonBuildOwner 组成MXJSWidget的树形结构，管理MXJSWidget build过程
  final MXJsonBuildOwner parentBuildOwnerNode;

  /// Flutter 主动创建的 hostWidget，等待JS刷新
  final bool isHostWidget;

  /// JS 主动创建，等待 Flutter 真正 build 时，通知 JS 刷新
  final bool isJSLazyWidget;

  MXSingleTickerMixinWidget(
      {Key key,
      this.name,
      this.widgetID,
      this.widgetBuildData,
      this.widgetBuildDataSeq,
      this.navPushingWidgetID,
      this.parentBuildOwnerNode,
      this.isJSLazyWidget})
      : this.isHostWidget = false,
        super(key: key);

    ///由dart侧创建MXWidget壳子
  MXSingleTickerMixinWidget.hostWidget({Key key, this.name, this.parentBuildOwnerNode})
      : this.widgetID = MXJSWidgetBase.generateWidgetID(),
        this.widgetBuildData = null,
        this.isHostWidget = true,
        this.widgetBuildDataSeq = null,
        this.navPushingWidgetID = null,
        this.isJSLazyWidget = false,
        super(key: key);

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

class MXTickerMixinWidget extends MXJSStatefulWidget {
  final String name;
  final String widgetID;

  final Map widgetBuildData;
  final String widgetBuildDataSeq;

  /// The Widget Pages that pushed this Widget ID
  /// 把当前widget（this） push 出来的widget ID
  final String navPushingWidgetID;

  /// 通过 MXJsonBuildOwner 组成MXJSWidget的树形结构，管理MXJSWidget build过程
  final MXJsonBuildOwner parentBuildOwnerNode;

  /// Flutter 主动创建的 hostWidget，等待JS刷新
  final bool isHostWidget;

  /// JS 主动创建，等待 Flutter 真正 build 时，通知 JS 刷新
  final bool isJSLazyWidget;

  MXTickerMixinWidget(
      {Key key,
      this.name,
      this.widgetID,
      this.widgetBuildData,
      this.widgetBuildDataSeq,
      this.navPushingWidgetID,
      this.parentBuildOwnerNode,
      this.isJSLazyWidget})
      : this.isHostWidget = false,
        super(key: key);

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

class MXKeepAliveMixinWidget extends MXJSStatefulWidget {
  final String name;
  final String widgetID;

  final Map widgetBuildData;
  final String widgetBuildDataSeq;

  /// The Widget Pages that pushed this Widget ID
  /// 把当前widget（this） push 出来的widget ID
  final String navPushingWidgetID;

  /// 通过 MXJsonBuildOwner 组成MXJSWidget的树形结构，管理MXJSWidget build过程
  final MXJsonBuildOwner parentBuildOwnerNode;

  /// Flutter 主动创建的 hostWidget，等待JS刷新
  final bool isHostWidget;

  /// JS 主动创建，等待 Flutter 真正 build 时，通知 JS 刷新
  final bool isJSLazyWidget;

  MXKeepAliveMixinWidget(
      {Key key,
      this.name,
      this.widgetID,
      this.widgetBuildData,
      this.widgetBuildDataSeq,
      this.navPushingWidgetID,
      this.parentBuildOwnerNode,
      this.isJSLazyWidget})
      : this.isHostWidget = false,
        super(key: key);

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

    assert(buildOwnerNode != null);

    Widget child = MXJSWidgetBase.errorWidget;

    MXJSLog.log("MXJSStatefulWidget:build begin: widgetID ${widget.widgetID}"
        "curWidgetBuildDataSeq:$widgetBuildDataSeq ");

    if (isNotEmptyData(widgetBuildData)) {
      // call JS层，Flutter UI 使用当前JSWidget哪个序列号的数据构建，callbackID,widgetID  与之对应
      MXJSLog.debug(
          "MXJSStatefulWidget:building: widget:$child callJSOnBuildEnd "
          "widgetID ${widget.widgetID} curWidgetBuildDataSeq:$widgetBuildDataSeq");

      child = buildOwnerNode.buildWidgetData(widgetBuildData, context);
      if (child == null || child is! Widget) {
        MXJSLog.error(
            "MXJSWidgetState:build: buildOwnerNode.buildWidgetData(widgetBuildData, context) return error; "
            "child: $child"
            "this.widget.widgetID:${this.widget.widgetID}");
        child = MXJSWidgetBase.errorWidget;
      }
    } else {
      // host 等待js刷新，先显示loading页面
      // TODO: 定制loading页面和 error 页面
      if (widget.isHostWidget) {
        child = hostWidgetInvokeJS(context);
      } else if (widget.isJSLazyWidget) {
        child = lazyWidgetInvokeJS(context);
      } else {
        MXJSLog.error("MXJSWidgetState:build: widget.widgetData == null "
            "this.widget.widgetID:${this.widget.widgetID}");
        child = MXJSWidgetBase.errorWidget;
      }
    }

    // build 逻辑非常重要，保证到底JS，否则JS setState 不生效
    buildOwnerNode.callJSOnBuildEnd();

    MXJSLog.log("MXJSStatefulWidget:build end: widget:$child "
        "callJSOnBuildEnd  widgetID ${widget.widgetID} "
        "widgetBuildDataSeq:$widgetBuildDataSeq} ");
    return child;
  }

  @override
  bool get wantKeepAlive => true;
}

class MXSingleTickerAndKeepAliveMixinWidget extends MXJSStatefulWidget {
  final String name;
  final String widgetID;

  final Map widgetBuildData;
  final String widgetBuildDataSeq;

  /// The Widget Pages that pushed this Widget ID
  /// 把当前widget（this） push 出来的widget ID
  final String navPushingWidgetID;

  /// 通过 MXJsonBuildOwner 组成MXJSWidget的树形结构，管理MXJSWidget build过程
  final MXJsonBuildOwner parentBuildOwnerNode;

  /// Flutter 主动创建的 hostWidget，等待JS刷新
  final bool isHostWidget;

  /// JS 主动创建，等待 Flutter 真正 build 时，通知 JS 刷新
  final bool isJSLazyWidget;

  MXSingleTickerAndKeepAliveMixinWidget(
      {Key key,
      this.name,
      this.widgetID,
      this.widgetBuildData,
      this.widgetBuildDataSeq,
      this.navPushingWidgetID,
      this.parentBuildOwnerNode,
      this.isJSLazyWidget})
      : this.isHostWidget = false,
        super(key: key);

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

    assert(buildOwnerNode != null);

    Widget child = MXJSWidgetBase.errorWidget;

    MXJSLog.log("MXJSStatefulWidget:build begin: widgetID ${widget.widgetID}"
        "curWidgetBuildDataSeq:$widgetBuildDataSeq ");

    if (isNotEmptyData(widgetBuildData)) {
      // call JS层，Flutter UI 使用当前JSWidget哪个序列号的数据构建，callbackID,widgetID  与之对应
      MXJSLog.debug(
          "MXJSStatefulWidget:building: widget:$child callJSOnBuildEnd "
          "widgetID ${widget.widgetID} curWidgetBuildDataSeq:$widgetBuildDataSeq");

      child = buildOwnerNode.buildWidgetData(widgetBuildData, context);
      if (child == null || child is! Widget) {
        MXJSLog.error(
            "MXJSWidgetState:build: buildOwnerNode.buildWidgetData(widgetBuildData, context) return error; "
            "child: $child"
            "this.widget.widgetID:${this.widget.widgetID}");
        child = MXJSWidgetBase.errorWidget;
      }
    } else {
      // host 等待js刷新，先显示loading页面
      // TODO: 定制loading页面和 error 页面
      if (widget.isHostWidget) {
        child = hostWidgetInvokeJS(context);
      } else if (widget.isJSLazyWidget) {
        child = lazyWidgetInvokeJS(context);
      } else {
        MXJSLog.error("MXJSWidgetState:build: widget.widgetData == null "
            "this.widget.widgetID:${this.widget.widgetID}");
        child = MXJSWidgetBase.errorWidget;
      }
    }

    // build 逻辑非常重要，保证到底JS，否则JS setState 不生效
    buildOwnerNode.callJSOnBuildEnd();

    MXJSLog.log("MXJSStatefulWidget:build end: widget:$child "
        "callJSOnBuildEnd  widgetID ${widget.widgetID} "
        "widgetBuildDataSeq:$widgetBuildDataSeq} ");
    return child;
  }

  @override
  bool get wantKeepAlive => true;
}

class MXTickerAndKeepAliveMixinWidget extends MXJSStatefulWidget {
  final String name;
  final String widgetID;

  final Map widgetBuildData;
  final String widgetBuildDataSeq;

  /// The Widget Pages that pushed this Widget ID
  /// 把当前widget（this） push 出来的widget ID
  final String navPushingWidgetID;

  /// 通过 MXJsonBuildOwner 组成MXJSWidget的树形结构，管理MXJSWidget build过程
  final MXJsonBuildOwner parentBuildOwnerNode;

  /// Flutter 主动创建的 hostWidget，等待JS刷新
  final bool isHostWidget;

  /// JS 主动创建，等待 Flutter 真正 build 时，通知 JS 刷新
  final bool isJSLazyWidget;

  MXTickerAndKeepAliveMixinWidget(
      {Key key,
      this.name,
      this.widgetID,
      this.widgetBuildData,
      this.widgetBuildDataSeq,
      this.navPushingWidgetID,
      this.parentBuildOwnerNode,
      this.isJSLazyWidget})
      : this.isHostWidget = false,
        super(key: key);

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

    assert(buildOwnerNode != null);

    Widget child = MXJSWidgetBase.errorWidget;

    MXJSLog.log("MXJSStatefulWidget:build begin: widgetID ${widget.widgetID}"
        "curWidgetBuildDataSeq:$widgetBuildDataSeq ");

    if (isNotEmptyData(widgetBuildData)) {
      // call JS层，Flutter UI 使用当前JSWidget哪个序列号的数据构建，callbackID,widgetID  与之对应
      MXJSLog.debug(
          "MXJSStatefulWidget:building: widget:$child callJSOnBuildEnd "
          "widgetID ${widget.widgetID} curWidgetBuildDataSeq:$widgetBuildDataSeq");

      child = buildOwnerNode.buildWidgetData(widgetBuildData, context);
      if (child == null || child is! Widget) {
        MXJSLog.error(
            "MXJSWidgetState:build: buildOwnerNode.buildWidgetData(widgetBuildData, context) return error; "
            "child: $child"
            "this.widget.widgetID:${this.widget.widgetID}");
        child = MXJSWidgetBase.errorWidget;
      }
    } else {
      // host 等待js刷新，先显示loading页面
      // TODO: 定制loading页面和 error 页面
      if (widget.isHostWidget) {
        child = hostWidgetInvokeJS(context);
      } else if (widget.isJSLazyWidget) {
        child = lazyWidgetInvokeJS(context);
      } else {
        MXJSLog.error("MXJSWidgetState:build: widget.widgetData == null "
            "this.widget.widgetID:${this.widget.widgetID}");
        child = MXJSWidgetBase.errorWidget;
      }
    }

    // build 逻辑非常重要，保证到底JS，否则JS setState 不生效
    buildOwnerNode.callJSOnBuildEnd();

    MXJSLog.log("MXJSStatefulWidget:build end: widget:$child "
        "callJSOnBuildEnd  widgetID ${widget.widgetID} "
        "widgetBuildDataSeq:$widgetBuildDataSeq} ");
    return child;
  }

  @override
  bool get wantKeepAlive => true;
}
