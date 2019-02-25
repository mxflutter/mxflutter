import 'package:flutter/material.dart';
import 'mx_json_to_dart.dart';
import 'mx_build_owner.dart';
import 'mx_json_proxy_basic_types.dart';
import 'dart:convert';

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

    return m;
  }
}

///Animation
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyAnimation extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中
  ///**@@@ 拷贝生成其他类  2 替换类名字符串
  static String regClassName = "Animation";

  ///工厂函数 用于延迟加载转换器
  static MXJsonObjProxy createProxy() {
    ///**@@@@ 拷贝生成其他类  3 替换类构建函数
    var p = MXProxyAnimation();
    p.className = regClassName;
    return p;
  }

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    return {regClassName: createProxy};
  }

  @override
  Animation constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    Tween tween = mxj2d(bo, jsonMap["tween"]);
    AnimationController controller = mxj2d(bo, jsonMap["controller"]);
    if (tween is Tween && controller is AnimationController){
      Animation animation = tween.animate(controller);
      animation.addStatusListener(createStatusListenerHandle(bo, jsonMap["mirrorID"], 'statusListenerCallback'));
      // animation.addListener(createListenerHandle(bo, jsonMap["mirrorID"], 'listenerCallback'));
      return animation;
    }

    return null;
  }

    ///生成VoidCallback 闭包
  AnimationStatusListener createStatusListenerHandle(MXJsonBuildOwner bo, String mirrorID, String functionName) {
    AnimationStatusListener cb = (AnimationStatus status) {
      bo.mirrorObjEventCallback(mirrorID, functionName, p: MXAnimationStatus.encodeString(status));
    };
    return cb;
  }

  VoidCallback createListenerHandle(MXJsonBuildOwner bo, String mirrorID, String functionName) {
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
	Tween constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
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
		return {regClassName: () => MXProxyAnimationController()..init(className: regClassName)};
	}

	@override
	AnimationController constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = AnimationController(
			value: mxj2d(bo, jsonMap["value"]),
			duration: mxj2d(bo, jsonMap["duration"]),
			debugLabel: mxj2d(bo, jsonMap["debugLabel"]),
			lowerBound: mxj2d(bo, jsonMap["lowerBound"], defaultValue:0.0),
			upperBound: mxj2d(bo, jsonMap["upperBound"], defaultValue:1.0),
			animationBehavior: mxj2d(bo, jsonMap["animationBehavior"], defaultValue:AnimationBehavior.normal),
			vsync: bo.jsWidgetState,//mxj2d(bo, jsonMap["vsync"]),
		);
		return widget;
	}
}

class MXProxyAnimatedBuilder extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "AnimatedBuilder";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxyAnimatedBuilder()..init(className: regClassName)};
	}

	@override
	AnimatedBuilder constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    Animation animation = mxj2d(bo, jsonMap["animation"]);
		var widget = AnimatedBuilder(
			key: mxj2d(bo, jsonMap["key"]),
			animation: animation,
			builder: (BuildContext context, Widget child){
        String targetString = 'animation.value';
        Map widgetMap = replaceSpecificValue(jsonMap["widget"], targetString, animation.value.toDouble());
        return mxj2d(bo, widgetMap);
      },
			child: mxj2d(bo, jsonMap["child"]),
		);
		return widget;
	}
  
  Map replaceSpecificValue(Map map, String targetValue, dynamic replaceValue){
    Map nMap = <String, dynamic>{};
    map.forEach((key, value){
      if (value is Map){
        nMap[key] = replaceSpecificValue(value, targetValue, replaceValue);
      }else if (value == targetValue){
        nMap[key] = replaceValue;
      }else {
        nMap[key] = value;
      }
    });
    return nMap;
  }

}

class MXProxyDuration extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "Duration";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxyDuration()..init(className: regClassName)};
	}

	@override
	Duration constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = Duration(
			days: mxj2d(bo, jsonMap["days"], defaultValue:0),
			hours: mxj2d(bo, jsonMap["hours"], defaultValue:0),
			minutes: mxj2d(bo, jsonMap["minutes"], defaultValue:0),
			seconds: mxj2d(bo, jsonMap["seconds"], defaultValue:0),
			milliseconds: mxj2d(bo, jsonMap["milliseconds"], defaultValue:0),
		);
		return widget;
	}
}


class MXAnimationStatus {
  static AnimationStatus parse(String value, {AnimationStatus defaultValue = AnimationStatus.dismissed}) {
    AnimationStatus retValut = defaultValue;
    switch (value) {
      case 'AnimationStatus.dismissed':
        retValut = AnimationStatus.dismissed;
        break;
      case 'AnimationStatus.forward':
        retValut = AnimationStatus.forward;
        break;
      case 'AnimationStatus.reverse':
        retValut = AnimationStatus.reverse;
        break;
      case 'AnimationStatus.completed':
        retValut = AnimationStatus.completed;
        break;
      default:
        retValut = defaultValue;
    }
    return retValut;
  }

  static String encodeString(AnimationStatus status){
    String retValut = 'AnimationStatus.dismissed';
    switch (status) {
      case AnimationStatus.dismissed:
        retValut = 'AnimationStatus.dismissed';
        break;
      case AnimationStatus.forward:
        retValut = 'AnimationStatus.forward';
        break;
      case AnimationStatus.reverse:
        retValut = 'AnimationStatus.reverse';
        break;
      case AnimationStatus.completed:
        retValut = 'AnimationStatus.completed';
        break;
      default:
        break;
    }
    return retValut;
  }

}