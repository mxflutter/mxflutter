//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

library mxflutter;

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
///
export 'src/mirror/mx_mirror.dart';
export 'src/mx_common.dart';
export 'src/mx_flutter.dart';
export 'src/mx_host_widget.dart';
