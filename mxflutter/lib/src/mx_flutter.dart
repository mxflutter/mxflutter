//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:device_info/device_info.dart';

import './bundle_zip/mx_bundle_zip.dart';
import './mirror/mx_mirror.dart';
import './mirror_reg_fun_map/mx_mirror_func_reg.dart';
import 'mx_common.dart';
import 'mx_flutter_app.dart';
import 'mx_handler.dart';
import 'mx_js_bridge.dart';
import 'mx_platform_channel.dart';
import 'mx_widget.dart';
import 'ffi/ffi_callback_manager.dart';

typedef MXWidgetBuildHandler = Widget Function(String widgetName);
const defaultJSBundleAssetsKey = 'mxflutter_js_bundle';

/// JS异常回调。
/// [error]为 Map 类型，包含两个字段。
/// 1）jsFileType: 加载的js文件类型，int类型。-1: 未知类型; 0: main.js; 1: bundle-xxx.js。
/// 2）errorMsg: 错误信息，string类型。
typedef MXJSExceptionHandler = void Function(dynamic error);

/// *MXJSFluttr的对外接口类
/// 简单两步接入MXFlutter，打开JS编写的页面。
/// 1. 启动运行JS代码 'MXJSFlutter.runJSApp();'
/// 2. Push JS页面
///
///  '''dart
///
///      Navigator.push(
///          context,
///          MaterialPageRoute(
///              builder: (context) => MXJSPageWidget(
///                  jsWidgetName: "MXJSWidgetHomePage")));
///
///  '''
///
abstract class MXJSFlutter {
  static MXJSFlutter _instance;

  /// 获取对外接口类MXJSFlutter。
  /// MXFlutter的大部分接口通过MXJSFlutter来调用。
  static MXJSFlutter getInstance() {
    if (_instance == null) {
      _instance = _MXJSFlutter();
    }

    return _instance;
  }

  /// 由Flutter 代码启动JSApp。 可以用在先显示Flutter页面，然后Push路由跳转到JS页面。
  /// 启动JSApp之后，执行JS代码，JS代码可以主动调用Flutter显示自己的页面，也能接受Flutter的指令，显示对应页面。
  ///
  /// @param jsAppPath jsApp root path ，JS业务代码放置在一个文件夹中。jsAppPath和jsAppAssetsKey根据场景二选一。
  /// @param jsAppAssetsKey 使用pubspec.yaml里的AssetsKey配置来设置jsAppPath，默认为flutter工程下，与lib，ios同级目录的mxflutter_js_bundle/文件夹下。
  /// @param jsExceptionHandler js异常回调。方法参数见 MXJSExceptionHandler 说明。
  /// @param debugBizJSPath 目前iOS模拟器下才能使用！！！本地js目录放置路径，直接放置bundle-xxx.js文件，无需打包成bizBundle.zip。使用该参数后，jsAppPath不生效。
  /// @returns Future
  /// @throws Error if Path error
  ///
  static Future runJSApp(
      {String jsAppPath = '',
      String jsAppAssetsKey = defaultJSBundleAssetsKey,
      MXJSExceptionHandler jsExceptionHandler,
      String debugJSBundlePath = ''}) async {
    WidgetsFlutterBinding.ensureInitialized();
    MXJSFlutter.getInstance();

    // 检查是否需要拷贝zip包。
    MXBundleZipManager bundleManager = MXBundleZipManager(
        jsAppPath: jsAppPath,
        jsAppAssetsKey: jsAppAssetsKey,
        debugJSBundlePath: debugJSBundlePath);
    MXBundleZipCheckResult result =
        await bundleManager.checkNeedCopyAppBundleZip();

    if (!result.success) {
      MXJSLog.log(
          'MXJSFlutter.runJSApp: checkAppBundleZip failed: ${result.errorMessage}');

      // 引擎初始化的success回调
      MXJSFlutter.getInstance().jsEngineInitCompletionHandler(
          {'success': result.success, 'errorMessage': result.errorMessage});

      return;
    }

    // 调试状态下，debugJSBundlePath不为空，则运行此目录下的js文件。
    String realJSAppPath = jsAppPath;
    if (await canDefineDebugJSBundlePath() && debugJSBundlePath.length > 0) {
      realJSAppPath = debugJSBundlePath;
    }

    // 加载main.js。
    _callNativeRunJSApp(
        jsAppPath: realJSAppPath, jsExceptionHandler: jsExceptionHandler);
  }

  /// 是否允许定义debugJSBundlePath
  static Future<bool> canDefineDebugJSBundlePath() async {
    // 目前只支持场景：1）调试环境的iOS模拟器
    if (kDebugMode && Platform.isIOS) {
      DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
      IosDeviceInfo deviceData = await deviceInfoPlugin.iosInfo;
      return !deviceData.isPhysicalDevice;
    } else {
      return false;
    }
  }

  static _callNativeRunJSApp(
      {String jsAppPath = "", MXJSExceptionHandler jsExceptionHandler}) {
    Map<String, dynamic> args = {"jsAppPath": jsAppPath};

    args["flutterAppEnvironmentInfo"] = flutterAppEnvironmentInfo;
    MXPlatformChannel.getInstance().invokeMethod("callNativeRunJSApp", args);

    // 设置JS Exception Handler。
    MXPlatformChannel.getInstance().setJSExceptionHandler((arguments) {
      // 如果是main.js的错误，arguments['jsFileType'] 为 0 则执行js引擎的success回调。
      if (arguments is Map && arguments['jsFileType'] == 0) {
        MXJSFlutter.getInstance().jsEngineInitCompletionHandler(
            {'success': false, 'errorMessage': arguments['errorMsg']});
      }

      // 回调给业务侧。
      if (jsExceptionHandler != null) {
        jsExceptionHandler(arguments);
      }
    });

    // 初始化MXFFICallbackManager。
    MXFFICallbackManager.getInstance();
  }

  ///从Flutter Push一个 JS写的页面
  ///@param widgetName: "widgetName",在main.js  MyApp::createJSWidgetWithName 函数中使用
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

  /// 设置处理器，当JS页面加载时，定制Loading widget。
  void setJSWidgetLoadingHandler(MXWidgetBuildHandler handler);

  /// 设置处理器，当JS页面加载错误时，定制Error widget。
  void setJSWidgetBuildErrorHandler(MXWidgetBuildHandler handler);

  /// JS引擎初始化结束回调。
  void jsEngineInitCompletionHandler(dynamic arguments);

  /// JS引擎是否已初始化。
  bool isJSEngineInit();

  /// 设置JS引擎已初始化。
  void setJSEngineInit();

  /// JS引擎初始化结果。
  Map<String, dynamic> jsEngineInitResult();

  /// 重新创建MXJSFlutter，包括通道，属性。
  void resetup();

  /// 当前flutterApp。
  MXJSFlutterApp get currentApp;
}

/// 负责配置，运行MXJSFlutterApp，衔接Flutter，Native，JS 三方。
class _MXJSFlutter implements MXJSFlutter {
  MXJSFlutterApp currentApp;

  /// Flutter侧引擎是否初始化。
  bool _isFlutterEngineInit = false;

  /// JS引擎是否初始化。
  bool _isJSEngineInit = false;

  /// JS引擎是否初始化结果。
  Map<String, dynamic> _jsEngineInitResult = {};

  /// 缓存的push widget。用于js引擎初始化未结束，但业务快速push页面的场景。
  MXJSStatefulWidget _cachePushedWidget;

  _MXJSFlutter() {
    _setup();
  }

  /// API - JS页面的入口API
  /// 从 Flutter Push一个 JS 写的页面
  /// *重要：此API是从Dart侧打开一个JS页面的入口函数，将创建一个RootWidget，MXFlutter 的RootWidget对外只显示一个
  /// 先创建一个空的MXJSStatefulWidget，调用JS，等待JS层widgetData来刷新页面
  @override
  dynamic navigatorPushWithName(
      String widgetName, Key widgetKey, Map flutterPushParams) {
    MXJSStatefulWidget jsWidget = currentApp?.navigatorPushWithName(
        widgetName, widgetKey, flutterPushParams);
    // 如果JS引擎未初始化完毕，则缓存该widget，等初始化结束，重新刷新。
    if (!_isJSEngineInit) {
      _cachePushedWidget = jsWidget;
    }
    return jsWidget;
  }

  /// 设置一个处理器，当JS页面加载时，定制Loading widget。
  @override
  void setJSWidgetLoadingHandler(MXWidgetBuildHandler handler) {
    MXHandler.getInstance().setJSWidgetLoadingHandler(handler);
  }

  /// 设置一个处理器，当JS页面加载时，定制Error widget。
  @override
  void setJSWidgetBuildErrorHandler(MXWidgetBuildHandler handler) {
    MXHandler.getInstance().setJSWidgetBuildErrorHandler(handler);
  }

  @override
  void jsEngineInitCompletionHandler(dynamic arguments) {
    _isJSEngineInit = true;
    MXJSLog.log(
        '_MXJSFlutter.jsEngineInitSuccessHandler: success: ${arguments['success']}, errorMessage: ${arguments['errorMessage']}');

    _jsEngineInitResult = Map<String, dynamic>.from(arguments);
    if (_cachePushedWidget != null) {
      currentApp.refreshHostWidgetAfterJSEngineInit(
          widgetID: _cachePushedWidget.widgetID,
          success: _jsEngineInitResult['success']);
      _cachePushedWidget = null;
    }
  }

  @override
  bool isJSEngineInit() {
    return _isJSEngineInit;
  }

  @override
  void setJSEngineInit() {
    _isJSEngineInit = true;
    _jsEngineInitResult = {'success': true};
  }

  @override
  Map<String, dynamic> jsEngineInitResult() {
    return _jsEngineInitResult;
  }

  @override
  void resetup() {
    // 重新创建MXJSBridge。
    MXJSBridge.getInstance().resetupChannel();

    // 重新创建PlatformChannel。
    MXPlatformChannel.getInstance().resetupChannel();

    // 清理flutter侧的对象映射。
    _clearMX();

    // 属性重置。
    currentApp = MXJSFlutterApp();
    // _isJSEngineInit = false;
    _cachePushedWidget = null;
    // _jsEngineInitResult = {};
  }

  /// 初始化创建。
  void _setup() {
    if (_isFlutterEngineInit) {
      return;
    }

    // 设置JS引擎初始化成功Handler。
    MXPlatformChannel.getInstance().setJSEngineInitSuccessHandler((arguments) {
      jsEngineInitCompletionHandler(arguments);
    });

    // 初始化JS Bridge。
    MXJSBridge.getInstance();

    // 注册可以被JS调用的方法。
    mxRegisterMirrorFunctions();

    // 清理Flutter Mirror模块的对象ID映射。
    _clearMX();

    // MXJSFlutterApp对应JS侧JS App
    currentApp = MXJSFlutterApp();

    _isFlutterEngineInit = true;
  }

  /// 清理Flutter Mirror模块的对象ID映射。
  _clearMX() {
    MXMirror.getInstance().clearAllMirrorObjects();
  }
}
