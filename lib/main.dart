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

class InheritedContext extends InheritedWidget {

  //数据
  final  int count;

  InheritedContext({
    Key key,
    this.count,

    @required Widget child,
  }) : super(key: key, child: child);

  static InheritedContext of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(InheritedContext);
  }

  //是否重建widget就取决于数据是否相同
  @override
  bool updateShouldNotify(InheritedContext oldWidget) {
    return count != oldWidget.count;
  }
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
      home: InheritedContext(
        count:1,
        child: JSFlutterHomePage(title: "JSFlutter Demo")),
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
        leading:Image.asset(
                  "js_flutter_src/app_test/flutter_gallery_assets/logos/flutter_white/logo.png",
                  fit: BoxFit.contain,
                ),
        title: Text(widget.title),
      ),
      body: _DemoList(),
      bottomNavigationBar: _DebugBottomAppBar(),
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
                      .navigatorPushWithPageName("JSWidgetHomePage",themeData:themeData,mediaQueryData:mediaQueryData,iconThemeData:iconThemeData)),
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
                  content: Text('JSApp 重新加载完成，重新进入上面的JSFlutter UI Demo，即可看到界面更新！')),
            );
          },
        ),
        ListTile(
          title: Text('在此页面可以打开Safari浏览器-> 开发->模拟器。 然后点击JSFlutter UI Demo，可以在Safari调试JS'),
        ),
      ],
    );
  }
}

class _DebugBottomAppBar extends StatelessWidget {
  const _DebugBottomAppBar({this.color, this.fabLocation, this.shape});

  final Color color;
  final FloatingActionButtonLocation fabLocation;
  final NotchedShape shape;

  static final List<FloatingActionButtonLocation> kCenterLocations =
      <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> rowContents = <Widget>[
      IconButton(
        icon: const Icon(Icons.menu, semanticLabel: 'Show bottom sheet'),
        onPressed: () {},
      ),
    ];

    rowContents.addAll(<Widget>[
      IconButton(
        icon: const Icon(
          Icons.search,
          semanticLabel: 'show search action',
        ),
        onPressed: () {
          Scaffold.of(context).showSnackBar(
            const SnackBar(content: Text('This is a dummy search action.')),
          );
        },
      ),
      IconButton(
        icon: Icon(
          Theme.of(context).platform == TargetPlatform.iOS
              ? Icons.more_horiz
              : Icons.more_vert,
          semanticLabel: 'Show menu actions',
        ),
        onPressed: () {
          Scaffold.of(context).showSnackBar(
            const SnackBar(content: Text('This is a dummy menu action.')),
          );
        },
      ),
    ]);

    return BottomAppBar(
      color: color,
      child: Row(children: rowContents),
      shape: shape,
    );
  }
}



