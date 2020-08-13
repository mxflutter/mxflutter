//  MXFlutterFramework
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:flutter/material.dart';
import '../../../../mx_json_to_dart.dart';
import '../../../../mx_json_build_owner.dart';
import "package:pull_to_refresh/pull_to_refresh.dart";
import '../../mx_json_proxy_pull_to_refresh.dart';
import 'package:mxflutter/src/mirror/mx_mirror.dart';

// class MXProxyRegisterHelperClassIndicatorSeries {
//   static Map<String, CreateJsonObjProxyFun> registerProxys() {
//     Map<String, CreateJsonObjProxyFun> m = {};

//     m.addAll(MXProxyClassicHeader.registerProxy());
//     m.addAll(MXProxyClassicFooter.registerProxy());

//     return m;
//   }
// }

Map<String, MXFunctionInvoke> registerClassicIndicatorSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_classicFooter.funName] = _classicFooter;
  m[_classicHeader.funName] = _classicHeader;
  return m;
}

// class MXProxyClassicHeader extends MXJsonObjProxy {
//   static Map<String, CreateJsonObjProxyFun> registerProxy() {
//     ///**@@@  2 替换类名字符串
//     final String regClassName = "ClassicHeader";

//     ///**@@@  3 替换类构造函数
//     return {
//       regClassName: () => MXProxyClassicHeader()..init(className: regClassName)
//     };
//   }

//   @override
//   ClassicHeader constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
//       {BuildContext context}) {
//     var widget = ClassicHeader(
//       key: mxj2d(bo, jsonMap["key"]),
//       refreshStyle:
//           mxj2d(bo, jsonMap["refreshStyle"], defaultValue: RefreshStyle.Follow),
//       height: mxj2d(bo, jsonMap["height"], defaultValue: 60.0).toDouble(),
//       completeDuration: mxj2d(bo, jsonMap["completeDuration"],
//           defaultValue: const Duration(milliseconds: 600)),
//       outerBuilder: mxj2d(bo, jsonMap["outerBuilder"]),
//       textStyle: mxj2d(bo, jsonMap["textStyle"],
//           defaultValue: const TextStyle(color: Colors.grey)),
//       releaseText: mxj2d(bo, jsonMap["releaseText"]),
//       refreshingText: mxj2d(bo, jsonMap["refreshingText"]),
//       canTwoLevelIcon: mxj2d(bo, jsonMap["canTwoLevelIcon"]),
//       twoLevelView: mxj2d(bo, jsonMap["twoLevelView"]),
//       canTwoLevelText: mxj2d(bo, jsonMap["canTwoLevelText"]),
//       completeText: mxj2d(bo, jsonMap["completeText"]),
//       failedText: mxj2d(bo, jsonMap["failedText"]),
//       idleText: mxj2d(bo, jsonMap["idleText"]),
//       iconPos: mxj2d(bo, jsonMap["iconPos"], defaultValue: IconPosition.left),
//       spacing: mxj2d(bo, jsonMap["spacing"], defaultValue: 15.0).toDouble(),
//       refreshingIcon: mxj2d(bo, jsonMap["refreshingIcon"]),
//       failedIcon: mxj2d(bo, jsonMap["failedIcon"],
//           defaultValue: const Icon(Icons.error, color: Colors.grey)),
//       completeIcon: mxj2d(bo, jsonMap["completeIcon"],
//           defaultValue: const Icon(Icons.done, color: Colors.grey)),
//       idleIcon: mxj2d(bo, jsonMap["idleIcon"],
//           defaultValue: const Icon(Icons.arrow_downward, color: Colors.grey)),
//       releaseIcon: mxj2d(bo, jsonMap["releaseIcon"],
//           defaultValue: const Icon(Icons.refresh, color: Colors.grey)),
//     );
//     return widget;
//   }
// }

var _classicHeader = MXFunctionInvoke(
  "ClassicHeader",
  ({
    Key key,
    RefreshStyle refreshStyle: RefreshStyle.Follow,
    dynamic height: 60.0,
    Duration completeDuration: const Duration(milliseconds: 600),
    dynamic outerBuilder,
    TextStyle textStyle: const TextStyle(color: Colors.grey),
    String releaseText,
    String refreshingText,
    Widget canTwoLevelIcon,
    Widget twoLevelView,
    String canTwoLevelText,
    String completeText,
    String failedText,
    String idleText,
    IconPosition iconPos: IconPosition.left,
    dynamic spacing: 15.0,
    Widget refreshingIcon,
    Widget failedIcon: const Icon(Icons.error, color: Colors.grey),
    Widget completeIcon: const Icon(Icons.done, color: Colors.grey),
    Widget idleIcon = const Icon(Icons.arrow_downward, color: Colors.grey),
    Widget releaseIcon = const Icon(Icons.refresh, color: Colors.grey),
  }) =>
      ClassicHeader(
    key: key,
    refreshStyle: refreshStyle,
    height: height?.toDouble(),
    completeDuration: completeDuration,
    outerBuilder: outerBuilder,
    textStyle: textStyle,
    releaseText: releaseText,
    refreshingText: refreshingText,
    canTwoLevelIcon: canTwoLevelIcon,
    twoLevelView: twoLevelView,
    canTwoLevelText: canTwoLevelText,
    completeText: completeText,
    failedText: failedText,
    idleText: idleText,
    iconPos: iconPos,
    spacing: spacing?.toDouble(),
    refreshingIcon: refreshingIcon,
    failedIcon: failedIcon,
    completeIcon: completeIcon,
    idleIcon: idleIcon,
    releaseIcon: releaseIcon,
  ),
);

// class MXProxyClassicFooter extends MXJsonObjProxy {
//   static Map<String, CreateJsonObjProxyFun> registerProxy() {
//     ///**@@@  2 替换类名字符串
//     final String regClassName = "ClassicFooter";

//     ///**@@@  3 替换类构造函数
//     return {
//       regClassName: () => MXProxyClassicFooter()..init(className: regClassName)
//     };
//   }

//   @override
//   ClassicFooter constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
//       {BuildContext context}) {
//     var widget = ClassicFooter(
//       key: mxj2d(bo, jsonMap["key"]),
//       onClick: mxj2d(bo, jsonMap["onClick"]),
//       loadStyle: MXLoadStyle.parse(mxj2d(bo, jsonMap["loadStyle"]),
//           defaultValue: LoadStyle.ShowAlways),
//       height: mxj2d(bo, jsonMap["height"], defaultValue: 60.0).toDouble(),
//       outerBuilder: mxj2d(bo, jsonMap["outerBuilder"]),
//       textStyle: mxj2d(bo, jsonMap["textStyle"],
//           defaultValue: const TextStyle(color: Colors.grey)),
//       loadingText: mxj2d(bo, jsonMap["loadingText"]),
//       noDataText: mxj2d(bo, jsonMap["noDataText"]),
//       noMoreIcon: mxj2d(bo, jsonMap["noMoreIcon"]),
//       idleText: mxj2d(bo, jsonMap["idleText"]),
//       failedText: mxj2d(bo, jsonMap["failedText"]),
//       canLoadingText: mxj2d(bo, jsonMap["canLoadingText"]),
//       failedIcon: mxj2d(bo, jsonMap["failedIcon"],
//           defaultValue: const Icon(Icons.error, color: Colors.grey)),
//       iconPos: MXIconPosition.parse(mxj2d(bo, jsonMap["iconPos"]),
//           defaultValue: IconPosition.left),
//       spacing: mxj2d(bo, jsonMap["spacing"], defaultValue: 15.0).toDouble(),
//       completeDuration: mxj2d(bo, jsonMap["completeDuration"],
//           defaultValue: const Duration(milliseconds: 300)),
//       loadingIcon: mxj2d(bo, jsonMap["loadingIcon"]),
//       canLoadingIcon: mxj2d(bo, jsonMap["canLoadingIcon"],
//           defaultValue: const Icon(Icons.autorenew, color: Colors.grey)),
//       idleIcon: mxj2d(bo, jsonMap["idleIcon"],
//           defaultValue: const Icon(Icons.arrow_upward, color: Colors.grey)),
//     );
//     return widget;
//   }
// }

var _classicFooter = MXFunctionInvoke(
  "ClassicFooter",
  ({
    Key key,
    VoidCallback onClick,
    LoadStyle loadStyle: LoadStyle.ShowAlways,
    dynamic height: 60.0,
    dynamic outerBuilder,
    TextStyle textStyle: const TextStyle(color: Colors.grey),
    String loadingText,
    String noDataText,
    Widget noMoreIcon,
    String idleText,
    String failedText,
    String canLoadingText,
    Widget failedIcon: const Icon(Icons.error, color: Colors.grey),
    IconPosition iconPos: IconPosition.left,
    dynamic spacing: 15.0,
    Duration completeDuration: const Duration(milliseconds: 300),
    Widget loadingIcon,
    Widget canLoadingIcon: const Icon(Icons.autorenew, color: Colors.grey),
    Widget idleIcon = const Icon(Icons.arrow_upward, color: Colors.grey),
  }) =>
      ClassicFooter(
    key: key,
    onClick: createVoidCallbackClosure(_classicFooter.buildOwner, onClick),
    loadStyle: loadStyle,
    height: height?.toDouble(),
    outerBuilder: outerBuilder,
    textStyle: textStyle,
    loadingText: loadingText,
    noDataText: noDataText,
    noMoreIcon: noMoreIcon,
    idleText: idleText,
    failedText: failedText,
    canLoadingText: canLoadingText,
    failedIcon: failedIcon,
    iconPos: iconPos,
    spacing: spacing?.toDouble(),
    completeDuration: completeDuration,
    loadingIcon: loadingIcon,
    canLoadingIcon: canLoadingIcon,
    idleIcon: idleIcon,
  ),
);
