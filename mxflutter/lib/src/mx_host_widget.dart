import 'package:flutter/material.dart';
import 'mx_flutter.dart';
import 'mx_common.dart';

/// MXJSWidget包装了JSWidget，用于Flutter 展示一个使用MXFlutter框架编写的页面
///
///@param jsWidgetName: "jsWidgetName",在mxflutter_js_src/main.js  MyApp::createJSWidgetWithName 函数中使用, MyApp::createJSWidgetWithName 通过jsWidgetName来创建对应的JSWidget
///
/// '''dart
///
/// Scaffold(
///        appBar: AppBar(
///                  leading: FlutterLogo(colors: Colors.blue),
///                  title: Text('MXFlutter Demo'),
///                ) ,
///        body: MXJSWidget(jsWidgetName: "MXJSWidgetHomePage")
///        ）
///
/// '''
///
class MXJSWidget extends StatelessWidget {
  MXJSWidget({this.jsWidgetName, Key key}) : this.key = key ?? UniqueKey();
  final String jsWidgetName;
  final Key key;

  @override
  Widget build(BuildContext context) {
    MXJSLog.log(
        "'MXJSPageWidget::build': MXJSFlutter.getInstance().navigatorPushWithName: $jsWidgetName key:$key");

    return MXJSFlutter.getInstance().navigatorPushWithName(jsWidgetName, key);
  }
}

/// MXJSPageWidget包装了JSWidget，用于Flutter push一个使用MXFlutter框架编写的页面
///
///@param jsWidgetName: "jsWidgetName",在mxflutter_js_src/main.js  MyApp::createJSWidgetWithName 函数中使用, MyApp::createJSWidgetWithName 通过jsWidgetName来创建对应的JSWidget
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
class MXJSPageWidget extends MXJSWidget {
  MXJSPageWidget({String jsWidgetName, Key key})
      : super(jsWidgetName: jsWidgetName, key: key);
}
