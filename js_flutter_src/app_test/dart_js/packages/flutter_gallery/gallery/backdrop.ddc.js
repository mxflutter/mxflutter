'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const math = dart_sdk.math;
const ui = dart_sdk.ui;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const focus_scope = packages__flutter__src__widgets__actions.src__widgets__focus_scope;
const transitions = packages__flutter__src__widgets__actions.src__widgets__transitions;
const icon_theme = packages__flutter__src__widgets__actions.src__widgets__icon_theme;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const container = packages__flutter__src__widgets__actions.src__widgets__container;
const visibility = packages__flutter__src__widgets__actions.src__widgets__visibility;
const gesture_detector = packages__flutter__src__widgets__actions.src__widgets__gesture_detector;
const layout_builder = packages__flutter__src__widgets__actions.src__widgets__layout_builder;
const ticker_provider = packages__flutter__src__widgets__actions.src__widgets__ticker_provider;
const implicit_animations = packages__flutter__src__widgets__actions.src__widgets__implicit_animations;
const packages__flutter__src__animation__animation = require('packages/flutter/src/animation/animation');
const animation_controller = packages__flutter__src__animation__animation.src__animation__animation_controller;
const animation = packages__flutter__src__animation__animation.src__animation__animation;
const animations = packages__flutter__src__animation__animation.src__animation__animations;
const curves = packages__flutter__src__animation__animation.src__animation__curves;
const tween = packages__flutter__src__animation__animation.src__animation__tween;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const alignment = packages__flutter__src__painting___network_image_web.src__painting__alignment;
const beveled_rectangle_border = packages__flutter__src__painting___network_image_web.src__painting__beveled_rectangle_border;
const border_radius = packages__flutter__src__painting___network_image_web.src__painting__border_radius;
const packages__flutter__material = require('packages/flutter/material');
const theme$ = packages__flutter__material.src__material__theme;
const icon_button = packages__flutter__material.src__material__icon_button;
const animated_icons = packages__flutter__material.src__material__animated_icons;
const packages__flutter__src__rendering__animated_size = require('packages/flutter/src/rendering/animated_size');
const box = packages__flutter__src__rendering__animated_size.src__rendering__box;
const stack = packages__flutter__src__rendering__animated_size.src__rendering__stack;
const flex = packages__flutter__src__rendering__animated_size.src__rendering__flex;
const proxy_box = packages__flutter__src__rendering__animated_size.src__rendering__proxy_box;
const packages__flutter__src__gestures__arena = require('packages/flutter/src/gestures/arena');
const drag_details = packages__flutter__src__gestures__arena.src__gestures__drag_details;
const backdrop = Object.create(dart.library);
const $add = dartx.add;
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let AnimationOfdouble = () => (AnimationOfdouble = dart.constFn(animation.Animation$(core.double)))();
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
let StateOfStatefulWidget = () => (StateOfStatefulWidget = dart.constFn(framework.State$(framework.StatefulWidget)))();
let GlobalKeyOfStateOfStatefulWidget = () => (GlobalKeyOfStateOfStatefulWidget = dart.constFn(framework.GlobalKey$(StateOfStatefulWidget())))();
let BuildContextAndWidgetToPhysicalShape = () => (BuildContextAndWidgetToPhysicalShape = dart.constFn(dart.fnType(basic.PhysicalShape, [framework.BuildContext, framework.Widget])))();
let TweenOfdouble = () => (TweenOfdouble = dart.constFn(tween.Tween$(core.double)))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C9() {
    return C9 = dart.const({
      __proto__: alignment.Alignment.prototype,
      [Alignment_y]: 0,
      [Alignment_x]: 0
    });
  },
  get C11() {
    return C11 = dart.const({
      __proto__: curves._Linear.prototype
    });
  },
  get C10() {
    return C10 = dart.const({
      __proto__: curves.Interval.prototype,
      [Interval_curve]: C11 || CT.C11,
      [Interval_end]: 1,
      [Interval_begin]: 0.5
    });
  },
  get C34() {
    return C34 = dart.const({
      __proto__: basic.SizedBox.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: null,
      [SizedBox_height]: null,
      [SizedBox_width]: 56
    });
  },
  get C59() {
    return C59 = dart.const({
      __proto__: core.Duration.prototype,
      [Duration__duration]: 300000
    });
  },
  get C60() {
    return C60 = dart.const({
      __proto__: stack.RelativeRect.prototype,
      [RelativeRect_bottom]: 0,
      [RelativeRect_right]: 0,
      [RelativeRect_top]: 56,
      [RelativeRect_left]: 0
    });
  },
  get C157() {
    return C157 = dart.const({
      __proto__: curves.Cubic.prototype,
      [Cubic_d]: 1,
      [Cubic_c]: 0.58,
      [Cubic_b]: 0,
      [Cubic_a]: 0.42
    });
  },
  get C156() {
    return C156 = dart.const({
      __proto__: curves.Interval.prototype,
      [Interval_curve]: C157 || CT.C157,
      [Interval_end]: 0.4,
      [Interval_begin]: 0
    });
  },
  get C159() {
    return C159 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 0,
      [Radius_x]: 0
    });
  },
  get C160() {
    return C160 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 12,
      [Radius_x]: 12
    });
  },
  get C158() {
    return C158 = dart.const({
      __proto__: border_radius.BorderRadius.prototype,
      [BorderRadius_bottomRight]: C159 || CT.C159,
      [BorderRadius_bottomLeft]: C159 || CT.C159,
      [BorderRadius_topRight]: C160 || CT.C160,
      [BorderRadius_topLeft]: C160 || CT.C160
    });
  },
  get C162() {
    return C162 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 32,
      [Radius_x]: 32
    });
  },
  get C161() {
    return C161 = dart.const({
      __proto__: border_radius.BorderRadius.prototype,
      [BorderRadius_bottomRight]: C159 || CT.C159,
      [BorderRadius_bottomLeft]: C159 || CT.C159,
      [BorderRadius_topRight]: C162 || CT.C162,
      [BorderRadius_topLeft]: C162 || CT.C162
    });
  }
});
const controller$ = dart.privateName(backdrop, "_TappableWhileStatusIs.controller");
const status$ = dart.privateName(backdrop, "_TappableWhileStatusIs.status");
const child$ = dart.privateName(backdrop, "_TappableWhileStatusIs.child");
backdrop._TappableWhileStatusIs = class _TappableWhileStatusIs extends framework.StatefulWidget {
  get controller() {
    return this[controller$];
  }
  set controller(value) {
    super.controller = value;
  }
  get status() {
    return this[status$];
  }
  set status(value) {
    super.status = value;
  }
  get child() {
    return this[child$];
  }
  set child(value) {
    super.child = value;
  }
  createState() {
    return new backdrop._TappableWhileStatusIsState.new();
  }
};
(backdrop._TappableWhileStatusIs.new = function(status, opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let controller = opts && 'controller' in opts ? opts.controller : null;
  let child = opts && 'child' in opts ? opts.child : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[status$] = status;
  this[controller$] = controller;
  this[child$] = child;
  backdrop._TappableWhileStatusIs.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = backdrop._TappableWhileStatusIs.prototype;
dart.addTypeTests(backdrop._TappableWhileStatusIs);
dart.setMethodSignature(backdrop._TappableWhileStatusIs, () => ({
  __proto__: dart.getMethods(backdrop._TappableWhileStatusIs.__proto__),
  createState: dart.fnType(backdrop._TappableWhileStatusIsState, [])
}));
dart.setLibraryUri(backdrop._TappableWhileStatusIs, "package:flutter_gallery/gallery/backdrop.dart");
dart.setFieldSignature(backdrop._TappableWhileStatusIs, () => ({
  __proto__: dart.getFields(backdrop._TappableWhileStatusIs.__proto__),
  controller: dart.finalFieldType(animation_controller.AnimationController),
  status: dart.finalFieldType(animation.AnimationStatus),
  child: dart.finalFieldType(framework.Widget)
}));
const _active = dart.privateName(backdrop, "_active");
const _handleStatusChange = dart.privateName(backdrop, "_handleStatusChange");
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
backdrop._TappableWhileStatusIsState = class _TappableWhileStatusIsState extends framework.State$(backdrop._TappableWhileStatusIs) {
  initState() {
    super.initState();
    this.widget.controller.addStatusListener(dart.bind(this, _handleStatusChange));
    this[_active] = dart.equals(this.widget.controller.status, this.widget.status);
  }
  dispose() {
    this.widget.controller.removeStatusListener(dart.bind(this, _handleStatusChange));
    super.dispose();
  }
  [_handleStatusChange](status) {
    let value = dart.equals(this.widget.controller.status, this.widget.status);
    if (!dart.equals(this[_active], value)) {
      this.setState(dart.fn(() => {
        this[_active] = value;
      }, VoidToNull()));
    }
  }
  build(context) {
    let child = new basic.AbsorbPointer.new({absorbing: !dart.test(this[_active]), child: this.widget.child, $creationLocationd_0dea112b090073317d4: C0 || CT.C0});
    if (!dart.test(this[_active])) {
      child = new focus_scope.FocusScope.new({canRequestFocus: false, debugLabel: dart.str(dart.wrapType(backdrop._TappableWhileStatusIs)), child: child, $creationLocationd_0dea112b090073317d4: C4 || CT.C4});
    }
    return child;
  }
};
(backdrop._TappableWhileStatusIsState.new = function() {
  this[_active] = null;
  backdrop._TappableWhileStatusIsState.__proto__.new.call(this);
  ;
}).prototype = backdrop._TappableWhileStatusIsState.prototype;
dart.addTypeTests(backdrop._TappableWhileStatusIsState);
dart.setMethodSignature(backdrop._TappableWhileStatusIsState, () => ({
  __proto__: dart.getMethods(backdrop._TappableWhileStatusIsState.__proto__),
  [_handleStatusChange]: dart.fnType(dart.void, [animation.AnimationStatus]),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(backdrop._TappableWhileStatusIsState, "package:flutter_gallery/gallery/backdrop.dart");
dart.setFieldSignature(backdrop._TappableWhileStatusIsState, () => ({
  __proto__: dart.getFields(backdrop._TappableWhileStatusIsState.__proto__),
  [_active]: dart.fieldType(core.bool)
}));
const Alignment_y = dart.privateName(alignment, "Alignment.y");
const Alignment_x = dart.privateName(alignment, "Alignment.x");
let C9;
let C11;
const Interval_curve = dart.privateName(curves, "Interval.curve");
const Interval_end = dart.privateName(curves, "Interval.end");
const Interval_begin = dart.privateName(curves, "Interval.begin");
let C10;
const alignment$ = dart.privateName(backdrop, "_CrossFadeTransition.alignment");
const child0$ = dart.privateName(backdrop, "_CrossFadeTransition.child0");
const child1$ = dart.privateName(backdrop, "_CrossFadeTransition.child1");
backdrop._CrossFadeTransition = class _CrossFadeTransition extends transitions.AnimatedWidget {
  get alignment() {
    return this[alignment$];
  }
  set alignment(value) {
    super.alignment = value;
  }
  get child0() {
    return this[child0$];
  }
  set child0(value) {
    super.child0 = value;
  }
  get child1() {
    return this[child1$];
  }
  set child1(value) {
    super.child1 = value;
  }
  build(context) {
    let progress = AnimationOfdouble()._check(this.listenable);
    let opacity1 = new animations.CurvedAnimation.new({parent: new animations.ReverseAnimation.new(progress), curve: C10 || CT.C10}).value;
    let opacity2 = new animations.CurvedAnimation.new({parent: progress, curve: C10 || CT.C10}).value;
    return new basic.Stack.new({alignment: this.alignment, children: JSArrayOfWidget().of([new basic.Opacity.new({opacity: opacity1, child: new basic.Semantics.new({scopesRoute: true, explicitChildNodes: true, child: this.child1, $creationLocationd_0dea112b090073317d4: C12 || CT.C12}), $creationLocationd_0dea112b090073317d4: C17 || CT.C17}), new basic.Opacity.new({opacity: opacity2, child: new basic.Semantics.new({scopesRoute: true, explicitChildNodes: true, child: this.child0, $creationLocationd_0dea112b090073317d4: C21 || CT.C21}), $creationLocationd_0dea112b090073317d4: C26 || CT.C26})]), $creationLocationd_0dea112b090073317d4: C30 || CT.C30});
  }
};
(backdrop._CrossFadeTransition.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let alignment = opts && 'alignment' in opts ? opts.alignment : C9 || CT.C9;
  let progress = opts && 'progress' in opts ? opts.progress : null;
  let child0 = opts && 'child0' in opts ? opts.child0 : null;
  let child1 = opts && 'child1' in opts ? opts.child1 : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[alignment$] = alignment;
  this[child0$] = child0;
  this[child1$] = child1;
  backdrop._CrossFadeTransition.__proto__.new.call(this, {key: key, listenable: progress, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = backdrop._CrossFadeTransition.prototype;
dart.addTypeTests(backdrop._CrossFadeTransition);
dart.setMethodSignature(backdrop._CrossFadeTransition, () => ({
  __proto__: dart.getMethods(backdrop._CrossFadeTransition.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(backdrop._CrossFadeTransition, "package:flutter_gallery/gallery/backdrop.dart");
dart.setFieldSignature(backdrop._CrossFadeTransition, () => ({
  __proto__: dart.getFields(backdrop._CrossFadeTransition.__proto__),
  alignment: dart.finalFieldType(alignment.AlignmentGeometry),
  child0: dart.finalFieldType(framework.Widget),
  child1: dart.finalFieldType(framework.Widget)
}));
const Widget_key = dart.privateName(framework, "Widget.key");
const SingleChildRenderObjectWidget_child = dart.privateName(framework, "SingleChildRenderObjectWidget.child");
const SizedBox_height = dart.privateName(basic, "SizedBox.height");
const SizedBox_width = dart.privateName(basic, "SizedBox.width");
let C34;
const leading$ = dart.privateName(backdrop, "_BackAppBar.leading");
const title$ = dart.privateName(backdrop, "_BackAppBar.title");
const trailing$ = dart.privateName(backdrop, "_BackAppBar.trailing");
backdrop._BackAppBar = class _BackAppBar extends framework.StatelessWidget {
  get leading() {
    return this[leading$];
  }
  set leading(value) {
    super.leading = value;
  }
  get title() {
    return this[title$];
  }
  set title(value) {
    super.title = value;
  }
  get trailing() {
    return this[trailing$];
  }
  set trailing(value) {
    super.trailing = value;
  }
  build(context) {
    let theme = theme$.Theme.of(context);
    return icon_theme.IconTheme.merge({data: theme.primaryIconTheme, child: new text.DefaultTextStyle.new({style: theme.primaryTextTheme.title, child: new basic.SizedBox.new({height: 56, child: new basic.Row.new({children: (() => {
              let t0 = JSArrayOfWidget().of([]);
              t0[$add](new container.Container.new({alignment: alignment.Alignment.center, width: 56.0, child: this.leading, $creationLocationd_0dea112b090073317d4: C35 || CT.C35}));
              t0[$add](new basic.Expanded.new({child: this.title, $creationLocationd_0dea112b090073317d4: C40 || CT.C40}));
              if (this.trailing != null) t0[$add](new container.Container.new({alignment: alignment.Alignment.center, width: 56.0, child: this.trailing, $creationLocationd_0dea112b090073317d4: C43 || CT.C43}));
              return t0;
            })(), $creationLocationd_0dea112b090073317d4: C48 || CT.C48}), $creationLocationd_0dea112b090073317d4: C51 || CT.C51}), $creationLocationd_0dea112b090073317d4: C55 || CT.C55})});
  }
};
(backdrop._BackAppBar.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let leading = opts && 'leading' in opts ? opts.leading : C34 || CT.C34;
  let title = opts && 'title' in opts ? opts.title : null;
  let trailing = opts && 'trailing' in opts ? opts.trailing : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[leading$] = leading;
  this[title$] = title;
  this[trailing$] = trailing;
  if (!(leading != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/gallery/backdrop.dart", 142, 15, "leading != null");
  if (!(title != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/gallery/backdrop.dart", 142, 40, "title != null");
  backdrop._BackAppBar.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = backdrop._BackAppBar.prototype;
dart.addTypeTests(backdrop._BackAppBar);
dart.setMethodSignature(backdrop._BackAppBar, () => ({
  __proto__: dart.getMethods(backdrop._BackAppBar.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(backdrop._BackAppBar, "package:flutter_gallery/gallery/backdrop.dart");
dart.setFieldSignature(backdrop._BackAppBar, () => ({
  __proto__: dart.getFields(backdrop._BackAppBar.__proto__),
  leading: dart.finalFieldType(framework.Widget),
  title: dart.finalFieldType(framework.Widget),
  trailing: dart.finalFieldType(framework.Widget)
}));
const frontAction$ = dart.privateName(backdrop, "Backdrop.frontAction");
const frontTitle$ = dart.privateName(backdrop, "Backdrop.frontTitle");
const frontLayer$ = dart.privateName(backdrop, "Backdrop.frontLayer");
const frontHeading$ = dart.privateName(backdrop, "Backdrop.frontHeading");
const backTitle$ = dart.privateName(backdrop, "Backdrop.backTitle");
const backLayer$ = dart.privateName(backdrop, "Backdrop.backLayer");
backdrop.Backdrop = class Backdrop extends framework.StatefulWidget {
  get frontAction() {
    return this[frontAction$];
  }
  set frontAction(value) {
    super.frontAction = value;
  }
  get frontTitle() {
    return this[frontTitle$];
  }
  set frontTitle(value) {
    super.frontTitle = value;
  }
  get frontLayer() {
    return this[frontLayer$];
  }
  set frontLayer(value) {
    super.frontLayer = value;
  }
  get frontHeading() {
    return this[frontHeading$];
  }
  set frontHeading(value) {
    super.frontHeading = value;
  }
  get backTitle() {
    return this[backTitle$];
  }
  set backTitle(value) {
    super.backTitle = value;
  }
  get backLayer() {
    return this[backLayer$];
  }
  set backLayer(value) {
    super.backLayer = value;
  }
  createState() {
    return new backdrop._BackdropState.new();
  }
};
(backdrop.Backdrop.new = function(opts) {
  let frontAction = opts && 'frontAction' in opts ? opts.frontAction : null;
  let frontTitle = opts && 'frontTitle' in opts ? opts.frontTitle : null;
  let frontHeading = opts && 'frontHeading' in opts ? opts.frontHeading : null;
  let frontLayer = opts && 'frontLayer' in opts ? opts.frontLayer : null;
  let backTitle = opts && 'backTitle' in opts ? opts.backTitle : null;
  let backLayer = opts && 'backLayer' in opts ? opts.backLayer : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[frontAction$] = frontAction;
  this[frontTitle$] = frontTitle;
  this[frontHeading$] = frontHeading;
  this[frontLayer$] = frontLayer;
  this[backTitle$] = backTitle;
  this[backLayer$] = backLayer;
  backdrop.Backdrop.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = backdrop.Backdrop.prototype;
dart.addTypeTests(backdrop.Backdrop);
dart.setMethodSignature(backdrop.Backdrop, () => ({
  __proto__: dart.getMethods(backdrop.Backdrop.__proto__),
  createState: dart.fnType(backdrop._BackdropState, [])
}));
dart.setLibraryUri(backdrop.Backdrop, "package:flutter_gallery/gallery/backdrop.dart");
dart.setFieldSignature(backdrop.Backdrop, () => ({
  __proto__: dart.getFields(backdrop.Backdrop.__proto__),
  frontAction: dart.finalFieldType(framework.Widget),
  frontTitle: dart.finalFieldType(framework.Widget),
  frontLayer: dart.finalFieldType(framework.Widget),
  frontHeading: dart.finalFieldType(framework.Widget),
  backTitle: dart.finalFieldType(framework.Widget),
  backLayer: dart.finalFieldType(framework.Widget)
}));
const _backdropKey = dart.privateName(backdrop, "_backdropKey");
const _controller = dart.privateName(backdrop, "_controller");
const _frontOpacity = dart.privateName(backdrop, "_frontOpacity");
const Duration__duration = dart.privateName(core, "Duration._duration");
let C59;
const _backdropHeight = dart.privateName(backdrop, "_backdropHeight");
const _handleDragUpdate = dart.privateName(backdrop, "_handleDragUpdate");
const _handleDragEnd = dart.privateName(backdrop, "_handleDragEnd");
const _toggleFrontLayer = dart.privateName(backdrop, "_toggleFrontLayer");
const RelativeRect_bottom = dart.privateName(stack, "RelativeRect.bottom");
const RelativeRect_right = dart.privateName(stack, "RelativeRect.right");
const RelativeRect_top = dart.privateName(stack, "RelativeRect.top");
const RelativeRect_left = dart.privateName(stack, "RelativeRect.left");
let C60;
const _buildStack = dart.privateName(backdrop, "_buildStack");
const Cubic_d = dart.privateName(curves, "Cubic.d");
const Cubic_c = dart.privateName(curves, "Cubic.c");
const Cubic_b = dart.privateName(curves, "Cubic.b");
const Cubic_a = dart.privateName(curves, "Cubic.a");
let C157;
let C156;
const State_SingleTickerProviderStateMixin$36 = class State_SingleTickerProviderStateMixin extends framework.State$(backdrop.Backdrop) {};
(State_SingleTickerProviderStateMixin$36.new = function() {
  ticker_provider.SingleTickerProviderStateMixin$(backdrop.Backdrop)[dart.mixinNew].call(this);
  State_SingleTickerProviderStateMixin$36.__proto__.new.call(this);
}).prototype = State_SingleTickerProviderStateMixin$36.prototype;
dart.applyMixin(State_SingleTickerProviderStateMixin$36, ticker_provider.SingleTickerProviderStateMixin$(backdrop.Backdrop));
backdrop._BackdropState = class _BackdropState extends State_SingleTickerProviderStateMixin$36 {
  initState() {
    super.initState();
    this[_controller] = new animation_controller.AnimationController.new({duration: C59 || CT.C59, value: 1.0, vsync: this});
    this[_frontOpacity] = this[_controller].drive(core.double, backdrop._BackdropState._frontOpacityTween);
  }
  dispose() {
    this[_controller].dispose();
    super.dispose();
  }
  get [_backdropHeight]() {
    let renderBox = box.RenderBox._check(this[_backdropKey].currentContext.findRenderObject());
    return math.max(core.double, 0.0, dart.notNull(renderBox.size.height) - 56 - 92);
  }
  [_handleDragUpdate](details) {
    let t2, t1;
    t1 = this[_controller];
    t1.value = dart.notNull(t1.value) - dart.notNull(details.primaryDelta) / dart.notNull((t2 = this[_backdropHeight], t2 == null ? details.primaryDelta : t2));
  }
  [_handleDragEnd](details) {
    if (dart.test(this[_controller].isAnimating) || dart.equals(this[_controller].status, animation.AnimationStatus.completed)) return;
    let flingVelocity = dart.notNull(details.velocity.pixelsPerSecond.dy) / dart.notNull(this[_backdropHeight]);
    if (flingVelocity < 0.0)
      this[_controller].fling({velocity: math.max(core.double, 2.0, -flingVelocity)});
    else if (flingVelocity > 0.0)
      this[_controller].fling({velocity: math.min(core.double, -2.0, -flingVelocity)});
    else
      this[_controller].fling({velocity: dart.notNull(this[_controller].value) < 0.5 ? -2.0 : 2.0});
  }
  [_toggleFrontLayer]() {
    let status = this[_controller].status;
    let isOpen = dart.equals(status, animation.AnimationStatus.completed) || dart.equals(status, animation.AnimationStatus.forward);
    this[_controller].fling({velocity: isOpen ? -2.0 : 2.0});
  }
  [_buildStack](context, constraints) {
    let frontRelativeRect = this[_controller].drive(stack.RelativeRect, new transitions.RelativeRectTween.new({begin: new stack.RelativeRect.fromLTRB(0.0, dart.notNull(constraints.biggest.height) - 92, 0.0, 0.0), end: C60 || CT.C60}));
    return new basic.Stack.new({key: this[_backdropKey], children: (() => {
        let t1 = JSArrayOfWidget().of([]);
        t1[$add](new basic.Column.new({crossAxisAlignment: flex.CrossAxisAlignment.stretch, children: JSArrayOfWidget().of([new backdrop._BackAppBar.new({leading: this.widget.frontAction, title: new backdrop._CrossFadeTransition.new({progress: this[_controller], alignment: alignment.AlignmentDirectional.centerStart, child0: new basic.Semantics.new({namesRoute: true, child: this.widget.frontTitle, $creationLocationd_0dea112b090073317d4: C61 || CT.C61}), child1: new basic.Semantics.new({namesRoute: true, child: this.widget.backTitle, $creationLocationd_0dea112b090073317d4: C65 || CT.C65}), $creationLocationd_0dea112b090073317d4: C69 || CT.C69}), trailing: new icon_button.IconButton.new({onPressed: dart.bind(this, _toggleFrontLayer), tooltip: "Toggle options page", icon: new animated_icons.AnimatedIcon.new({icon: animated_icons.AnimatedIcons.close_menu, progress: this[_controller], $creationLocationd_0dea112b090073317d4: C75 || CT.C75}), $creationLocationd_0dea112b090073317d4: C79 || CT.C79}), $creationLocationd_0dea112b090073317d4: C84 || CT.C84}), new basic.Expanded.new({child: new backdrop._TappableWhileStatusIs.new(animation.AnimationStatus.dismissed, {controller: this[_controller], child: new visibility.Visibility.new({child: this.widget.backLayer, visible: !dart.equals(this[_controller].status, animation.AnimationStatus.completed), maintainState: true, $creationLocationd_0dea112b090073317d4: C89 || CT.C89}), $creationLocationd_0dea112b090073317d4: C94 || CT.C94}), $creationLocationd_0dea112b090073317d4: C99 || CT.C99})]), $creationLocationd_0dea112b090073317d4: C102 || CT.C102}));
        t1[$add](new transitions.PositionedTransition.new({rect: frontRelativeRect, child: new transitions.AnimatedBuilder.new({animation: this[_controller], builder: dart.fn((context, child) => new basic.PhysicalShape.new({elevation: 12.0, color: theme$.Theme.of(context).canvasColor, clipper: new proxy_box.ShapeBorderClipper.new({shape: new beveled_rectangle_border.BeveledRectangleBorder.new({borderRadius: backdrop._kFrontHeadingBevelRadius.transform(this[_controller].value)})}), clipBehavior: ui.Clip.antiAlias, child: child, $creationLocationd_0dea112b090073317d4: C106 || CT.C106}), BuildContextAndWidgetToPhysicalShape()), child: new backdrop._TappableWhileStatusIs.new(animation.AnimationStatus.completed, {controller: this[_controller], child: new transitions.FadeTransition.new({opacity: this[_frontOpacity], child: this.widget.frontLayer, $creationLocationd_0dea112b090073317d4: C113 || CT.C113}), $creationLocationd_0dea112b090073317d4: C117 || CT.C117}), $creationLocationd_0dea112b090073317d4: C122 || CT.C122}), $creationLocationd_0dea112b090073317d4: C127 || CT.C127}));
        if (this.widget.frontHeading != null) t1[$add](new transitions.PositionedTransition.new({rect: frontRelativeRect, child: new basic.ExcludeSemantics.new({child: new container.Container.new({alignment: alignment.Alignment.topLeft, child: new gesture_detector.GestureDetector.new({behavior: proxy_box.HitTestBehavior.opaque, onTap: dart.bind(this, _toggleFrontLayer), onVerticalDragUpdate: dart.bind(this, _handleDragUpdate), onVerticalDragEnd: dart.bind(this, _handleDragEnd), child: this.widget.frontHeading, $creationLocationd_0dea112b090073317d4: C131 || CT.C131}), $creationLocationd_0dea112b090073317d4: C138 || CT.C138}), $creationLocationd_0dea112b090073317d4: C142 || CT.C142}), $creationLocationd_0dea112b090073317d4: C145 || CT.C145}));
        return t1;
      })(), $creationLocationd_0dea112b090073317d4: C149 || CT.C149});
  }
  build(context) {
    return new layout_builder.LayoutBuilder.new({builder: dart.bind(this, _buildStack), $creationLocationd_0dea112b090073317d4: C153 || CT.C153});
  }
};
(backdrop._BackdropState.new = function() {
  this[_backdropKey] = GlobalKeyOfStateOfStatefulWidget().new({debugLabel: "Backdrop"});
  this[_controller] = null;
  this[_frontOpacity] = null;
  backdrop._BackdropState.__proto__.new.call(this);
  ;
}).prototype = backdrop._BackdropState.prototype;
dart.addTypeTests(backdrop._BackdropState);
dart.setMethodSignature(backdrop._BackdropState, () => ({
  __proto__: dart.getMethods(backdrop._BackdropState.__proto__),
  [_handleDragUpdate]: dart.fnType(dart.void, [drag_details.DragUpdateDetails]),
  [_handleDragEnd]: dart.fnType(dart.void, [drag_details.DragEndDetails]),
  [_toggleFrontLayer]: dart.fnType(dart.void, []),
  [_buildStack]: dart.fnType(framework.Widget, [framework.BuildContext, box.BoxConstraints]),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setGetterSignature(backdrop._BackdropState, () => ({
  __proto__: dart.getGetters(backdrop._BackdropState.__proto__),
  [_backdropHeight]: core.double
}));
dart.setLibraryUri(backdrop._BackdropState, "package:flutter_gallery/gallery/backdrop.dart");
dart.setFieldSignature(backdrop._BackdropState, () => ({
  __proto__: dart.getFields(backdrop._BackdropState.__proto__),
  [_backdropKey]: dart.finalFieldType(framework.GlobalKey$(framework.State$(framework.StatefulWidget))),
  [_controller]: dart.fieldType(animation_controller.AnimationController),
  [_frontOpacity]: dart.fieldType(animation.Animation$(core.double))
}));
dart.defineLazy(backdrop._BackdropState, {
  /*backdrop._BackdropState._frontOpacityTween*/get _frontOpacityTween() {
    return new (TweenOfdouble()).new({begin: 0.2, end: 1.0}).chain(new tween.CurveTween.new({curve: C156 || CT.C156}));
  }
});
const Radius_y = dart.privateName(ui, "Radius.y");
const Radius_x = dart.privateName(ui, "Radius.x");
let C159;
const BorderRadius_bottomRight = dart.privateName(border_radius, "BorderRadius.bottomRight");
const BorderRadius_bottomLeft = dart.privateName(border_radius, "BorderRadius.bottomLeft");
let C160;
const BorderRadius_topRight = dart.privateName(border_radius, "BorderRadius.topRight");
const BorderRadius_topLeft = dart.privateName(border_radius, "BorderRadius.topLeft");
let C158;
let C162;
let C161;
dart.defineLazy(backdrop, {
  /*backdrop._kFrontHeadingHeight*/get _kFrontHeadingHeight() {
    return 32;
  },
  /*backdrop._kFrontClosedHeight*/get _kFrontClosedHeight() {
    return 92;
  },
  /*backdrop._kBackAppBarHeight*/get _kBackAppBarHeight() {
    return 56;
  },
  /*backdrop._kFrontHeadingBevelRadius*/get _kFrontHeadingBevelRadius() {
    return new implicit_animations.BorderRadiusTween.new({begin: C158 || CT.C158, end: C161 || CT.C161});
  }
});
dart.trackLibraries("packages/flutter_gallery/gallery/backdrop", {
  "package:flutter_gallery/gallery/backdrop.dart": backdrop
}, {
}, '{"version":3,"sourceRoot":"","sources":["backdrop.dart"],"names":[],"mappings":"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","file":"backdrop.ddc.js"}');
// Exports:
exports.gallery__backdrop = backdrop;

//# sourceMappingURL=backdrop.ddc.js.map
