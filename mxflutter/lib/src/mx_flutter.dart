//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'mx_flutter_app.dart';
import './mirror/mx_mirror.dart';
import './mirror_reg_fun_map/mx_mirror_func_reg.dart';
import 'mx_js_bridge.dart';
import 'mx_platform_channel.dart';
import 'mx_handler.dart';

typedef Widget MXWidgetBuildHandler(String widgetName);

/// JS异常回调
/// [error]为 Map 类型，包含两个字段
/// 1）jsFileType: 加载的js文件类型，int类型。-1: 未知类型; 0: main.js; 1: bundle-xxx.js
/// 2）errorMsg: 错误信息，string类型。
typedef void MXJSExceptionHandler(dynamic error);

///*MXJSFluttr的对外接口类
///简单两步接入MXFlutter，打开JS编写的页面。
///1. 启动运行JS代码 'MXJSFlutter.runJSApp();'
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
      _instance = _MXJSFlutter();
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
  ///@param jsExceptionHandler js异常回调。方法参数见 MXJSExceptionHandler 说明
  ///@returns void
  ///@throws Error if Path error
  ///
  static runJSApp(
      {String jsAppPath = "",
      String jsAppAssetsKey = "mxflutter_js_src",
      List<String> jsAppSearchPathList,
      List<String> jsAppSearchPathWithAssetsKeyList,
      MXJSExceptionHandler jsExceptionHandler}) {
    WidgetsFlutterBinding.ensureInitialized();

    // 加载main.js
    _callNativeRunJSApp(
        jsAppPath: jsAppPath,
        jsAppAssetsKey: jsAppAssetsKey,
        jsAppSearchPathList: jsAppSearchPathList,
        jsAppSearchPathWithAssetsKeyList: jsAppSearchPathWithAssetsKeyList,
        jsExceptionHandler: jsExceptionHandler);

    MXJSFlutter.getInstance();
  }

  static _callNativeRunJSApp(
      {String jsAppPath = "",
      String jsAppAssetsKey = "mxflutter_js_src",
      List<String> jsAppSearchPathList,
      List<String> jsAppSearchPathWithAssetsKeyList,
      MXJSExceptionHandler jsExceptionHandler}) {
    Map<String, dynamic> args = {
      "jsAppAssetsKey": jsAppAssetsKey,
      "jsAppPath": jsAppPath
    };

    if (jsAppSearchPathList != null) {
      args["jsAppSearchPathList"] = jsAppSearchPathList;
    }

    if (jsAppSearchPathWithAssetsKeyList != null) {
      args["jsAppSearchPathWithAssetsKeyList"] =
          jsAppSearchPathWithAssetsKeyList;
    }

    args["flutterAppEnvironmentInfo"] = {
      "kReleaseMode": kReleaseMode,
      "kProfileMode": kProfileMode,
      "kDebugMode": kDebugMode
    };

    MXPlatformChannel.getInstance().invokeMethod("callNativeRunJSApp", args);

    // 设置JS Exception Handler
    if (jsExceptionHandler != null) {
      MXPlatformChannel.getInstance().setJSExceptionHandler(jsExceptionHandler);
    }
  }

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
  dynamic navigatorPushWithName(
      String widgetName, Key widgetKey, Map flutterPushParams);

  /// 设置一个处理器，当JS页面加载时，定制Loading widget
  setJSWidgetLoadingHandler(MXWidgetBuildHandler handler);

  /// 设置一个处理器，当JS页面加载错误时，定制Error widget
  setJSWidgetBuildErrorHandler(MXWidgetBuildHandler handler);

  MXJSFlutterApp get currentApp;
}

/// 负责配置，运行MXJSFlutterApp，衔接Flutter，Native，JS 三方
class _MXJSFlutter implements MXJSFlutter {
  _MXJSFlutter() {
    setup();
  }

  MXJSFlutterApp currentApp;
  bool _isSetup = false;

  setup() {
    if (_isSetup) {
      return;
    }

    // 初始化JS Bridge
    MXJSBridge.getInstance();

    // 注册可以被JS调用的方法
    mxRegisterMirrorFunctions();

    // 清理flutter侧的对象映射
    _clearMX();

    // 暂时只支持一个
    currentApp = MXJSFlutterApp();

    _isSetup = true;
  }

  /// API - JS页面的入口API
  /// 从 Flutter Push一个 JS 写的页面
  /// *重要：此API是从Dart侧打开一个JS页面的入口函数，将创建一个RootWidget，MXFlutter 的RootWidget对外只显示一个
  /// 先创建一个空的MXJSStatefulWidget，调用JS，等待JS层widgetData来刷新页面
  @override
  dynamic navigatorPushWithName(
      String widgetName, Key widgetKey, Map flutterPushParams) {
    dynamic jsWidget = currentApp?.navigatorPushWithName(
        widgetName, widgetKey, flutterPushParams);
    return jsWidget;
  }

  /// 设置一个处理器，当JS页面加载时，定制Loading widget
  setJSWidgetLoadingHandler(MXWidgetBuildHandler handler) {
    MXHandler.getInstance().setJSWidgetLoadingHandler(handler);
  }

  setJSWidgetBuildErrorHandler(MXWidgetBuildHandler handler) {
    MXHandler.getInstance().setJSWidgetBuildErrorHandler(handler);
  }

  /// 清理flutter侧的对象映射
  _clearMX() {
    MXMirror.getInstance().clearAllMirrorObjects();
  }
}
