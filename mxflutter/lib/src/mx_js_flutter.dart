//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mx_js_flutter_lib.dart';
import 'mx_json_to_dart.dart';

///*MXJSFluttr的对外接口类
///简单两步接入MXFlutter，打开JS编写的页面。
///1. 启动运行JS代码 'MXJSFlutter.getInstance().runJSApp();'
///2. Push JS页面
///
/// '''dart
///
///      Navigator.push(
///          context,
///          MaterialPageRoute(
///              builder: (context) => MXJSPageWidget(
///                  jsWidgetName: "MXJSWidgetHomePage")));
///
/// '''
///
abstract class MXJSFlutter {
  static MXJSFlutter _instance;

  ///获取MXJSFlutter
  ///MXFlutter的大部分接口通过MXJSFlutter来暴露
  static MXJSFlutter getInstance() {
    if (_instance == null) {
      _instance = MXJSFlutterLib();
    }

    return _instance;
  }

  ///由Flutter 代码启动JSApp。 可以用在先显示Flutter页面，然后Push路由跳转到JS页面
  ///启动JSApp之后，执行JS代码，JS代码可以主动调用Flutter显示自己的页面，也能接受Flutter的指令，显示对应页面
  ///
  ///@param jsAppPath jsApp root path ，JS业务代码放置在一个文件夹中，并且有main.js文件。jsAppPath和jsAppAssetsKey根据场景二选一
  ///@param jsAppAssetsKey 使用pubspec.yaml里的AssetsKey配置来设置jsAppPath，默认为flutter工程下，与lib，ios同级目录的mxflutter_js_src/文件夹下
  ///@param jsAppSearchPathList js App require 的搜索路径，一般无需设置，默认jsApp root path
  ///@param jsAppSearchPathWithAssetsKeyList js App require 的搜索路径，使用pubspec.yaml里的AssetsKey配置来设置，一般无需设置，默认jsApp root path
  ///@returns void
  ///@throws Error if Path error
  ///
  runJSApp(
      {String jsAppPath = "",
      String jsAppAssetsKey = "mxflutter_js_src",
      List<String> jsAppSearchPathList,
      List<String> jsAppSearchPathWithAssetsKeyList});

  ///从Flutter Push一个 JS写的页面
  ///@param widgetName: "widgetName",在mxflutter_js_src/main.js  MyApp::createJSWidgetWithName 函数中使用
  ///MyApp::createJSWidgetWithName 通过 widgetName 来创建对应的JSWidget
  /// 通常你应该使用更高层的API MXJSPageWidget 包装类来显示JS Widget 请参考 MXJSPageWidget 的用法
  ///
  /// '''dart
  ///
  ///      Navigator.push(
  ///          context,
  ///          MaterialPageRoute(
  ///              builder: (context) => MXJSPageWidget(
  ///                  jsWidgetName: "MXJSWidgetHomePage")));
  ///
  /// '''
  ///
  dynamic navigatorPushWithName(String widgetName, Key widgetKey,
      {ThemeData themeData,
      MediaQueryData mediaQueryData,
      IconThemeData iconThemeData});

  ///flutter->js  顶层通用调用通道
  dynamic invokeJSCommonChannel(MethodCall jsMethodCall);

  ///注册JS call dart Proxy
  void registerMirrorObjProxy(Map<String, CreateJsonObjProxyFun> string2CreateJsonObjProxyFunMap);
}
