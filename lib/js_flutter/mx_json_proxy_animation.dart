import 'package:flutter/material.dart';
import 'mx_json_to_dart.dart';
import 'mx_build_owner.dart';
import 'mx_json_proxy_basic_types.dart';
import 'dart:convert';
import 'package:expressions/expressions.dart';
import 'dart:math';

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
    m.addAll(MXProxyAnimatedContainer.registerProxy());
    m.addAll(MXProxyAnimatedCrossFade.registerProxy());
    m.addAll(MXProxyAnimatedDefaultTextStyle.registerProxy());

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
  Animation constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap, {BuildContext context}) {
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
	Tween constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap, {BuildContext context}) {
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
	AnimationController constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap, {BuildContext context}) {
		var widget = AnimationController(
			value: mxj2d(bo, jsonMap["value"])?.toDouble(),
			duration: mxj2d(bo, jsonMap["duration"]),
			debugLabel: mxj2d(bo, jsonMap["debugLabel"]),
			lowerBound: mxj2d(bo, jsonMap["lowerBound"], defaultValue:0.0)?.toDouble(),
			upperBound: mxj2d(bo, jsonMap["upperBound"], defaultValue:1.0)?.toDouble(),
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
	AnimatedBuilder constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap, {BuildContext context}) {

	  dynamic animation  =  mxj2d(bo, jsonMap["animation"]);
		var widget = AnimatedBuilder(
			key: mxj2d(bo, jsonMap["key"]),
			animation: animation,
			builder: (BuildContext context, Widget child)  {
			  if(jsonMap.containsKey("builder")){
          //todo...
			    print("调用JS的builder生成数据，返回");
			    final builderCallbackID = jsonMap["builder"];
          final widgetMap = bo.eventCallback(builderCallbackID, p: []);
			    return  mxj2d(bo, widgetMap);
        }else{
          String targetString = '\$value';
          var context = {
            "sin":sin,
            "cos":cos,
            "\$value":animation.value?.toDouble(),
          };
          Map widgetMap = replaceSpecificValue(jsonMap["widget"], targetString, context);
          return mxj2d(bo, widgetMap);
        }
      },
			child: mxj2d(bo, jsonMap["child"]),
		);
		return widget;
	}

  Map replaceSpecificValue(Map map, String targetValue, dynamic context){
    Map nMap = <String, dynamic>{};
    if(map!=null){
      map.forEach((key, value){
        if (value is Map){
          nMap[key] = replaceSpecificValue(value, targetValue, context);
        }else if (value.toString().contains(targetValue)){
          final evaluator = const ExpressionEvaluator();
          Expression expression = Expression.parse(value);
          var replaceValue = evaluator.eval(expression, context);
          nMap[key] = replaceValue;
        }else {
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
		return {regClassName: () => MXProxyDuration()..init(className: regClassName)};
	}

	@override
	Duration constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap, {BuildContext context}) {
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
	CurveTween constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap, {BuildContext context}) {
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
	Interval constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap, {BuildContext context}) {
		var widget = Interval(
      mxj2d(bo, jsonMap["begin"])?.toDouble(),
      mxj2d(bo, jsonMap["end"])?.toDouble(),
			curve: mxj2d(bo, MXCurves.parse(jsonMap["curve"]), defaultValue:Curves.linear),
		);
		return widget;
	}
}

class MXCrossFadeState {
  static CrossFadeState parse(String value,{CrossFadeState defaultValue = CrossFadeState.showFirst}){
    CrossFadeState retValue = CrossFadeState.showFirst;
    switch(value){
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
	FadeTransition constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap, {BuildContext context}) {
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
  SlideTransition constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap, {BuildContext context}) {
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

class MXProxyAnimatedContainer extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "AnimatedContainer";
    ///**@@@  3 替换类构造函数
    return {regClassName: () => MXProxyAnimatedContainer()..init(className: regClassName)};
  }

  @override
  AnimatedContainer constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap, {BuildContext context}) {
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
      curve: mxj2d(bo, jsonMap["curve"],defaultValue: Curves.linear),
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
    return {regClassName: () => MXProxyAnimatedCrossFade()..init(className: regClassName)};
  }

  @override
  AnimatedCrossFade constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap, {BuildContext context}) {
    var widget = AnimatedCrossFade(
      key: mxj2d(bo, jsonMap["key"]),
      firstChild: mxj2d(bo, jsonMap["firstChild"]),
      secondChild: mxj2d(bo, jsonMap["secondChild"]),
      firstCurve: mxj2d(bo, MXCurves.parse(jsonMap["firstCurve"])),
      secondCurve: mxj2d(bo, MXCurves.parse(jsonMap["secondCurve"])),
      sizeCurve: mxj2d(bo, MXCurves.parse(jsonMap["sizeCurve"])),
      alignment: mxj2d(bo, jsonMap["alignment"],defaultValue: Alignment.topCenter),
      crossFadeState: mxj2d(bo, MXCrossFadeState.parse(jsonMap["crossFadeState"])),
      duration: mxj2d(bo, jsonMap["duration"]),
      reverseDuration: mxj2d(bo, jsonMap["reverseDuration"]),
      layoutBuilder: mxj2d(bo, jsonMap["layoutBuilder"],defaultValue: AnimatedCrossFade.defaultLayoutBuilder),
    );
    return widget;
  }
}



class MXProxyAnimatedDefaultTextStyle extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "AnimatedDefaultTextStyle";
    ///**@@@  3 替换类构造函数
    return {regClassName: () => MXProxyAnimatedDefaultTextStyle()..init(className: regClassName)};
  }

  @override
  AnimatedDefaultTextStyle constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap, {BuildContext context}) {
    var widget = AnimatedDefaultTextStyle(
      key: mxj2d(bo, jsonMap["key"]),
      child: mxj2d(bo, jsonMap["child"]),
      style: mxj2d(bo, jsonMap["style"]),
      textAlign: mxj2d(bo, jsonMap["textAlign"]),
      softWrap: mxj2d(bo, jsonMap["softWrap"],defaultValue: true),
      overflow: mxj2d(bo, jsonMap["overflow"],defaultValue: TextOverflow.clip),
      maxLines: mxj2d(bo, jsonMap["maxLines"]),
      curve: mxj2d(bo, MXCurves.parse(jsonMap["curve"]),defaultValue: Curves.linear),
      duration: mxj2d(bo, jsonMap["duration"]),
      onEnd: mxj2d(bo, jsonMap["onEnd"]),
    );
    return widget;
  }
}


