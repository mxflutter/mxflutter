import 'package:flutter/material.dart';
import 'mx_json_to_dart.dart';
import 'mx_build_owner.dart';
import 'mx_json_proxy_basic_types.dart';
import 'dart:convert';


// TODO List
// 1、默认值是私有类的方法

///把Widget按分类注册，方便写代码，
///分类：Material/Layout/Text/(Assets.Images.icons)/input...
///参照了官网https://flutter.io/docs/development/ui/widgets
class MXProxyRegisterHelperMaterialSeries {

  static Map<String, CreateJsonObjProxyFun> registerProxys() {
    Map<String, CreateJsonObjProxyFun> m = {};

    m.addAll(MXProxyMaterialApp.registerProxy());
    m.addAll(MXProxyScaffold.registerProxy());
    m.addAll(MXProxyAppBar.registerProxy());
    m.addAll(MXProxyBottomAppBar.registerProxy());
    m.addAll(MXProxyBottomNavigationBar.registerProxy());

    /// Button
    m.addAll(MXProxyCloseButtonSeries.registerProxy());
    m.addAll(MXProxyRawMaterialButton.registerProxy());
    m.addAll(MXProxyButtonSeries.registerProxy());

    m.addAll(MXProxyIcon.registerProxy());
    m.addAll(MXProxyHero.registerProxy());
    m.addAll(MXProxyCard.registerProxy());

    m.addAll(MXProxyMergeSemantics.registerProxy());
    m.addAll(MXProxyPopupMenuItem.registerProxy());
    m.addAll(MXProxyFlexibleSpaceBar.registerProxy());

    m.addAll(MXProxyFloatingActionButtonLocationSeries.registerProxy());
    m.addAll(MXProxyRadio.registerProxy());
    m.addAll(MXProxySemantics.registerProxy());
    m.addAll(MXProxyCircleBorder.registerProxy());
    m.addAll(MXProxySafeArea.registerProxy());

    return m;
  }
}




///MaterialApp
///**@@@  1 替换类名
class MXProxyMaterialApp extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "MaterialApp";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxyMaterialApp()..init(className: regClassName)};
	}

	@override
	MaterialApp constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = MaterialApp(
			key: mxj2d(bo, jsonMap["key"]),
			navigatorKey: mxj2d(bo, jsonMap["navigatorKey"]),
			home: mxj2d(bo, jsonMap["home"]),
			routes: mxj2d(bo, jsonMap["routes"], defaultValue:const <String, WidgetBuilder>{}),
			initialRoute: mxj2d(bo, jsonMap["initialRoute"]),
			onGenerateRoute: mxj2d(bo, jsonMap["onGenerateRoute"]),
			onUnknownRoute: mxj2d(bo, jsonMap["onUnknownRoute"]),
			navigatorObservers: mxj2d(bo, jsonMap["navigatorObservers"], defaultValue:const <NavigatorObserver>[]),
			builder: mxj2d(bo, jsonMap["builder"]),
			title: mxj2d(bo, jsonMap["title"], defaultValue:''),
			onGenerateTitle: mxj2d(bo, jsonMap["onGenerateTitle"]),
			color: mxj2d(bo, jsonMap["color"]),
			theme: mxj2d(bo, jsonMap["theme"]),
			locale: mxj2d(bo, jsonMap["locale"]),
			localizationsDelegates: mxj2d(bo, jsonMap["localizationsDelegates"]),
			localeListResolutionCallback: mxj2d(bo, jsonMap["localeListResolutionCallback"]),
			localeResolutionCallback: mxj2d(bo, jsonMap["localeResolutionCallback"]),
			supportedLocales: mxj2d(bo, jsonMap["supportedLocales"], defaultValue: const <Locale>[Locale('en', 'US')]),
			debugShowMaterialGrid: mxj2d(bo, jsonMap["debugShowMaterialGrid"], defaultValue:false),
			showPerformanceOverlay: mxj2d(bo, jsonMap["showPerformanceOverlay"], defaultValue:false),
			checkerboardRasterCacheImages: mxj2d(bo, jsonMap["checkerboardRasterCacheImages"], defaultValue:false),
			checkerboardOffscreenLayers: mxj2d(bo, jsonMap["checkerboardOffscreenLayers"], defaultValue:false),
			showSemanticsDebugger: mxj2d(bo, jsonMap["showSemanticsDebugger"], defaultValue:false),
			debugShowCheckedModeBanner: mxj2d(bo, jsonMap["debugShowCheckedModeBanner"], defaultValue:true),
		);
		return widget;
	}
}



///Scaffold
class MXProxyScaffold extends MXJsonObjProxy {

  ///Dart类名 用于注册到转换器中
  static String regClassName = "Scaffold";
  ///工厂函数 用于延迟加载转换器
  static MXJsonObjProxy createProxy(){

    //替换类名
    var p = MXProxyScaffold();
    p.className = regClassName;
    return p;
  }

  ///把自己能处理的类注册到分发器中
  static  Map<String, CreateJsonObjProxyFun> registerProxy(){
    return {regClassName:createProxy};
  }

//  const Scaffold({
//    Key key,
//    this.appBar,
//    this.body,
//    this.floatingActionButton,
//    this.floatingActionButtonLocation,
//    this.floatingActionButtonAnimator,
//    this.persistentFooterButtons,
//    this.drawer,
//    this.endDrawer,
//    this.bottomNavigationBar,
//    this.bottomSheet,
//    this.backgroundColor,
//    this.resizeToAvoidBottomPadding = true,
//    this.primary = true,
//  })

  @override
  Scaffold constructor(MXJsonBuildOwner bo,Map<String, dynamic> jsonMap) {

    var widget = Scaffold(
      key: mxj2d(bo,jsonMap["key"]),
      appBar: mxj2d(bo,jsonMap["appBar"]),
      body: mxj2d(bo,jsonMap["body"]),
      floatingActionButton: mxj2d(bo,jsonMap["floatingActionButton"]),
      floatingActionButtonLocation: mxj2d(bo,jsonMap["floatingActionButtonLocation"]),
      floatingActionButtonAnimator: mxj2d(bo,jsonMap["floatingActionButtonAnimator"]),
      persistentFooterButtons: mxj2d(bo,jsonMap["persistentFooterButtons"]),

      drawer: mxj2d(bo,jsonMap["drawer"]),
      endDrawer: mxj2d(bo,jsonMap["endDrawer"]),
      bottomNavigationBar: mxj2d(bo,jsonMap["bottomNavigationBar"]),
      bottomSheet: mxj2d(bo,jsonMap["bottomSheet"]),

      backgroundColor: mxj2d(bo,jsonMap["backgroundColor"]),
      resizeToAvoidBottomPadding: mxj2d(bo,jsonMap["resizeToAvoidBottomPadding"],defaultValue: true),
      primary: mxj2d(bo,jsonMap["primary"],defaultValue: true),
    );

    return widget;
  }
}


//AppBar
//// "className": "AppBar",
///  "title": {
///    "className": "Text",
///    "data": "My Fancy Dress"
///  },
///  "actions": [
///    {
///      "className": "RaisedButton",
///      "onPressed": "onPressed",
///      "child": {
///      "className": "Text",
///      "data": "RaisedButton1"
///      }
///    },
///    {
///      "className": "RaisedButton",
///      "onPressed": "onPressed",
///      "child": {
///      "className": "Text",
///      "data": "RaisedButton2"
///      }
///    },
///    {
///      "className": "RaisedButton",
///      "onPressed": "onPressed",
///      "child": {
///      "className": "Text",
///      "data": "RaisedButton3"
///      }
///    }
///  ]
///
class MXProxyAppBar extends MXJsonObjProxy {

  static  Map<String, CreateJsonObjProxyFun> registerProxy(){

    ///**@@@  2 替换类名字符串
    final String regClassName1  = "AppBar";

    ///**@@@  3 替换类构造函数
    return {regClassName1: () => MXProxyAppBar()..init(className: regClassName1)};
  }

  @override
  AppBar constructor(MXJsonBuildOwner bo,Map<String, dynamic> jsonMap) {
    var widget = AppBar(
      key: mxj2d(bo, jsonMap["key"]),
      leading: mxj2d(bo, jsonMap["leading"]),
      automaticallyImplyLeading: mxj2d(bo, jsonMap["automaticallyImplyLeading"], defaultValue: true),
      title: mxj2d(bo, jsonMap["title"]),
      actions: toListT<Widget>(mxj2d(bo, jsonMap["actions"])),
      flexibleSpace: mxj2d(bo, jsonMap["flexibleSpace"]),
      bottom: mxj2d(bo, jsonMap["bottom"]),
      elevation: mxj2d(bo, jsonMap["elevation"], defaultValue: 4.0),
      backgroundColor: mxj2d(bo, jsonMap["backgroundColor"]),
      brightness: mxj2d(bo, jsonMap["brightness"]),
      iconTheme: mxj2d(bo, jsonMap["iconTheme"]),
      textTheme: mxj2d(bo, jsonMap["textTheme"]),
      primary: mxj2d(bo, jsonMap["primary"], defaultValue: true),
      centerTitle: mxj2d(bo, jsonMap["centerTitle"]),
      titleSpacing: mxj2d(bo, jsonMap["titleSpacing"], defaultValue: NavigationToolbar.kMiddleSpacing),
      toolbarOpacity: mxj2d(bo, jsonMap["toolbarOpacity"], defaultValue: 1.0),
      bottomOpacity: mxj2d(bo, jsonMap["bottomOpacity"], defaultValue: 1.0),
    );

    return widget;
  }
}

class MXProxyBottomAppBar extends MXJsonObjProxy {

  static  Map<String, CreateJsonObjProxyFun> registerProxy(){

    ///**@@@  2 替换类名字符串
    final String regClassName1  = "BottomAppBar";

    ///**@@@  3 替换类构造函数
    return {regClassName1: () => MXProxyBottomAppBar()..init(className: regClassName1)};
  }

  @override
  BottomAppBar constructor(MXJsonBuildOwner bo,Map<String, dynamic> jsonMap) {
    var widget = BottomAppBar (
      key: mxj2d(bo, jsonMap["key"]),
      color: mxj2d(bo, jsonMap["color"]),
      elevation: mxj2d(bo, jsonMap["elevation"], defaultValue: 8.0),
      shape: mxj2d(bo, jsonMap["shape"]),
      clipBehavior: MXClip.parse(mxj2d(bo, jsonMap["clipBehavior"]), defaultValue: Clip.none) ,
      notchMargin: mxj2d(bo, jsonMap["notchMargin"], defaultValue: 4.0),
      child: mxj2d(bo, jsonMap["child"]),
    );
    return widget;
  }
}

/// MXProxyBottomNavigationBar
///  "className": "BottomNavigationBar",
///  "items": [
///    {
///      "className": "BottomNavigationBarItem",
///      "icon": {
///        "className": "Icon",
///        "icon": {
///        "className": "IconData",
///        "codePoint": 123
///        }
///      },
///      "title": {
///        "className": "Text",
///        "data": "icon1",
///      }
///    },
///    {
///      "className": "BottomNavigationBarItem",
///      "icon": {
///        "className": "Icon",
///        "icon": {
///          "className": "IconData",
///          "codePoint": 345
///        }
///      },
///      "title": {
///        "className": "Text",
///        "data": "icon2",
///      }
///    },
///    {
///      "className": "BottomNavigationBarItem",
///      "icon": {
///        "className": "Icon",
///        "icon": {
///        "className": "IconData",
///        "codePoint": 5657
///       }
///      },
///      "title": {
///        "className": "Text",
///        "data": "icon3",
///      }
///     }
///    ]
class MXProxyBottomNavigationBar extends MXJsonObjProxy {

  static  Map<String, CreateJsonObjProxyFun> registerProxy(){

    ///**@@@  2 替换类名字符串
    final String regClassName1  = "BottomNavigationBar";

    ///**@@@  3 替换类构造函数
    return {regClassName1: () => MXProxyBottomNavigationBar()..init(className: regClassName1)};
  }

  @override
  BottomNavigationBar constructor(MXJsonBuildOwner bo,Map<String, dynamic> jsonMap) {
    var widget = BottomNavigationBar(
      key: mxj2d(bo, jsonMap["key"]),
      items: List<BottomNavigationBarItem>.from(mxj2d(bo, jsonMap["items"])),
      onTap: createOnTapHandle(bo, mxj2d(bo, jsonMap["onTap"])),
      currentIndex: mxj2d(bo, jsonMap["currentIndex"], defaultValue: 0),
      type: MXBottomNavigationBarType.parse(mxj2d(bo, jsonMap["type"])),
      fixedColor: mxj2d(bo, jsonMap["fixedColor"]),
      iconSize: mxj2d(bo, jsonMap["iconSize"], defaultValue: 24.0),
    );

    return widget;
  }

  ///生成ValueChanged<int> 闭包
  ValueChanged<int> createOnTapHandle(MXJsonBuildOwner bo, dynamic eventCallbackID) => createValueChangedIntHandle(bo, eventCallbackID);
}

class MXProxyTabBar extends MXJsonObjProxy {

  static  Map<String, CreateJsonObjProxyFun> registerProxy(){

    ///**@@@  2 替换类名字符串
    final String regClassName1  = "TabBar";

    ///**@@@  3 替换类构造函数
    return {regClassName1: () => MXProxyTabBar()..init(className: regClassName1)};
  }

  @override
  TabBar constructor(MXJsonBuildOwner bo,Map<String, dynamic> jsonMap) {
    var widget = TabBar (
      key: mxj2d(bo, jsonMap["key"]),
      tabs: List<Widget>.from(mxj2d(bo, jsonMap["tabs"])),
      controller: mxj2d(bo, jsonMap["controller"]),
      isScrollable: mxj2d(bo, jsonMap["isScrollable"], defaultValue: false),
      indicatorColor: mxj2d(bo, jsonMap["indicatorColor"]),
      indicatorWeight: mxj2d(bo, jsonMap["indicatorWeight"], defaultValue: 2.0),
      indicatorPadding: mxj2d(bo, jsonMap["indicatorPadding"], defaultValue: EdgeInsets.zero),
      indicator: mxj2d(bo, jsonMap["indicator"]),
      indicatorSize: MXTabBarIndicatorSize.parse(mxj2d(bo, jsonMap["indicatorSize"])),
      labelColor: mxj2d(bo, jsonMap["labelColor"]),
      labelStyle: mxj2d(bo, jsonMap["labelStyle"]),
      labelPadding: mxj2d(bo, jsonMap["labelPadding"]),
      unselectedLabelColor: mxj2d(bo, jsonMap["unselectedLabelColor"]),
      unselectedLabelStyle: mxj2d(bo, jsonMap["unselectedLabelStyle"]),
    );
    return widget;
  }
}



///BackButton系列,负责所有回退button的生成
class MXProxyCloseButtonSeries extends MXJsonObjProxy {

  ///**@@@  2 替换类名字符串
  static final  String regClassName1  = "CloseButton";
  static final String regClassName2  = "BackButton";
  static final String regClassName3  = "BackButtonIcon";


  ///静态接口,子类重写*********************************************
  ///把自己能处理的类注册到分发器中
  static  Map<String, CreateJsonObjProxyFun> registerProxy(){

    ///**@@@  3 替换类构造函数
    return {regClassName1: ()=>MXProxyCloseButtonSeries()..init(className: regClassName1),
      regClassName2: ()=>MXProxyCloseButtonSeries()..init(className: regClassName2),
      regClassName3: ()=>MXProxyCloseButtonSeries()..init(className: regClassName3)};
  }
  ///*********************************************************************

  @override
  void init({String className}){
    super.init(className: className);

    registerConstructor(className: regClassName1,constructor:constructorCloseButton );
    registerConstructor(className: regClassName2,constructor:constructorBackButton );
    registerConstructor(className: regClassName3,constructor:constructorBackButtonIcon );

  }


  Widget constructorCloseButton(MXJsonBuildOwner bo,Map<String, dynamic> jsonMap) {

    var obj = CloseButton(key: mxj2d(bo,jsonMap["key"]));
    return obj;

  }

  Widget constructorBackButton(MXJsonBuildOwner bo,Map<String, dynamic> jsonMap) {

    var obj = BackButton(key: mxj2d(bo,jsonMap["key"]));
    return obj;
  }

  Widget constructorBackButtonIcon(MXJsonBuildOwner bo,Map<String, dynamic> jsonMap) {
    var obj = BackButtonIcon(key: mxj2d(bo,jsonMap["key"]));
    return obj;
  }
}



///RawMaterialButton
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyRawMaterialButton extends MXJsonObjProxy {

  ///Dart类名 用于注册到转换器中
  ///**@@@ 拷贝生成其他类  2 替换类名字符串
  static String regClassName = "RawMaterialButton";
  ///工厂函数 用于延迟加载转换器
  static MXJsonObjProxy createProxy(){

    ///**@@@@ 拷贝生成其他类  3 替换类构建函数
    var p = MXProxyRawMaterialButton();
    p.className = regClassName;
    return p;
  }

  ///把自己能处理的类注册到分发器中
  static  Map<String, CreateJsonObjProxyFun> registerProxy(){
    return {regClassName:createProxy};
  }

//  class RawMaterialButton extends StatefulWidget {
//  /// Create a button based on [Semantics], [Material], and [InkWell] widgets.
//  ///
//  /// The [shape], [elevation], [padding], [constraints], and [clipBehavior]
//  /// arguments must not be null.
//  const RawMaterialButton({
//  Key key,
//  @required this.onPressed,
//  this.onHighlightChanged,
//  this.textStyle,
//  this.fillColor,
//  this.highlightColor,
//  this.splashColor,
//  this.elevation = 2.0,
//  this.highlightElevation = 8.0,
//  this.disabledElevation = 0.0,
//  this.padding = EdgeInsets.zero,
//  this.constraints = const BoxConstraints(minWidth: 88.0, minHeight: 36.0),
//  this.shape = const RoundedRectangleBorder(),
//  this.animationDuration = kThemeChangeDuration,
//  this.clipBehavior = Clip.none,
//  MaterialTapTargetSize materialTapTargetSize,
//  this.child,
//  })

  @override
  RawMaterialButton constructor(MXJsonBuildOwner bo,Map<String, dynamic> jsonMap) {

    var widget = RawMaterialButton(
      key: mxj2d(bo,jsonMap["key"]),
      onPressed: createVoidCallbackHandle(bo, mxj2d(bo,jsonMap["onPressed"])),
      onHighlightChanged:createStateChangedHandle(mxj2d(bo,jsonMap["onPressed"])),

      textStyle: mxj2d(bo,jsonMap["textStyle"]),
      fillColor: mxj2d(bo,jsonMap["fillColor"]),
      highlightColor: mxj2d(bo,jsonMap["highlightColor"]),
      splashColor: mxj2d(bo,jsonMap["splashColor"]),
      elevation: mxj2d(bo,jsonMap["elevation"], defaultValue: 2.0),
      highlightElevation: mxj2d(bo,jsonMap["highlightElevation"],defaultValue: 8.0),
      disabledElevation: mxj2d(bo,jsonMap["disabledElevation"],defaultValue: 0.0),
      padding: mxj2d(bo,jsonMap["padding"],defaultValue: EdgeInsets.zero),

      constraints: mxj2d(bo,jsonMap["constraints"],defaultValue: const BoxConstraints(minWidth: 88.0, minHeight: 36.0)),
      shape: mxj2d(bo,jsonMap["shape"],defaultValue: const RoundedRectangleBorder()),
      animationDuration: mxj2d(bo,jsonMap["animationDuration"],defaultValue: kThemeChangeDuration),
      clipBehavior: MXClip.parse(mxj2d(bo,jsonMap["clipBehavior"]), defaultValue: Clip.none),
      materialTapTargetSize: mxj2d(bo,jsonMap["materialTapTargetSize"]),
      child: mxj2d(bo,jsonMap["child"]),
    );

    return widget;
  }

  ValueChanged<bool> createStateChangedHandle(dynamic eventCallbackID){

    ValueChanged<bool> cb = (bool b){

    };

    return cb;
  }
}

///MaterialButton
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyMaterialButton extends MXJsonObjProxy {

  ///Dart类名 用于注册到转换器中
  ///**@@@ 拷贝生成其他类  2 替换类名字符串
  static String regClassName = "MaterialButton";
  ///工厂函数 用于延迟加载转换器
  static MXJsonObjProxy createProxy(){

    ///**@@@@ 拷贝生成其他类  3 替换类构建函数
    var p = MXProxyMaterialButton();
    p.className = regClassName;
    return p;
  }

  ///把自己能处理的类注册到分发器中
  static  Map<String, CreateJsonObjProxyFun> registerProxy(){
    return {regClassName:createProxy};
  }

//  const MaterialButton({
//    Key key,
//    @required this.onPressed,
//    this.onHighlightChanged,
//    this.textTheme,
//    this.textColor,
//    this.disabledTextColor,
//    this.color,
//    this.disabledColor,
//    this.highlightColor,
//    this.splashColor,
//    this.colorBrightness,
//    this.elevation,
//    this.highlightElevation,
//    this.disabledElevation,
//    this.padding,
//    this.shape,
//    this.clipBehavior = Clip.none,
//    this.materialTapTargetSize,
//    this.animationDuration,
//    this.minWidth,
//    this.height,
//    this.child,
//  })

  ///**@@@@ 拷贝生成其他类  4 替换类名
  @override
  MaterialButton constructor(MXJsonBuildOwner bo,Map<String, dynamic> jsonMap) {

    var widget = MaterialButton(
      key: mxj2d(bo,jsonMap["key"]),
      onPressed: createEventHandle(bo,mxj2d(bo,jsonMap["onPressed"])),
      onHighlightChanged:createStateChangedHandle(bo,mxj2d(bo,jsonMap["onPressed"])),

      textTheme: mxj2d(bo,jsonMap["textTheme"]),
      textColor: mxj2d(bo,jsonMap["textColor"]),
      disabledTextColor: mxj2d(bo,jsonMap["disabledTextColor"]),
      color: mxj2d(bo,jsonMap["color"]),
      disabledColor: mxj2d(bo,jsonMap["disabledColor"]),

      highlightColor: mxj2d(bo,jsonMap["highlightColor"]),
      splashColor: mxj2d(bo,jsonMap["splashColor"]),
      colorBrightness: mxj2d(bo,jsonMap["colorBrightness"]),
      elevation: mxj2d(bo,jsonMap["elevation"]),
      highlightElevation: mxj2d(bo,jsonMap["highlightElevation"]),

      disabledElevation: mxj2d(bo,jsonMap["disabledElevation"]),
      padding: mxj2d(bo,jsonMap["padding"]),
      shape: mxj2d(bo,jsonMap["shape"]),
      clipBehavior: MXClip.parse(mxj2d(bo,jsonMap["clipBehavior"]), defaultValue: Clip.none),
      materialTapTargetSize: mxj2d(bo,jsonMap["materialTapTargetSize"]),

      animationDuration: mxj2d(bo,jsonMap["animationDuration"]),
      minWidth: mxj2d(bo,jsonMap["minWidth"]),
      height: mxj2d(bo,jsonMap["height"]),
      child: mxj2d(bo,jsonMap["child"]),

    );

    return widget;
  }

  ///生成VoidCallback 闭包
  VoidCallback createEventHandle(MXJsonBuildOwner bo,dynamic eventCallbackID){

    return createVoidCallbackHandle(bo, eventCallbackID);
  }

  ///生成ValueChanged<bool> 闭包
  ValueChanged<bool> createStateChangedHandle(MXJsonBuildOwner bo,dynamic eventCallbackID){
   return createValueChangedBoolHandle(bo, eventCallbackID);
  }
}

///常用Button系列类
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyButtonSeries extends MXJsonObjProxy {
  static final String regClassName1 = "FlatButton";
  static final String regClassName2 = "RaisedButton";
  static final String regClassName3 = "FloatingActionButton";
  static final String regClassName4 = "IconButton";
  static final String regClassName5 = "DropdownButton";
  static final String regClassName6 = "PopupMenuButton";
  static final String regClassName7 = "ButtonBar";

  ///**@@@  2 替换类构造函数
  static  Map<String, CreateJsonObjProxyFun> registerProxy() => {
    regClassName1: () => MXProxyButtonSeries()..init(className: regClassName1),
    regClassName2: () => MXProxyButtonSeries()..init(className: regClassName2),
    regClassName3: () => MXProxyButtonSeries()..init(className: regClassName3),
    regClassName4: () => MXProxyButtonSeries()..init(className: regClassName4),
    regClassName5: () => MXProxyButtonSeries()..init(className: regClassName5),
    regClassName6: () => MXProxyButtonSeries()..init(className: regClassName6),
    regClassName7: () => MXProxyButtonSeries()..init(className: regClassName7),
  };

  ///*********************************************************************

  @override
  void init({String className}){
    super.init(className: className);

    registerConstructor(className: regClassName1, constructor: constructorFlatButton);
    registerConstructor(className: regClassName2, constructor: constructorRaisedButton);
    registerConstructor(className: regClassName3, constructor: constructorFloatingActionButton);
    registerConstructor(className: regClassName4, constructor: constructorIconButton);
    registerConstructor(className: regClassName5, constructor: constructorDropdownButton);
    registerConstructor(className: regClassName6, constructor: constructorPopupMenuButton);
    registerConstructor(className: regClassName7, constructor: constructorButtonBar);

  }

  Widget constructorFlatButton(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) =>
      FlatButton(
        key: mxj2d(bo, jsonMap["key"]),
        onPressed: createEventHandle(bo, mxj2d(bo,jsonMap["onPressed"])),
        onHighlightChanged:createStateChangedHandle(bo, mxj2d(bo,jsonMap["onHighlightChanged"])),
        textTheme: mxj2d(bo, jsonMap["textTheme"]),
        textColor: mxj2d(bo, jsonMap["textColor"]),
        disabledTextColor: mxj2d(bo, jsonMap["disabledTextColor"]),
        color: mxj2d(bo, jsonMap["color"]),
        disabledColor: mxj2d(bo, jsonMap["disabledColor"]),
        highlightColor: mxj2d(bo, jsonMap["highlightColor"]),
        splashColor: mxj2d(bo, jsonMap["splashColor"]),
        colorBrightness: mxj2d(bo, jsonMap["colorBrightness"]),
        padding: mxj2d(bo, jsonMap["padding"]),
        shape: mxj2d(bo, jsonMap["shape"]),
        clipBehavior: MXClip.parse(mxj2d(bo, jsonMap["clipBehavior"]), defaultValue: Clip.none),
        materialTapTargetSize: mxj2d(bo, jsonMap["materialTapTargetSize"]),
        child: mxj2d(bo, jsonMap["child"])
      );

  Widget constructorRaisedButton(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) =>
      RaisedButton(
        key: mxj2d(bo, jsonMap["key"]),
        onPressed: createEventHandle(bo, mxj2d(bo,jsonMap["onPressed"])),
        onHighlightChanged:createStateChangedHandle(bo, mxj2d(bo,jsonMap["onHighlightChanged"])),
        textTheme: mxj2d(bo, jsonMap["textTheme"]),
        textColor: mxj2d(bo, jsonMap["textColor"]),
        disabledTextColor: mxj2d(bo, jsonMap["disabledTextColor"]),
        color: mxj2d(bo, jsonMap["color"]),
        disabledColor: mxj2d(bo, jsonMap["disabledColor"]),
        highlightColor: mxj2d(bo, jsonMap["highlightColor"]),
        splashColor: mxj2d(bo, jsonMap["splashColor"]),
        colorBrightness: mxj2d(bo, jsonMap["colorBrightness"]),
        elevation: mxj2d(bo, jsonMap["elevation"]),
        highlightElevation: mxj2d(bo, jsonMap["highlightElevation"]),
        disabledElevation: mxj2d(bo, jsonMap["disabledElevation"]),
        padding: mxj2d(bo, jsonMap["padding"]),
        shape: mxj2d(bo, jsonMap["shape"]),
        clipBehavior: MXClip.parse(mxj2d(bo, jsonMap["clipBehavior"]), defaultValue: Clip.none),
        materialTapTargetSize: mxj2d(bo, jsonMap["materialTapTargetSize"]),
        animationDuration: mxj2d(bo, jsonMap["animationDuration"]),
        child: mxj2d(bo, jsonMap["child"]),
      );

  Widget constructorFloatingActionButton(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) =>
      FloatingActionButton(
        key: mxj2d(bo, jsonMap["key"]),
        child: mxj2d(bo, jsonMap["child"]),
        tooltip: mxj2d(bo, jsonMap["tooltip"]),
        foregroundColor: mxj2d(bo, jsonMap["foregroundColor"]),
        backgroundColor: mxj2d(bo, jsonMap["backgroundColor"]),
        heroTag: mxj2d(bo, jsonMap["heroTag"]),   // TODO defaultValue
        elevation: mxj2d(bo, jsonMap["elevation"], defaultValue: 6.0),
        highlightElevation: mxj2d(bo, jsonMap["highlightElevation"], defaultValue: 12.0),
        onPressed: createEventHandle(bo, mxj2d(bo,jsonMap["onPressed"])),
        mini: mxj2d(bo, jsonMap["mini"], defaultValue: false),
        shape: mxj2d(bo, jsonMap["shape"], defaultValue: const CircleBorder()),
        clipBehavior: mxj2d(bo, jsonMap["clipBehavior"], defaultValue: Clip.none),
        materialTapTargetSize: mxj2d(bo, jsonMap["materialTapTargetSize"]),
        isExtended: mxj2d(bo, jsonMap["isExtended"], defaultValue: false),
      );

  Widget constructorIconButton(MXJsonBuildOwner bo,Map<String, dynamic> jsonMap) =>
      IconButton(
        key: mxj2d(bo, jsonMap["key"]),
        iconSize: mxj2d(bo, jsonMap["iconSize"], defaultValue: 24.0),
        padding: mxj2d(bo, jsonMap["padding"], defaultValue: const EdgeInsets.all(8.0)),
        alignment: mxj2d(bo, jsonMap["alignment"], defaultValue: Alignment.center),
        icon: mxj2d(bo, jsonMap["icon"]),
        color: mxj2d(bo, jsonMap["color"]),
        highlightColor: mxj2d(bo, jsonMap["highlightColor"]),
        splashColor: mxj2d(bo, jsonMap["splashColor"]),
        disabledColor: mxj2d(bo, jsonMap["disabledColor"]),
        onPressed: createEventHandle(bo, mxj2d(bo,jsonMap["onPressed"])),
        tooltip: mxj2d(bo, jsonMap["tooltip"]),
      );

  Widget constructorDropdownButton(MXJsonBuildOwner bo,Map<String, dynamic> jsonMap) =>
      DropdownButton(
        key: mxj2d(bo, jsonMap["key"]),
        items: mxj2d(bo, jsonMap["items"]),
        value: mxj2d(bo, jsonMap["value"]),
        hint: mxj2d(bo, jsonMap["hint"]),
        disabledHint: mxj2d(bo, jsonMap["disabledHint"]),
        onChanged: createValueChangedGenericHandle(bo, mxj2d(bo, jsonMap["onChanged"])),
        elevation: mxj2d(bo, jsonMap["elevation"], defaultValue: 8),
        style: mxj2d(bo, jsonMap["style"]),
        iconSize: mxj2d(bo, jsonMap["iconSize"], defaultValue: 24.0),
        isDense: mxj2d(bo, jsonMap["isDense"], defaultValue: false),
        isExpanded: mxj2d(bo, jsonMap["isExpanded"], defaultValue: false),
      );

  Widget constructorPopupMenuButton(MXJsonBuildOwner bo,Map<String, dynamic> jsonMap) =>
      PopupMenuButton(
        key: mxj2d(bo, jsonMap["key"]),
        itemBuilder: (BuildContext context) {
          return toListT<PopupMenuEntry>(mxj2d(bo, jsonMap["items"]));
        },
        initialValue: mxj2d(bo, jsonMap["initialValue"]),
        onSelected: createPopMenuItemSelectedHandle(bo, mxj2d(bo, jsonMap["onSelected"])),
        ///TODO 此处泛型是否可以改写成下面这种形式呢？
//        onSelected: (dynamic b) {
//          PopupMenuItemSelected<dynamic> cb = (dynamic b) {
//            bo.eventCallback(jsonMap["onSelected"], p:b);
//          };
//          return cb;
//        },
        onCanceled: () {
          PopupMenuCanceled cb = () {
            bo.eventCallback(jsonMap["onCanceled"]);
          };
          return cb;
        },
        tooltip: mxj2d(bo, jsonMap["tooltip"]),
        elevation: mxj2d(bo, jsonMap["elevation"], defaultValue: 8.0),
        padding: mxj2d(bo, jsonMap["padding"], defaultValue: const EdgeInsets.all(8.0)),
        child: mxj2d(bo, jsonMap["child"]),
        icon: mxj2d(bo, jsonMap["icon"]),
        offset: mxj2d(bo, jsonMap["offset"], defaultValue: Offset.zero),
      );

  Widget constructorButtonBar(MXJsonBuildOwner bo,Map<String, dynamic> jsonMap) =>
      ButtonBar(
        key: mxj2d(bo, jsonMap["key"]),
        alignment: mxj2d(bo, jsonMap["alignment"], defaultValue: MainAxisAlignment.end),
        mainAxisSize: mxj2d(bo, jsonMap["mainAxisSize"], defaultValue: MainAxisSize.max),
        children: mxj2d(bo, jsonMap["children"], defaultValue: const <Widget>[]),
      );

  ///生成VoidCallback 闭包
  VoidCallback createEventHandle(MXJsonBuildOwner bo, dynamic eventCallbackID) => createVoidCallbackHandle(bo, eventCallbackID);

  ///生成ValueChanged<bool> 闭包
  ValueChanged<bool> createStateChangedHandle(MXJsonBuildOwner bo, dynamic eventCallbackID) => createValueChangedBoolHandle(bo, eventCallbackID);

  ///生成ValueChanged<T> 闭包
  ValueChanged<T> createValueChangedGenericHandle<T>(MXJsonBuildOwner bo, dynamic eventCallbackID) => createValueGenericHandle(bo, eventCallbackID);

  ///生成PopupMenuItemSelected<T>闭包
  PopupMenuItemSelected<T> createPopMenuItemSelectedHandle<T>(MXJsonBuildOwner bo, dynamic eventCallbackID) {
    PopupMenuItemSelected<T> cb = (T b) {
      bo.eventCallback(eventCallbackID, p:b);
    };

    return cb;
  }
}


class MXProxyIcon extends MXJsonObjProxy {

  static  Map<String, CreateJsonObjProxyFun> registerProxy(){

    ///**@@@  2 替换类名字符串
    final String regClassName1  = "Icon";

    ///**@@@  3 替换类构造函数
    return {regClassName1: () => MXProxyIcon()..init(className: regClassName1)};
  }

  @override
  Icon constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = Icon(
      mxj2d(bo, jsonMap["icon"]),
      key: mxj2d(bo, jsonMap["key"]),
      size: mxj2d(bo, jsonMap["size"]),
      color: mxj2d(bo, jsonMap["color"]),
      semanticLabel: mxj2d(bo, jsonMap["semanticLabel"]),
      textDirection: mxj2d(bo, jsonMap["textDirection"]),
    );

    return widget;
  }
}

class MXProxyHero extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "Hero";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxyHero()..init(className: regClassName)};
	}

	@override
	Hero constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = Hero(
			key: mxj2d(bo, jsonMap["key"]),
			tag: mxj2d(bo, jsonMap["tag"]),
			createRectTween: mxj2d(bo, jsonMap["createRectTween"]),
			flightShuttleBuilder: mxj2d(bo, jsonMap["flightShuttleBuilder"]),
			placeholderBuilder: mxj2d(bo, jsonMap["placeholderBuilder"]),
			transitionOnUserGestures: mxj2d(bo, jsonMap["transitionOnUserGestures"], defaultValue:false),
			child: mxj2d(bo, jsonMap["child"]),
		);
		return widget;
	}
}

class MXProxyCard extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "Card";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxyCard()..init(className: regClassName)};
	}

	@override
	Card constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = Card(
			key: mxj2d(bo, jsonMap["key"]),
			color: mxj2d(bo, jsonMap["color"]),
			elevation: mxj2d(bo, jsonMap["elevation"]),
			shape: mxj2d(bo, jsonMap["shape"]),
			margin: mxj2d(bo, jsonMap["margin"], defaultValue:const EdgeInsets.all(4.0)),
			clipBehavior: mxj2d(bo, jsonMap["clipBehavior"], defaultValue:Clip.none),
			child: mxj2d(bo, jsonMap["child"]),
			semanticContainer: mxj2d(bo, jsonMap["semanticContainer"], defaultValue:true),
		);
		return widget;
	}
}

class MXProxyMergeSemantics extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "MergeSemantics";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxyMergeSemantics()..init(className: regClassName)};
	}

	@override
	MergeSemantics constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = MergeSemantics(
			key: mxj2d(bo, jsonMap["key"]),
      child: mxj2d(bo, jsonMap["child"]),
		);
		return widget;
	}
}

class MXProxyPopupMenuItem extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "PopupMenuItem";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxyPopupMenuItem()..init(className: regClassName)};
	}

	@override
	PopupMenuItem constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = PopupMenuItem(
			key: mxj2d(bo, jsonMap["key"]),
			value: mxj2d(bo, jsonMap["value"]),
			enabled: mxj2d(bo, jsonMap["enabled"], defaultValue:true),
			height: mxj2d(bo, jsonMap["height"], defaultValue:48.0),
			child: mxj2d(bo, jsonMap["child"]),
		);
		return widget;
	}
}

class MXProxyFlexibleSpaceBar extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "FlexibleSpaceBar";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxyFlexibleSpaceBar()..init(className: regClassName)};
	}

	@override
	FlexibleSpaceBar constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = FlexibleSpaceBar(
			key: mxj2d(bo, jsonMap["key"]),
			title: mxj2d(bo, jsonMap["title"]),
			background: mxj2d(bo, jsonMap["background"]),
			centerTitle: mxj2d(bo, jsonMap["centerTitle"]),
			collapseMode: mxj2d(bo, jsonMap["collapseMode"], defaultValue:CollapseMode.parallax),
		);
		return widget;
	}
}

///FloatingActionButtonLocation系列,负责所有回退button的生成
class MXProxyFloatingActionButtonLocationSeries extends MXJsonObjProxy {

  ///**@@@  2 替换类名字符串
  static final  String regClassName1  = "FloatingActionButtonLocation.endDocked";
  static final String regClassName2  = "FloatingActionButtonLocation.centerDocked";
  static final String regClassName3  = "FloatingActionButtonLocation.endFloat";
  static final String regClassName4  = "FloatingActionButtonLocation.centerFloat";
  static final String regClassName5  = "FloatingActionButtonLocation";


  ///静态接口,子类重写*********************************************
  ///把自己能处理的类注册到分发器中
  static  Map<String, CreateJsonObjProxyFun> registerProxy(){

    ///**@@@  3 替换类构造函数
    return {regClassName1: ()=>MXProxyFloatingActionButtonLocationSeries()..init(className: regClassName1),
      regClassName2: ()=>MXProxyFloatingActionButtonLocationSeries()..init(className: regClassName2),
      regClassName3: ()=>MXProxyFloatingActionButtonLocationSeries()..init(className: regClassName3),
      regClassName4: ()=>MXProxyFloatingActionButtonLocationSeries()..init(className: regClassName4),
      regClassName5: ()=>MXProxyFloatingActionButtonLocationSeries()..init(className: regClassName5)};
  }
  ///*********************************************************************

  @override
  void init({String className}){
    super.init(className: className);

    registerConstructor(className: regClassName1,constructor:constructorEndDocked );
    registerConstructor(className: regClassName2,constructor:constructorCenterDocked );
    registerConstructor(className: regClassName3,constructor:constructorEndFloat );
    registerConstructor(className: regClassName4,constructor:constructorCenterFloat );
    registerConstructor(className: regClassName5,constructor:constructorNormal );

  }


  FloatingActionButtonLocation constructorEndDocked(MXJsonBuildOwner bo,Map<String, dynamic> jsonMap) {
    return FloatingActionButtonLocation.endDocked;
  }

  FloatingActionButtonLocation constructorCenterDocked(MXJsonBuildOwner bo,Map<String, dynamic> jsonMap) {
    return FloatingActionButtonLocation.centerDocked;
  }

  FloatingActionButtonLocation constructorEndFloat(MXJsonBuildOwner bo,Map<String, dynamic> jsonMap) {
    return FloatingActionButtonLocation.endFloat;
  }

  FloatingActionButtonLocation constructorCenterFloat(MXJsonBuildOwner bo,Map<String, dynamic> jsonMap) {
    return FloatingActionButtonLocation.centerFloat;
  }

  FloatingActionButtonLocation constructorNormal(MXJsonBuildOwner bo,Map<String, dynamic> jsonMap) {
    MXFloatingActionButtonLocation mxLocation = MXFloatingActionButtonLocation(
      offset: mxj2d(bo, jsonMap["offset"], defaultValue: Offset.zero),
    );
    return mxLocation;
  }
}

class MXFloatingActionButtonLocation implements FloatingActionButtonLocation {
  const MXFloatingActionButtonLocation({
    this.offset = Offset.zero,
  });

  final Offset offset;

  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry){
    return this.offset;
  }
}

class MXProxyRadio extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "Radio";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxyRadio()..init(className: regClassName)};
	}

	@override
	Radio constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {

    //都转成字符串，便于Radio 比较和回传
    var value = json.encode(jsonMap["value"]);
    var groupValue = json.encode(jsonMap["groupValue"]);

		var widget = Radio(
			key: mxj2d(bo, jsonMap["key"]),
			value: value,
			groupValue:  groupValue,
			onChanged: createValueChangedDynamicHandle(bo, mxj2d(bo,jsonMap["onChanged"])),
			activeColor: mxj2d(bo, jsonMap["activeColor"]),
			materialTapTargetSize: mxj2d(bo, jsonMap["materialTapTargetSize"]),
		);
		return widget;
	}
}

class MXProxySemantics extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "Semantics";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxySemantics()..init(className: regClassName)};
	}

	@override
	Semantics constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = Semantics(
			key: mxj2d(bo, jsonMap["key"]),
			child: mxj2d(bo, jsonMap["child"]),
			container: mxj2d(bo, jsonMap["container"], defaultValue:false),
			explicitChildNodes: mxj2d(bo, jsonMap["explicitChildNodes"], defaultValue:false),
			excludeSemantics: mxj2d(bo, jsonMap["excludeSemantics"], defaultValue:false),
			enabled: mxj2d(bo, jsonMap["enabled"]),
			checked: mxj2d(bo, jsonMap["checked"]),
			selected: mxj2d(bo, jsonMap["selected"]),
			toggled: mxj2d(bo, jsonMap["toggled"]),
			button: mxj2d(bo, jsonMap["button"]),
			header: mxj2d(bo, jsonMap["header"]),
			textField: mxj2d(bo, jsonMap["textField"]),
			focused: mxj2d(bo, jsonMap["focused"]),
			inMutuallyExclusiveGroup: mxj2d(bo, jsonMap["inMutuallyExclusiveGroup"]),
			obscured: mxj2d(bo, jsonMap["obscured"]),
			scopesRoute: mxj2d(bo, jsonMap["scopesRoute"]),
			namesRoute: mxj2d(bo, jsonMap["namesRoute"]),
			hidden: mxj2d(bo, jsonMap["hidden"]),
			image: mxj2d(bo, jsonMap["image"]),
			liveRegion: mxj2d(bo, jsonMap["liveRegion"]),
			label: mxj2d(bo, jsonMap["label"]),
			value: mxj2d(bo, jsonMap["value"]),
			increasedValue: mxj2d(bo, jsonMap["increasedValue"]),
			decreasedValue: mxj2d(bo, jsonMap["decreasedValue"]),
			hint: mxj2d(bo, jsonMap["hint"]),
			onTapHint: mxj2d(bo, jsonMap["onTapHint"]),
			onLongPressHint: mxj2d(bo, jsonMap["onLongPressHint"]),
			textDirection: mxj2d(bo, jsonMap["textDirection"]),
			sortKey: mxj2d(bo, jsonMap["sortKey"]),
			onTap: mxj2d(bo, jsonMap["onTap"]),
			onLongPress: mxj2d(bo, jsonMap["onLongPress"]),
			onScrollLeft: mxj2d(bo, jsonMap["onScrollLeft"]),
			onScrollRight: mxj2d(bo, jsonMap["onScrollRight"]),
			onScrollUp: mxj2d(bo, jsonMap["onScrollUp"]),
			onScrollDown: mxj2d(bo, jsonMap["onScrollDown"]),
			onIncrease: mxj2d(bo, jsonMap["onIncrease"]),
			onDecrease: mxj2d(bo, jsonMap["onDecrease"]),
			onCopy: mxj2d(bo, jsonMap["onCopy"]),
			onCut: mxj2d(bo, jsonMap["onCut"]),
			onPaste: mxj2d(bo, jsonMap["onPaste"]),
			onDismiss: mxj2d(bo, jsonMap["onDismiss"]),
			onMoveCursorForwardByCharacter: mxj2d(bo, jsonMap["onMoveCursorForwardByCharacter"]),
			onMoveCursorBackwardByCharacter: mxj2d(bo, jsonMap["onMoveCursorBackwardByCharacter"]),
			onSetSelection: mxj2d(bo, jsonMap["onSetSelection"]),
			onDidGainAccessibilityFocus: mxj2d(bo, jsonMap["onDidGainAccessibilityFocus"]),
			onDidLoseAccessibilityFocus: mxj2d(bo, jsonMap["onDidLoseAccessibilityFocus"]),
			customSemanticsActions: mxj2d(bo, jsonMap["customSemanticsActions"]),
		);
		return widget;
	}
}

class MXProxyCircleBorder extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "CircleBorder";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxyCircleBorder()..init(className: regClassName)};
	}

	@override
	CircleBorder constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = CircleBorder(
			side: mxj2d(bo, jsonMap["side"], defaultValue:BorderSide.none),
		);
		return widget;
	}
}

class MXProxySafeArea extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "SafeArea";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxySafeArea()..init(className: regClassName)};
	}

	@override
	SafeArea constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = SafeArea(
			key: mxj2d(bo, jsonMap["key"]),
			left: mxj2d(bo, jsonMap["left"], defaultValue:true),
			top: mxj2d(bo, jsonMap["top"], defaultValue:true),
			right: mxj2d(bo, jsonMap["right"], defaultValue:true),
			bottom: mxj2d(bo, jsonMap["bottom"], defaultValue:true),
			minimum: mxj2d(bo, jsonMap["minimum"], defaultValue:EdgeInsets.zero),
			child: mxj2d(bo, jsonMap["child"]),
		);
		return widget;
	}
}
