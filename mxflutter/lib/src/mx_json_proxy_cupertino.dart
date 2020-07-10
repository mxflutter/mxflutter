//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'mx_json_to_dart.dart';
import 'mx_build_owner.dart';

/******************TODO List****************************/
/*
    // 1. onpress
    //   null
    
    2. Animation
      CupertinoPageTransition.primaryRouteAnimation
      CupertinoPageTransition.secondaryRouteAnimation

    3. BottomNavigationBarItem
      CupertinoTabBar.items

    4. ObstructingPreferredSizeWidget
      CupertinoPageScaffold.navigationBar    
*/
/******************TODO List****************************/

///把Widget初始化用到的基础类型如 List, ，
class MXProxyRegisterHelperCupertinoSeries {
  static Map<String, CreateJsonObjProxyFun> registerProxys() {
    Map<String, CreateJsonObjProxyFun> m = {};

    m.addAll(MXProxyCupertinoActivityIndicator.registerProxy());
    m.addAll(MXProxyCupertinoAlertDialog.registerProxy());
    m.addAll(MXProxyCupertinoButton.registerProxy());
    m.addAll(MXProxyCupertinoDialog.registerProxy());
    m.addAll(MXProxyCupertinoDialogAction.registerProxy());
    m.addAll(MXProxyCupertinoSlider.registerProxy());
    m.addAll(MXProxyCupertinoSwitch.registerProxy());
    m.addAll(MXProxyCupertinoPageTransition.registerProxy());
    m.addAll(MXProxyCupertinoFullscreenDialogTransition.registerProxy());
    m.addAll(MXProxyCupertinoNavigationBar.registerProxy());
    m.addAll(MXProxyCupertinoTabBar.registerProxy());
    m.addAll(MXProxyCupertinoPageScaffold.registerProxy());
    m.addAll(MXProxyCupertinoTabScaffold.registerProxy());
    m.addAll(MXProxyCupertinoTabView.registerProxy());
    m.addAll(MXProxyCupertinoPageRoute.registerProxy());
    return m;
  }
}

///CupertinoActivityIndicator
///
class MXProxyCupertinoActivityIndicator extends MXJsonObjProxy {
  static String regClassName = "CupertinoActivityIndicator";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyCupertinoActivityIndicator()..init(className: regClassName)
    };
  }

  ///*********************************************************************

  ///  const CupertinoActivityIndicator({
  ///    Key key,
  ///   this.animating = true,
  ///    this.radius = _kDefaultIndicatorRadius,
  /// })
  @override
  CupertinoActivityIndicator constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = CupertinoActivityIndicator(
      key: mxj2d(bo, jsonMap["key"]),
      animating: mxj2d(bo, jsonMap["animating"]),
      radius: mxj2d(bo, jsonMap["radius"])?.toDouble(),
    );
    return widget;
  }
}

///CupertinoAlertDialog
///
class MXProxyCupertinoAlertDialog extends MXJsonObjProxy {
  static String regClassName = "CupertinoAlertDialog";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyCupertinoAlertDialog()..init(className: regClassName)
    };
  }

  ///*********************************************************************

  ///  const CupertinoAlertDialog({
  ///    Key key,
  ///    this.title,
  ///    this.content,
  ///    this.actions = const <Widget>[],
  ///    this.scrollController,
  ///    this.actionScrollController,
  ///  })
  @override
  CupertinoAlertDialog constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = CupertinoAlertDialog(
      key: mxj2d(bo, jsonMap["key"]),
      title: mxj2d(bo, jsonMap["title"]),
      content: mxj2d(bo, jsonMap["content"]),
      actions: toListT<Widget>(
          mxj2d(bo, jsonMap["actions"], defaultValue: <Widget>[])),
      scrollController: mxj2d(bo, jsonMap["scrollController"]),
      actionScrollController: mxj2d(bo, jsonMap["actionScrollController"]),
    );
    return widget;
  }
}

///CupertinoButton
///
class MXProxyCupertinoButton extends MXJsonObjProxy {
  static String regClassName = "CupertinoButton";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyCupertinoButton()..init(className: regClassName)
    };
  }

  @override
  void init({String className}) {
    super.init(className: className);
    // registerConstructor(className: regClassName,constructorName:"filled",constructor:constructorFilled);
  }

  ///

  ///*********************************************************************

  ///  const CupertinoButton({
  ///    @required this.child,
  ///    this.padding,
  ///    this.color,
  ///    this.disabledColor,
  ///    this.minSize = 44.0,
  ///    this.pressedOpacity = 0.1,
  ///    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
  ///    @required this.onPressed,
  ///  })
  @override
  CupertinoButton constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = CupertinoButton(
      child: mxj2d(bo, jsonMap["child"]),
      padding: mxj2d(bo, jsonMap["padding"]),
      color: mxj2d(bo, jsonMap["color"]),
      disabledColor: mxj2d(bo, jsonMap["disabledColor"]),
      minSize: mxj2d(bo, jsonMap["minSize"], defaultValue: 44.0)?.toDouble(),
      pressedOpacity:
          mxj2d(bo, jsonMap["pressedOpacity"], defaultValue: 0.1)?.toDouble(),
      borderRadius: mxj2d(bo, jsonMap["borderRadius"]),
      onPressed: createVoidCallbackHandle(bo, jsonMap["onPressed"]),
    );
    return widget;
  }

  // CupertinoButton constructorFilled(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,  {BuildContext context}) {
  //   var widget = CupertinoButton.filled(
  //     child: mxj2d(bo,jsonMap["child"]),
  //     padding: mxj2d(bo,jsonMap["padding"]),
  //     disabledColor: mxj2d(bo,jsonMap["disabledColor"]),
  //     minSize: mxj2d(bo,jsonMap["minSize"],defaultValue: 44.0),
  //     pressedOpacity: mxj2d(bo,jsonMap["pressedOpacity"],defaultValue: 0.1),
  //     borderRadius: mxj2d(bo,jsonMap["borderRadius"]),
  //     onPressed: createVoidCallbackHandle(bo,jsonMap["onPressed"]),
  //   );
  //   return widget;
  // }

}

///CupertinoDialog
///
class MXProxyCupertinoDialog extends MXJsonObjProxy {
  static String regClassName = "CupertinoDialog";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyCupertinoDialog()..init(className: regClassName)
    };
  }

  ///*********************************************************************

  ///  const CupertinoDialog({
  ///    Key key,
  ///    this.child,
  ///  })
  @override
  // ignore: deprecated_member_use
  CupertinoDialog constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    // ignore: deprecated_member_use
    var widget = CupertinoDialog(
      key: mxj2d(bo, jsonMap["key"]),
      child: mxj2d(bo, jsonMap["child"]),
    );
    return widget;
  }
}

///CupertinoDialogAction
///
class MXProxyCupertinoDialogAction extends MXJsonObjProxy {
  static String regClassName = "CupertinoDialogAction";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyCupertinoDialogAction()..init(className: regClassName)
    };
  }

  ///*********************************************************************

  @override
  CupertinoDialogAction constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = CupertinoDialogAction(
      onPressed: createVoidCallbackHandle(bo, jsonMap["onPressed"]),
      isDefaultAction:
          mxj2d(bo, jsonMap["isDefaultAction"], defaultValue: false),
      isDestructiveAction:
          mxj2d(bo, jsonMap["isDestructiveAction"], defaultValue: false),
      textStyle: mxj2d(bo, jsonMap["textStyle"]),
      child: mxj2d(bo, jsonMap["child"]),
    );
    return widget;
  }
}

///CupertinoSlider
///
class MXProxyCupertinoSlider extends MXJsonObjProxy {
  static String regClassName = "CupertinoSlider";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyCupertinoSlider()..init(className: regClassName)
    };
  }

  ///*********************************************************************

  ///  const CupertinoSlider({
  ///   Key key,
  ///    @required this.value,
  ///    @required this.onChanged,
  ///    this.onChangeStart,
  ///    this.onChangeEnd,
  ///    this.min = 0.0,
  ///    this.max = 1.0,
  ///    this.divisions,
  ///    this.activeColor,
  ///  })
  @override
  CupertinoSlider constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = CupertinoSlider(
      key: mxj2d(bo, jsonMap["key"]),
      value: mxj2d(bo, jsonMap["value"]),
      onChanged: createValueGenericHandle<double>(bo, jsonMap["onChanged"]),
      onChangeStart:
          createValueGenericHandle<double>(bo, jsonMap["onChangeStart"]),
      onChangeEnd: createValueGenericHandle<double>(bo, jsonMap["onChangeEnd"]),
      min: mxj2d(bo, jsonMap["min"], defaultValue: 0.0)?.toDouble(),
      max: mxj2d(bo, jsonMap["max"], defaultValue: 1.0)?.toDouble(),
      divisions: mxj2d(bo, jsonMap["divisions"]),
      activeColor: mxj2d(bo, jsonMap["activeColor"]),
    );
    return widget;
  }
}

///CupertinoSwitch
///
class MXProxyCupertinoSwitch extends MXJsonObjProxy {
  static String regClassName = "CupertinoSwitch";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyCupertinoSwitch()..init(className: regClassName)
    };
  }

  ///*********************************************************************

  ///  const CupertinoSwitch({
  ///    Key key,
  ///    @required this.value,
  ///    @required this.onChanged,
  ///    this.activeColor,
  ///  })
  @override
  CupertinoSwitch constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = CupertinoSwitch(
      key: mxj2d(bo, jsonMap["key"]),
      value: mxj2d(bo, jsonMap["value"]),
      onChanged: createValueGenericHandle<bool>(bo, jsonMap["onChanged"]),
      activeColor: mxj2d(bo, jsonMap["activeColor"]),
    );
    return widget;
  }
}

///CupertinoPageTransition
///
class MXProxyCupertinoPageTransition extends MXJsonObjProxy {
  static String regClassName = "CupertinoPageTransition";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyCupertinoPageTransition()..init(className: regClassName)
    };
  }

  ///*********************************************************************

  ///  CupertinoPageTransition({
  ///    Key key,
  ///    @required Animation<double> primaryRouteAnimation,
  ///    @required Animation<double> secondaryRouteAnimation,
  ///    @required this.child,
  ///    @required bool linearTransition,
  ///  })
  @override
  CupertinoPageTransition constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = CupertinoPageTransition(
      key: mxj2d(bo, jsonMap["key"]),
      //TODO:animation
      primaryRouteAnimation: null,
      secondaryRouteAnimation: null,
      child: mxj2d(bo, jsonMap["child"]),
      linearTransition: mxj2d(bo, jsonMap["linearTransition"]),
    );
    return widget;
  }
}

///CupertinoFullscreenDialogTransition
class MXProxyCupertinoFullscreenDialogTransition extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "CupertinoFullscreenDialogTransition";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyCupertinoFullscreenDialogTransition()
        ..init(className: regClassName)
    };
  }

  @override
  CupertinoFullscreenDialogTransition constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = CupertinoFullscreenDialogTransition(
      key: mxj2d(bo, jsonMap["key"]),
      primaryRouteAnimation: mxj2d(bo, jsonMap["primaryRouteAnimation"]),
      secondaryRouteAnimation: mxj2d(bo, jsonMap["secondaryRouteAnimation"]),
      child: mxj2d(bo, jsonMap["child"]),
      linearTransition: mxj2d(bo, jsonMap["linearTransition"]),
    );
    return widget;
  }
}

///CupertinoNavigationBar
///
class MXProxyCupertinoNavigationBar extends MXJsonObjProxy {
  static String regClassName = "CupertinoNavigationBar";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyCupertinoNavigationBar()..init(className: regClassName)
    };
  }

  ///*********************************************************************

  ///  const CupertinoNavigationBar({
  ///    Key key,
  ///    this.leading,
  ///    this.automaticallyImplyLeading = true,
  ///    this.automaticallyImplyMiddle = true,
  ///    this.previousPageTitle,
  ///    this.middle,
  ///    this.trailing,
  ///    this.border = _kDefaultNavBarBorder,
  ///    this.backgroundColor,
  ///    this.padding,
  ///    this.actionsForegroundColor,
  ///    this.transitionBetweenRoutes = true,
  ///    this.heroTag = _defaultHeroTag,
  ///  })
  @override
  CupertinoNavigationBar constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    const Border defaultNavBarBorder = Border(
      bottom: BorderSide(
        color: Color(0x4C000000),
        width: 0.0, // One physical pixel.
        style: BorderStyle.solid,
      ),
    );

    var widget = CupertinoNavigationBar(
      key: mxj2d(bo, jsonMap["key"]),
      leading: mxj2d(bo, jsonMap["leading"]),
      automaticallyImplyLeading:
          mxj2d(bo, jsonMap["automaticallyImplyLeading"], defaultValue: true),
      automaticallyImplyMiddle:
          mxj2d(bo, jsonMap["automaticallyImplyMiddle"], defaultValue: true),
      previousPageTitle: mxj2d(bo, jsonMap["previousPageTitle"]),
      middle: mxj2d(bo, jsonMap["middle"]),
      trailing: mxj2d(bo, jsonMap["trailing"]),
      border: mxj2d(bo, jsonMap["border"], defaultValue: defaultNavBarBorder),
      backgroundColor: mxj2d(bo, jsonMap["backgroundColor"]),
      padding: mxj2d(bo, jsonMap["padding"]),
      actionsForegroundColor: mxj2d(bo, jsonMap["actionsForegroundColor"]),
      transitionBetweenRoutes:
          mxj2d(bo, jsonMap["transitionBetweenRoutes"], defaultValue: true),
      heroTag: mxj2d(bo, jsonMap["heroTag"]),
    );
    return widget;
  }
}

///CupertinoTabBar
///
class MXProxyCupertinoTabBar extends MXJsonObjProxy {
  static String regClassName = "CupertinoTabBar";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyCupertinoTabBar()..init(className: regClassName)
    };
  }

  ///*********************************************************************

  @override
  CupertinoTabBar constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    const Border defaultNavBarBorder = Border(
      bottom: BorderSide(
        color: Color(0x4C000000),
        width: 0.0, // One physical pixel.
        style: BorderStyle.solid,
      ),
    );

    var widget = CupertinoTabBar(
      key: mxj2d(bo, jsonMap["key"]),
      items: toListT<BottomNavigationBarItem>(mxj2d(bo, jsonMap["items"])),
      onTap: createValueGenericHandle<int>(bo, jsonMap["onTap"]),
      currentIndex: mxj2d(bo, jsonMap["currentIndex"], defaultValue: 0),
      backgroundColor: mxj2d(bo, jsonMap["backgroundColor"]),
      activeColor: mxj2d(bo, jsonMap["activeColor"]),
      inactiveColor: mxj2d(bo, jsonMap["inactiveColor"]),
      border: mxj2d(bo, jsonMap["border"], defaultValue: defaultNavBarBorder),
      iconSize: mxj2d(bo, jsonMap["iconSize"], defaultValue: 30.0)?.toDouble(),
    );
    return widget;
  }
}

///CupertinoPageScaffold
///
class MXProxyCupertinoPageScaffold extends MXJsonObjProxy {
  static String regClassName = "CupertinoPageScaffold";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyCupertinoPageScaffold()..init(className: regClassName)
    };
  }

  ///*********************************************************************

  @override
  CupertinoPageScaffold constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = CupertinoPageScaffold(
      key: mxj2d(bo, jsonMap["key"]),
      navigationBar: mxj2d(bo, jsonMap["navigationBar"]),
      backgroundColor: mxj2d(bo, jsonMap["backgroundColor"]),
      resizeToAvoidBottomInset:
          mxj2d(bo, jsonMap["resizeToAvoidBottomInset"], defaultValue: true),
      child: mxj2d(bo, jsonMap["child"]),
    );
    return widget;
  }
}

///CupertinoTabScaffold
///
class MXProxyCupertinoTabScaffold extends MXJsonObjProxy {
  static String regClassName = "CupertinoTabScaffold";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyCupertinoTabScaffold()..init(className: regClassName)
    };
  }

  ///*********************************************************************

  @override
  CupertinoTabScaffold constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = CupertinoTabScaffold(
      key: mxj2d(bo, jsonMap["key"]),
      tabBar: mxj2d(bo, jsonMap["tabBar"]),
      tabBuilder: (BuildContext context, int index) {
        List<Widget> children = mxj2d(bo, jsonMap["children"]);
        return children[index];
      },
    );
    return widget;
  }
}

///CupertinoTabView
///
class MXProxyCupertinoTabView extends MXJsonObjProxy {
  static String regClassName = "CupertinoTabView";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyCupertinoTabView()..init(className: regClassName)
    };
  }

  ///*********************************************************************

  @override
  CupertinoTabView constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = CupertinoTabView(
      key: mxj2d(bo, jsonMap["key"]),
      builder: (BuildContext context) {
        return mxj2d(bo, jsonMap["item"]);
      },
      defaultTitle: mxj2d(bo, jsonMap["defaultTitle"]),
      //TODO: routes
      routes: null,
      onGenerateRoute: null,
      onUnknownRoute: null,
      navigatorObservers: null,
    );
    return widget;
  }
}

///CupertinoPageRoute
///
class MXProxyCupertinoPageRoute extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "CupertinoPageRoute";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
      MXProxyCupertinoPageRoute()..init(className: regClassName)
    };
  }

  @override
  CupertinoPageRoute constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = CupertinoPageRoute(
      builder: (BuildContext context) {
        return (mxj2d(bo, jsonMap["child"], context: context));
      },
      settings: mxj2d(bo, jsonMap["settings"]),
      maintainState: mxj2d(bo, jsonMap["maintainState"], defaultValue: true),
      fullscreenDialog:
      mxj2d(bo, jsonMap["fullscreenDialog"], defaultValue: false),
    );
    return widget;
  }
}
