import 'package:flutter/material.dart';
//mxflutter
import 'package:mxflutter/mxflutter.dart';

void main() {
  //-------1. MXFlutter 启动---------
  MXJSFlutter.getInstance().runJSApp();
  runApp(MyApp());
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
          leading: FlutterLogo(colors: Colors.blue),
          title: Text('MXFlutter Demo'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.book),
              trailing: Icon(Icons.arrow_right),
              title: Text('MXFlutter Demo'),
              subtitle: Text('打开MXFlutter JavaScript开发的示例页面'),
              onTap: () {
                //-------2. MXFlutter push 一个使用MXFlutter框架，JS编写的页面
                //MXJSPageWidget的参数 jsWidgetName: "MXJSWidgetHomePage",在mxflutter_js_src/main.js  MyApp::createJSWidgetWithName 函数中使用，
                //创建你需要的MX JS Widget
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MXJSPageWidget(
                            jsWidgetName: "MXJSWidgetHomePage")));
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
                MXJSFlutter.getInstance().runJSApp();
              },
            ),
            ListTile(
              title: Text(
                  '在此页面可以打开Safari浏览器-> 开发->模拟器。 然后点击MXFlutter Demo，可以在Safari调试JS'),
            )
          ],
        ));
  }
}
