import 'package:flutter/material.dart';
import 'mx_js_flutter.dart';
import 'mx_js_flutter_common.dart';

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
// ignore: must_be_immutable
class MXJSPageWidget extends StatelessWidget {
  MXJSPageWidget({this.jsWidgetName, Key key}) {
    this.key = key ?? UniqueKey();
  }
  String jsWidgetName;
  Key key;

  Widget _jsWidgetChild;
  @override
  Widget build(BuildContext context) {
    if (_jsWidgetChild != null) {
      return _jsWidgetChild;
    }

    var mediaQueryData = MediaQuery.of(context);
    var themeData = Theme.of(context);
    var iconThemeData = IconTheme.of(context);

    MXJSLog.log(
        "'MXJSPageWidget::build': MXJSFlutter.getInstance().navigatorPushWithName: $jsWidgetName key:$key");

    _jsWidgetChild = MXJSFlutter.getInstance().navigatorPushWithName(
        jsWidgetName, key,
        themeData: themeData,
        mediaQueryData: mediaQueryData,
        iconThemeData: iconThemeData);

    return _jsWidgetChild;
  }
}
