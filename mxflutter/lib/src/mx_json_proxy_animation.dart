//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:flutter/material.dart';
import 'mx_json_to_dart.dart';
import 'mx_build_owner.dart';
import 'mx_json_proxy_basic_types.dart';
import 'dart:math';
import 'package:expressions/expressions.dart';

///把Widget按分类注册，方便写代码，
///分类：Material/Layout/Text/(Assets.Images.icons)/input...
///参照了官网https://flutter.io/docs/development/ui/widgets
class MXProxyRegisterHelperAnimationSeries {
  static Map<String, CreateJsonObjProxyFun> registerProxys() {
    Map<String, CreateJsonObjProxyFun> m = {};
    m.addAll(MXProxyAnimation.registerProxy());
    m.addAll(MXProxyTween.registerProxy());
    m.addAll(MXProxyAnimationController.registerProxy());
    m.addAll(MXProxyAnimatedBuilder.registerProxy());
    m.addAll(MXProxyDuration.registerProxy());
    m.addAll(MXProxyCurveTween.registerProxy());
    m.addAll(MXProxyInterval.registerProxy());
    m.addAll(MXProxyFadeTransition.registerProxy());
    m.addAll(MXProxySlideTransition.registerProxy());
    m.addAll(MXProxyRectTween.registerProxy());
    m.addAll(MXProxyCubic.registerProxy());

    m.addAll(MXProxyAnimatedContainer.registerProxy());
    m.addAll(MXProxyAnimatedCrossFade.registerProxy());
    m.addAll(MXProxyAnimatedDefaultTextStyle.registerProxy());

    m.addAll(MXProxyAnimatedOpacity.registerProxy());
    m.addAll(MXProxyAnimatedPhysicalModel.registerProxy());
    m.addAll(MXProxyAnimatedPositioned.registerProxy());
    m.addAll(MXProxyAnimatedSize.registerProxy());
    m.addAll(MXProxyDecoratedBoxTransition.registerProxy());
    m.addAll(MXProxyDecorationTween.registerProxy());
    return m;
  }
}

///Animation
///
class MXProxyAnimation extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中

  static String regClassName = "Animation";

  ///工厂函数 用于延迟加载转换器
  static MXJsonObjProxy createProxy() {
    var p = MXProxyAnimation();
    p.className = regClassName;
    return p;
  }

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    return {regClassName: createProxy};
  }

  @override
  Animation constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    Tween tween = mxj2d(bo, jsonMap["tween"]);
    AnimationController controller = mxj2d(bo, jsonMap["controller"]);
    if (tween is Tween && controller is AnimationController) {
      Animation animation = tween.animate(controller);
      animation.addStatusListener(createStatusListenerHandle(
          bo, jsonMap["mirrorID"], 'statusListenerCallback'));
      // animation.addListener(createListenerHandle(bo, jsonMap["mirrorID"], 'listenerCallback'));
      return animation;
    }

    return null;
  }

  ///生成VoidCallback 闭包
  AnimationStatusListener createStatusListenerHandle(
      MXJsonBuildOwner bo, String mirrorID, String functionName) {
    AnimationStatusListener cb = (AnimationStatus status) {
      bo.mirrorObjEventCallback(mirrorID, functionName,
          p: MXAnimationStatus.encodeString(status));
    };
    return cb;
  }

  VoidCallback createListenerHandle(
      MXJsonBuildOwner bo, String mirrorID, String functionName) {
    VoidCallback cb = () {
      bo.mirrorObjEventCallback(mirrorID, functionName);
    };
    return cb;
  }
}

class MXProxyTween extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "Tween";

    ///**@@@  3 替换类构造函数
    return {regClassName: () => MXProxyTween()..init(className: regClassName)};
  }

  @override
  Tween constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Tween(
      begin: mxj2d(bo, jsonMap["begin"]),
      end: mxj2d(bo, jsonMap["end"]),
    );
    return widget;
  }
}

class MXProxyAnimationController extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "AnimationController";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyAnimationController()..init(className: regClassName)
    };
  }

  @override
  AnimationController constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = AnimationController(
      value: mxj2d(bo, jsonMap["value"])?.toDouble(),
      duration: mxj2d(bo, jsonMap["duration"]),
      debugLabel: mxj2d(bo, jsonMap["debugLabel"]),
      lowerBound:
          mxj2d(bo, jsonMap["lowerBound"], defaultValue: 0.0)?.toDouble(),
      upperBound:
          mxj2d(bo, jsonMap["upperBound"], defaultValue: 1.0)?.toDouble(),
      animationBehavior: mxj2d(bo, jsonMap["animationBehavior"],
          defaultValue: AnimationBehavior.normal),
      vsync: bo.widget
          .state, //mxj2d(bo, jsonMap["vsync"]), TODO: 此处不能为StatelessWidget
    );
    return widget;
  }

  //mirrorObj 为一个AnimationController类的实例对象，把调用对象方法，路由到代理类
  @override
  void jsInvokeMirrorObjFunction(
      String mirrorID, dynamic mirrorObj, String funcName, Map args,
      {InvokeCallback callback}) {
    if (mirrorObj == null || !(mirrorObj is AnimationController)) {
      return;
    }

    invokeFunction(mirrorObj, funcName, args);
  }

  //TODO:优化分发
  void invokeFunction(
      AnimationController mirrorObj, String funcName, Map args) {
    if (funcName == 'forward') {
      mirrorObj.forward();
      return;
    } else if (funcName == 'reverse') {
      mirrorObj.reverse();
      return;
    } else if (funcName == 'repeat') {
      mirrorObj.repeat();
      return;
    } else if (funcName == 'drive') {
      Animatable animatable = args['animatable'];
      mirrorObj.drive(animatable);
      return;
    } else if (funcName == 'dispose') {
      mirrorObj.dispose();
      return;
    }
  }
}

class MXProxyAnimatedBuilder extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "AnimatedBuilder";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyAnimatedBuilder()..init(className: regClassName)
    };
  }

  @override
  AnimatedBuilder constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    Animation animation = mxj2d(bo, jsonMap["animation"]);
    var widget = AnimatedBuilder(
      key: mxj2d(bo, jsonMap["key"]),
      animation: animation,
      builder: (BuildContext context, Widget child) {
        if (jsonMap.containsKey("builder")) {
          //todo...
          print("调用JS的builder生成数据，返回");
          final builderCallbackID = jsonMap["builder"];
          final widgetMap = bo.eventCallback(builderCallbackID, p: []);
          return mxj2d(bo, widgetMap);
        } else {
          String targetString = '\$value';
          var context = {
            "sin": sin,
            "cos": cos,
            "\$value": animation.value?.toDouble(),
          };
          Map widgetMap =
              replaceSpecificValue(jsonMap["widget"], targetString, context);
          return mxj2d(bo, widgetMap);
        }
      },
      child: mxj2d(bo, jsonMap["child"]),
    );
    return widget;
  }

  Map replaceSpecificValue(Map map, String targetValue, dynamic context) {
    Map nMap = <String, dynamic>{};
    if (map != null) {
      map.forEach((key, value) {
        if (value is Map) {
          nMap[key] = replaceSpecificValue(value, targetValue, context);
        } else if (value.toString().contains(targetValue)) {
          final evaluator = const ExpressionEvaluator();
          Expression expression = Expression.parse(value);
          var replaceValue = evaluator.eval(expression, context);
          nMap[key] = replaceValue;
        } else {
          nMap[key] = value;
        }
      });
    }
    return nMap;
  }
}

class MXProxyDuration extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "Duration";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyDuration()..init(className: regClassName)
    };
  }

  @override
  Duration constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Duration(
      days: mxj2d(bo, jsonMap["days"], defaultValue: 0),
      hours: mxj2d(bo, jsonMap["hours"], defaultValue: 0),
      minutes: mxj2d(bo, jsonMap["minutes"], defaultValue: 0),
      seconds: mxj2d(bo, jsonMap["seconds"], defaultValue: 0),
      milliseconds: mxj2d(bo, jsonMap["milliseconds"], defaultValue: 0),
    );
    return widget;
  }
}

class MXAnimationStatus {
  static Map str2VMap = {
    "AnimationStatus.dismissed": AnimationStatus.dismissed,
    "AnimationStatus.forward": AnimationStatus.forward,
    "AnimationStatus.reverse": AnimationStatus.reverse,
    "AnimationStatus.completed": AnimationStatus.completed,
  };

  static AnimationStatus parse(Map valueMap, {AnimationStatus defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }

  static Map encodeString(AnimationStatus status) {
    Map retValut = {"_name": "AnimationStatus.dismissed", "index": 0};
    switch (status) {
      case AnimationStatus.dismissed:
        retValut = {"_name": "AnimationStatus.dismissed", "index": 0};
        break;
      case AnimationStatus.forward:
        retValut = {"_name": "AnimationStatus.forward", "index": 1};
        break;
      case AnimationStatus.reverse:
        retValut = {"_name": "AnimationStatus.reverse", "index": 2};
        break;
      case AnimationStatus.completed:
        retValut = {"_name": "AnimationStatus.completed", "index": 3};
        break;
      default:
        break;
    }
    return retValut;
  }
}

class MXProxyCurveTween extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "CurveTween";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyCurveTween()..init(className: regClassName)
    };
  }

  @override
  CurveTween constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = CurveTween(
      curve: mxj2d(bo, jsonMap["curve"]),
    );
    return widget;
  }
}

class MXProxyInterval extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "Interval";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyInterval()..init(className: regClassName)
    };
  }

  @override
  Interval constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Interval(
      mxj2d(bo, jsonMap["begin"])?.toDouble(),
      mxj2d(bo, jsonMap["end"])?.toDouble(),
      curve: mxj2d(bo, MXCurves.parse(jsonMap["curve"]),
          defaultValue: Curves.linear),
    );
    return widget;
  }
}

//TODO:JS CrossFadeState
class MXCrossFadeState {
  static CrossFadeState parse(String value,
      {CrossFadeState defaultValue = CrossFadeState.showFirst}) {
    CrossFadeState retValue = CrossFadeState.showFirst;
    switch (value) {
      case "CrossFadeState.showFirst":
        retValue = CrossFadeState.showFirst;
        break;
      case "CrossFadeState.showSecond":
        retValue = CrossFadeState.showSecond;
        break;
      default:
        retValue = defaultValue;
        break;
    }
    return retValue;
  }
}

class MXCurves {
  static Map str2VMap = {
    "Curves.linear": Curves.linear,
    "Curves.decelerate": Curves.decelerate,
    "Curves.ease": Curves.ease,
    "Curves.easeIn": Curves.easeIn,
    "Curves.easeOut": Curves.easeOut,
    "Curves.fastOutSlowIn": Curves.fastOutSlowIn,
    "Curves.bounceIn": Curves.bounceIn,
    "Curves.bounceOut": Curves.bounceOut,
    "Curves.bounceInOut": Curves.bounceInOut,
    "Curves.elasticIn": Curves.elasticIn,
    "Curves.elasticOut": Curves.elasticOut,
    "Curves.elasticInOut": Curves.elasticInOut,
  };

  static Curve parse(Map valueMap, {Curve defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXProxyFadeTransition extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "FadeTransition";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyFadeTransition()..init(className: regClassName)
    };
  }

  @override
  FadeTransition constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = FadeTransition(
      key: mxj2d(bo, jsonMap["key"]),
      opacity: mxj2d(bo, jsonMap["opacity"]),
      alwaysIncludeSemantics:
          mxj2d(bo, jsonMap["alwaysIncludeSemantics"], defaultValue: false),
      child: mxj2d(bo, jsonMap["child"]),
    );
    return widget;
  }
}

class MXProxySlideTransition extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "SlideTransition";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxySlideTransition()..init(className: regClassName)
    };
  }

  @override
  SlideTransition constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = SlideTransition(
      key: mxj2d(bo, jsonMap["key"]),
      position: mxj2d(bo, jsonMap["position"]),
      transformHitTests:
          mxj2d(bo, jsonMap["transformHitTests"], defaultValue: true),
      textDirection: mxj2d(bo, jsonMap["textDirection"]),
      child: mxj2d(bo, jsonMap["child"]),
    );
    return widget;
  }
}

class MXProxyRectTween extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "RectTween";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyRectTween()..init(className: regClassName)
    };
  }

  @override
  RectTween constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = RectTween(
      begin: mxj2d(bo, jsonMap["begin"]),
      end: mxj2d(bo, jsonMap["end"]),
    );
    return widget;
  }
}

class MXProxyCubic extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "Cubic";

    ///**@@@  3 替换类构造函数
    return {regClassName: () => MXProxyCubic()..init(className: regClassName)};
  }

  @override
  Cubic constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Cubic(
      mxj2d(bo, jsonMap["a"])?.toDouble(),
      mxj2d(bo, jsonMap["b"])?.toDouble(),
      mxj2d(bo, jsonMap["c"])?.toDouble(),
      mxj2d(bo, jsonMap["d"])?.toDouble(),
    );
    return widget;
  }
}

class MXProxyAnimatedContainer extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "AnimatedContainer";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyAnimatedContainer()..init(className: regClassName)
    };
  }

  @override
  AnimatedContainer constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = AnimatedContainer(
      key: mxj2d(bo, jsonMap["key"]),
      alignment: mxj2d(bo, jsonMap["alignment"]),
      padding: mxj2d(bo, jsonMap["padding"]),
      color: mxj2d(bo, jsonMap["color"]),
      decoration: mxj2d(bo, jsonMap["decoration"]),
      foregroundDecoration: mxj2d(bo, jsonMap["foregroundDecoration"]),
      width: mxj2d(bo, jsonMap["width"])?.toDouble(),
      height: mxj2d(bo, jsonMap["height"])?.toDouble(),
      constraints: mxj2d(bo, jsonMap["constraints"]),
      margin: mxj2d(bo, jsonMap["margin"]),
      transform: mxj2d(bo, jsonMap["transform"]),
      child: mxj2d(bo, jsonMap["child"]),
      curve: mxj2d(bo, jsonMap["curve"], defaultValue: Curves.linear),
      duration: mxj2d(bo, jsonMap["duration"]),
      onEnd: mxj2d(bo, jsonMap["onEnd"]),
    );
    return widget;
  }
}

class MXProxyAnimatedCrossFade extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "AnimatedCrossFade";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyAnimatedCrossFade()..init(className: regClassName)
    };
  }

  @override
  AnimatedCrossFade constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = AnimatedCrossFade(
      key: mxj2d(bo, jsonMap["key"]),
      firstChild: mxj2d(bo, jsonMap["firstChild"]),
      secondChild: mxj2d(bo, jsonMap["secondChild"]),
      firstCurve:
          MXCurves.parse(jsonMap["firstCurve"], defaultValue: Curves.linear),
      secondCurve:
          MXCurves.parse(jsonMap["secondCurve"], defaultValue: Curves.linear),
      sizeCurve:
          MXCurves.parse(jsonMap["sizeCurve"], defaultValue: Curves.linear),
      alignment:
          mxj2d(bo, jsonMap["alignment"], defaultValue: Alignment.topCenter),
      crossFadeState: MXCrossFadeState.parse(jsonMap["crossFadeState"]),
      duration: mxj2d(bo, jsonMap["duration"]),
      reverseDuration: mxj2d(bo, jsonMap["reverseDuration"]),
      layoutBuilder: mxj2d(bo, jsonMap["layoutBuilder"],
          defaultValue: AnimatedCrossFade.defaultLayoutBuilder),
    );
    return widget;
  }
}

class MXProxyAnimatedDefaultTextStyle extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "AnimatedDefaultTextStyle";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyAnimatedDefaultTextStyle()..init(className: regClassName)
    };
  }

  @override
  AnimatedDefaultTextStyle constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = AnimatedDefaultTextStyle(
      key: mxj2d(bo, jsonMap["key"]),
      child: mxj2d(bo, jsonMap["child"]),
      style: mxj2d(bo, jsonMap["style"]),
      textAlign: mxj2d(bo, jsonMap["textAlign"]),
      softWrap: mxj2d(bo, jsonMap["softWrap"], defaultValue: true),
      overflow: mxj2d(bo, jsonMap["overflow"], defaultValue: TextOverflow.clip),
      maxLines: mxj2d(bo, jsonMap["maxLines"]),
      curve: MXCurves.parse(jsonMap["curve"], defaultValue: Curves.linear),
      duration: mxj2d(bo, jsonMap["duration"]),
      onEnd: mxj2d(bo, jsonMap["onEnd"]),
    );
    return widget;
  }
}

class MXProxyAnimatedOpacity extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "AnimatedOpacity";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyAnimatedOpacity()..init(className: regClassName)
    };
  }

  @override
  AnimatedOpacity constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = AnimatedOpacity(
      key: mxj2d(bo, jsonMap["key"]),
      child: mxj2d(bo, jsonMap["child"]),
      opacity: mxj2d(bo, jsonMap["opacity"])?.toDouble(),
      curve: MXCurves.parse(jsonMap["curve"], defaultValue: Curves.linear),
      duration: mxj2d(bo, jsonMap["duration"]),
      onEnd: mxj2d(bo, jsonMap["onEnd"]),
      alwaysIncludeSemantics:
          mxj2d(bo, jsonMap["alwaysIncludeSemantics"], defaultValue: false),
    );
    return widget;
  }
}

class MXProxyAnimatedPhysicalModel extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "AnimatedPhysicalModel";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyAnimatedPhysicalModel()..init(className: regClassName)
    };
  }

  @override
  AnimatedPhysicalModel constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = AnimatedPhysicalModel(
      key: mxj2d(bo, jsonMap["key"]),
      child: mxj2d(bo, jsonMap["child"]),
      shape: mxj2d(bo, MXBoxShape.parse(jsonMap["shape"])),
      clipBehavior: mxj2d(bo, jsonMap["clipBehavior"], defaultValue: Clip.none),
      borderRadius:
          mxj2d(bo, jsonMap["borderRadius"], defaultValue: BorderRadius.zero),
      elevation: mxj2d(bo, jsonMap["elevation"])?.toDouble(),
      color: mxj2d(bo, jsonMap["color"]),
      animateColor: mxj2d(bo, jsonMap["animateColor"], defaultValue: true),
      shadowColor: mxj2d(bo, jsonMap["shadowColor"]),
      animateShadowColor:
          mxj2d(bo, jsonMap["animateShadowColor"], defaultValue: true),
      curve: MXCurves.parse(jsonMap["curve"], defaultValue: Curves.linear),
      duration: mxj2d(bo, jsonMap["duration"]),
      onEnd: mxj2d(bo, jsonMap["onEnd"]),
    );
    return widget;
  }
}

class MXProxyAnimatedPositioned extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "AnimatedPositioned";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyAnimatedPositioned()..init(className: regClassName)
    };
  }

  @override
  AnimatedPositioned constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = AnimatedPositioned(
      key: mxj2d(bo, jsonMap["key"]),
      child: mxj2d(bo, jsonMap["child"]),
      left: mxj2d(bo, jsonMap["left"])?.toDouble(),
      top: mxj2d(bo, jsonMap["top"])?.toDouble(),
      right: mxj2d(bo, jsonMap["right"])?.toDouble(),
      bottom: mxj2d(bo, jsonMap["bottom"])?.toDouble(),
      width: mxj2d(bo, jsonMap["width"])?.toDouble(),
      height: mxj2d(bo, jsonMap["height"])?.toDouble(),
      curve: MXCurves.parse(jsonMap["curve"], defaultValue: Curves.linear),
      duration: mxj2d(bo, jsonMap["duration"]),
      onEnd: mxj2d(bo, jsonMap["onEnd"]),
    );
    return widget;
  }
}

class MXProxyAnimatedSize extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "AnimatedSize";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyAnimatedSize()..init(className: regClassName)
    };
  }

  @override
  AnimatedSize constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = AnimatedSize(
      key: mxj2d(bo, jsonMap["key"]),
      child: mxj2d(bo, jsonMap["child"]),
      alignment:
          mxj2d(bo, jsonMap["alignment"], defaultValue: Alignment.center),
      curve: MXCurves.parse(jsonMap["curve"], defaultValue: Curves.linear),
      duration: mxj2d(bo, jsonMap["duration"]),
      reverseDuration: mxj2d(bo, jsonMap["reverseDuration"]),
      vsync: bo.widget.state,
      //mxj2d(bo, jsonMap["vsync"]), //TODO FIXME,bo.widget 不能是MXJSStatelessWidget
    );
    return widget;
  }
}

class MXProxyDecoratedBoxTransition extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "DecoratedBoxTransition";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyDecoratedBoxTransition()..init(className: regClassName)
    };
  }

  @override
  DecoratedBoxTransition constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var decoration = mxj2d(bo, jsonMap["decoration"]);
    AnimationController controller =
        mxj2d(bo, jsonMap["decoration"]["controller"]);
    Animation<Decoration> animation = decoration.animate(controller);

    var widget = DecoratedBoxTransition(
      key: mxj2d(bo, jsonMap["key"]),
      decoration: animation,
      position: mxj2d(bo, jsonMap["position"],
          defaultValue: DecorationPosition.background),
      child: mxj2d(bo, jsonMap["child"]),
    );
    return widget;
  }
}

class MXProxyDecorationTween extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "DecorationTween";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyDecorationTween()..init(className: regClassName)
    };
  }

  @override
  DecorationTween constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = DecorationTween(
      begin: mxj2d(bo, jsonMap["begin"]),
      end: mxj2d(bo, jsonMap["end"]),
    );
    return widget;
  }
}
