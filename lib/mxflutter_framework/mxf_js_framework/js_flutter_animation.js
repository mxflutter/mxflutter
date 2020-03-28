//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

let {
  FlutterWidget,
  FlutterCallArgs
} = require("./js_flutter_basic_types.js");

let {
  invokeFlutterFunction,
  Alignment,
} = require("./js_flutter_framework.js");

const dart_sdk = require("dart_sdk");
const dart = dart_sdk.dart;
const ui = dart_sdk.ui;
const dartx = dart_sdk.dartx;
const core = dart_sdk.core;
const $clamp = dartx.clamp;

class Animation extends FlutterWidget {
  constructor({
    tween,
    controller
  } = {}) {
    super();

    //Mirror对象在构造函数创建 MirrorID
    this.createMirrorObjectID();

    this.tween = tween;
    this.controller = controller;
    this.statusListenerList = [];
    this.listenerList = [];
  }

  statusListenerCallback(status) {
    for (let funcKey in this.statusListenerList) {
      this.statusListenerList[funcKey](status);
    }
  }

  listenerCallback(status) {
    for (let funcKey in this.listenerList) {
      this.listenerList[funcKey](status);
    }
  }

  value() {
    return "animation.value";
  }

  addListener(callback) {
    this.listenerList.push(callback);
  }

  removeListener(callback) {
    const index = this.listenerList.indexOf(callback);
    this.listenerList.splice(index);
  }

  addStatusListener(callback) {
    this.statusListenerList.push(callback);
  }

  removeStatusListener(callback) {
    let index = this.statusListenerList.indexOf(callback);
    this.statusListenerList.splice(index);
  }
}

class Tween extends FlutterWidget {
  constructor({ begin, end } = {}) {
    super();

    this.begin = begin;
    this.end = end;
  }
  lerp(t) {
    return dart.dsend(this.begin, '+', [dart.dsend(dart.dsend(this.end, '-', [this.begin]), '*', [t])]);
  }
  transform(t) {
    if (t === 0.0) return this.begin;
    if (t === 1.0) return this.end;
    return this.lerp(t);
  }
}

Tween.new = function (args) {
  return new Tween(args);
};

class RectTween extends FlutterWidget {
  constructor({
    begin,
    end,
  } = {}) {
    super();

    this.begin = begin;
    this.end = end;
  }

  lerp(t) {
    return ui.Rect.lerp(this.begin, this.end, t);
  }
}

RectTween.new = function (args) {
  return new RectTween(args);
};

class AnimationController extends FlutterWidget {
  constructor({
    value,
    duration,
    debugLabel,
    lowerBound,
    upperBound,
    animationBehavior,
    vsync
  } = {}) {
    super();

    //Mirror对象在构造函数创建 MirrorID
    this.createMirrorObjectID();

    this.value = value;
    this.duration = duration;
    this.debugLabel = debugLabel;
    this.lowerBound = lowerBound;
    this.upperBound = upperBound;
    this.animationBehavior = animationBehavior;
    this.vsync = vsync;
  }

  ///TODO:
  dispose() { }

  forward(from) {
    var argument = new FlutterCallArgs({
      mirrorID: this.mirrorID,
      className: "AnimationController",
      funcName: "forward",
      args: {
        from: from
      }
    });
    invokeFlutterFunction(argument);
  }

  reverse(from) {
    var argument = new FlutterCallArgs({
      mirrorID: this.mirrorID,
      className: "AnimationController",
      funcName: "reverse",
      args: {
        from: from
      }
    });
    invokeFlutterFunction(argument);
  }

  repeat(min, max, period) {
    var argument = new FlutterCallArgs({
      mirrorID: this.mirrorID,
      className: "AnimationController",
      funcName: "repeat",
      args: {
        min: min,
        max: max,
        period: period
      }
    });
    invokeFlutterFunction(argument);
  }

  drive(animatable) {
    var argument = new FlutterCallArgs({
      mirrorID: this.mirrorID,
      className: "AnimationController",
      funcName: "drive",
      args: {
        animatable: animatable
      }
    });
    invokeFlutterFunction(argument);
  }
}

class AnimatedBuilder extends FlutterWidget {
  constructor({
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
  constructor(
    { days,
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

// AnimationStatus = {
//   dismissed: "AnimationStatus.dismissed",
//   forward: "AnimationStatus.forward",
//   reverse: "AnimationStatus.reverse",
//   completed: "AnimationStatus.completed"
// };
AnimationStatus = {
  dismissed: { _name: "AnimationStatus.dismissed", index: 0 },
  forward: { _name: "AnimationStatus.forward", index: 1 },
  reverse: { _name: "AnimationStatus.reverse", index: 2 },
  completed: { _name: "AnimationStatus.completed", index: 3 }
};

class CurveTween extends FlutterWidget {
  constructor({
    curve
  } = {}) {
    super();

    this.curve = curve;
  }
}

class Curve extends FlutterWidget {
  constructor() {
    super();
  }

  transform(t) {
    if (t === 0.0 || t === 1.0) {
      return t;
    }
    return this.transformInternal(t);
  }

  transformInternal(t) {
    dart.throw(new core.UnimplementedError.new());
  }
}

class Interval extends Curve {
  constructor(begin, end, { curve } = {}) {
    super();

    this.begin = begin;
    this.end = end;
    this.curve = curve;
  }

  transformInternal(t) {
    if (!(dart.notNull(this.begin) >= 0.0)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/animation/curves.dart", 147, 12, "begin >= 0.0");
    if (!(dart.notNull(this.begin) <= 1.0)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/animation/curves.dart", 148, 12, "begin <= 1.0");
    if (!(dart.notNull(this.end) >= 0.0)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/animation/curves.dart", 149, 12, "end >= 0.0");
    if (!(dart.notNull(this.end) <= 1.0)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/animation/curves.dart", 150, 12, "end <= 1.0");
    if (!(dart.notNull(this.end) >= dart.notNull(this.begin))) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/animation/curves.dart", 151, 12, "end >= begin");
    t = ((dart.notNull(t) - dart.notNull(this.begin)) / (dart.notNull(this.end) - dart.notNull(this.begin)))[$clamp](0.0, 1.0);
    if (t === 0.0 || t === 1.0) return t;
    return this.curve.transform(t);
  }
}

// Curves = {
//   linear: "Curves.linear",
//   decelerate: "Curves.decelerate",
//   ease: "Curves.ease",
//   easeIn: "Curves.easeIn",
//   easeOut: "Curves.easeOut",
//   easeInOut: "Curves.easeInOut",
//   fastOutSlowIn: "Curves.fastOutSlowIn",
//   bounceIn: "Curves.bounceIn",
//   bounceOut: "Curves.bounceOut",
//   bounceInOut: "Curves.bounceInOut",
//   elasticIn: "Curves.elasticIn",
//   elasticOut: "Curves.elasticOut",
//   elasticInOut: "Curves.elasticInOut"
// };

Curves = {
  linear: { _name: "Curves.linear", index: 0 },
  decelerate: { _name: "Curves.decelerate", index: 1 },
  ease: { _name: "Curves.ease", index: 2 },
  easeIn: { _name: "Curves.easeIn", index: 3 },
  easeOut: { _name: "Curves.easeOut", index: 4 },
  easeInOut: { _name: "Curves.easeInOut", index: 5 },
  fastOutSlowIn: { _name: "Curves.fastOutSlowIn", index: 6 },
  bounceIn: { _name: "Curves.bounceIn", index: 7 },
  bounceOut: { _name: "Curves.bounceOut", index: 8 },
  bounceInOut: { _name: "Curves.bounceInOut", index: 9 },
  elasticIn: { _name: "Curves.elasticIn", index: 10 },
  elasticOut: { _name: "Curves.elasticOut", index: 11 },
  elasticInOut: { _name: "Curves.elasticInOut", index: 12 }
};

class FadeTransition extends FlutterWidget {
  constructor({ key, opacity, alwaysIncludeSemantics, child } = {}) {
    super();

    this.key = key;
    this.opacity = opacity;
    this.alwaysIncludeSemantics = alwaysIncludeSemantics;
    this.child = child;
  }
}

class SlideTransition extends FlutterWidget {
  constructor({
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

class Cubic extends Curve {
  constructor(
    a,
    b,
    c,
    d,
  ) {
    super();

    this.a = a;
    this.b = b;
    this.c = c;
    this.d = d;
  }

  _evaluateCubic(a, b, m) {
    return 3 * a * (1 - m) * (1 - m) * m +
      3 * b * (1 - m) * m * m +
      m * m * m;
  }

  transformInternal(t) {
    let start = 0.0;
    let end = 1.0;
    while (true) {
      let midpoint = (start + end) / 2;
      let estimate = this._evaluateCubic(this.a, this.c, midpoint);
      if (Math.abs(t - estimate) < 0.001) return this._evaluateCubic(this.b, this.d, midpoint);
      if (estimate < t)
        start = midpoint;
      else
        end = midpoint;
    }
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
  constructor({
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
    this.padding = padding;
    this.color = color;
    this.decoration = decoration;
    this.foregroundDecoration = foregroundDecoration;
    this.width = width;
    this.height = height;
    this.constraints = constraints;
    this.margin = margin;
    this.transform = transform;
    this.child = child;
    this.curve = curve;
    this.duration = duration;  //@required
    this.onEnd = onEnd;
  }
}

class AnimatedCrossFade extends FlutterWidget {
  constructor({
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
      firstCurve: Curves.linear,
      secondCurve: Curves.linear,
      sizeCurve: Curves.linear,
      alignment: Alignment.topCenter,
    }) {
    super();

    this.key = key;
    this.firstChild = firstChild;
    this.secondChild = secondChild;
    this.firstCurve = firstCurve;
    this.secondCurve = secondCurve;
    this.sizeCurve = sizeCurve;
    this.crossFadeState = crossFadeState;
    this.duration = duration;
    this.reverseDuration = reverseDuration;
    this.layoutBuilder = layoutBuilder;
  }
}

const CrossFadeState = {
  /// Show the first child ([AnimatedCrossFade.firstChild]) and hide the second
  /// ([AnimatedCrossFade.secondChild]]).
  showFirst: "CrossFadeState.showFirst",
  /// Show the second child ([AnimatedCrossFade.secondChild]) and hide the first
  /// ([AnimatedCrossFade.firstChild]).
  showSecond: "CrossFadeState.showSecond",
}



class AnimatedDefaultTextStyle extends FlutterWidget {
  constructor({
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
    this.style = style;
    this.textAlign = textAlign;
    this.softWrap = softWrap;
    this.overflow = overflow;
    this.maxLines = maxLines;
    this.duration = duration;
    this.onEnd = onEnd;
  }
}

class AnimatedOpacity extends FlutterWidget {
  constructor({
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

class AnimatedPhysicalModel extends FlutterWidget {
  constructor({
    key,
    child,
    shape,
    clipBehavior,
    borderRadius,
    elevation,
    color,
    animateColor,
    shadowColor,
    animateShadowColor,
    curve,
    duration,
    onEnd,
  } = {}) {
    super();

    this.key = key;
    this.child = child;
    this.shape = shape;
    this.clipBehavior = clipBehavior;
    this.borderRadius = borderRadius;
    this.elevation = elevation;
    this.color = color;
    this.animateColor = animateColor;
    this.shadowColor = shadowColor;
    this.animateShadowColor = animateShadowColor;
    this.curve = curve;
    this.duration = duration;
    this.onEnd = onEnd;
  }
}

class AnimatedPositioned extends FlutterWidget {
  constructor({
    key,
    child,
    left,
    top,
    right,
    bottom,
    width,
    height,
    curve,
    duration,
    onEnd,
  } = {}) {
    super();

    this.key = key;
    this.child = child;
    this.left = left;
    this.top = top;
    this.right = right;
    this.bottom = bottom;
    this.width = width;
    this.height = height;
    this.curve = curve;
    this.duration = duration;
    this.onEnd = onEnd;
  }
}

class AnimatedSize extends FlutterWidget {
  constructor({
    key,
    child,
    alignment,
    curve,
    duration,
    reverseDuration,
    vsync,
  } = {}) {
    super();

    this.key = key;
    this.child = child;
    this.alignment = alignment;
    this.curve = curve;
    this.duration = duration;
    this.reverseDuration = reverseDuration;
    this.vsync = vsync;
  }
}

class DecoratedBoxTransition extends FlutterWidget {
  constructor({
    key,
    decoration,
    position,
    child,
  } = {}) {
    super();

    this.key = key;
    this.decoration = decoration;
    this.position = position;
    this.child = child;
  }


}

class DecorationTween extends FlutterWidget {
  constructor({
    begin,
    end,
  } = {}) {
    super();

    this.begin = begin;
    this.end = end;

    //MXFlutter特殊逻辑
    this.controller = null;
  }

  // animate(parent) {
  //   const argument = new FlutterCallArgs({
  //     mirrorID: this.mirrorID,
  //     className: 'DecorationTween',
  //     funcName: 'animate',
  //     args: {
  //       parent: parent,
  //     },
  //   });
  //   invokeFlutterFunction(argument);
  // }

  //MXFlutter特殊逻辑
  animate(controller){
    this.controller = controller;
    return this;
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
  RectTween,
  Curve,
  Cubic,
  AnimatedContainer,
  AnimatedCrossFade,
  CrossFadeState,
  AnimatedDefaultTextStyle,
  AnimatedOpacity,
  AnimatedPhysicalModel,
  AnimatedPositioned,
  AnimatedSize,
  DecorationTween,
  DecoratedBoxTransition,
};
