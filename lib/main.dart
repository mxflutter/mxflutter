import 'package:flutter/material.dart';
import 'js_flutter/mx_js_flutter.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  debugPaintSizeEnabled = false;

  //设置JSFlutter
  MXJSFlutter.getInstance().setup();

  //先把JSApp启动起来，不显示任何界面
  MXJSFlutter.getInstance().runJSApp(jsAppName: "app_test", pageName: null);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: JSFlutterHomePage(title: "JSFlutter Demo"),
    );
  }
}

class JSFlutterHomePage extends StatefulWidget {
  JSFlutterHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _JSFlutterHomePageState createState() => _JSFlutterHomePageState();
}

class _JSFlutterHomePageState extends State<JSFlutterHomePage> {
  @override
  Widget build(BuildContext context) {
    var scaffoldWidget = Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          "js_flutter_src/app_test/flutter_gallery_assets/logos/flutter_white/logo.png",
          fit: BoxFit.contain,
        ),
        title: Text(widget.title),
      ),
      body: _DemoList()
    );

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
          title: Text('JSFlutter UI Demo'),
          subtitle: Text('打开JSFlutter UI示例页面'),
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
          subtitle: Text('点击热重载JSApp，重新进入上面的JSFlutter UI Demo，即可看到界面更新'),
          isThreeLine: true,
          onTap: () {
            //先把JSApp启动起来，不显示任何界面
            MXJSFlutter.getInstance()
                .runJSApp(jsAppName: "app_test", pageName: null);

            Scaffold.of(context).showSnackBar(
              const SnackBar(
                  content:
                      Text('JSApp 重新加载完成，重新进入上面的JSFlutter UI Demo，即可看到界面更新！')),
            );
          },
        ),
        ListTile(
          title: Text(
              '在此页面可以打开Safari浏览器-> 开发->模拟器。 然后点击JSFlutter UI Demo，可以在Safari调试JS'),
        ),
      ],
    );
  }
}

