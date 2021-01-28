//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:mxflutter/mxflutter.dart';
import "package:pull_to_refresh/pull_to_refresh.dart";

Map<String, MXFunctionInvoke> registerSmartRefresherSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_refreshConfiguration.funName] = _refreshConfiguration;
  m[_refreshController.funName] = _refreshController;
  m[_smartRefresher.funName] = _smartRefresher;
  m[_loadStatus.funName] = _loadStatus;
  m[_loadStyle.funName] = _loadStyle;
  m[_iconPosition.funName] = _iconPosition;
  m[_refreshStatus.funName] = _refreshStatus;
  m[_refreshController_refreshCompleted.funName] = _refreshController_refreshCompleted;
  m[_refreshController_refreshFailed.funName] = _refreshController_refreshFailed;
  m[_refreshController_refreshToIdle.funName] = _refreshController_refreshToIdle;
  m[_refreshController_loadComplete.funName] = _refreshController_loadComplete;
  m[_refreshController_loadFailed.funName] = _refreshController_loadFailed;
  m[_refreshController_loadNoData.funName] = _refreshController_loadNoData;
  m[_refreshController_resetNoData.funName] = _refreshController_resetNoData;
  m[_refreshController_dispose.funName] = _refreshController_dispose;
  return m;
}

var _loadStatus =
    MXFunctionInvoke("LoadStatus", ({String name, int index}) => MXLoadStatus.parse(name, index), ["name", "index"]);

class MXLoadStatus {
  static LoadStatus parse(String name, int index) {
    switch (name) {
      case 'LoadStatus.idle':
        return LoadStatus.idle;
      case 'LoadStatus.canLoading':
        return LoadStatus.canLoading;
      case 'LoadStatus.loading':
        return LoadStatus.loading;
      case 'LoadStatus.noMore':
        return LoadStatus.noMore;
      case 'LoadStatus.failed':
        return LoadStatus.failed;
    }
    return null;
  }
}

var _refreshConfiguration = MXFunctionInvoke(
    "RefreshConfiguration",
    ({
      Widget child,
      dynamic headerBuilder,
      dynamic footerBuilder,
      dynamic dragSpeedRatio: 1.0,
      dynamic shouldFooterFollowWhenNotFull,
      bool enableScrollWhenTwoLevel: true,
      bool enableLoadingWhenNoData: false,
      bool enableBallisticRefresh: false,
      SpringDescription springDescription: const SpringDescription(
        mass: 2.2,
        stiffness: 150,
        damping: 16,
      ),
      bool enableScrollWhenRefreshCompleted: false,
      bool enableLoadingWhenFailed: true,
      dynamic twiceTriggerDistance: 150.0,
      dynamic closeTwoLevelDistance: 80.0,
      bool skipCanRefresh: false,
      bool autoLoad: true,
      dynamic maxOverScrollExtent,
      bool enableBallisticLoad: true,
      dynamic maxUnderScrollExtent,
      dynamic headerTriggerDistance: 80.0,
      dynamic footerTriggerDistance: 15.0,
      bool hideFooterWhenNotFull: false,
      dynamic topHitBoundary,
      dynamic bottomHitBoundary,
      dynamic headerBuilderChild,
      dynamic footerBuilderChild,
    }) =>
        RefreshConfiguration(
          child: child,
          headerBuilder: () {
            return headerBuilderChild;
          },
          footerBuilder: () {
            return footerBuilderChild;
          },
          dragSpeedRatio: dragSpeedRatio?.toDouble(),
          shouldFooterFollowWhenNotFull:
              createGenericValueGenericClosure(_refreshConfiguration.buildOwner, shouldFooterFollowWhenNotFull),
          enableScrollWhenTwoLevel: enableScrollWhenTwoLevel,
          enableLoadingWhenFailed: enableLoadingWhenFailed,
          enableBallisticRefresh: enableBallisticRefresh,
          springDescription: springDescription,
          enableScrollWhenRefreshCompleted: enableScrollWhenRefreshCompleted,
          enableLoadingWhenNoData: enableLoadingWhenNoData,
          twiceTriggerDistance: twiceTriggerDistance?.toDouble(),
          closeTwoLevelDistance: closeTwoLevelDistance?.toDouble(),
          skipCanRefresh: skipCanRefresh,
          autoLoad: true,
          maxOverScrollExtent: maxOverScrollExtent,
          enableBallisticLoad: enableBallisticLoad,
          maxUnderScrollExtent: maxUnderScrollExtent,
          headerTriggerDistance: headerTriggerDistance?.toDouble(),
          footerTriggerDistance: footerTriggerDistance?.toDouble(),
          hideFooterWhenNotFull: hideFooterWhenNotFull,
          topHitBoundary: topHitBoundary,
          bottomHitBoundary: bottomHitBoundary,
        ),
    [
      "child",
      "headerBuilder",
      "footerBuilder",
      "dragSpeedRatio",
      "shouldFooterFollowWhenNotFull",
      "enableScrollWhenTwoLevel",
      "enableLoadingWhenFailed",
      "enableBallisticRefresh",
      "springDescription",
      "enableScrollWhenRefreshCompleted",
      "enableLoadingWhenNoData",
      "twiceTriggerDistance",
      "closeTwoLevelDistance",
      "skipCanRefresh",
      "autoLoad",
      "maxOverScrollExtent",
      "enableBallisticLoad",
      "maxUnderScrollExtent",
      "headerTriggerDistance",
      "footerTriggerDistance",
      "hideFooterWhenNotFull",
      "topHitBoundary",
      "bottomHitBoundary",
    ]);

var _smartRefresher = MXFunctionInvoke(
  "SmartRefresher",
  ({
    Key key,
    dynamic controller,
    Widget child,
    dynamic header,
    dynamic footer,
    bool enablePullDown: true,
    bool enablePullUp: false,
    bool enableTwoLevel: false,
    dynamic onRefresh,
    dynamic onLoading,
    dynamic onTwoLevel,
    dynamic onOffsetChange,
    dynamic dragStartBehavior,
    bool primary,
    dynamic cacheExtent,
    dynamic semanticChildCount,
    bool reverse,
    ScrollPhysics physics,
    Axis scrollDirection,
    ScrollController scrollController,
  }) {
    if (header == null) header = ClassicHeader();
    if (footer == null) header = ClassicFooter();

    return SmartRefresher(
      key: key,
      controller: controller,
      child: child,
      header: header,
      footer: footer,
      enablePullDown: enablePullDown,
      enablePullUp: enablePullUp,
      enableTwoLevel: enableTwoLevel,
      onRefresh: createVoidCallbackClosure(_smartRefresher.buildOwner, onRefresh),
      onLoading: createVoidCallbackClosure(_smartRefresher.buildOwner, onLoading),
      onTwoLevel: createVoidCallbackClosure(_smartRefresher.buildOwner, onTwoLevel),
      onOffsetChange: createVoidTwoParamsClosure(_smartRefresher.buildOwner, onOffsetChange),
      dragStartBehavior: dragStartBehavior,
      primary: primary,
      cacheExtent: cacheExtent?.toDouble(),
      semanticChildCount: semanticChildCount?.toInt(),
      reverse: reverse,
      physics: physics,
      scrollDirection: scrollDirection,
      scrollController: scrollController,
    );
  },
  [
    "key",
    "controller",
    "child",
    "header",
    "footer",
    "enablePullDown",
    "enablePullUp",
    "enableTwoLevel",
    "onRefresh",
    "onLoading",
    "onTwoLevel",
    "onOffsetChange",
    "dragStartBehavior",
    "primary",
    "cacheExtent",
    "semanticChildCount",
    "reverse",
    "physics",
    "scrollDirection",
    "scrollController",
  ],
);

var _loadStyle =
    MXFunctionInvoke("LoadStatus", ({String name, int index}) => MXLoadStyle.parse(name, index), ["name", "index"]);

class MXLoadStyle {
  static LoadStyle parse(String name, int index) {
    switch (name) {
      case 'LoadStyle.ShowAlways':
        return LoadStyle.ShowAlways;
      case 'LoadStyle.HideAlways':
        return LoadStyle.HideAlways;
      case 'LoadStyle.ShowWhenLoading':
        return LoadStyle.ShowWhenLoading;
    }
    return null;
  }
}

var _iconPosition = MXFunctionInvoke(
    "IconPosition", ({String name, int index}) => MXIconPosition.parse(name, index), ["name", "index"]);

class MXIconPosition {
  static IconPosition parse(String name, int index) {
    switch (name) {
      case 'IconPosition.left':
        return IconPosition.left;
      case 'IconPosition.right':
        return IconPosition.right;
      case 'IconPosition.top':
        return IconPosition.top;
      case 'IconPosition.bottom':
        return IconPosition.bottom;
    }
    return null;
  }
}

var _refreshStatus = MXFunctionInvoke(
    "RefreshStatus", ({String name, int index}) => MXRefreshStatus.parse(name, index), ["name", "index"]);

class MXRefreshStatus {
  static RefreshStatus parse(String name, int index) {
    switch (name) {
      case 'RefreshStatus.idle':
        return RefreshStatus.idle;
      case 'RefreshStatus.canRefresh':
        return RefreshStatus.canRefresh;
      case 'RefreshStatus.refreshing':
        return RefreshStatus.refreshing;
      case 'RefreshStatus.completed':
        return RefreshStatus.completed;
      case 'RefreshStatus.failed':
        return RefreshStatus.failed;
      case 'RefreshStatus.canTwoLevel':
        return RefreshStatus.canTwoLevel;
      case 'RefreshStatus.twoLevelOpening':
        return RefreshStatus.twoLevelOpening;
      case 'RefreshStatus.twoLeveling':
        return RefreshStatus.twoLeveling;
      case 'RefreshStatus.twoLevelClosing':
        return RefreshStatus.twoLevelClosing;
    }
    return null;
  }
}

var _refreshController = MXFunctionInvoke(
  "RefreshController",
  ({
    dynamic initialRefresh: false,
    dynamic initialRefreshStatus,
    dynamic initialLoadStatus,
  }) =>
      RefreshController(
    initialRefresh: initialRefresh,
    initialRefreshStatus: initialRefreshStatus,
    initialLoadStatus: initialLoadStatus,
  ),
  [
    "initialRefresh",
    "initialRefreshStatus",
    "initialLoadStatus",
    "refreshCompleted",
    "refreshFailed",
    "refreshToIdle",
    "loadComplete",
    "loadFailed",
    "loadNoData",
    "resetNoData",
    "dispose",
  ],
);

var _refreshController_refreshCompleted = MXFunctionInvoke(
  "RefreshController#refreshCompleted",
  ({
    RefreshController mirrorObj,
  }) =>
      mirrorObj.refreshCompleted(),
  [
    "mirrorObj",
  ],
);

var _refreshController_refreshFailed = MXFunctionInvoke(
  "RefreshController#refreshFailed",
  ({
    RefreshController mirrorObj,
  }) =>
      mirrorObj.refreshFailed(),
  [
    "mirrorObj",
  ],
);

var _refreshController_refreshToIdle = MXFunctionInvoke(
  "RefreshController#refreshToIdle",
  ({
    RefreshController mirrorObj,
  }) =>
      mirrorObj.refreshToIdle(),
  [
    "mirrorObj",
  ],
);

var _refreshController_loadComplete = MXFunctionInvoke(
  "RefreshController#loadComplete",
  ({
    RefreshController mirrorObj,
  }) =>
      mirrorObj.loadComplete(),
  [
    "mirrorObj",
  ],
);

var _refreshController_loadFailed = MXFunctionInvoke(
  "RefreshController#loadFailed",
  ({
    RefreshController mirrorObj,
  }) =>
      mirrorObj.loadFailed(),
  [
    "mirrorObj",
  ],
);

var _refreshController_loadNoData = MXFunctionInvoke(
  "RefreshController#loadNoData",
  ({
    RefreshController mirrorObj,
  }) =>
      mirrorObj.loadNoData(),
  [
    "mirrorObj",
  ],
);

var _refreshController_resetNoData = MXFunctionInvoke(
  "RefreshController#resetNoData",
  ({
    RefreshController mirrorObj,
  }) =>
      mirrorObj.resetNoData(),
  [
    "mirrorObj",
  ],
);

var _refreshController_dispose = MXFunctionInvoke(
  "RefreshController#dispose",
  ({
    RefreshController mirrorObj,
  }) {
    // 因为在MXJSWidgetState的dispose方法中，框架会主动调用该方法。因此加个判断，避免js侧再调用该方法时，会出现调用null方法
    if (mirrorObj != null) {
      mirrorObj.dispose();
    }
  },
  [
    "mirrorObj",
  ],
);
