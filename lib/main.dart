import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

import 'mxflutter_framework/mxflutter.dart';




import 'test.dart';

void main() {
  //-------MXFlutter 启动---------
  //1. Dart侧需要调用WidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();

  //2. 配置JSFlutter
  MXJSFlutter.getInstance().setup();

  //3. 启动你的jsAPP，不显示任何界面
  MXJSFlutter.getInstance().runJSApp(jsAppName: "mxflutter_app_demo");
  //运行mxflutter_app_demo2，就启动mxflutter_app_demo2目录下的JS文件
  //MXJSFlutter.getInstance().runJSApp(jsAppName: "mxflutter_app_demo2");

  debugPaintSizeEnabled = false;
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MXFlutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      // home: Container(
      //     color: Colors.white,
      //     child: Center(
      //       child: Text(''),
      //     )),
      //路由表定义
      onGenerateRoute: (RouteSettings settings) {
        MXJSLog.log(
            "'MyApp': onGenerateRoute: (RouteSettings settings): ${settings.name}");

        switch (settings.name) {
          case '/':
          case 'FlutterHomePage':
            {
              //进入Flutter index页面
              return MaterialPageRoute(
                builder: (context) {
                  return FlutterHomePage(title: "MXFlutter Demo");
                },
                settings: settings,
              );
            }
          case 'MXJSPage':
            {
              //直接进入MXFlutter的index页面
              //如果要区分用MXFlutter引擎打开不同页面，可以设计成settings.name 为"MXJSPage:://JSWidgetHomePage" 解析host
              return MaterialPageRoute(
                builder: (context) {
                  //每调用一次 MediaQuery.of(context);在release下会导致 builder: (context) 回调函数执行一次，
                  var mediaQueryData = MediaQuery.of(context);
                  var themeData = Theme.of(context);
                  var iconThemeData = IconTheme.of(context);

                  MXJSLog.log(
                      "'MXJSPage': MXJSFlutter.getInstance().navigatorPushWithName");

                  //每调用一次 MediaQuery.of(context);在release下会导致 builder: (context) 回调函数执行一次，用RootWidget 用Key("MXFlutterPage")保持生命周期
                  var mxFlutterPage = MXJSFlutter.getInstance()
                      .navigatorPushWithName(
                          "JSWidgetHomePage", Key("JSWidgetHomePage"),
                          themeData: themeData,
                          mediaQueryData: mediaQueryData,
                          iconThemeData: iconThemeData);

                  return mxFlutterPage;
                },
                settings: settings,
              );
            }
        }

        return null;
      },
    );
  }
}

class FlutterHomePage extends StatefulWidget {
  FlutterHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _FlutterHomePageState createState() => _FlutterHomePageState();
}

class _FlutterHomePageState extends State<FlutterHomePage> {
  @override
  Widget build(BuildContext context) {
    var scaffoldWidget = Scaffold(
        appBar: AppBar(
          leading: Image.asset(
            "logos/flutter_white/logo.png",
            fit: BoxFit.contain,
            package: "flutter_gallery_assets",
          ),
          title: Text(widget.title),
        ),
        body: _DemoList());

    return scaffoldWidget;
  }
}

class _DemoList extends StatelessWidget {
  const _DemoList();

  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    var themeData = Theme.of(context);
    var iconThemeData = IconTheme.of(context);

    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.book),
          trailing: Icon(Icons.arrow_right),
          title: Text('MXFlutter Demo'),
          subtitle: Text('打开MXFlutter JavaScript开发的示例页面'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MXJSFlutter.getInstance()
                      .navigatorPushWithName(
                          "JSWidgetHomePage", Key("MXFlutterPage"),
                          themeData: themeData,
                          mediaQueryData: mediaQueryData,
                          iconThemeData: iconThemeData)),
            );
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
            //先把JSApp启动起来，不显示任何界面
            MXJSFlutter.getInstance().runJSApp(jsAppName: "mxflutter_app_demo");

            Scaffold.of(context).showSnackBar(
              const SnackBar(
                  content:
                      Text('JSApp 重新加载完成，重新进入上面的MXFlutter Demo，即可看到界面更新！')),
            );
          },
        ),
        ListTile(
          title: Text(
              '在此页面可以打开Safari浏览器-> 开发->模拟器。 然后点击MXFlutter Demo，可以在Safari调试JS'),
        ),
        ListTile(
          leading: Icon(Icons.photo),
          title: Text("实验室"),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return TestPage();
            }));
          },
        )
      ],
    );
  }
}
