import 'package:flutter/material.dart';
//mxflutter
import 'package:mxflutter/mxflutter.dart';

void main() {
  //-------MXFlutter 启动---------
  //1. 启动你的jsAPP，不显示任何界面
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
  ///jsAppSearchPathWithAssetsKeyList 一般无需设置，默认从jsApp root path开始查找
  MXJSFlutter.getInstance().runJSApp(
      jsAppAssetsKey: "mxflutter_js_src",
      jsAppSearchPathWithAssetsKeyList: [
        "mxflutter_js_src/app_demo"
      ]);

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
                  MXJSFlutter.getInstance().runJSApp(
                      jsAppAssetsKey: "mxflutter_js_src",
                      jsAppSearchPathWithAssetsKeyList: [
                        "mxflutter_js_src/app_demo"
                      ]);
                },
              ),
              ListTile(
                title: Text(
                    '在此页面可以打开Safari浏览器-> 开发->模拟器。 然后点击MXFlutter Demo，可以在Safari调试JS'),
              )
            ],
          )),
          Image.network(
            'https://raw.githubusercontent.com/mxflutter/mxflutter/master/mxflutter/mxflutterlogo.png',
            width: 260,
            height: 200,
          )
        ]));
  }

  mxflutterWhiteLogo() {
    return Image.asset(
      "logos/flutter_white/logo.png",
      fit: BoxFit.contain,
      package: "flutter_gallery_assets",
    );
  }
}
