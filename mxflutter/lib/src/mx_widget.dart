//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'mx_build_owner.dart';
import 'mx_common.dart';
import 'mx_flutter.dart';
import 'mx_handler.dart';

/// 拿到业务定制的 Error Widget。
Widget onBuildErrorCreateErrorWidget(String widgetName, {String error = ""}) {
  Widget widget;

  if (MXHandler.getInstance().errorHandler != null) {
    widget = MXHandler.getInstance().errorHandler(widgetName);
  }

  if (widget == null) {
    widget = kReleaseMode
        ? ErrorWidget.withDetails(message: "页面开了小差，请稍后再试...")
        : ErrorWidget.withDetails(message: error);
  }

  return widget;
}

/// 拿到业务定制的 loading Widget。
Widget onWaitJSRefreshCreateLoadingWidget(String widgetName) {
  Widget widget;

  if (MXHandler.getInstance().loadingHandler != null) {
    widget = MXHandler.getInstance().loadingHandler(widgetName);
  }

  if (widget == null) {
    widget = Container(
        color: Colors.white,
        child: Center(
          child: CircularProgressIndicator(),
        ));
  }

  return widget;
}

mixin MXJSWidgetBase {
  /// Widget名称。
  String get name;

  /// WidgetID，每次Build递增，Flutter侧新建的奇数，JS侧新建的为偶数
  String get widgetID;

  /// JS侧传过来的BuildWidget数据。
  Map get widgetBuildData;

  /// WidgetBuildData序号，JS每次Build + 1。
  String get widgetBuildDataSeq;

  /// Flutter 侧生成的MXWidget widgetID 从1开始，为奇数 每次+2。
  static int _widgetIDFeed = 1;

  /// 生成widgetID序号。
  static String generateWidgetID() {
    // Flutter 侧生成的MXWidget widgetID 从1开始，为奇数 每次+2。
    _widgetIDFeed = _widgetIDFeed + 2;
    return _widgetIDFeed.toString();
  }
}

/// 封装JSWidget
// ignore: must_be_immutable
class MXJSStatefulWidget extends StatefulWidget with MXJSWidgetBase {
  /// Widget名称。
  final String name;

  /// WidgetID，每次Build递增，Flutter侧新建的奇数，JS侧新建的为偶数
  final String widgetID;

  /// JS侧传过来的BuildWidget数据。JSLazy 模式下 第一次用过widgetBuildData之后需要置空。
  final Map widgetBuildData;

  /// WidgetBuildData序号，JS每次Build + 1。
  final String widgetBuildDataSeq;

  /// The Widget Pages that pushed this Widget ID。
  /// 把当前widget（this） push 出来的widget ID。
  final String navPushingWidgetID;

  /// 通过 MXBuildOwner 组成MXJSWidget的树形结构，管理MXJSWidget build过程。
  final MXBuildOwner parentBuildOwnerNode;

  /// Flutter侧主动创建的 hostWidget（push等），等待JS侧刷新。
  final bool isHostWidget;

  /// JS 主动创建（TabView等），等待 Flutter 真正 build 时，通知 JS 刷新。
  final bool isJSLazyWidget;

  /// Flutter侧打开JS页面时的传递参数。
  final Map flutterPushParams;

  MXJSStatefulWidget(
      {Key key,
      this.name,
      this.widgetID,
      this.widgetBuildData,
      this.widgetBuildDataSeq,
      this.navPushingWidgetID,
      this.parentBuildOwnerNode,
      this.isJSLazyWidget})
      : this.isHostWidget = false,
        this.flutterPushParams = <dynamic, dynamic>{},
        super(key: key);

  /// 由Flutter侧创建MXWidget hostWidget壳，等待JS侧刷新。
  MXJSStatefulWidget.hostWidget(
      {Key key, this.name, this.parentBuildOwnerNode, Map flutterPushParams})
      : this.widgetID = MXJSWidgetBase.generateWidgetID(),
        this.widgetBuildData = null,
        this.isHostWidget = true,
        this.widgetBuildDataSeq = null,
        this.navPushingWidgetID = null,
        this.isJSLazyWidget = false,
        this.flutterPushParams = flutterPushParams,
        super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MXJSWidgetState();
  }

  @override
  MXJSStatefulElement createElement() {
    assert(parentBuildOwnerNode != null);
    var element = MXJSStatefulElement(this);
    element.buildOwnerNode = MXBuildOwner(element);
    parentBuildOwnerNode.addChild(element.buildOwnerNode);
    return element;
  }
}

class MXJSStatefulElement extends StatefulElement {
  MXJSStatefulElement(MXJSStatefulWidget widget) : super(widget);

  /// 对应的buildOwnerNode，buildOwnerNode会组成控制节点树。
  MXBuildOwner buildOwnerNode;

  @override
  MXJSStatefulWidget get widget => super.widget as MXJSStatefulWidget;
}

class WidgetBuildDataCache {
  /// JS widgetBuildData数据。
  final Map widgetBuildData;

  /// WidgetBuildData序号。
  final String widgetBuildDataSeq;

  /// 缓存通过此JS WidgetBuildData构建好的Widget。
  Widget cacheWidget;

  /// 缓存构建cacheWidget的buildContext.
  BuildContext context;

  WidgetBuildDataCache(this.widgetBuildData, this.widgetBuildDataSeq);
}

class MXJSWidgetState extends State<MXJSStatefulWidget> {
  /// 三个场景会JS会更新widgetData通知Flutter侧HostWidget刷新。
  /// 1. 初始化
  /// 2. MXJSStatefulWidget的element被复用
  /// 3. MXJSWidgetState本身被js 刷新。
  WidgetBuildDataCache widgetBuildDataCache;

  /// 获取WidgetBuildData序号。
  String get widgetBuildDataSeq => widgetBuildDataCache?.widgetBuildDataSeq;

  /// HostWidget是否已经调用callJSRefreshed，如果已经调用过，JS仍然没有数据回来
  /// 需要显示ErrorWidget，如果没有调用过，显示LoadingWidget
  bool isHostWidgetAlreadyCallJSRefreshed = false;

  /// LazyWidget是否已经调用callJSRefreshed，如果已经调用过，JS仍然没有数据回来
  /// 需要显示ErrorWidget，如果没有调用过，显示LoadingWidget
  bool isLazyWidgetAlreadyCallJSRefreshed = false;

  /// 获取当钱widget的buildOwner。
  MXBuildOwner get buildOwnerNode =>
      (context as MXJSStatefulElement)?.buildOwnerNode;

  MXJSWidgetState();

  @override
  void initState() {
    super.initState();
    _initStateFlag();
    // state初始化时，用widget的widgetData ，之后等js侧的刷新。
    widgetBuildDataCache =
        WidgetBuildDataCache(widget.widgetBuildData, widget.widgetBuildDataSeq);

    WidgetsBinding.instance.addPostFrameCallback((callback) {
      // 非HostWidget，告知JS首帧结束。
      if (widget.isHostWidget != true) {
        buildOwnerNode?.callJSOnFirstFrameEnd();
      } else {
        WidgetsBinding.instance.addPersistentFrameCallback((callback) {
          buildOwnerNode?.callJSOnFirstFrameEnd();
        });
      }
    });
  }

  @override
  void didUpdateWidget(MXJSStatefulWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    _initStateFlag();
    // 当MXJSStatefulWidget 在element树中被复用，需要更新widgetData。
    // 如果widget Tree相同位置都是 MXJSStatefulElement，
    // 按Flutter的机制会复用 MXJSStatefulElement，调用update相关函数。
    // 如果 widgetID 不同，说明是完全不同的jsWidget ，需要更新重置所有信息。
    if (widget.widgetID == oldWidget.widgetID) {
      MXJSLog.log(
          "MXJSWidgetState:didUpdateWidget:widget.widgetID == oldWidget.widgetID "
          "widgetID ${widget.widgetID} "
          "oldWidget.widgetID:${oldWidget.widgetID} "
          "update BuildOwnerNode "
          "widget.widgetBuildDataSeq ${widget.widgetBuildDataSeq} "
          "oldWidget.widgetBuildDataSeq:$widgetBuildDataSeq ");

      if (int.parse(widget.widgetBuildDataSeq) >=
          int.parse(widgetBuildDataSeq)) {
        MXJSLog.log(
            "MXJSWidgetState:didUpdateWidget:widget.widgetID == oldWidget.widgetID "
            "update BuildOwnerNode "
            "widget.widgetBuildDataSeq ${widget.widgetBuildDataSeq} >= "
            "oldWidget.widgetBuildDataSeq:$widgetBuildDataSeq  "
            "updateWidgetData widgetBuildData = widget.widgetBuildData");
        widgetBuildDataCache = WidgetBuildDataCache(
            widget.widgetBuildData, widget.widgetBuildDataSeq);
      }
    } else {
      MXJSLog.log(
          "MXJSWidgetState:didUpdateWidget:widget.widgetID != oldWidget.widgetID "
          "widgetID ${widget.widgetID}"
          "oldWidget.widgetID:${oldWidget.widgetID} "
          "update BuildOwnerNode");

      widgetBuildDataCache = WidgetBuildDataCache(
          widget.widgetBuildData, widget.widgetBuildDataSeq);

      buildOwnerNode.updateWidgetID(oldWidget);
    }
  }

  void didChangeDependencies() {
    buildOwnerNode.didChangeDependencies();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return buildWidget(context);
  }

  /// 创建widget。
  Widget buildWidget(BuildContext context) {
    assert(buildOwnerNode != null);

    if (widgetBuildDataCache != null &&
        widgetBuildDataCache.cacheWidget != null &&
        widgetBuildDataCache.context == context) {
      MXJSLog.log(
          "MXJSStatefulWidget:build widgetBuildDataCache?.cacheWidget != null "
          "使用缓存直接返回 "
          "widgetID: ${widget.widgetID} "
          "widgetBuildDataSeq: $widgetBuildDataSeq} ");

      return widgetBuildDataCache.cacheWidget;
    }

    Widget child;

    MXJSLog.log("MXJSStatefulWidget:build begin: widgetID ${widget.widgetID} "
        "widgetBuildDataSeq: ${widgetBuildDataCache?.widgetBuildDataSeq} ");

    if (_isNotEmptyData(widgetBuildDataCache?.widgetBuildData)) {
      var widgetBuildData = widgetBuildDataCache.widgetBuildData;
      child = buildOwnerNode.buildWidgetData(widgetBuildData, context);
      widgetBuildDataCache.cacheWidget = child;
      widgetBuildDataCache.context = context;

      if (widget.isJSLazyWidget && !isLazyWidgetAlreadyCallJSRefreshed) {
        isLazyWidgetAlreadyCallJSRefreshed = true;
        buildOwnerNode.callJSRefreshLazyWidget(widget.widgetID, context);
      }

      if (child == null || child is! Widget) {
        MXJSLog.error(
            "MXJSWidgetState:build: buildOwnerNode.buildWidgetData(widgetBuildData, context) return error; "
            "child: $child"
            "widget.widgetID:${widget.widgetID}");

        child = onBuildErrorCreateErrorWidget(widget.name,
            error:
                "MXJSWidgetState:build: buildOwnerNode.buildWidgetData(widgetBuildData, context) return error; "
                "child: $child "
                "widget.widgetID:${widget.widgetID}");
      }
    } else {
      // host 等待js刷新，先显示loading页面。
      if (widget.isHostWidget) {
        child = _hostWidgetInvokeJS(context);
      } else if (widget.isJSLazyWidget) {
        child = _lazyWidgetInvokeJS(context);
      } else {
        MXJSLog.error("MXJSWidgetState:build: widget.widgetData == null "
            "widget.widgetID:${widget.widgetID}");

        child = onBuildErrorCreateErrorWidget(widget.name,
            error: "MXJSWidgetState:build: widget.widgetData == null "
                "widget.widgetID:${widget.widgetID}");
      }
    }

    MXJSLog.log("MXJSStatefulWidget:build end: widget:$child "
        "callJSOnBuildEnd  widgetID ${widget.widgetID} "
        "widgetBuildDataSeq:$widgetBuildDataSeq} ");

    // build 逻辑非常重要，保证到底JS，否则JS setState 不生效。
    buildOwnerNode.callJSOnBuildEnd();

    return child;
  }

  /// 刷新rebuild。
  void jsCallRebuild(
      String widgetID, Map widgetBuildData, String buildWidgetDataSeq) {
    if (widget.widgetID != widgetID) {
      MXJSLog.error("MXJSWidgetState:jsCallRebuild: error "
          "widget.widgetID:(${widget.widgetID}) != widgetID:($widgetID)");
      return;
    }

    if (!_isNotEmptyData(widgetBuildData)) {
      MXJSLog.error("MXJSWidgetState:jsCallRebuild: error "
          "widgetBuildData = null");
      return;
    }

    setState(() {
      widgetBuildDataCache =
          WidgetBuildDataCache(widgetBuildData, buildWidgetDataSeq);
    });

    MXJSLog.log("MXJSWidgetState:jsCallRebuild:  "
        " widgetID:($widgetID) widgetBuildDataSeq:$widgetBuildDataSeq");

    MXJSLog.debug("MXJSWidgetState:jsCallRebuild:  "
        " widgetID:($widgetID) widgetBuildDataSeq:$widgetBuildDataSeq widgetBuildData:$widgetBuildData ");
  }

  /// JS初始化成功后，调用JS刷新host widget。
  void refreshHostWidgetAfterJSEngineInit({bool jsEngineInitSuccess}) {
    if (jsEngineInitSuccess) {
      isHostWidgetAlreadyCallJSRefreshed = true;
      buildOwnerNode.callJSRefreshHostWidget(
          widget.name, widget.widgetID, context, widget.flutterPushParams);
    } else {
      // 直接刷新页面
      setState(() {});
    }
  }

  @override
  void dispose() {
    // 通知JS dispose
    buildOwnerNode.onDispose();
    super.dispose();
  }

  /// lazyWidget调用js方法。
  Widget _lazyWidgetInvokeJS(BuildContext context) {
    if (!isLazyWidgetAlreadyCallJSRefreshed) {
      isLazyWidgetAlreadyCallJSRefreshed = true;
      buildOwnerNode.callJSRefreshLazyWidget(widget.widgetID, context);
      return onWaitJSRefreshCreateLoadingWidget(widget.name);
    } else {
      return onBuildErrorCreateErrorWidget(widget.name,
          error:
          "MXJSWidgetState: _hostWidgetInvokeJS widgetBuildData == null but isLazyWidgetAlreadyCallJSRefreshed "
              "widget.widgetID: ${widget.widgetID}");
    }
  }

  /// hostWidget调用js方法。
  Widget _hostWidgetInvokeJS(BuildContext context) {
    if (!isHostWidgetAlreadyCallJSRefreshed) {
      // JS引擎已初始化，才调用JS刷新host widget。
      if (MXJSFlutter.getInstance().isJSEngineInit()) {
        Map result = MXJSFlutter.getInstance().jsEngineInitResult();
        if (result['success']) {
          isHostWidgetAlreadyCallJSRefreshed = true;
          buildOwnerNode.callJSRefreshHostWidget(
              widget.name, widget.widgetID, context, widget.flutterPushParams);
        } else {
          // js引擎初始化失败，直接展示错误widget。
          return onBuildErrorCreateErrorWidget(widget.name,
              error:
              "MXJSWidgetState:_hostWidgetInvokeJS widgetBuildData == null but jsEngineInitFailed, "
                  "errorMessage: ${result['errorMessage']}");
        }
      }
      return onWaitJSRefreshCreateLoadingWidget(widget.name);
    } else {
      return onBuildErrorCreateErrorWidget(widget.name,
          error:
          "MXJSWidgetState:_hostWidgetInvokeJS widgetBuildData == null but isHostWidgetAlreadyCallJSRefreshed "
              "widget.widgetID:${widget.widgetID}");
    }
  }

  /// 初始化state标志。
  void _initStateFlag() {
    isHostWidgetAlreadyCallJSRefreshed = false;
    isLazyWidgetAlreadyCallJSRefreshed = false;
  }

  /// 判断是否是空数据。
  bool _isNotEmptyData(widgetBuildData) {
    return widgetBuildData != null &&
        widgetBuildData is Map &&
        widgetBuildData.isNotEmpty;
  }
}

/// 无状态的Widget，在JS侧除了Root节点，会被提前展开
class MXJSStatelessWidget extends StatelessWidget with MXJSWidgetBase {
  final String name;
  final String widgetID;

  final Map widgetBuildData;
  final String widgetBuildDataSeq;

  /// The Widget Pages that pushed this Widget ID.
  /// 把当前 widget push 出来的 Widget 的 widgetID。
  final String navPushingWidgetID;

  /// 通过 MXJsonBuildOwner 组成MXJSWidget的树形结构，管理MXJSWidget build过程。
  final MXBuildOwner parentBuildOwnerNode;

  MXJSStatelessWidget(
      {Key key,
      this.name,
      this.widgetID,
      this.widgetBuildData,
      this.widgetBuildDataSeq,
      this.navPushingWidgetID,
      this.parentBuildOwnerNode})
      : super(key: key);

  @override
  MXJSStatelessElement createElement() {
    assert(parentBuildOwnerNode != null);
    var element = MXJSStatelessElement(this);
    element.buildOwnerNode = MXBuildOwner(element);
    parentBuildOwnerNode.addChild(element.buildOwnerNode);
    return element;
  }

  @override
  Widget build(BuildContext context) {
    MXJSLog.log("MXJSStatelessWidget:build begin: widgetID $widgetID"
        "widgetBuildDataSeq: $widgetBuildDataSeq ");

    if (widgetBuildData == null) {
      MXJSLog.error("MXJSStatelessWidget:build: widgetData == null "
          "widget.widgetID: $widgetID");
      return onBuildErrorCreateErrorWidget(name,
          error: "MXJSStatelessWidget:build: widget.widgetData == null "
              "widget.widgetID: $widgetID");
    }

    WidgetsBinding.instance.addPostFrameCallback((callback) {
      MXJSStatelessElement element = context as MXJSStatelessElement;
      MXBuildOwner boNode = element?.buildOwnerNode;
      // 通知JS首帧结束。
      boNode?.callJSOnFirstFrameEnd();
    });

    MXJSStatelessElement element = context as MXJSStatelessElement;
    MXBuildOwner boNode = element.buildOwnerNode;
    Widget child = boNode.buildWidgetData(widgetBuildData, context);

    if (child == null) {
      MXJSLog.error(
          "MXJSStatelessWidget:build: boNode.buildWidgetData(widgetBuildData, context) == null error; "
          "widget.widgetID: $widgetID");
      child = onBuildErrorCreateErrorWidget(name,
          error: "MXJSStatelessWidget:build: widget.widgetData == null "
              "widget.widgetID: $widgetID");
    }

    MXJSLog.log("MXJSStatelessWidget:build end: widget:$child "
        "callJSOnBuildEnd  widgetID $widgetID "
        "buildWidgetDataSeq: $widgetBuildDataSeq} ");

    boNode.callJSOnBuildEnd();
    return child;
  }
}

/// 无状态的Widget，在JS侧除了Root节点，会被提前展开
class MXJSStatelessElement extends StatelessElement {
  MXBuildOwner buildOwnerNode;
  MXJSStatelessElement(MXJSStatelessWidget widget) : super(widget);

  @override
  MXJSStatelessWidget get widget => super.widget as MXJSStatelessWidget;

  @override
  void unmount() {
    buildOwnerNode.onUnmount();

    super.unmount();
  }
}
