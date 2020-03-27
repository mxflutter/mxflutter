import 'package:flutter/material.dart';
import 'mx_json_proxy_animation.dart';
import 'mx_json_to_dart.dart';
import 'mx_build_owner.dart';
import 'mx_json_proxy_basic_types.dart';
import 'mx_json_proxy_text.dart';
import 'mx_json_proxy_layout.dart';
import 'package:flutter/gestures.dart';
import 'dart:convert';

// TODO List
// 1、默认值是私有类的方法

///把Widget按分类注册，方便写代码，
///分类：Material/Layout/Text/(Assets.Images.icons)/input...
///参照了官网https://flutter.io/docs/development/ui/widgets
class MXProxyRegisterHelperWidgetSeries {
  static Map<String, CreateJsonObjProxyFun> registerProxys() {
    Map<String, CreateJsonObjProxyFun> m = {};

    m.addAll(MXProxyPlaceholder.registerProxy());

    return m;
  }
}

class MXProxyPlaceholder extends MXJsonObjProxy {
  static String regClassName = "Placeholder";

  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyPlaceholder()..init(className: regClassName)
    };
  }

  @override
  Placeholder constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Placeholder(
      key: mxj2d(bo, jsonMap["key"]),
      color: mxj2d(bo, jsonMap["color"], defaultValue: const Color(0xFF455A64)),
      strokeWidth:
          mxj2d(bo, jsonMap["strokeWidth"], defaultValue: 2.0)?.toDouble(),
      fallbackWidth:
          mxj2d(bo, jsonMap["fallbackWidth"], defaultValue: 400.0)?.toDouble(),
      fallbackHeight:
          mxj2d(bo, jsonMap["fallbackHeight"], defaultValue: 400.0)?.toDouble(),
    );
    return widget;
  }
}
