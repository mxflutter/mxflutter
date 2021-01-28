//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'mx_flutter.dart';

class MXHandler {
  /// 定制loadingWidget 和 errorWidget。
  MXWidgetBuildHandler loadingHandler;
  MXWidgetBuildHandler errorHandler;

  /// 单例实例。
  static MXHandler _instance;

  /// 获取单例实例。
  static MXHandler getInstance() {
    if (_instance == null) {
      _instance = MXHandler();
    }
    return _instance;
  }

  /// 设置一个处理器，当JS页面加载时，定制Loading widget。
  void setJSWidgetLoadingHandler(MXWidgetBuildHandler handler) {
    loadingHandler = handler;
  }

  /// 设置一个处理器，当JS页面加载时，定制Error widget。
  void setJSWidgetBuildErrorHandler(MXWidgetBuildHandler handler) {
    errorHandler = handler;
  }
}
