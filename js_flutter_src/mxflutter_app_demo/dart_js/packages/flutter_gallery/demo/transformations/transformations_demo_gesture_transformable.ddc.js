'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const ui = dart_sdk.ui;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const gesture_detector = packages__flutter__src__widgets__actions.src__widgets__gesture_detector;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const container = packages__flutter__src__widgets__actions.src__widgets__container;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const implicit_animations = packages__flutter__src__widgets__actions.src__widgets__implicit_animations;
const ticker_provider = packages__flutter__src__widgets__actions.src__widgets__ticker_provider;
const packages__flutter__src__gestures__arena = require('packages/flutter/src/gestures/arena');
const tap = packages__flutter__src__gestures__arena.src__gestures__tap;
const drag_details = packages__flutter__src__gestures__arena.src__gestures__drag_details;
const scale$ = packages__flutter__src__gestures__arena.src__gestures__scale;
const packages__vector_math__vector_math_64 = require('packages/vector_math/vector_math_64');
const vector_math_64 = packages__vector_math__vector_math_64.vector_math_64;
const packages__flutter__src__rendering__animated_size = require('packages/flutter/src/rendering/animated_size');
const box = packages__flutter__src__rendering__animated_size.src__rendering__box;
const proxy_box = packages__flutter__src__rendering__animated_size.src__rendering__proxy_box;
const packages__flutter__src__animation__animation = require('packages/flutter/src/animation/animation');
const animation_controller = packages__flutter__src__animation__animation.src__animation__animation_controller;
const tween = packages__flutter__src__animation__animation.src__animation__tween;
const animation = packages__flutter__src__animation__animation.src__animation__animation;
const packages__flutter_gallery__demo__transformations__transformations_demo_inertial_motion = require('packages/flutter_gallery/demo/transformations/transformations_demo_inertial_motion');
const transformations_demo_inertial_motion = packages__flutter_gallery__demo__transformations__transformations_demo_inertial_motion.demo__transformations__transformations_demo_inertial_motion;
const transformations_demo_gesture_transformable = Object.create(dart.library);
const $clamp = dartx.clamp;
const $abs = dartx.abs;
const $toInt = dartx.toInt;
let TapDownDetailsToNull = () => (TapDownDetailsToNull = dart.constFn(dart.fnType(core.Null, [tap.TapDownDetails])))();
let TapUpDetailsToNull = () => (TapUpDetailsToNull = dart.constFn(dart.fnType(core.Null, [tap.TapUpDetails])))();
let DragDownDetailsToNull = () => (DragDownDetailsToNull = dart.constFn(dart.fnType(core.Null, [drag_details.DragDownDetails])))();
let DragStartDetailsToNull = () => (DragStartDetailsToNull = dart.constFn(dart.fnType(core.Null, [drag_details.DragStartDetails])))();
let DragUpdateDetailsToNull = () => (DragUpdateDetailsToNull = dart.constFn(dart.fnType(core.Null, [drag_details.DragUpdateDetails])))();
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let TweenOfOffset = () => (TweenOfOffset = dart.constFn(tween.Tween$(ui.Offset)))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: transformations_demo_gesture_transformable._GestureType.prototype,
      [_name$]: "_GestureType.translate",
      index: 0
    });
  },
  get C1() {
    return C1 = dart.const({
      __proto__: transformations_demo_gesture_transformable._GestureType.prototype,
      [_name$]: "_GestureType.scale",
      index: 1
    });
  },
  get C2() {
    return C2 = dart.const({
      __proto__: transformations_demo_gesture_transformable._GestureType.prototype,
      [_name$]: "_GestureType.rotate",
      index: 2
    });
  },
  get C3() {
    return C3 = dart.constList([C0 || CT.C0, C1 || CT.C1, C2 || CT.C2], transformations_demo_gesture_transformable._GestureType);
  },
  get C45() {
    return C45 = dart.const({
      __proto__: ui.Offset.prototype,
      [OffsetBase__dy]: 0,
      [OffsetBase__dx]: 0
    });
  },
  get C46() {
    return C46 = dart.const({
      __proto__: core.Duration.prototype,
      [Duration__duration]: 400000
    });
  }
});
const child$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.child");
const size$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.size");
const reset$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.reset");
const onTapDown$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onTapDown");
const onTapUp$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onTapUp");
const onTap$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onTap");
const onTapCancel$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onTapCancel");
const onDoubleTap$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onDoubleTap");
const onLongPress$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onLongPress");
const onLongPressUp$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onLongPressUp");
const onVerticalDragDown$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onVerticalDragDown");
const onVerticalDragStart$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onVerticalDragStart");
const onVerticalDragUpdate$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onVerticalDragUpdate");
const onVerticalDragEnd$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onVerticalDragEnd");
const onVerticalDragCancel$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onVerticalDragCancel");
const onHorizontalDragDown$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onHorizontalDragDown");
const onHorizontalDragStart$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onHorizontalDragStart");
const onHorizontalDragUpdate$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onHorizontalDragUpdate");
const onHorizontalDragEnd$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onHorizontalDragEnd");
const onHorizontalDragCancel$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onHorizontalDragCancel");
const onPanDown$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onPanDown");
const onPanStart$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onPanStart");
const onPanUpdate$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onPanUpdate");
const onPanEnd$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onPanEnd");
const onPanCancel$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onPanCancel");
const onResetEnd$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onResetEnd");
const onScaleStart$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onScaleStart");
const onScaleUpdate$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onScaleUpdate");
const onScaleEnd$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.onScaleEnd");
const maxScale$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.maxScale");
const minScale$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.minScale");
const boundaryRect$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.boundaryRect");
const disableTranslation$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.disableTranslation");
const disableScale$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.disableScale");
const disableRotation$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.disableRotation");
const initialTranslation$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.initialTranslation");
const initialScale$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.initialScale");
const initialRotation$ = dart.privateName(transformations_demo_gesture_transformable, "GestureTransformable.initialRotation");
transformations_demo_gesture_transformable.GestureTransformable = class GestureTransformable extends framework.StatefulWidget {
  get child() {
    return this[child$];
  }
  set child(value) {
    super.child = value;
  }
  get size() {
    return this[size$];
  }
  set size(value) {
    super.size = value;
  }
  get reset() {
    return this[reset$];
  }
  set reset(value) {
    super.reset = value;
  }
  get onTapDown() {
    return this[onTapDown$];
  }
  set onTapDown(value) {
    super.onTapDown = value;
  }
  get onTapUp() {
    return this[onTapUp$];
  }
  set onTapUp(value) {
    super.onTapUp = value;
  }
  get onTap() {
    return this[onTap$];
  }
  set onTap(value) {
    super.onTap = value;
  }
  get onTapCancel() {
    return this[onTapCancel$];
  }
  set onTapCancel(value) {
    super.onTapCancel = value;
  }
  get onDoubleTap() {
    return this[onDoubleTap$];
  }
  set onDoubleTap(value) {
    super.onDoubleTap = value;
  }
  get onLongPress() {
    return this[onLongPress$];
  }
  set onLongPress(value) {
    super.onLongPress = value;
  }
  get onLongPressUp() {
    return this[onLongPressUp$];
  }
  set onLongPressUp(value) {
    super.onLongPressUp = value;
  }
  get onVerticalDragDown() {
    return this[onVerticalDragDown$];
  }
  set onVerticalDragDown(value) {
    super.onVerticalDragDown = value;
  }
  get onVerticalDragStart() {
    return this[onVerticalDragStart$];
  }
  set onVerticalDragStart(value) {
    super.onVerticalDragStart = value;
  }
  get onVerticalDragUpdate() {
    return this[onVerticalDragUpdate$];
  }
  set onVerticalDragUpdate(value) {
    super.onVerticalDragUpdate = value;
  }
  get onVerticalDragEnd() {
    return this[onVerticalDragEnd$];
  }
  set onVerticalDragEnd(value) {
    super.onVerticalDragEnd = value;
  }
  get onVerticalDragCancel() {
    return this[onVerticalDragCancel$];
  }
  set onVerticalDragCancel(value) {
    super.onVerticalDragCancel = value;
  }
  get onHorizontalDragDown() {
    return this[onHorizontalDragDown$];
  }
  set onHorizontalDragDown(value) {
    super.onHorizontalDragDown = value;
  }
  get onHorizontalDragStart() {
    return this[onHorizontalDragStart$];
  }
  set onHorizontalDragStart(value) {
    super.onHorizontalDragStart = value;
  }
  get onHorizontalDragUpdate() {
    return this[onHorizontalDragUpdate$];
  }
  set onHorizontalDragUpdate(value) {
    super.onHorizontalDragUpdate = value;
  }
  get onHorizontalDragEnd() {
    return this[onHorizontalDragEnd$];
  }
  set onHorizontalDragEnd(value) {
    super.onHorizontalDragEnd = value;
  }
  get onHorizontalDragCancel() {
    return this[onHorizontalDragCancel$];
  }
  set onHorizontalDragCancel(value) {
    super.onHorizontalDragCancel = value;
  }
  get onPanDown() {
    return this[onPanDown$];
  }
  set onPanDown(value) {
    super.onPanDown = value;
  }
  get onPanStart() {
    return this[onPanStart$];
  }
  set onPanStart(value) {
    super.onPanStart = value;
  }
  get onPanUpdate() {
    return this[onPanUpdate$];
  }
  set onPanUpdate(value) {
    super.onPanUpdate = value;
  }
  get onPanEnd() {
    return this[onPanEnd$];
  }
  set onPanEnd(value) {
    super.onPanEnd = value;
  }
  get onPanCancel() {
    return this[onPanCancel$];
  }
  set onPanCancel(value) {
    super.onPanCancel = value;
  }
  get onResetEnd() {
    return this[onResetEnd$];
  }
  set onResetEnd(value) {
    super.onResetEnd = value;
  }
  get onScaleStart() {
    return this[onScaleStart$];
  }
  set onScaleStart(value) {
    super.onScaleStart = value;
  }
  get onScaleUpdate() {
    return this[onScaleUpdate$];
  }
  set onScaleUpdate(value) {
    super.onScaleUpdate = value;
  }
  get onScaleEnd() {
    return this[onScaleEnd$];
  }
  set onScaleEnd(value) {
    super.onScaleEnd = value;
  }
  get maxScale() {
    return this[maxScale$];
  }
  set maxScale(value) {
    super.maxScale = value;
  }
  get minScale() {
    return this[minScale$];
  }
  set minScale(value) {
    super.minScale = value;
  }
  get boundaryRect() {
    return this[boundaryRect$];
  }
  set boundaryRect(value) {
    super.boundaryRect = value;
  }
  get disableTranslation() {
    return this[disableTranslation$];
  }
  set disableTranslation(value) {
    super.disableTranslation = value;
  }
  get disableScale() {
    return this[disableScale$];
  }
  set disableScale(value) {
    super.disableScale = value;
  }
  get disableRotation() {
    return this[disableRotation$];
  }
  set disableRotation(value) {
    super.disableRotation = value;
  }
  get initialTranslation() {
    return this[initialTranslation$];
  }
  set initialTranslation(value) {
    super.initialTranslation = value;
  }
  get initialScale() {
    return this[initialScale$];
  }
  set initialScale(value) {
    super.initialScale = value;
  }
  get initialRotation() {
    return this[initialRotation$];
  }
  set initialRotation(value) {
    super.initialRotation = value;
  }
  createState() {
    return new transformations_demo_gesture_transformable._GestureTransformableState.new();
  }
};
(transformations_demo_gesture_transformable.GestureTransformable.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let child = opts && 'child' in opts ? opts.child : null;
  let size = opts && 'size' in opts ? opts.size : null;
  let maxScale = opts && 'maxScale' in opts ? opts.maxScale : 2.5;
  let minScale = opts && 'minScale' in opts ? opts.minScale : 0.8;
  let boundaryRect = opts && 'boundaryRect' in opts ? opts.boundaryRect : null;
  let initialTranslation = opts && 'initialTranslation' in opts ? opts.initialTranslation : null;
  let initialScale = opts && 'initialScale' in opts ? opts.initialScale : null;
  let initialRotation = opts && 'initialRotation' in opts ? opts.initialRotation : null;
  let disableTranslation = opts && 'disableTranslation' in opts ? opts.disableTranslation : false;
  let disableScale = opts && 'disableScale' in opts ? opts.disableScale : false;
  let disableRotation = opts && 'disableRotation' in opts ? opts.disableRotation : false;
  let reset = opts && 'reset' in opts ? opts.reset : false;
  let onTapDown = opts && 'onTapDown' in opts ? opts.onTapDown : null;
  let onTapUp = opts && 'onTapUp' in opts ? opts.onTapUp : null;
  let onTap = opts && 'onTap' in opts ? opts.onTap : null;
  let onTapCancel = opts && 'onTapCancel' in opts ? opts.onTapCancel : null;
  let onDoubleTap = opts && 'onDoubleTap' in opts ? opts.onDoubleTap : null;
  let onLongPress = opts && 'onLongPress' in opts ? opts.onLongPress : null;
  let onLongPressUp = opts && 'onLongPressUp' in opts ? opts.onLongPressUp : null;
  let onVerticalDragDown = opts && 'onVerticalDragDown' in opts ? opts.onVerticalDragDown : null;
  let onVerticalDragStart = opts && 'onVerticalDragStart' in opts ? opts.onVerticalDragStart : null;
  let onVerticalDragUpdate = opts && 'onVerticalDragUpdate' in opts ? opts.onVerticalDragUpdate : null;
  let onVerticalDragEnd = opts && 'onVerticalDragEnd' in opts ? opts.onVerticalDragEnd : null;
  let onVerticalDragCancel = opts && 'onVerticalDragCancel' in opts ? opts.onVerticalDragCancel : null;
  let onHorizontalDragDown = opts && 'onHorizontalDragDown' in opts ? opts.onHorizontalDragDown : null;
  let onHorizontalDragStart = opts && 'onHorizontalDragStart' in opts ? opts.onHorizontalDragStart : null;
  let onHorizontalDragUpdate = opts && 'onHorizontalDragUpdate' in opts ? opts.onHorizontalDragUpdate : null;
  let onHorizontalDragEnd = opts && 'onHorizontalDragEnd' in opts ? opts.onHorizontalDragEnd : null;
  let onHorizontalDragCancel = opts && 'onHorizontalDragCancel' in opts ? opts.onHorizontalDragCancel : null;
  let onPanDown = opts && 'onPanDown' in opts ? opts.onPanDown : null;
  let onPanStart = opts && 'onPanStart' in opts ? opts.onPanStart : null;
  let onPanUpdate = opts && 'onPanUpdate' in opts ? opts.onPanUpdate : null;
  let onPanEnd = opts && 'onPanEnd' in opts ? opts.onPanEnd : null;
  let onPanCancel = opts && 'onPanCancel' in opts ? opts.onPanCancel : null;
  let onResetEnd = opts && 'onResetEnd' in opts ? opts.onResetEnd : null;
  let onScaleStart = opts && 'onScaleStart' in opts ? opts.onScaleStart : null;
  let onScaleUpdate = opts && 'onScaleUpdate' in opts ? opts.onScaleUpdate : null;
  let onScaleEnd = opts && 'onScaleEnd' in opts ? opts.onScaleEnd : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[child$] = child;
  this[size$] = size;
  this[maxScale$] = maxScale;
  this[minScale$] = minScale;
  this[boundaryRect$] = boundaryRect;
  this[initialTranslation$] = initialTranslation;
  this[initialScale$] = initialScale;
  this[initialRotation$] = initialRotation;
  this[disableTranslation$] = disableTranslation;
  this[disableScale$] = disableScale;
  this[disableRotation$] = disableRotation;
  this[reset$] = reset;
  this[onTapDown$] = onTapDown;
  this[onTapUp$] = onTapUp;
  this[onTap$] = onTap;
  this[onTapCancel$] = onTapCancel;
  this[onDoubleTap$] = onDoubleTap;
  this[onLongPress$] = onLongPress;
  this[onLongPressUp$] = onLongPressUp;
  this[onVerticalDragDown$] = onVerticalDragDown;
  this[onVerticalDragStart$] = onVerticalDragStart;
  this[onVerticalDragUpdate$] = onVerticalDragUpdate;
  this[onVerticalDragEnd$] = onVerticalDragEnd;
  this[onVerticalDragCancel$] = onVerticalDragCancel;
  this[onHorizontalDragDown$] = onHorizontalDragDown;
  this[onHorizontalDragStart$] = onHorizontalDragStart;
  this[onHorizontalDragUpdate$] = onHorizontalDragUpdate;
  this[onHorizontalDragEnd$] = onHorizontalDragEnd;
  this[onHorizontalDragCancel$] = onHorizontalDragCancel;
  this[onPanDown$] = onPanDown;
  this[onPanStart$] = onPanStart;
  this[onPanUpdate$] = onPanUpdate;
  this[onPanEnd$] = onPanEnd;
  this[onPanCancel$] = onPanCancel;
  this[onResetEnd$] = onResetEnd;
  this[onScaleStart$] = onScaleStart;
  this[onScaleUpdate$] = onScaleUpdate;
  this[onScaleEnd$] = onScaleEnd;
  if (!(child != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/transformations/transformations_demo_gesture_transformable.dart", 74, 15, "child != null");
  if (!(size != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/transformations/transformations_demo_gesture_transformable.dart", 75, 15, "size != null");
  if (!(minScale != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/transformations/transformations_demo_gesture_transformable.dart", 76, 15, "minScale != null");
  if (!(dart.notNull(minScale) > 0)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/transformations/transformations_demo_gesture_transformable.dart", 77, 15, "minScale > 0");
  if (!(disableTranslation != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/transformations/transformations_demo_gesture_transformable.dart", 78, 15, "disableTranslation != null");
  if (!(disableScale != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/transformations/transformations_demo_gesture_transformable.dart", 79, 15, "disableScale != null");
  if (!(disableRotation != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/transformations/transformations_demo_gesture_transformable.dart", 80, 15, "disableRotation != null");
  if (!(reset != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/transformations/transformations_demo_gesture_transformable.dart", 81, 15, "reset != null");
  if (!(!dart.test(reset) || onResetEnd != null)) dart.assertFailed("Must implement onResetEnd to use reset.", "org-dartlang-app:///packages/flutter_gallery/demo/transformations/transformations_demo_gesture_transformable.dart", 83, 10, "!reset || onResetEnd != null");
  transformations_demo_gesture_transformable.GestureTransformable.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = transformations_demo_gesture_transformable.GestureTransformable.prototype;
dart.addTypeTests(transformations_demo_gesture_transformable.GestureTransformable);
dart.setMethodSignature(transformations_demo_gesture_transformable.GestureTransformable, () => ({
  __proto__: dart.getMethods(transformations_demo_gesture_transformable.GestureTransformable.__proto__),
  createState: dart.fnType(transformations_demo_gesture_transformable._GestureTransformableState, [])
}));
dart.setLibraryUri(transformations_demo_gesture_transformable.GestureTransformable, "package:flutter_gallery/demo/transformations/transformations_demo_gesture_transformable.dart");
dart.setFieldSignature(transformations_demo_gesture_transformable.GestureTransformable, () => ({
  __proto__: dart.getFields(transformations_demo_gesture_transformable.GestureTransformable.__proto__),
  child: dart.finalFieldType(framework.Widget),
  size: dart.finalFieldType(ui.Size),
  reset: dart.finalFieldType(core.bool),
  onTapDown: dart.finalFieldType(dart.fnType(dart.void, [tap.TapDownDetails])),
  onTapUp: dart.finalFieldType(dart.fnType(dart.void, [tap.TapUpDetails])),
  onTap: dart.finalFieldType(dart.fnType(dart.void, [])),
  onTapCancel: dart.finalFieldType(dart.fnType(dart.void, [])),
  onDoubleTap: dart.finalFieldType(dart.fnType(dart.void, [])),
  onLongPress: dart.finalFieldType(dart.fnType(dart.void, [])),
  onLongPressUp: dart.finalFieldType(dart.fnType(dart.void, [])),
  onVerticalDragDown: dart.finalFieldType(dart.fnType(dart.void, [drag_details.DragDownDetails])),
  onVerticalDragStart: dart.finalFieldType(dart.fnType(dart.void, [drag_details.DragStartDetails])),
  onVerticalDragUpdate: dart.finalFieldType(dart.fnType(dart.void, [drag_details.DragUpdateDetails])),
  onVerticalDragEnd: dart.finalFieldType(dart.fnType(dart.void, [drag_details.DragEndDetails])),
  onVerticalDragCancel: dart.finalFieldType(dart.fnType(dart.void, [])),
  onHorizontalDragDown: dart.finalFieldType(dart.fnType(dart.void, [drag_details.DragDownDetails])),
  onHorizontalDragStart: dart.finalFieldType(dart.fnType(dart.void, [drag_details.DragStartDetails])),
  onHorizontalDragUpdate: dart.finalFieldType(dart.fnType(dart.void, [drag_details.DragUpdateDetails])),
  onHorizontalDragEnd: dart.finalFieldType(dart.fnType(dart.void, [drag_details.DragEndDetails])),
  onHorizontalDragCancel: dart.finalFieldType(dart.fnType(dart.void, [])),
  onPanDown: dart.finalFieldType(dart.fnType(dart.void, [drag_details.DragDownDetails])),
  onPanStart: dart.finalFieldType(dart.fnType(dart.void, [drag_details.DragStartDetails])),
  onPanUpdate: dart.finalFieldType(dart.fnType(dart.void, [drag_details.DragUpdateDetails])),
  onPanEnd: dart.finalFieldType(dart.fnType(dart.void, [drag_details.DragEndDetails])),
  onPanCancel: dart.finalFieldType(dart.fnType(dart.void, [])),
  onResetEnd: dart.finalFieldType(dart.fnType(dart.void, [])),
  onScaleStart: dart.finalFieldType(dart.fnType(dart.void, [scale$.ScaleStartDetails])),
  onScaleUpdate: dart.finalFieldType(dart.fnType(dart.void, [scale$.ScaleUpdateDetails])),
  onScaleEnd: dart.finalFieldType(dart.fnType(dart.void, [scale$.ScaleEndDetails])),
  maxScale: dart.finalFieldType(core.double),
  minScale: dart.finalFieldType(core.double),
  boundaryRect: dart.finalFieldType(ui.Rect),
  disableTranslation: dart.finalFieldType(core.bool),
  disableScale: dart.finalFieldType(core.bool),
  disableRotation: dart.finalFieldType(core.bool),
  initialTranslation: dart.finalFieldType(ui.Offset),
  initialScale: dart.finalFieldType(core.double),
  initialRotation: dart.finalFieldType(core.double)
}));
const _name$ = dart.privateName(transformations_demo_gesture_transformable, "_name");
let C0;
let C1;
let C2;
let C3;
transformations_demo_gesture_transformable._GestureType = class _GestureType extends core.Object {
  toString() {
    return this[_name$];
  }
};
(transformations_demo_gesture_transformable._GestureType.new = function(index, _name) {
  this.index = index;
  this[_name$] = _name;
  ;
}).prototype = transformations_demo_gesture_transformable._GestureType.prototype;
dart.addTypeTests(transformations_demo_gesture_transformable._GestureType);
dart.setLibraryUri(transformations_demo_gesture_transformable._GestureType, "package:flutter_gallery/demo/transformations/transformations_demo_gesture_transformable.dart");
dart.setFieldSignature(transformations_demo_gesture_transformable._GestureType, () => ({
  __proto__: dart.getFields(transformations_demo_gesture_transformable._GestureType.__proto__),
  index: dart.finalFieldType(core.int),
  [_name$]: dart.finalFieldType(core.String)
}));
dart.defineExtensionMethods(transformations_demo_gesture_transformable._GestureType, ['toString']);
transformations_demo_gesture_transformable._GestureType.translate = C0 || CT.C0;
transformations_demo_gesture_transformable._GestureType.scale = C1 || CT.C1;
transformations_demo_gesture_transformable._GestureType.rotate = C2 || CT.C2;
transformations_demo_gesture_transformable._GestureType.values = C3 || CT.C3;
const _animation = dart.privateName(transformations_demo_gesture_transformable, "_animation");
const _controller = dart.privateName(transformations_demo_gesture_transformable, "_controller");
const _animationReset = dart.privateName(transformations_demo_gesture_transformable, "_animationReset");
const _controllerReset = dart.privateName(transformations_demo_gesture_transformable, "_controllerReset");
const _translateFromScene = dart.privateName(transformations_demo_gesture_transformable, "_translateFromScene");
const _scaleStart = dart.privateName(transformations_demo_gesture_transformable, "_scaleStart");
const _rotationStart = dart.privateName(transformations_demo_gesture_transformable, "_rotationStart");
const _boundaryRect = dart.privateName(transformations_demo_gesture_transformable, "_boundaryRect");
const _transform = dart.privateName(transformations_demo_gesture_transformable, "_transform");
const _currentRotation = dart.privateName(transformations_demo_gesture_transformable, "_currentRotation");
const _initialTransform = dart.privateName(transformations_demo_gesture_transformable, "_initialTransform");
const _animateResetInitialize = dart.privateName(transformations_demo_gesture_transformable, "_animateResetInitialize");
const _animateResetStop = dart.privateName(transformations_demo_gesture_transformable, "_animateResetStop");
const _onScaleEnd = dart.privateName(transformations_demo_gesture_transformable, "_onScaleEnd");
const _onScaleStart = dart.privateName(transformations_demo_gesture_transformable, "_onScaleStart");
const _onScaleUpdate = dart.privateName(transformations_demo_gesture_transformable, "_onScaleUpdate");
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
const OffsetBase__dy = dart.privateName(ui, "OffsetBase._dy");
const OffsetBase__dx = dart.privateName(ui, "OffsetBase._dx");
let C45;
const _onAnimate = dart.privateName(transformations_demo_gesture_transformable, "_onAnimate");
const _onAnimateReset = dart.privateName(transformations_demo_gesture_transformable, "_onAnimateReset");
const Duration__duration = dart.privateName(core, "Duration._duration");
let C46;
const State_TickerProviderStateMixin$36 = class State_TickerProviderStateMixin extends framework.State$(transformations_demo_gesture_transformable.GestureTransformable) {};
(State_TickerProviderStateMixin$36.new = function() {
  ticker_provider.TickerProviderStateMixin$(transformations_demo_gesture_transformable.GestureTransformable)[dart.mixinNew].call(this);
  State_TickerProviderStateMixin$36.__proto__.new.call(this);
}).prototype = State_TickerProviderStateMixin$36.prototype;
dart.applyMixin(State_TickerProviderStateMixin$36, ticker_provider.TickerProviderStateMixin$(transformations_demo_gesture_transformable.GestureTransformable));
transformations_demo_gesture_transformable._GestureTransformableState = class _GestureTransformableState extends State_TickerProviderStateMixin$36 {
  get [_initialTransform]() {
    let matrix = vector_math_64.Matrix4.identity();
    if (this.widget.initialTranslation != null) {
      matrix = this.matrixTranslate(matrix, this.widget.initialTranslation);
    }
    if (this.widget.initialScale != null) {
      matrix = this.matrixScale(matrix, this.widget.initialScale);
    }
    if (this.widget.initialRotation != null) {
      matrix = this.matrixRotate(matrix, this.widget.initialRotation, ui.Offset.zero);
    }
    return matrix;
  }
  static fromViewport(viewportPoint, transform) {
    let inverseMatrix = vector_math_64.Matrix4.inverted(transform);
    let untransformed = inverseMatrix.transform3(vector_math_64.Vector3.new(viewportPoint.dx, viewportPoint.dy, 0.0));
    return new ui.Offset.new(untransformed.x, untransformed.y);
  }
  static getOffset(context) {
    let renderObject = box.RenderBox._check(context.findRenderObject());
    return renderObject.localToGlobal(ui.Offset.zero);
  }
  initState() {
    let t0;
    super.initState();
    this[_boundaryRect] = (t0 = this.widget.boundaryRect, t0 == null ? ui.Offset.zero['&'](this.widget.size) : t0);
    this[_transform] = this[_initialTransform];
    this[_controller] = new animation_controller.AnimationController.new({vsync: this});
    this[_controllerReset] = new animation_controller.AnimationController.new({vsync: this});
    if (dart.test(this.widget.reset)) {
      this[_animateResetInitialize]();
    }
  }
  didUpdateWidget(oldWidget) {
    transformations_demo_gesture_transformable.GestureTransformable._check(oldWidget);
    super.didUpdateWidget(oldWidget);
    if (dart.test(this.widget.reset) && !dart.test(oldWidget.reset) && this[_animationReset] == null) {
      this[_animateResetInitialize]();
    } else if (!dart.test(this.widget.reset) && dart.test(oldWidget.reset) && this[_animationReset] != null) {
      this[_animateResetStop]();
    }
  }
  build(context) {
    return new gesture_detector.GestureDetector.new({behavior: proxy_box.HitTestBehavior.opaque, onTapDown: this.widget.onTapDown == null ? null : dart.fn(details => {
        this.widget.onTapDown(new tap.TapDownDetails.new({globalPosition: transformations_demo_gesture_transformable._GestureTransformableState.fromViewport(details.globalPosition['-'](transformations_demo_gesture_transformable._GestureTransformableState.getOffset(context)), this[_transform])}));
      }, TapDownDetailsToNull()), onTapUp: this.widget.onTapUp == null ? null : dart.fn(details => {
        this.widget.onTapUp(new tap.TapUpDetails.new({globalPosition: transformations_demo_gesture_transformable._GestureTransformableState.fromViewport(details.globalPosition['-'](transformations_demo_gesture_transformable._GestureTransformableState.getOffset(context)), this[_transform])}));
      }, TapUpDetailsToNull()), onTap: this.widget.onTap, onTapCancel: this.widget.onTapCancel, onDoubleTap: this.widget.onDoubleTap, onLongPress: this.widget.onLongPress, onLongPressUp: this.widget.onLongPressUp, onVerticalDragDown: this.widget.onVerticalDragDown == null ? null : dart.fn(details => {
        this.widget.onVerticalDragDown(new drag_details.DragDownDetails.new({globalPosition: transformations_demo_gesture_transformable._GestureTransformableState.fromViewport(details.globalPosition['-'](transformations_demo_gesture_transformable._GestureTransformableState.getOffset(context)), this[_transform])}));
      }, DragDownDetailsToNull()), onVerticalDragStart: this.widget.onVerticalDragStart == null ? null : dart.fn(details => {
        this.widget.onVerticalDragStart(new drag_details.DragStartDetails.new({globalPosition: transformations_demo_gesture_transformable._GestureTransformableState.fromViewport(details.globalPosition['-'](transformations_demo_gesture_transformable._GestureTransformableState.getOffset(context)), this[_transform])}));
      }, DragStartDetailsToNull()), onVerticalDragUpdate: this.widget.onVerticalDragUpdate == null ? null : dart.fn(details => {
        this.widget.onVerticalDragUpdate(new drag_details.DragUpdateDetails.new({globalPosition: transformations_demo_gesture_transformable._GestureTransformableState.fromViewport(details.globalPosition['-'](transformations_demo_gesture_transformable._GestureTransformableState.getOffset(context)), this[_transform])}));
      }, DragUpdateDetailsToNull()), onVerticalDragEnd: this.widget.onVerticalDragEnd, onVerticalDragCancel: this.widget.onVerticalDragCancel, onHorizontalDragDown: this.widget.onHorizontalDragDown == null ? null : dart.fn(details => {
        this.widget.onHorizontalDragDown(new drag_details.DragDownDetails.new({globalPosition: transformations_demo_gesture_transformable._GestureTransformableState.fromViewport(details.globalPosition['-'](transformations_demo_gesture_transformable._GestureTransformableState.getOffset(context)), this[_transform])}));
      }, DragDownDetailsToNull()), onHorizontalDragStart: this.widget.onHorizontalDragStart == null ? null : dart.fn(details => {
        this.widget.onHorizontalDragStart(new drag_details.DragStartDetails.new({globalPosition: transformations_demo_gesture_transformable._GestureTransformableState.fromViewport(details.globalPosition['-'](transformations_demo_gesture_transformable._GestureTransformableState.getOffset(context)), this[_transform])}));
      }, DragStartDetailsToNull()), onHorizontalDragUpdate: this.widget.onHorizontalDragUpdate == null ? null : dart.fn(details => {
        this.widget.onHorizontalDragUpdate(new drag_details.DragUpdateDetails.new({globalPosition: transformations_demo_gesture_transformable._GestureTransformableState.fromViewport(details.globalPosition['-'](transformations_demo_gesture_transformable._GestureTransformableState.getOffset(context)), this[_transform])}));
      }, DragUpdateDetailsToNull()), onHorizontalDragEnd: this.widget.onHorizontalDragEnd, onHorizontalDragCancel: this.widget.onHorizontalDragCancel, onPanDown: this.widget.onPanDown == null ? null : dart.fn(details => {
        this.widget.onPanDown(new drag_details.DragDownDetails.new({globalPosition: transformations_demo_gesture_transformable._GestureTransformableState.fromViewport(details.globalPosition['-'](transformations_demo_gesture_transformable._GestureTransformableState.getOffset(context)), this[_transform])}));
      }, DragDownDetailsToNull()), onPanStart: this.widget.onPanStart == null ? null : dart.fn(details => {
        this.widget.onPanStart(new drag_details.DragStartDetails.new({globalPosition: transformations_demo_gesture_transformable._GestureTransformableState.fromViewport(details.globalPosition['-'](transformations_demo_gesture_transformable._GestureTransformableState.getOffset(context)), this[_transform])}));
      }, DragStartDetailsToNull()), onPanUpdate: this.widget.onPanUpdate == null ? null : dart.fn(details => {
        this.widget.onPanUpdate(new drag_details.DragUpdateDetails.new({globalPosition: transformations_demo_gesture_transformable._GestureTransformableState.fromViewport(details.globalPosition['-'](transformations_demo_gesture_transformable._GestureTransformableState.getOffset(context)), this[_transform])}));
      }, DragUpdateDetailsToNull()), onPanEnd: this.widget.onPanEnd, onPanCancel: this.widget.onPanCancel, onScaleEnd: dart.bind(this, _onScaleEnd), onScaleStart: dart.bind(this, _onScaleStart), onScaleUpdate: dart.bind(this, _onScaleUpdate), child: new basic.ClipRect.new({child: new basic.Transform.new({transform: this[_transform], child: new container.Container.new({child: this.widget.child, height: this.widget.size.height, width: this.widget.size.width, $creationLocationd_0dea112b090073317d4: C4 || CT.C4}), $creationLocationd_0dea112b090073317d4: C9 || CT.C9}), $creationLocationd_0dea112b090073317d4: C13 || CT.C13}), $creationLocationd_0dea112b090073317d4: C16 || CT.C16});
  }
  matrixTranslate(matrix, translation) {
    let t0;
    if (dart.test(this.widget.disableTranslation) || dart.equals(translation, ui.Offset.zero)) {
      return matrix;
    }
    let scale = this[_transform].getMaxScaleOnAxis();
    let scaledSize = this.widget.size['/'](scale);
    let viewportBoundaries = new ui.Rect.fromLTRB(this[_boundaryRect].left, this[_boundaryRect].top, dart.notNull(this[_boundaryRect].right) - dart.notNull(scaledSize.width), dart.notNull(this[_boundaryRect].bottom) - dart.notNull(scaledSize.height));
    let translationBoundaries = new ui.Rect.fromLTRB(-dart.notNull(scale) * dart.notNull(viewportBoundaries.right), -dart.notNull(scale) * dart.notNull(viewportBoundaries.bottom), -dart.notNull(scale) * dart.notNull(viewportBoundaries.left), -dart.notNull(scale) * dart.notNull(viewportBoundaries.top));
    let nextMatrix = (t0 = matrix.clone(), t0.translate(translation.dx, translation.dy), t0);
    let nextTranslationVector = nextMatrix.getTranslation();
    let nextTranslation = new ui.Offset.new(nextTranslationVector.x, nextTranslationVector.y);
    let inBoundaries = translationBoundaries.contains(new ui.Offset.new(nextTranslation.dx, nextTranslation.dy));
    if (!dart.test(inBoundaries)) {
      return matrix;
    }
    return nextMatrix;
  }
  matrixScale(matrix, scale) {
    let t0;
    if (dart.test(this.widget.disableScale) || scale === 1) {
      return matrix;
    }
    if (!(scale !== 0)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/transformations/transformations_demo_gesture_transformable.dart", 356, 12, "scale != 0");
    let tl = transformations_demo_gesture_transformable._GestureTransformableState.fromViewport(C45 || CT.C45, this[_transform]);
    let tr = transformations_demo_gesture_transformable._GestureTransformableState.fromViewport(new ui.Offset.new(this.widget.size.width, 0.0), this[_transform]);
    let bl = transformations_demo_gesture_transformable._GestureTransformableState.fromViewport(new ui.Offset.new(0.0, this.widget.size.height), this[_transform]);
    let br = transformations_demo_gesture_transformable._GestureTransformableState.fromViewport(new ui.Offset.new(this.widget.size.width, this.widget.size.height), this[_transform]);
    if (!dart.test(this[_boundaryRect].contains(tl)) || !dart.test(this[_boundaryRect].contains(tr)) || !dart.test(this[_boundaryRect].contains(bl)) || !dart.test(this[_boundaryRect].contains(br))) {
      return matrix;
    }
    let currentScale = this[_transform].getMaxScaleOnAxis();
    let totalScale = dart.notNull(currentScale) * dart.notNull(scale);
    let clampedTotalScale = totalScale[$clamp](this.widget.minScale, this.widget.maxScale);
    let clampedScale = clampedTotalScale / dart.notNull(currentScale);
    t0 = matrix;
    t0.scale(clampedScale);
    return t0;
  }
  matrixRotate(matrix, rotation, focalPoint) {
    let t0;
    if (dart.test(this.widget.disableRotation) || rotation === 0) {
      return matrix;
    }
    let focalPointScene = transformations_demo_gesture_transformable._GestureTransformableState.fromViewport(focalPoint, matrix);
    t0 = matrix;
    t0.translate(focalPointScene.dx, focalPointScene.dy);
    t0.rotateZ(-dart.notNull(rotation));
    t0.translate(-dart.notNull(focalPointScene.dx), -dart.notNull(focalPointScene.dy));
    return t0;
  }
  [_onScaleStart](details) {
    let t0;
    if (this.widget.onScaleStart != null) {
      this.widget.onScaleStart(details);
    }
    if (dart.test(this[_controller].isAnimating)) {
      this[_controller].stop();
      this[_controller].reset();
      t0 = this[_animation];
      t0 == null ? null : t0.removeListener(dart.bind(this, _onAnimate));
      this[_animation] = null;
    }
    if (dart.test(this[_controllerReset].isAnimating)) {
      this[_animateResetStop]();
    }
    this.gestureType = null;
    this.setState(dart.fn(() => {
      this[_scaleStart] = this[_transform].getMaxScaleOnAxis();
      this[_translateFromScene] = transformations_demo_gesture_transformable._GestureTransformableState.fromViewport(details.focalPoint, this[_transform]);
      this[_rotationStart] = this[_currentRotation];
    }, VoidToNull()));
  }
  [_onScaleUpdate](details) {
    let scale = this[_transform].getMaxScaleOnAxis();
    if (this.widget.onScaleUpdate != null) {
      this.widget.onScaleUpdate(new scale$.ScaleUpdateDetails.new({focalPoint: transformations_demo_gesture_transformable._GestureTransformableState.fromViewport(details.focalPoint, this[_transform]), scale: details.scale, rotation: details.rotation}));
    }
    let focalPointScene = transformations_demo_gesture_transformable._GestureTransformableState.fromViewport(details.focalPoint, this[_transform]);
    if (this.gestureType == null) {
      if ((dart.notNull(details.scale) - 1)[$abs]() > details.rotation[$abs]()) {
        this.gestureType = transformations_demo_gesture_transformable._GestureType.scale;
      } else if (details.rotation !== 0) {
        this.gestureType = transformations_demo_gesture_transformable._GestureType.rotate;
      } else {
        this.gestureType = transformations_demo_gesture_transformable._GestureType.translate;
      }
    }
    this.setState(dart.fn(() => {
      if (dart.equals(this.gestureType, transformations_demo_gesture_transformable._GestureType.scale) && this[_scaleStart] != null) {
        let desiredScale = dart.notNull(this[_scaleStart]) * dart.notNull(details.scale);
        let scaleChange = desiredScale / dart.notNull(scale);
        this[_transform] = this.matrixScale(this[_transform], scaleChange);
        scale = this[_transform].getMaxScaleOnAxis();
        let focalPointSceneNext = transformations_demo_gesture_transformable._GestureTransformableState.fromViewport(details.focalPoint, this[_transform]);
        this[_transform] = this.matrixTranslate(this[_transform], focalPointSceneNext['-'](focalPointScene));
      } else if (dart.equals(this.gestureType, transformations_demo_gesture_transformable._GestureType.rotate) && details.rotation !== 0.0) {
        let desiredRotation = dart.notNull(this[_rotationStart]) + dart.notNull(details.rotation);
        this[_transform] = this.matrixRotate(this[_transform], dart.notNull(this[_currentRotation]) - desiredRotation, details.focalPoint);
        this[_currentRotation] = desiredRotation;
      } else if (this[_translateFromScene] != null && details.scale === 1.0) {
        let translationChange = focalPointScene['-'](this[_translateFromScene]);
        this[_transform] = this.matrixTranslate(this[_transform], translationChange);
        this[_translateFromScene] = transformations_demo_gesture_transformable._GestureTransformableState.fromViewport(details.focalPoint, this[_transform]);
      }
    }, VoidToNull()));
  }
  [_onScaleEnd](details) {
    let t0;
    if (this.widget.onScaleEnd != null) {
      this.widget.onScaleEnd(details);
    }
    this.setState(dart.fn(() => {
      this[_scaleStart] = null;
      this[_rotationStart] = null;
      this[_translateFromScene] = null;
    }, VoidToNull()));
    t0 = this[_animation];
    t0 == null ? null : t0.removeListener(dart.bind(this, _onAnimate));
    this[_controller].reset();
    let velocityTotal = details.velocity.pixelsPerSecond.dx[$abs]() + details.velocity.pixelsPerSecond.dy[$abs]();
    if (velocityTotal === 0) {
      return;
    }
    let translationVector = this[_transform].getTranslation();
    let translation = new ui.Offset.new(translationVector.x, translationVector.y);
    let inertialMotion = new transformations_demo_inertial_motion.InertialMotion.new(details.velocity, translation);
    this[_animation] = new (TweenOfOffset()).new({begin: translation, end: inertialMotion.finalPosition}).animate(this[_controller]);
    this[_controller].duration = new core.Duration.new({milliseconds: inertialMotion.duration[$toInt]()});
    this[_animation].addListener(dart.bind(this, _onAnimate));
    this[_controller].fling();
  }
  [_onAnimate]() {
    let t0;
    this.setState(dart.fn(() => {
      let translationVector = this[_transform].getTranslation();
      let translation = new ui.Offset.new(translationVector.x, translationVector.y);
      let translationScene = transformations_demo_gesture_transformable._GestureTransformableState.fromViewport(translation, this[_transform]);
      let animationScene = transformations_demo_gesture_transformable._GestureTransformableState.fromViewport(this[_animation].value, this[_transform]);
      let translationChangeScene = animationScene['-'](translationScene);
      this[_transform] = this.matrixTranslate(this[_transform], translationChangeScene);
    }, VoidToNull()));
    if (!dart.test(this[_controller].isAnimating)) {
      t0 = this[_animation];
      t0 == null ? null : t0.removeListener(dart.bind(this, _onAnimate));
      this[_animation] = null;
      this[_controller].reset();
    }
  }
  [_onAnimateReset]() {
    let t0;
    this.setState(dart.fn(() => {
      this[_transform] = this[_animationReset].value;
    }, VoidToNull()));
    if (!dart.test(this[_controllerReset].isAnimating)) {
      t0 = this[_animationReset];
      t0 == null ? null : t0.removeListener(dart.bind(this, _onAnimateReset));
      this[_animationReset] = null;
      this[_controllerReset].reset();
      this.widget.onResetEnd();
    }
  }
  [_animateResetInitialize]() {
    this[_controllerReset].reset();
    this[_animationReset] = new implicit_animations.Matrix4Tween.new({begin: this[_transform], end: this[_initialTransform]}).animate(this[_controllerReset]);
    this[_controllerReset].duration = C46 || CT.C46;
    this[_animationReset].addListener(dart.bind(this, _onAnimateReset));
    this[_controllerReset].forward();
  }
  [_animateResetStop]() {
    let t0;
    this[_controllerReset].stop();
    t0 = this[_animationReset];
    t0 == null ? null : t0.removeListener(dart.bind(this, _onAnimateReset));
    this[_animationReset] = null;
    this[_controllerReset].reset();
    this.widget.onResetEnd();
  }
  dispose() {
    this[_controller].dispose();
    this[_controllerReset].dispose();
    super.dispose();
  }
};
(transformations_demo_gesture_transformable._GestureTransformableState.new = function() {
  this[_animation] = null;
  this[_controller] = null;
  this[_animationReset] = null;
  this[_controllerReset] = null;
  this[_translateFromScene] = null;
  this[_scaleStart] = null;
  this[_rotationStart] = 0.0;
  this[_boundaryRect] = null;
  this[_transform] = vector_math_64.Matrix4.identity();
  this[_currentRotation] = 0.0;
  this.gestureType = null;
  transformations_demo_gesture_transformable._GestureTransformableState.__proto__.new.call(this);
  ;
}).prototype = transformations_demo_gesture_transformable._GestureTransformableState.prototype;
dart.addTypeTests(transformations_demo_gesture_transformable._GestureTransformableState);
dart.setMethodSignature(transformations_demo_gesture_transformable._GestureTransformableState, () => ({
  __proto__: dart.getMethods(transformations_demo_gesture_transformable._GestureTransformableState.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext]),
  matrixTranslate: dart.fnType(vector_math_64.Matrix4, [vector_math_64.Matrix4, ui.Offset]),
  matrixScale: dart.fnType(vector_math_64.Matrix4, [vector_math_64.Matrix4, core.double]),
  matrixRotate: dart.fnType(vector_math_64.Matrix4, [vector_math_64.Matrix4, core.double, ui.Offset]),
  [_onScaleStart]: dart.fnType(dart.void, [scale$.ScaleStartDetails]),
  [_onScaleUpdate]: dart.fnType(dart.void, [scale$.ScaleUpdateDetails]),
  [_onScaleEnd]: dart.fnType(dart.void, [scale$.ScaleEndDetails]),
  [_onAnimate]: dart.fnType(dart.void, []),
  [_onAnimateReset]: dart.fnType(dart.void, []),
  [_animateResetInitialize]: dart.fnType(dart.void, []),
  [_animateResetStop]: dart.fnType(dart.void, [])
}));
dart.setGetterSignature(transformations_demo_gesture_transformable._GestureTransformableState, () => ({
  __proto__: dart.getGetters(transformations_demo_gesture_transformable._GestureTransformableState.__proto__),
  [_initialTransform]: vector_math_64.Matrix4
}));
dart.setLibraryUri(transformations_demo_gesture_transformable._GestureTransformableState, "package:flutter_gallery/demo/transformations/transformations_demo_gesture_transformable.dart");
dart.setFieldSignature(transformations_demo_gesture_transformable._GestureTransformableState, () => ({
  __proto__: dart.getFields(transformations_demo_gesture_transformable._GestureTransformableState.__proto__),
  [_animation]: dart.fieldType(animation.Animation$(ui.Offset)),
  [_controller]: dart.fieldType(animation_controller.AnimationController),
  [_animationReset]: dart.fieldType(animation.Animation$(vector_math_64.Matrix4)),
  [_controllerReset]: dart.fieldType(animation_controller.AnimationController),
  [_translateFromScene]: dart.fieldType(ui.Offset),
  [_scaleStart]: dart.fieldType(core.double),
  [_rotationStart]: dart.fieldType(core.double),
  [_boundaryRect]: dart.fieldType(ui.Rect),
  [_transform]: dart.fieldType(vector_math_64.Matrix4),
  [_currentRotation]: dart.fieldType(core.double),
  gestureType: dart.fieldType(transformations_demo_gesture_transformable._GestureType)
}));
dart.trackLibraries("packages/flutter_gallery/demo/transformations/transformations_demo_gesture_transformable", {
  "package:flutter_gallery/demo/transformations/transformations_demo_gesture_transformable.dart": transformations_demo_gesture_transformable
}, {
}, '{"version":3,"sourceRoot":"","sources":["transformations_demo_gesture_transformable.dart"],"names":[],"mappings":"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","file":"transformations_demo_gesture_transformable.ddc.js"}');
// Exports:
exports.demo__transformations__transformations_demo_gesture_transformable = transformations_demo_gesture_transformable;

//# sourceMappingURL=transformations_demo_gesture_transformable.ddc.js.map
