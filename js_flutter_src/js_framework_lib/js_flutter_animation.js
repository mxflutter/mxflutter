//VSCode Run support=====================================================================================
//为便于在JS IDE如VSCode，webStorm里脱离APP环境执行JS，以快速验证JS代码正确性
//如果不在App环境，Native接口重定向到JS同名函数打印调用
//jsFlutterRequire 转调Node运行环境中的require
//只有js_framework_lib中的文件，才能用这个头
let jsFlutterRequire = typeof mxRequire != "undefined" ? mxRequire : require;
//VSCode Run support end ================================================================================

//js_flutter_text.js 正式开始，😝

let {
    FlutterWidget,
    FlutterCallArgs
} = jsFlutterRequire("./js_flutter_basic_types.js");

let {
    invokeFlutterFunction,
    Curves,
    Alignment,
} = jsFlutterRequire("./js_flutter_framework.js");


class Animation extends FlutterWidget {
    constructor({
        tween,
        controller
    } = {}) {
        super();

        this.tween = tween;
        this.controller = controller;
        this.statusListenerList = [];
        this.listenerList = [];
    }

    statusListenerCallback(status) {
        for (let funcKey in this.statusListenerList){
            this.statusListenerList[funcKey](status);
        }
    }

    listenerCallback(status) {
        for (let funcKey in this.listenerList){
            this.listenerList[funcKey](status);
        }
    }

    value(){
        return 'animation.value';
    }

    addListener(callback){
        this.listenerList.push(callback);
    }

    removeListener(callback){
        const index = this.listenerList.indexOf(callback);
        this.listenerList.splice(index);
    }

    addStatusListener(callback){
        this.statusListenerList.push(callback);
    }

    removeStatusListener(callback){
        const index = this.statusListenerList.indexOf(callback);
        this.statusListenerList.splice(index);
    }
}

class Tween extends FlutterWidget {
    constructor ({
        begin,
        end
    } = {}) {
        super();

        this.begin = begin;
        this.end = end;
    }
}

class AnimationController extends FlutterWidget {
    constructor ({
        value,
        duration,
        debugLabel,
        lowerBound,
        upperBound,
        animationBehavior,
        vsync
    } = {}) {
        super();

        this.value = value;
        this.duration = duration;
        this.debugLabel = debugLabel;
        this.lowerBound = lowerBound;
        this.upperBound = upperBound;
        this.animationBehavior = animationBehavior;
        this.vsync = vsync;
    }

    ///TODO:
    dispose(){

    }

    forward(from){
        var argument = new FlutterCallArgs({
            mirrorID: this.mirrorID,
            className: 'AnimationController',
            funcName: 'forward',
            args: {
                from: from,
            },
        });
        invokeFlutterFunction(argument);
    }

    reverse(from){
        var argument = new FlutterCallArgs({
            mirrorID: this.mirrorID,
            className: 'AnimationController',
            funcName: 'reverse',
            args: {
                from: from,
            },
        });
        invokeFlutterFunction(argument);
    }

    repeat(min, max, period){
        var argument = new FlutterCallArgs({
            mirrorID: this.mirrorID,
            className: 'AnimationController',
            funcName: 'repeat',
            args: {
                min: min,
                max: max,
                period: period
            },
        });
        invokeFlutterFunction(argument);
    }

    drive(animatable){
        var argument = new FlutterCallArgs({
            mirrorID: this.mirrorID,
            className: 'AnimationController',
            funcName: 'drive',
            args: {
                animatable: animatable,
            },
        });
        invokeFlutterFunction(argument);
    }
}

class AnimatedBuilder extends FlutterWidget {
    constructor ({
        key,
        animation,
        builder,
        child,
        widget
    } = {}) {
        super();

        this.key = key;
        this.animation = animation;
        this.builder = builder;
        this.child = child;
        this.widget = widget;
    }
}

class Duration extends FlutterWidget {
    constructor (
{			days,
        hours,
        minutes,
        seconds,
        milliseconds
    } = {}) {
        super();

        this.days = days;
        this.hours = hours;
        this.minutes = minutes;
        this.seconds = seconds;
        this.milliseconds = milliseconds;
    }
}

AnimationStatus = {
    dismissed: "AnimationStatus.dismissed",
    forward: "AnimationStatus.forward",
    reverse: "AnimationStatus.reverse",
    completed: "AnimationStatus.completed"
};

class CurveTween extends FlutterWidget {
    constructor ({
        curve
    } = {}) {
        super();

        this.curve = curve;
    }
}

class Interval extends FlutterWidget {
    constructor (
        begin,
        end,
{			curve
    } = {}) {
        super();

        this.begin = begin;
        this.end = end;
        this.curve = curve;
    }
}

Curves = {
    linear: "Curves.linear",
    decelerate: "Curves.decelerate",
    ease: "Curves.ease",
    easeIn: "Curves.easeIn",
    easeOut: "Curves.easeOut",
    easeInOut: "Curves.easeInOut",
    fastOutSlowIn: "Curves.fastOutSlowIn",
    bounceIn: "Curves.bounceIn",
    bounceOut: "Curves.bounceOut",
    bounceInOut: "Curves.bounceInOut",
    elasticIn: "Curves.elasticIn",
    elasticOut: "Curves.elasticOut",
    elasticInOut: "Curves.elasticInOut",
};

class FadeTransition extends FlutterWidget {
    constructor ({
        key,
        opacity,
        alwaysIncludeSemantics,
        child
    } = {}) {
        super();

        this.key = key;
        this.opacity = opacity;
        this.alwaysIncludeSemantics = alwaysIncludeSemantics;
        this.child = child;
    }
}

class SlideTransition extends FlutterWidget {
    constructor ({
        key,
        position,
        transformHitTests,
        textDirection,
        child
    } = {}) {
        super();

        this.key = key;
        this.position = position;
        this.transformHitTests = transformHitTests;
        this.textDirection = textDirection;
        this.child = child;
    }
}

/**
 Key key,
 this.alignment,
 this.padding,
 Color color,
 Decoration decoration,
 this.foregroundDecoration,
 double width,
 double height,
 BoxConstraints constraints,
 this.margin,
 this.transform,
 this.child,
 Curve curve = Curves.linear,
 @required Duration duration,
 VoidCallback onEnd,
 */
class AnimatedContainer extends FlutterWidget {
    constructor ({
        key,
        alignment,
        padding,
        color,
        decoration,
        foregroundDecoration,
        width,
        height,
        constraints,
        margin,
        transform,
        child,
        curve,
        duration,
        onEnd,
    } = {}) {
        super();

        this.key = key;
        this.alignment = alignment;
        this.padding=padding;
        this.color=color;
        this.decoration=decoration;
        this.foregroundDecoration=foregroundDecoration;
        this.width=width;
        this.height=height;
        this.constraints=constraints;
        this.margin=margin;
        this.transform=transform;
        this.child=child;
        this.curve=curve;
        this.duration=duration;  //@required
        this.onEnd=onEnd;
    }
}

class AnimatedCrossFade extends FlutterWidget {
    constructor ({
         key,
         firstChild, //@required
         secondChild, //@required
         firstCurve,
         secondCurve,
         sizeCurve,
         alignment,
         crossFadeState, //@required
         duration, //@required
         reverseDuration,
         layoutBuilder,
    } = {
        firstCurve : Curves.linear,
        secondCurve : Curves.linear,
        sizeCurve : Curves.linear,
        alignment : Alignment.topCenter,
    }) {
        super();

        this.key = key;
        this.firstChild = firstChild;
        this.secondChild=secondChild;
        this.firstCurve=firstCurve;
        this.secondCurve=secondCurve;
        this.sizeCurve=sizeCurve;
        this.crossFadeState=crossFadeState;
        this.duration=duration;
        this.reverseDuration=reverseDuration;
        this.layoutBuilder=layoutBuilder;
    }
}

const CrossFadeState = {
    /// Show the first child ([AnimatedCrossFade.firstChild]) and hide the second
    /// ([AnimatedCrossFade.secondChild]]).
    showFirst:"CrossFadeState.showFirst",
    /// Show the second child ([AnimatedCrossFade.secondChild]) and hide the first
    /// ([AnimatedCrossFade.firstChild]).
    showSecond:"CrossFadeState.showSecond",
}



class AnimatedDefaultTextStyle extends FlutterWidget {
    constructor ({
        key,
        child, //@required
        style, //@required
        textAlign,
        softWrap,
        overflow,
        maxLines,
        duration,
        onEnd,
    } = {}) {
        super();
        this.key = key;
        this.child = child;
        this.style=style;
        this.textAlign=textAlign;
        this.softWrap=softWrap;
        this.overflow=overflow;
        this.maxLines=maxLines;
        this.duration=duration;
        this.onEnd=onEnd;
    }
}

class AnimatedOpacity extends FlutterWidget {
    constructor ({
                     key,
                     child,
                     opacity,
                     curve,
                     duration,
                     onEnd,
                     alwaysIncludeSemantics,
                 } = {}) {
        super();

        this.key = key;
        this.child = child;
        this.opacity = opacity;
        this.curve = curve;
        this.duration = duration;
        this.onEnd = onEnd;
        this.alwaysIncludeSemantics = alwaysIncludeSemantics;
    }
}

module.exports = {
    Animation,
    Tween,
    AnimationController,
    AnimatedBuilder,
    Duration,
    AnimationStatus,
    CurveTween,
    Interval,
    Curves,
    FadeTransition,
    SlideTransition,
    AnimatedContainer,
    AnimatedCrossFade,
    CrossFadeState,
    AnimatedDefaultTextStyle,
    AnimatedOpacity,
};
