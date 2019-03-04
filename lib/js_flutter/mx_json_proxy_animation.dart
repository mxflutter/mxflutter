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
    m.addAll(MXProxyCurveTween.registerProxy());
    m.addAll(MXProxyInterval.registerProxy());
    m.addAll(MXProxyFadeTransition.registerProxy());
    m.addAll(MXProxySlideTransition.registerProxy());

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

class MXProxyCurveTween extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "CurveTween";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxyCurveTween()..init(className: regClassName)};
	}

	@override
	CurveTween constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
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
		return {regClassName: () => MXProxyInterval()..init(className: regClassName)};
	}

	@override
	Interval constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = Interval(
      mxj2d(bo, jsonMap["begin"]).toDouble(), 
      mxj2d(bo, jsonMap["end"]).toDouble(),
			curve: mxj2d(bo, MXCurves.parse(jsonMap["curve"]), defaultValue:Curves.linear),
		);
		return widget;
	}
}

class MXCurves {
  static Curve parse(String value,
  {Curve defaultValue = Curves.linear}) {
    // 暂时默认取直线类型吧
    Curve retValut = Curves.linear;
    switch (value) {
      case 'Curves.linear':
        retValut = Curves.linear;
        break;
      case 'Curves.decelerate':
        retValut = Curves.decelerate;
        break;
      case 'Curves.ease':
        retValut = Curves.ease;
        break;
      case 'Curves.easeIn':
        retValut = Curves.easeIn;
        break;
      case 'Curves.easeOut':
        retValut = Curves.easeOut;
        break;
      case 'Curves.fastOutSlowIn':
        retValut = Curves.fastOutSlowIn;
        break;
      case 'Curves.bounceIn':
        retValut = Curves.bounceIn;
        break;
      case 'Curves.bounceOut':
        retValut = Curves.bounceOut;
        break;
      case 'Curves.bounceInOut':
        retValut = Curves.bounceInOut;
        break;
      case 'Curves.elasticIn':
        retValut = Curves.elasticIn;
        break;
      case 'Curves.elasticOut':
        retValut = Curves.elasticOut;
        break;
      case 'Curves.elasticInOut':
        retValut = Curves.elasticInOut;
        break;
      default:
        retValut = defaultValue;
        break;
    }

    return retValut;
  }
}

class MXProxyFadeTransition extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "FadeTransition";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxyFadeTransition()..init(className: regClassName)};
	}

	@override
	FadeTransition constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = FadeTransition(
			key: mxj2d(bo, jsonMap["key"]),
			opacity: mxj2d(bo, jsonMap["opacity"]),
			alwaysIncludeSemantics: mxj2d(bo, jsonMap["alwaysIncludeSemantics"], defaultValue:false),
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
		return {regClassName: () => MXProxySlideTransition()..init(className: regClassName)};
	}

	@override
	SlideTransition constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = SlideTransition(
			key: mxj2d(bo, jsonMap["key"]),
			position: mxj2d(bo, jsonMap["position"]),
			transformHitTests: mxj2d(bo, jsonMap["transformHitTests"], defaultValue:true),
			textDirection: mxj2d(bo, jsonMap["textDirection"]),
			child: mxj2d(bo, jsonMap["child"]),
		);
		return widget;
	}
}