import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:device_info/device_info.dart';

//mxflutter
import 'package:mxflutter/mxflutter.dart';

// mxflutter_pkg
import 'package:mxflutter_pkg/mxflutter_pkg.dart';

import 'mx_mirror_example.dart';
import 'lib_test.dart';

void main() {
  //启动 MXFlutter JS App
  runMXJSApp();

  runApp(MyApp());
}

runMXJSApp() async {
  //-------MXFlutter 启动---------
  //1. 启动MXFlutter，预加载框架JS代码，不显示任何界面

  // runJSApp 的 jsAppAssetsKey 参数默认为mxflutter_js_bundle/，
  // 直接运行 MXJSFlutter.runJSApp(),代表加载打到apk或ipa包例的 JS Bundle文件，
  // JS Bundle目录在 pubspec.yaml中配置
  // flutter:
  //  assets:
  //    - mxflutter_js_bundle/
  // 建议不要修改mxflutter_js_bundle/目录名，模拟器热重载依据此路径配置
  // 如果修改请全局搜索mxflutter_js_bundle/ 修改模拟器热重载配置

  //  runJSApp 的 jsAppPath参数 可以指定下载到 DocumentsDirectory 里的JS代码，用来热更新
  //  Directory directory = await getApplicationDocumentsDirectory();
  //  var jsAppPath = join(directory.path, "my_js_bundle");
  //  MXJSFlutter.runJSApp(jsAppPath: jsAppPath);
  WidgetsFlutterBinding.ensureInitialized();

  // 开发调试，为了方便验证，可以自己指定目录，只能用于iOS模拟器下。
  // TODO: 本地调试代码，请不要修改提交！！！后续通过git hook检测。
  // if (await MXJSFlutter.canDefineDebugJSBundlePath()) {
  //    // 调试时，可以在iOS 模拟器下，把debugJSBundlePath 设置成 TS 代码的输出目录
  //    MXJSFlutter.runJSApp(debugJSBundlePath: '/Volumes/Data/Work/RFlutter/mxflutter-js/release');
  // } else {
  //    MXJSFlutter.runJSApp();
  // }

  MXJSFlutter.runJSApp();

  // 注册自定义JSApi，可以在JS侧调用自定义dart的示例代码，参考MXMirrorExample实现过程
  MXMirrorExample.registerFunction();

  // 注册第三方插件方法
  mxRegisterThirdPartyWidgetFunc();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: MXFlutterExampleHome());
  }
}

class MXFlutterExampleHome extends StatelessWidget {
  MXFlutterExampleHome();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: mxflutterWhiteLogo(),
          title: Text('MXFlutter Demo'),
        ),
        body: Column(children: <Widget>[
          Expanded(
              child: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.book),
                trailing: Icon(Icons.arrow_right),
                title: Text('mxflutter-js-demo'),
                subtitle: Text('run js example'),
                onTap: () {
                  /*-------2. 打开使用MXFlutter框架JS编写的页面
                jsWidgetName: "mxflutter-js-demo",是在 TS 工程中 index.ts文件注册的JS Widget

                ''' index.ts

                     mxflutter.regist({
                        name: 'mxflutter-js-demo',
                        RootWidget: homePageModule.MXJSWidgetHomePage,
                      });

                '''

                 */
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MXJSPageWidget(
                              jsWidgetName: "mxflutter-js-demo")));
                },
              ),
              ListTile(
                leading: Icon(Icons.book),
                trailing: Icon(Icons.arrow_right),
                title: Text('example1'),
                subtitle: Text('run ts example'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MXJSPageWidget(jsWidgetName: "example1")));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.refresh,
                  semanticLabel: 'ReloadJSApp',
                  color: Colors.orange,
                ),
                title: Text('Reload JSApp'),
                subtitle: Text('点击热重载JSApp，重新进入上面的MXFlutter Demo，即可看到界面更新'),
                isThreeLine: true,
                onTap: () {
                  // 重新运行MXJSApp
                  runMXJSApp();
                },
              ),
              ListTile(
                title: Text(
                    '在此页面可以打开Safari浏览器-> 开发->模拟器。 然后点击MXFlutter Demo，可以在Safari调试JS'),
              ),
              ListTile(
                leading: Icon(
                  Icons.refresh,
                  semanticLabel: '实验室',
                  color: Colors.orange,
                ),
                title: Text('实验室'),
                subtitle: Text('测试Flutter原生表现'),
                isThreeLine: true,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomeLibPage(title: '实验室')));
                },
              ),
            ],
          )),
          Image.network(
            'https://raw.githubusercontent.com/mxflutter/mxflutter/master/mxflutter/mxflutterlogo.png',
            width: 260,
            height: 200,
          )
        ]));
  }

  Image mxflutterWhiteLogo() {
    return Image.asset(
      "logos/flutter_white/logo.png",
      fit: BoxFit.contain,
      package: "flutter_gallery_assets",
    );
  }
}

/// 注册第三方库方法
void mxRegisterThirdPartyWidgetFunc() {
  // cache_network_image.
  MXMirror.getInstance().registerFunctions(registerCachedNetworkImageSeries());

  // pull_to_refresh.
  MXMirror.getInstance().registerFunctions(registerPullToRefreshSeries());

  // dio.
  MXMirror.getInstance().registerFunctions(registerDioLibrarySeries());
}