import 'package:flutter/material.dart';
import 'mx_js_framework.dart';
import 'mx_js_flutter_common.dart';

///
/// Flutter push 一个使用MXFlutter框架JS编写的页面时，包装JSWidget。
///  *jsWidgetName: "jsWidgetName",在mxflutter_js/src/main.js  MyApp::createJSWidgetWithName 函数中使用
///  MyApp::createJSWidgetWithName 通过jsWidgetName来创建对应的JSWidget
///
///  '''
///      Navigator.push(
///          context,
///          MaterialPageRoute(
///              builder: (context) => MXJSPageWidget(
///                  jsWidgetName: "MXJSWidgetHomePage")));
///
///  '''
///
class MXJSPageWidget extends StatelessWidget {
  MXJSPageWidget({this.jsWidgetName, Key key}) {
    this.key = key??UniqueKey();
  }
  String jsWidgetName;
  Key key;

  Widget _jsWidgetChild;
  @override
  Widget build(BuildContext context) {

    if(_jsWidgetChild != null){
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