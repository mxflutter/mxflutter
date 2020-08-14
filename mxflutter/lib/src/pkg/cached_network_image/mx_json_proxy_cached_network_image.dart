//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:flutter/material.dart';
// import '../../mx_json_to_dart.dart';
// import '../../mx_json_build_owner.dart';
// import '../../mx_json_proxy_basic_types.dart';
// import '../../mx_json_proxy_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:mxflutter/src/mirror/mx_mirror.dart';

// class MXProxyRegisterHelperCachedNetworkImageSeries {
//   static Map<String, CreateJsonObjProxyFun> registerProxys() {
//     Map<String, CreateJsonObjProxyFun> m = {};

//     m.addAll(MXProxyCachedNetworkImage.registerProxy());

//     return m;
//   }
// }

// class MXProxyCachedNetworkImage extends MXJsonObjProxy {
//   static Map<String, CreateJsonObjProxyFun> registerProxy() {
//     ///**@@@  2 替换类名字符串
//     final String regClassName = "CachedNetworkImage";

//     ///**@@@  3 替换类构造函数
//     return {
//       regClassName: () =>
//           MXProxyCachedNetworkImage()..init(className: regClassName)
//     };
//   }

//   @override
//   CachedNetworkImage constructor(
//       MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
//       {BuildContext context}) {
//     var widget = CachedNetworkImage(
//       key: mxj2d(bo, jsonMap["key"]),
//       imageUrl: mxj2d(bo, jsonMap["imageUrl"]),
//       // imageBuilder: mxj2d(bo, jsonMap["imageBuilder"]),
//       placeholder: (context, url) {
//         return mxj2d(bo, jsonMap["placeholderChild"]);
//       },
//       // errorWidget: mxj2d(bo, jsonMap["errorWidget"]),
//       fadeOutDuration: mxj2d(bo, jsonMap["fadeOutDuration"],
//           defaultValue: const Duration(milliseconds: 1000)),
//       fadeOutCurve:
//           mxj2d(bo, jsonMap["fadeOutCurve"], defaultValue: Curves.easeOut),
//       fadeInDuration: mxj2d(bo, jsonMap["fadeInDuration"],
//           defaultValue: const Duration(milliseconds: 500)),
//       fadeInCurve:
//           mxj2d(bo, jsonMap["fadeInCurve"], defaultValue: Curves.easeIn),
//       width: mxj2d(bo, jsonMap["width"]).toDouble(),
//       height: mxj2d(bo, jsonMap["height"]).toDouble(),
//       fit: MXBoxFit.parse(mxj2d(bo, jsonMap["fit"])),
//       alignment:
//           mxj2d(bo, jsonMap["alignment"], defaultValue: Alignment.center),
//       repeat: MXImageRepeat.parse(mxj2d(bo, jsonMap["repeat"]),
//           defaultValue: ImageRepeat.noRepeat),
//       matchTextDirection:
//           mxj2d(bo, jsonMap["matchTextDirection"], defaultValue: false),
//       httpHeaders: mxj2d(bo, jsonMap["httpHeaders"]),
//       cacheManager: mxj2d(bo, jsonMap["cacheManager"]),
//       useOldImageOnUrlChange:
//           mxj2d(bo, jsonMap["useOldImageOnUrlChange"], defaultValue: false),
//       color: mxj2d(bo, jsonMap["color"]),
//       filterQuality: MXFilterQuality.parse(mxj2d(bo, jsonMap["filterQuality"]),
//           defaultValue: FilterQuality.low),
//       colorBlendMode: mxj2d(bo, jsonMap["colorBlendMode"]),
//       placeholderFadeInDuration:
//           mxj2d(bo, jsonMap["placeholderFadeInDuration"]),
//     );
//     return widget;
//   }
// }

Map<String, MXFunctionInvoke> registerCachedNetworkImageSeries() {
  var m = <String, MXFunctionInvoke>{};

  m[_cachedNetworkImage.funName] = _cachedNetworkImage;

  return m;
}

var _cachedNetworkImage = MXFunctionInvoke(
  "CachedNetworkImage",
  ({
    Key key,
    String imageUrl,
    dynamic imageBuilder,
    dynamic placeholder,
    dynamic progressIndicatorBuilder,
    dynamic errorWidget,
    Duration fadeOutDuration = const Duration(milliseconds: 1000),
    Curve fadeOutCurve = Curves.easeOut,
    Duration fadeInDuration = const Duration(milliseconds: 500),
    Curve fadeInCurve = Curves.easeIn,
    dynamic width,
    dynamic height,
    BoxFit fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    bool matchTextDirection = false,
    Map<String, String> httpHeaders,
    dynamic cacheManager,
    bool useOldImageOnUrlChange = false,
    Color color,
    FilterQuality filterQuality = FilterQuality.low,
    BlendMode colorBlendMode,
    Duration placeholderFadeInDuration,

    dynamic placeholderChild,
  }) =>
      CachedNetworkImage(
    key: key,
    imageUrl: imageUrl,
    placeholder: (context, url) {
      return placeholderChild;
    },
    progressIndicatorBuilder: progressIndicatorBuilder,
    errorWidget: errorWidget,
    fadeOutDuration: fadeOutDuration,
    fadeOutCurve: fadeOutCurve,
    fadeInDuration: fadeInDuration,
    fadeInCurve: fadeInCurve,
    width: width?.toDouble(),
    height: height?.toDouble(),
    fit: fit,
    alignment: alignment,
    repeat: repeat,
    matchTextDirection: matchTextDirection,
    httpHeaders: httpHeaders,
    cacheManager: cacheManager,
    useOldImageOnUrlChange: useOldImageOnUrlChange,
    color: color,
    filterQuality: filterQuality,
    colorBlendMode: colorBlendMode,
    placeholderFadeInDuration: placeholderFadeInDuration,
  ),
);