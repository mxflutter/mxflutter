//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:flutter/material.dart';
import '../../../mx_json_to_dart.dart';
import '../../../mx_build_owner.dart';
import "package:pull_to_refresh/pull_to_refresh.dart";
import 'package:flutter/physics.dart';
import 'package:flutter/foundation.dart';

ShouldFollowContent createShouldFollowContentHandle(
    MXJsonBuildOwner bo, dynamic eventCallbackID) {
  if (eventCallbackID == null) {
    return null;
  }

  ShouldFollowContent cb = (LoadStatus status) {
    return bo.eventCallback(eventCallbackID, p: status);
  };

  return cb;
}

OnOffsetChange createOffsetChangeDynamicHandle(
    MXJsonBuildOwner bo, dynamic eventCallbackID) {
  if (eventCallbackID == null) {
    return null;
  }

  OnOffsetChange cb = (bool up, double offset) {
    //TODO: 此处有问题，只传了一个参数
    bo.eventCallback(eventCallbackID, p: up);
  };

  return cb;
}

class MXProxyRegisterHelperSmartRefresherSeries {
  static Map<String, CreateJsonObjProxyFun> registerProxys() {
    Map<String, CreateJsonObjProxyFun> m = {};

    m.addAll(MXProxyRefreshConfiguration.registerProxy());
    m.addAll(MXProxySmartRefresher.registerProxy());
    m.addAll(MXProxyRefreshController.registerProxy());

    return m;
  }
}

class MXLoadStatus {
  static Map str2VMap = {
    "LoadStatus.idle": LoadStatus.idle,
    "LoadStatus.canLoading": LoadStatus.canLoading,
    "LoadStatus.loading": LoadStatus.loading,
    "LoadStatus.noMore": LoadStatus.noMore,
    "LoadStatus.failed": LoadStatus.failed,
  };

  static LoadStatus parse(Map valueMap, {LoadStatus defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXProxyRefreshConfiguration extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "RefreshConfiguration";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyRefreshConfiguration()..init(className: regClassName)
    };
  }

  @override
  RefreshConfiguration constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = RefreshConfiguration(
      child: mxj2d(bo, jsonMap["child"]),
      headerBuilder: () {
        return mxj2d(bo, jsonMap["headerBuilderChild"]);
      },
      footerBuilder: () {
        return mxj2d(bo, jsonMap["footerBuilderChild"]);
      },
      dragSpeedRatio:
          mxj2d(bo, jsonMap["dragSpeedRatio"], defaultValue: 1.0)?.toDouble(),
      shouldFooterFollowWhenNotFull: createShouldFollowContentHandle(
          bo, mxj2d(bo, jsonMap["shouldFooterFollowWhenNotFull"])),
      enableScrollWhenTwoLevel:
          mxj2d(bo, jsonMap["enableScrollWhenTwoLevel"], defaultValue: true),
      enableLoadingWhenNoData:
          mxj2d(bo, jsonMap["enableLoadingWhenNoData"], defaultValue: false),
      enableBallisticRefresh:
          mxj2d(bo, jsonMap["enableBallisticRefresh"], defaultValue: false),
      springDescription: mxj2d(bo, jsonMap["springDescription"],
          defaultValue:
              const SpringDescription(mass: 2.2, stiffness: 150, damping: 16)),
      enableScrollWhenRefreshCompleted: mxj2d(
          bo, jsonMap["enableScrollWhenRefreshCompleted"],
          defaultValue: false),
      enableLoadingWhenFailed:
          mxj2d(bo, jsonMap["enableLoadingWhenFailed"], defaultValue: true),
      twiceTriggerDistance:
          mxj2d(bo, jsonMap["twiceTriggerDistance"], defaultValue: 150.0)
              ?.toDouble(),
      closeTwoLevelDistance:
          mxj2d(bo, jsonMap["closeTwoLevelDistance"], defaultValue: 80.0)
              ?.toDouble(),
      skipCanRefresh: mxj2d(bo, jsonMap["skipCanRefresh"], defaultValue: false),
      autoLoad: mxj2d(bo, jsonMap["autoLoad"], defaultValue: true),
      maxOverScrollExtent: mxj2d(bo, jsonMap["maxOverScrollExtent"]),
      enableBallisticLoad:
          mxj2d(bo, jsonMap["enableBallisticLoad"], defaultValue: true),
      maxUnderScrollExtent: mxj2d(bo, jsonMap["maxUnderScrollExtent"]),
      headerTriggerDistance:
          mxj2d(bo, jsonMap["headerTriggerDistance"], defaultValue: 80.0)
              ?.toDouble(),
      footerTriggerDistance:
          mxj2d(bo, jsonMap["footerTriggerDistance"], defaultValue: 15.0)
              ?.toDouble(),
      hideFooterWhenNotFull:
          mxj2d(bo, jsonMap["hideFooterWhenNotFull"], defaultValue: false),
      topHitBoundary: mxj2d(bo, jsonMap["topHitBoundary"]),
      bottomHitBoundary: mxj2d(bo, jsonMap["bottomHitBoundary"]),
    );
    return widget;
  }
}

class MXProxySmartRefresher extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "SmartRefresher";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxySmartRefresher()..init(className: regClassName)
    };
  }

  @override
  SmartRefresher constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    //从外层修复SmartRefresher的bug，如果不传入header或者footer，SmartRefresher不会刷新onRefresh等回调函数
    var defaultHeader = defaultTargetPlatform == TargetPlatform.iOS
        ? ClassicHeader()
        : MaterialClassicHeader();

    final LoadIndicator defaultFooter = ClassicFooter();

    var widget = SmartRefresher(
      key: mxj2d(bo, jsonMap["key"]),
      controller: mxj2d(bo, jsonMap["controller"]),
      child: mxj2d(bo, jsonMap["child"]),
      header: mxj2d(bo, jsonMap["header"], defaultValue: defaultHeader),
      footer: mxj2d(bo, jsonMap["footer"], defaultValue: defaultFooter),
      enablePullDown: mxj2d(bo, jsonMap["enablePullDown"], defaultValue: true),
      enablePullUp: mxj2d(bo, jsonMap["enablePullUp"], defaultValue: false),
      enableTwoLevel: mxj2d(bo, jsonMap["enableTwoLevel"], defaultValue: false),
      onRefresh: createVoidCallbackHandle(bo, mxj2d(bo, jsonMap["onRefresh"])),
      onLoading: createVoidCallbackHandle(bo, mxj2d(bo, jsonMap["onLoading"])),
      onTwoLevel:
          createVoidCallbackHandle(bo, mxj2d(bo, jsonMap["onTwoLevel"])),
      onOffsetChange: createOffsetChangeDynamicHandle(
          bo, mxj2d(bo, jsonMap["onOffsetChange"])),
      dragStartBehavior: mxj2d(bo, jsonMap["dragStartBehavior"]),
      primary: mxj2d(bo, jsonMap["primary"]),
      cacheExtent: mxj2d(bo, jsonMap["cacheExtent"]),
      semanticChildCount: mxj2d(bo, jsonMap["semanticChildCount"]),
      reverse: mxj2d(bo, jsonMap["reverse"]),
      physics: mxj2d(bo, jsonMap["physics"]),
      scrollDirection: mxj2d(bo, jsonMap["scrollDirection"]),
      scrollController: mxj2d(bo, jsonMap["scrollController"]),
    );
    return widget;
  }
}

class MXLoadStyle {
  static Map str2VMap = {
    "LoadStyle.ShowAlways": LoadStyle.ShowAlways,
    "LoadStyle.HideAlways": LoadStyle.HideAlways,
    "LoadStyle.ShowWhenLoading": LoadStyle.ShowWhenLoading,
  };

  static LoadStyle parse(Map valueMap, {LoadStyle defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXIconPosition {
  static Map str2VMap = {
    "IconPosition.left": IconPosition.left,
    "IconPosition.right": IconPosition.right,
    "IconPosition.top": IconPosition.top,
    "IconPosition.bottom": IconPosition.bottom,
  };

  static IconPosition parse(Map valueMap, {IconPosition defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXRefreshStatus {
  static Map str2VMap = {
    "RefreshStatus.idle": RefreshStatus.idle,
    "RefreshStatus.canRefresh": RefreshStatus.canRefresh,
    "RefreshStatus.refreshing": RefreshStatus.refreshing,
    "RefreshStatus.completed": RefreshStatus.completed,
    "RefreshStatus.failed": RefreshStatus.failed,
    "RefreshStatus.canTwoLevel": RefreshStatus.canTwoLevel,
    "RefreshStatus.twoLevelOpening": RefreshStatus.twoLevelOpening,
    "RefreshStatus.twoLeveling": RefreshStatus.twoLeveling,
    "RefreshStatus.twoLevelClosing": RefreshStatus.twoLevelClosing,
  };

  static RefreshStatus parse(Map valueMap, {RefreshStatus defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXProxyRefreshController extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "RefreshController";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyRefreshController()..init(className: regClassName)
    };
  }

  @override
  RefreshController constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = RefreshController(
      initialRefresh: mxj2d(bo, jsonMap["initialRefresh"], defaultValue: false),
      initialRefreshStatus:
          MXRefreshStatus.parse(mxj2d(bo, jsonMap["initialRefreshStatus"])),
      initialLoadStatus:
          MXLoadStatus.parse(mxj2d(bo, jsonMap["initialLoadStatus"])),
    );
    return widget;
  }

  //mirrorObj 为一个RefreshController类的实例对象，把调用对象方法，路由的代理类
  @override
  void jsInvokeMirrorObjFunction(
      String mirrorID, dynamic mirrorObj, String funcName, Map args,
      {InvokeCallback callback}) {
    if (mirrorObj == null || !(mirrorObj is RefreshController)) {
      return;
    }

    invokeFunction(mirrorObj, funcName, args);
  }

  void invokeFunction(RefreshController mirrorObj, String funcName, Map args) {
    switch (funcName) {
      case "refreshCompleted":
        mirrorObj.refreshCompleted(
            resetFooterState:
                mxj2d(null, args["resetFooterState"], defaultValue: false));
        break;
      case "twoLevelComplete":
        mirrorObj.twoLevelComplete(
            duration: mxj2d(null, args["duration"],
                defaultValue: const Duration(milliseconds: 500)),
            curve: mxj2d(null, args["curve"], defaultValue: Curves.linear));
        break;
      case "refreshFailed":
        mirrorObj.refreshFailed();
        break;
      case "refreshToIdle":
        mirrorObj.refreshToIdle();
        break;
      case "loadComplete":
        mirrorObj.loadComplete();
        break;
      case "loadFailed":
        mirrorObj.loadFailed();
        break;
      case "loadNoData":
        mirrorObj.loadNoData();
        break;
      case "resetNoData":
        mirrorObj.resetNoData();
        break;
      case "dispose":
        mirrorObj.dispose();
        break;

      default:
    }
  }
}
