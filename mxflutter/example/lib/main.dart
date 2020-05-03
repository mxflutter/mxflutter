import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
//mxflutter
import 'package:mxflutter/mxflutter.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

void main() async{
  //-------MXFlutter 启动---------
  //1. Dart侧需要调用WidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();

  //2. 配置JSFlutter
  MXJSFlutter.getInstance().setup();

  //3. 启动你的jsAPP，不显示任何界面
  // 获取配置在pubspec.yaml中，jsapp代码路径
  // flutter:
  //  assets:
  //    #copy js src ,mxflutter app demo 的js代码
  //    - mxflutter_js_src/
  //    - mxflutter_js_src/app_demo/
  //    - mxflutter_js_src/mxjsbuilder_demo/

  ///Entrypoint mxflutter_js_src/main.js main()
  ///runJSApp 的jsAppAssetsKey 默认参数即为mxflutter_js_src/， 会默认运行 mxflutter_js_src/main.js
  ///建议不要修改mxflutter_js_src/目录名，模拟器热重载依据此路径配置
  ///如果修改请全局搜索mxflutter_js_src/修改模拟器热重载配置，release或真机不受影响
  ///jsAppSearchPathWithAssetsKeyList 一般无需设置，默认jsApp root path
  MXJSFlutter.getInstance().runJSApp(jsAppAssetsKey: "mxflutter_js_src/",jsAppSearchPathWithAssetsKeyList: ["mxflutter_js_src/app_demo/","mxflutter_js_src/mxjsbuilder_demo/"]);

  ///或者运行你下载到 DocumentsDirectory 里的JS代码
//  Directory directory = await getApplicationDocumentsDirectory();
//  var jsAppPath = join(directory.path, "my_js_app");
//  MXJSFlutter.getInstance().runJSApp(jsAppPath: jsAppPath);

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
          case 'MXFlutterJSHomePage':
            {
              //直接进入MXFlutter的index页面
              //如果要区分用MXFlutter引擎打开不同页面，可以设计成settings.name 为"MXJSPage:://JSWidgetHomePage" 解析host
              return MaterialPageRoute(
                builder: (context) {
                  return MXFlutterJSHomePage();
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
            "mxflutter_js_src/flutter_gallery_assets/logos/flutter_white/logo.png",
            fit: BoxFit.contain,
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
            MXJSFlutter.getInstance().runJSApp(jsAppPath: "mxflutter_app_demo");

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
        )
      ],
    );
  }
}

class MXFlutterJSHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

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
  }
}