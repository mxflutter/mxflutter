let { FlutterWidget, FlutterCallArgs } = require("./js_flutter_basic_types.js");

let { invokeFlutterFunction } = require("./js_flutter_framework.js");
const dart_sdk = require("dart_sdk");
const dart = dart_sdk.dart;
const ui = dart_sdk.ui;
const dartx = dart_sdk.dartx;
const core = dart_sdk.core;
const $clamp = dartx.clamp;

class Animation extends FlutterWidget {
  constructor({ tween, controller } = {}) {
    super();

    this.tween = tween;
    this.controller = controller;
    this.statusListenerList = [];
    this.listenerList = [];
  }

  statusListenerCallback(status) {
    for (var funcKey in this.statusListenerList) {
      this.statusListenerList[funcKey](status);
    }
  }

  listenerCallback(status) {
    for (var funcKey in this.listenerList) {
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
    var index = this.listenerList.indexOf(callback);
    this.listenerList.splice(index);
  }

  addStatusListener(callback) {
    this.statusListenerList.push(callback);
  }

  removeStatusListener(callback) {
    var index = this.statusListenerList.indexOf(callback);
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

Tween.new = function(args) {
  return new Tween(args);
};

class RectTween extends FlutterWidget {
  constructor ({
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

RectTween.new = function(args) {
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

    this.value = value;
    this.duration = duration;
    this.debugLabel = debugLabel;
    this.lowerBound = lowerBound;
    this.upperBound = upperBound;
    this.animationBehavior = animationBehavior;
    this.vsync = vsync;
  }

  ///TODO:
  dispose() {}

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
  constructor({ key, animation, builder, child, widget } = {}) {
    super();

    this.key = key;
    this.animation = animation;
    this.builder = builder;
    this.child = child;
    this.widget = widget;
  }
}

class Duration extends FlutterWidget {
  constructor({ days, hours, minutes, seconds, milliseconds } = {}) {
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
  constructor({ curve } = {}) {
    super();

    this.curve = curve;
  }
}

class Curve extends FlutterWidget {
  constructor () {
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
  constructor({ key, position, transformHitTests, textDirection, child } = {}) {
    super();

    this.key = key;
    this.position = position;
    this.transformHitTests = transformHitTests;
    this.textDirection = textDirection;
    this.child = child;
  }
}

class Cubic extends Curve {
  constructor (
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
    3 * b * (1 - m) *           m * m +
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
};
