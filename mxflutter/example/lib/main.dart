import 'package:flutter/material.dart';
//mxflutter
import 'package:mxflutter/mxflutter.dart';

void main() {
  //-------1. 启动 MXFlutter---------
  MXJSFlutter.runJSApp();
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
          leading: FlutterLogo(colors: Colors.grey),
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
                /*-------2. 打开使用MXFlutter框架JS编写的页面
                jsWidgetName: "mxflutter-homepage",是在 TS 工程中 index.ts文件注册的JS Widget

                ''' index.ts

                mxflutter.regist({
                    name: 'mxflutter-homepage',
                    RootWidget: MyApp,
                });

                '''

                 */
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MXJSPageWidget(
                            jsWidgetName: "mxflutter-homepage")));
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
                MXJSFlutter.runJSApp();
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
