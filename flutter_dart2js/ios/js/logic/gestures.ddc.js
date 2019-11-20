define(['dart_sdk', 'packages/flutter/src/foundation/_bitfield_web', 'packages/collection/src/priority_queue', 'packages/flutter/src/gestures/arena'], function(dart_sdk, packages__flutter__src__foundation___bitfield_web, packages__collection__src__priority_queue, packages__flutter__src__gestures__arena) {
  'use strict';
  const core = dart_sdk.core;
  const _interceptors = dart_sdk._interceptors;
  const async = dart_sdk.async;
  const developer = dart_sdk.developer;
  const ui = dart_sdk.ui;
  const _js_helper = dart_sdk._js_helper;
  const collection = dart_sdk.collection;
  const typed_data = dart_sdk.typed_data;
  const dart = dart_sdk.dart;
  const dartx = dart_sdk.dartx;
  const assertions = packages__flutter__src__foundation___bitfield_web.src__foundation__assertions;
  const diagnostics = packages__flutter__src__foundation___bitfield_web.src__foundation__diagnostics;
  const print = packages__flutter__src__foundation___bitfield_web.src__foundation__print;
  const debug = packages__flutter__src__foundation___bitfield_web.src__foundation__debug;
  const binding = packages__flutter__src__foundation___bitfield_web.src__foundation__binding;
  const change_notifier = packages__flutter__src__foundation___bitfield_web.src__foundation__change_notifier;
  const priority_queue = packages__collection__src__priority_queue.src__priority_queue;
  const system_channels = packages__flutter__src__gestures__arena.src__services__system_channels;
  const debug$ = packages__flutter__src__gestures__arena.src__scheduler__debug;
  const binding$ = packages__flutter__src__gestures__arena.src__services__binding;
  const priority$ = packages__flutter__src__gestures__arena.src__scheduler__priority;
  const message_codec = packages__flutter__src__gestures__arena.src__services__message_codec;
  const events = packages__flutter__src__gestures__arena.src__gestures__events;
  const pointer_router = packages__flutter__src__gestures__arena.src__gestures__pointer_router;
  const scheduler = Object.create(dart.library);
  const ticker$ = Object.create(dart.library);
  const binding$0 = Object.create(dart.library);
  const services = Object.create(dart.library);
  const platform_views = Object.create(dart.library);
  const gestures = Object.create(dart.library);
  const mouse_tracking = Object.create(dart.library);
  const $_equals = dartx._equals;
  const $runtimeType = dartx.runtimeType;
  const $trimRight = dartx.trimRight;
  const $split = dartx.split;
  const $forEach = dartx.forEach;
  const $toString = dartx.toString;
  const $add = dartx.add;
  const $length = dartx.length;
  const $contains = dartx.contains;
  const $remove = dartx.remove;
  const $isEmpty = dartx.isEmpty;
  const $compareTo = dartx.compareTo;
  const $_set = dartx._set;
  const $keys = dartx.keys;
  const $_get = dartx._get;
  const $join = dartx.join;
  const $round = dartx.round;
  const $padRight = dartx.padRight;
  const $padLeft = dartx.padLeft;
  const $clear = dartx.clear;
  const $times = dartx['*'];
  const $containsKey = dartx.containsKey;
  const $buffer = dartx.buffer;
  const $lengthInBytes = dartx.lengthInBytes;
  const $map = dartx.map;
  const $toList = dartx.toList;
  const $isNotEmpty = dartx.isNotEmpty;
  const $reversed = dartx.reversed;
  let VoidTobool = () => (VoidTobool = dart.constFn(dart.fnType(core.bool, [])))();
  let JSArrayOfDiagnosticsNode = () => (JSArrayOfDiagnosticsNode = dart.constFn(_interceptors.JSArray$(diagnostics.DiagnosticsNode)))();
  let DiagnosticsPropertyOfTicker = () => (DiagnosticsPropertyOfTicker = dart.constFn(diagnostics.DiagnosticsProperty$(ticker$.Ticker)))();
  let CompleterOfvoid = () => (CompleterOfvoid = dart.constFn(async.Completer$(dart.void)))();
  let dynamicTovoid = () => (dynamicTovoid = dart.constFn(dart.fnType(dart.void, [dart.dynamic])))();
  let VoidTodynamic = () => (VoidTodynamic = dart.constFn(dart.fnType(dart.dynamic, [])))();
  let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
  let ListOfFrameTiming = () => (ListOfFrameTiming = dart.constFn(core.List$(ui.FrameTiming)))();
  let ListOfFrameTimingTovoid = () => (ListOfFrameTimingTovoid = dart.constFn(dart.fnType(dart.void, [ListOfFrameTiming()])))();
  let JSArrayOfListOfFrameTimingTovoid = () => (JSArrayOfListOfFrameTimingTovoid = dart.constFn(_interceptors.JSArray$(ListOfFrameTimingTovoid())))();
  let __Tobool = () => (__Tobool = dart.constFn(dart.fnType(core.bool, [], {priority: core.int, scheduler: binding$0.SchedulerBinding}, {})))();
  let HeapPriorityQueueOf_TaskEntry = () => (HeapPriorityQueueOf_TaskEntry = dart.constFn(priority_queue.HeapPriorityQueue$(binding$0._TaskEntry)))();
  let _TaskEntryAnd_TaskEntryToint = () => (_TaskEntryAnd_TaskEntryToint = dart.constFn(dart.fnType(core.int, [binding$0._TaskEntry, binding$0._TaskEntry])))();
  let IdentityMapOfint$_FrameCallbackEntry = () => (IdentityMapOfint$_FrameCallbackEntry = dart.constFn(_js_helper.IdentityMap$(core.int, binding$0._FrameCallbackEntry)))();
  let _IdentityHashSetOfint = () => (_IdentityHashSetOfint = dart.constFn(collection._IdentityHashSet$(core.int)))();
  let DurationTovoid = () => (DurationTovoid = dart.constFn(dart.fnType(dart.void, [core.Duration])))();
  let JSArrayOfDurationTovoid = () => (JSArrayOfDurationTovoid = dart.constFn(_interceptors.JSArray$(DurationTovoid())))();
  let ListOfFrameTimingToNull = () => (ListOfFrameTimingToNull = dart.constFn(dart.fnType(core.Null, [ListOfFrameTiming()])))();
  let ListOfListOfFrameTimingTovoid = () => (ListOfListOfFrameTimingTovoid = dart.constFn(core.List$(ListOfFrameTimingTovoid())))();
  let DiagnosticsPropertyOfListOfFrameTimingTovoid = () => (DiagnosticsPropertyOfListOfFrameTimingTovoid = dart.constFn(diagnostics.DiagnosticsProperty$(ListOfFrameTimingTovoid())))();
  let SyncIterableOfDiagnosticsPropertyOfListOfFrameTimingTovoid = () => (SyncIterableOfDiagnosticsPropertyOfListOfFrameTimingTovoid = dart.constFn(_js_helper.SyncIterable$(DiagnosticsPropertyOfListOfFrameTimingTovoid())))();
  let IterableOfDiagnosticsPropertyOfListOfFrameTimingTovoid = () => (IterableOfDiagnosticsPropertyOfListOfFrameTimingTovoid = dart.constFn(core.Iterable$(DiagnosticsPropertyOfListOfFrameTimingTovoid())))();
  let VoidToIterableOfDiagnosticsPropertyOfListOfFrameTimingTovoid = () => (VoidToIterableOfDiagnosticsPropertyOfListOfFrameTimingTovoid = dart.constFn(dart.fnType(IterableOfDiagnosticsPropertyOfListOfFrameTimingTovoid(), [])))();
  let FutureOfdouble = () => (FutureOfdouble = dart.constFn(async.Future$(core.double)))();
  let VoidToFutureOfdouble = () => (VoidToFutureOfdouble = dart.constFn(dart.fnType(FutureOfdouble(), [])))();
  let FutureOfNull = () => (FutureOfNull = dart.constFn(async.Future$(core.Null)))();
  let doubleToFutureOfNull = () => (doubleToFutureOfNull = dart.constFn(dart.fnType(FutureOfNull(), [core.double])))();
  let SyncIterableOfDiagnosticsStackTrace = () => (SyncIterableOfDiagnosticsStackTrace = dart.constFn(_js_helper.SyncIterable$(assertions.DiagnosticsStackTrace)))();
  let IterableOfDiagnosticsStackTrace = () => (IterableOfDiagnosticsStackTrace = dart.constFn(core.Iterable$(assertions.DiagnosticsStackTrace)))();
  let VoidToIterableOfDiagnosticsStackTrace = () => (VoidToIterableOfDiagnosticsStackTrace = dart.constFn(dart.fnType(IterableOfDiagnosticsStackTrace(), [])))();
  let LinkedHashMapOfint$_FrameCallbackEntry = () => (LinkedHashMapOfint$_FrameCallbackEntry = dart.constFn(collection.LinkedHashMap$(core.int, binding$0._FrameCallbackEntry)))();
  let SyncIterableOfDiagnosticsNode = () => (SyncIterableOfDiagnosticsNode = dart.constFn(_js_helper.SyncIterable$(diagnostics.DiagnosticsNode)))();
  let IterableOfDiagnosticsNode = () => (IterableOfDiagnosticsNode = dart.constFn(core.Iterable$(diagnostics.DiagnosticsNode)))();
  let VoidToIterableOfDiagnosticsNode = () => (VoidToIterableOfDiagnosticsNode = dart.constFn(dart.fnType(IterableOfDiagnosticsNode(), [])))();
  let DurationToNull = () => (DurationToNull = dart.constFn(dart.fnType(core.Null, [core.Duration])))();
  let VoidToFutureOfNull = () => (VoidToFutureOfNull = dart.constFn(dart.fnType(FutureOfNull(), [])))();
  let intAnd_FrameCallbackEntryToNull = () => (intAnd_FrameCallbackEntryToNull = dart.constFn(dart.fnType(core.Null, [core.int, binding$0._FrameCallbackEntry])))();
  let ListOfDurationTovoid = () => (ListOfDurationTovoid = dart.constFn(core.List$(DurationTovoid())))();
  let IdentityMapOfString$dynamic = () => (IdentityMapOfString$dynamic = dart.constFn(_js_helper.IdentityMap$(core.String, dart.dynamic)))();
  let VoidTovoid = () => (VoidTovoid = dart.constFn(dart.fnType(dart.void, [])))();
  let IdentityMapOfint$VoidTovoid = () => (IdentityMapOfint$VoidTovoid = dart.constFn(_js_helper.IdentityMap$(core.int, VoidTovoid())))();
  let JSArrayOfint = () => (JSArrayOfint = dart.constFn(_interceptors.JSArray$(core.int)))();
  let JSArrayOfdouble = () => (JSArrayOfdouble = dart.constFn(_interceptors.JSArray$(core.double)))();
  let ListOfint = () => (ListOfint = dart.constFn(core.List$(core.int)))();
  let AndroidPointerPropertiesToListOfint = () => (AndroidPointerPropertiesToListOfint = dart.constFn(dart.fnType(ListOfint(), [platform_views.AndroidPointerProperties])))();
  let ListOfdouble = () => (ListOfdouble = dart.constFn(core.List$(core.double)))();
  let AndroidPointerCoordsToListOfdouble = () => (AndroidPointerCoordsToListOfdouble = dart.constFn(dart.fnType(ListOfdouble(), [platform_views.AndroidPointerCoords])))();
  let intTovoid = () => (intTovoid = dart.constFn(dart.fnType(dart.void, [core.int])))();
  let JSArrayOfintTovoid = () => (JSArrayOfintTovoid = dart.constFn(_interceptors.JSArray$(intTovoid())))();
  let JSArrayOfString = () => (JSArrayOfString = dart.constFn(_interceptors.JSArray$(core.String)))();
  let _HashSetOfMouseTrackerAnnotation = () => (_HashSetOfMouseTrackerAnnotation = dart.constFn(collection._HashSet$(mouse_tracking.MouseTrackerAnnotation)))();
  let IdentityMapOfint$_MouseState = () => (IdentityMapOfint$_MouseState = dart.constFn(_js_helper.IdentityMap$(core.int, mouse_tracking._MouseState)))();
  let LinkedHashSetOfMouseTrackerAnnotation = () => (LinkedHashSetOfMouseTrackerAnnotation = dart.constFn(collection.LinkedHashSet$(mouse_tracking.MouseTrackerAnnotation)))();
  let intAnd_MouseStateToNull = () => (intAnd_MouseStateToNull = dart.constFn(dart.fnType(core.Null, [core.int, mouse_tracking._MouseState])))();
  const CT = Object.create(null);
  dart.defineLazy(CT, {
    get C0() {
      return C0 = dart.const({
        __proto__: ticker$.TickerCanceled.prototype,
        [TickerCanceled_ticker]: null
      });
    },
    get C1() {
      return C1 = dart.const({
        __proto__: binding$0.SchedulerPhase.prototype,
        [_name$]: "SchedulerPhase.idle",
        index: 0
      });
    },
    get C2() {
      return C2 = dart.const({
        __proto__: binding$0.SchedulerPhase.prototype,
        [_name$]: "SchedulerPhase.transientCallbacks",
        index: 1
      });
    },
    get C3() {
      return C3 = dart.const({
        __proto__: binding$0.SchedulerPhase.prototype,
        [_name$]: "SchedulerPhase.midFrameMicrotasks",
        index: 2
      });
    },
    get C4() {
      return C4 = dart.const({
        __proto__: binding$0.SchedulerPhase.prototype,
        [_name$]: "SchedulerPhase.persistentCallbacks",
        index: 3
      });
    },
    get C5() {
      return C5 = dart.const({
        __proto__: binding$0.SchedulerPhase.prototype,
        [_name$]: "SchedulerPhase.postFrameCallbacks",
        index: 4
      });
    },
    get C6() {
      return C6 = dart.constList([C1 || CT.C1, C2 || CT.C2, C3 || CT.C3, C4 || CT.C4, C5 || CT.C5], binding$0.SchedulerPhase);
    },
    get C7() {
      return C7 = dart.fn(binding$0.defaultSchedulingStrategy, __Tobool());
    },
    get C8() {
      return C8 = dart.fn(binding$0.SchedulerBinding._taskSorter, _TaskEntryAnd_TaskEntryToint());
    },
    get C9() {
      return C9 = dart.const({
        __proto__: ui.AppLifecycleState.prototype,
        [_name]: "AppLifecycleState.resumed",
        index: 0
      });
    },
    get C10() {
      return C10 = dart.const({
        __proto__: ui.AppLifecycleState.prototype,
        [_name]: "AppLifecycleState.inactive",
        index: 1
      });
    },
    get C11() {
      return C11 = dart.const({
        __proto__: ui.AppLifecycleState.prototype,
        [_name]: "AppLifecycleState.paused",
        index: 2
      });
    },
    get C12() {
      return C12 = dart.const({
        __proto__: ui.AppLifecycleState.prototype,
        [_name]: "AppLifecycleState.suspending",
        index: 3
      });
    },
    get C13() {
      return C13 = dart.const({
        __proto__: platform_views._AndroidViewState.prototype,
        [_name$0]: "_AndroidViewState.waitingForSize",
        index: 0
      });
    },
    get C14() {
      return C14 = dart.const({
        __proto__: platform_views._AndroidViewState.prototype,
        [_name$0]: "_AndroidViewState.creating",
        index: 1
      });
    },
    get C15() {
      return C15 = dart.const({
        __proto__: platform_views._AndroidViewState.prototype,
        [_name$0]: "_AndroidViewState.created",
        index: 2
      });
    },
    get C16() {
      return C16 = dart.const({
        __proto__: platform_views._AndroidViewState.prototype,
        [_name$0]: "_AndroidViewState.createFailed",
        index: 3
      });
    },
    get C17() {
      return C17 = dart.const({
        __proto__: platform_views._AndroidViewState.prototype,
        [_name$0]: "_AndroidViewState.disposed",
        index: 4
      });
    },
    get C18() {
      return C18 = dart.constList([C13 || CT.C13, C14 || CT.C14, C15 || CT.C15, C16 || CT.C16, C17 || CT.C17], platform_views._AndroidViewState);
    },
    get C19() {
      return C19 = dart.const({
        __proto__: ui.TextDirection.prototype,
        [_name]: "TextDirection.ltr",
        index: 1
      });
    },
    get C20() {
      return C20 = dart.const({
        __proto__: ui.TextDirection.prototype,
        [_name]: "TextDirection.rtl",
        index: 0
      });
    }
  });
  ticker$.TickerProvider = class TickerProvider extends core.Object {};
  (ticker$.TickerProvider.new = function() {
    ;
  }).prototype = ticker$.TickerProvider.prototype;
  dart.addTypeTests(ticker$.TickerProvider);
  dart.setLibraryUri(ticker$.TickerProvider, "package:flutter/src/scheduler/ticker.dart");
  const _future = dart.privateName(ticker$, "_future");
  const _muted = dart.privateName(ticker$, "_muted");
  const _startTime = dart.privateName(ticker$, "_startTime");
  const _animationId = dart.privateName(ticker$, "_animationId");
  const _debugCreationStack = dart.privateName(ticker$, "_debugCreationStack");
  const _onTick$ = dart.privateName(ticker$, "_onTick");
  const _cancel = dart.privateName(ticker$, "_cancel");
  const _complete = dart.privateName(ticker$, "_complete");
  const _tick = dart.privateName(ticker$, "_tick");
  const debugLabel$ = dart.privateName(ticker$, "Ticker.debugLabel");
  ticker$.Ticker = class Ticker extends core.Object {
    get debugLabel() {
      return this[debugLabel$];
    }
    set debugLabel(value) {
      super.debugLabel = value;
    }
    get muted() {
      return this[_muted];
    }
    set muted(value) {
      if (dart.equals(value, this.muted)) return;
      this[_muted] = value;
      if (dart.test(value)) {
        this.unscheduleTick();
      } else if (dart.test(this.shouldScheduleTick)) {
        this.scheduleTick();
      }
    }
    get isTicking() {
      if (this[_future] == null) return false;
      if (dart.test(this.muted)) return false;
      if (dart.test(binding$0.SchedulerBinding.instance.framesEnabled)) return true;
      if (!dart.equals(binding$0.SchedulerBinding.instance.schedulerPhase, binding$0.SchedulerPhase.idle)) return true;
      return false;
    }
    get isActive() {
      return this[_future] != null;
    }
    start() {
      if (!dart.test(dart.fn(() => {
        if (dart.test(this.isActive)) {
          dart.throw(new assertions.FlutterError.fromParts(JSArrayOfDiagnosticsNode().of([new assertions.ErrorSummary.new("A ticker was started twice."), new assertions.ErrorDescription.new("A ticker that is already active cannot be started again without first stopping it."), this.describeForError("The affected ticker was")])));
        }
        return true;
      }, VoidTobool())())) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/ticker.dart", 148, 12, "() {\n      if (isActive) {\n        throw FlutterError.fromParts(<DiagnosticsNode>[\n          ErrorSummary('A ticker was started twice.'),\n          ErrorDescription('A ticker that is already active cannot be started again without first stopping it.'),\n          describeForError('The affected ticker was'),\n        ]);\n      }\n      return true;\n    }()");
      if (!(this[_startTime] == null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/ticker.dart", 158, 12, "_startTime == null");
      this[_future] = new ticker$.TickerFuture.__();
      if (dart.test(this.shouldScheduleTick)) {
        this.scheduleTick();
      }
      if (dart.notNull(binding$0.SchedulerBinding.instance.schedulerPhase.index) > dart.notNull(binding$0.SchedulerPhase.idle.index) && dart.notNull(binding$0.SchedulerBinding.instance.schedulerPhase.index) < dart.notNull(binding$0.SchedulerPhase.postFrameCallbacks.index)) this[_startTime] = binding$0.SchedulerBinding.instance.currentFrameTimeStamp;
      return this[_future];
    }
    describeForError(name) {
      return new (DiagnosticsPropertyOfTicker()).new(name, this, {description: this.toString({debugIncludeStack: true})});
    }
    stop(opts) {
      let canceled = opts && 'canceled' in opts ? opts.canceled : false;
      if (!dart.test(this.isActive)) return;
      let localFuture = this[_future];
      this[_future] = null;
      this[_startTime] = null;
      if (!!dart.test(this.isActive)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/ticker.dart", 200, 12, "!isActive");
      this.unscheduleTick();
      if (dart.test(canceled)) {
        localFuture[_cancel](this);
      } else {
        localFuture[_complete]();
      }
    }
    get scheduled() {
      return this[_animationId] != null;
    }
    get shouldScheduleTick() {
      return !dart.test(this.muted) && dart.test(this.isActive) && !dart.test(this.scheduled);
    }
    [_tick](timeStamp) {
      if (!dart.test(this.isTicking)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/ticker.dart", 232, 12, "isTicking");
      if (!dart.test(this.scheduled)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/ticker.dart", 233, 12, "scheduled");
      this[_animationId] = null;
      this[_startTime] == null ? this[_startTime] = timeStamp : null;
      this[_onTick$](timeStamp['-'](this[_startTime]));
      if (dart.test(this.shouldScheduleTick)) this.scheduleTick({rescheduling: true});
    }
    scheduleTick(opts) {
      let rescheduling = opts && 'rescheduling' in opts ? opts.rescheduling : false;
      if (!!dart.test(this.scheduled)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/ticker.dart", 250, 12, "!scheduled");
      if (!dart.test(this.shouldScheduleTick)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/ticker.dart", 251, 12, "shouldScheduleTick");
      this[_animationId] = binding$0.SchedulerBinding.instance.scheduleFrameCallback(dart.bind(this, _tick), {rescheduling: rescheduling});
    }
    unscheduleTick() {
      if (dart.test(this.scheduled)) {
        binding$0.SchedulerBinding.instance.cancelFrameCallbackWithId(this[_animationId]);
        this[_animationId] = null;
      }
      if (!!dart.test(this.shouldScheduleTick)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/ticker.dart", 267, 12, "!shouldScheduleTick");
    }
    absorbTicker(originalTicker) {
      if (!!dart.test(this.isActive)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/ticker.dart", 280, 12, "!isActive");
      if (!(this[_future] == null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/ticker.dart", 281, 12, "_future == null");
      if (!(this[_startTime] == null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/ticker.dart", 282, 12, "_startTime == null");
      if (!(this[_animationId] == null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/ticker.dart", 283, 12, "_animationId == null");
      if (!(originalTicker[_future] == null)[$_equals](originalTicker[_startTime] == null)) dart.assertFailed("Cannot absorb Ticker after it has been disposed.", "org-dartlang-app:///packages/flutter/src/scheduler/ticker.dart", 284, 12, "(originalTicker._future == null) == (originalTicker._startTime == null)");
      if (originalTicker[_future] != null) {
        this[_future] = originalTicker[_future];
        this[_startTime] = originalTicker[_startTime];
        if (dart.test(this.shouldScheduleTick)) this.scheduleTick();
        originalTicker[_future] = null;
        originalTicker.unscheduleTick();
      }
      originalTicker.dispose();
    }
    dispose() {
      if (this[_future] != null) {
        let localFuture = this[_future];
        this[_future] = null;
        if (!!dart.test(this.isActive)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/ticker.dart", 303, 14, "!isActive");
        this.unscheduleTick();
        localFuture[_cancel](this);
      }
      if (!dart.test(dart.fn(() => {
        this[_startTime] = core.Duration.zero;
        return true;
      }, VoidTobool())())) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/ticker.dart", 307, 12, "() {\n      // We intentionally don't null out _startTime. This means that if start()\n      // was ever called, the object is now in a bogus state. This weakly helps\n      // catch cases of use-after-dispose.\n      _startTime = Duration.zero;\n      return true;\n    }()");
    }
    toString(opts) {
      let debugIncludeStack = opts && 'debugIncludeStack' in opts ? opts.debugIncludeStack : false;
      let buffer = new core.StringBuffer.new();
      buffer.write(dart.str(this[$runtimeType]) + "(");
      if (!dart.test(dart.fn(() => {
        let t0;
        buffer.write((t0 = this.debugLabel, t0 == null ? "" : t0));
        return true;
      }, VoidTobool())())) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/ticker.dart", 326, 12, "() {\n      buffer.write(debugLabel ?? '');\n      return true;\n    }()");
      buffer.write(")");
      if (!dart.test(dart.fn(() => {
        if (dart.test(debugIncludeStack)) {
          buffer.writeln();
          buffer.writeln("The stack trace when the " + dart.str(this[$runtimeType]) + " was actually created was:");
          assertions.FlutterError.defaultStackFilter(dart.toString(this[_debugCreationStack])[$trimRight]()[$split]("\n"))[$forEach](dart.bind(buffer, 'writeln'));
        }
        return true;
      }, VoidTobool())())) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/ticker.dart", 331, 12, "() {\n      if (debugIncludeStack) {\n        buffer.writeln();\n        buffer.writeln('The stack trace when the $runtimeType was actually created was:');\n        FlutterError.defaultStackFilter(_debugCreationStack.toString().trimRight().split('\\n')).forEach(buffer.writeln);\n      }\n      return true;\n    }()");
      return buffer.toString();
    }
  };
  (ticker$.Ticker.new = function(_onTick, opts) {
    let debugLabel = opts && 'debugLabel' in opts ? opts.debugLabel : null;
    this[_future] = null;
    this[_muted] = false;
    this[_startTime] = null;
    this[_animationId] = null;
    this[_debugCreationStack] = null;
    this[_onTick$] = _onTick;
    this[debugLabel$] = debugLabel;
    if (!dart.test(dart.fn(() => {
      this[_debugCreationStack] = core.StackTrace.current;
      return true;
    }, VoidTobool())())) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/ticker.dart", 65, 12, "() {\n      _debugCreationStack = StackTrace.current;\n      return true;\n    }()");
  }).prototype = ticker$.Ticker.prototype;
  dart.addTypeTests(ticker$.Ticker);
  dart.setMethodSignature(ticker$.Ticker, () => ({
    __proto__: dart.getMethods(ticker$.Ticker.__proto__),
    start: dart.fnType(ticker$.TickerFuture, []),
    describeForError: dart.fnType(diagnostics.DiagnosticsNode, [core.String]),
    stop: dart.fnType(dart.void, [], {canceled: core.bool}, {}),
    [_tick]: dart.fnType(dart.void, [core.Duration]),
    scheduleTick: dart.fnType(dart.void, [], {rescheduling: core.bool}, {}),
    unscheduleTick: dart.fnType(dart.void, []),
    absorbTicker: dart.fnType(dart.void, [ticker$.Ticker]),
    dispose: dart.fnType(dart.void, []),
    toString: dart.fnType(core.String, [], {debugIncludeStack: core.bool}, {}),
    [$toString]: dart.fnType(core.String, [], {debugIncludeStack: core.bool}, {})
  }));
  dart.setGetterSignature(ticker$.Ticker, () => ({
    __proto__: dart.getGetters(ticker$.Ticker.__proto__),
    muted: core.bool,
    isTicking: core.bool,
    isActive: core.bool,
    scheduled: core.bool,
    shouldScheduleTick: core.bool
  }));
  dart.setSetterSignature(ticker$.Ticker, () => ({
    __proto__: dart.getSetters(ticker$.Ticker.__proto__),
    muted: core.bool
  }));
  dart.setLibraryUri(ticker$.Ticker, "package:flutter/src/scheduler/ticker.dart");
  dart.setFieldSignature(ticker$.Ticker, () => ({
    __proto__: dart.getFields(ticker$.Ticker.__proto__),
    [_future]: dart.fieldType(ticker$.TickerFuture),
    [_muted]: dart.fieldType(core.bool),
    [_startTime]: dart.fieldType(core.Duration),
    [_onTick$]: dart.finalFieldType(dart.fnType(dart.void, [core.Duration])),
    [_animationId]: dart.fieldType(core.int),
    debugLabel: dart.finalFieldType(core.String),
    [_debugCreationStack]: dart.fieldType(core.StackTrace)
  }));
  dart.defineExtensionMethods(ticker$.Ticker, ['toString']);
  const _primaryCompleter = dart.privateName(ticker$, "_primaryCompleter");
  const _secondaryCompleter = dart.privateName(ticker$, "_secondaryCompleter");
  const _completed = dart.privateName(ticker$, "_completed");
  const TickerCanceled_ticker = dart.privateName(ticker$, "TickerCanceled.ticker");
  let C0;
  ticker$.TickerFuture = class TickerFuture extends core.Object {
    [_complete]() {
      let t0;
      if (!(this[_completed] == null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/ticker.dart", 378, 12, "_completed == null");
      this[_completed] = true;
      this[_primaryCompleter].complete(null);
      t0 = this[_secondaryCompleter];
      t0 == null ? null : t0.complete(null);
    }
    [_cancel](ticker) {
      let t0;
      if (!(this[_completed] == null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/ticker.dart", 385, 12, "_completed == null");
      this[_completed] = false;
      t0 = this[_secondaryCompleter];
      t0 == null ? null : t0.completeError(new ticker$.TickerCanceled.new(ticker));
    }
    whenCompleteOrCancel(callback) {
      function thunk(value) {
        callback();
      }
      dart.fn(thunk, dynamicTovoid());
      this.orCancel.then(dart.void, thunk, {onError: thunk});
    }
    get orCancel() {
      if (this[_secondaryCompleter] == null) {
        this[_secondaryCompleter] = CompleterOfvoid().new();
        if (this[_completed] != null) {
          if (dart.test(this[_completed])) {
            this[_secondaryCompleter].complete();
          } else {
            this[_secondaryCompleter].completeError(C0 || CT.C0);
          }
        }
      }
      return this[_secondaryCompleter].future;
    }
    asStream() {
      return this[_primaryCompleter].future.asStream();
    }
    catchError(onError, opts) {
      let test = opts && 'test' in opts ? opts.test : null;
      return this[_primaryCompleter].future.catchError(onError, {test: test});
    }
    then(E, f, opts) {
      let onError = opts && 'onError' in opts ? opts.onError : null;
      return this[_primaryCompleter].future.then(E, dart.fnType(async.FutureOr$(E), [dart.void])._check(f), {onError: onError});
    }
    timeout(timeLimit, opts) {
      let onTimeout = opts && 'onTimeout' in opts ? opts.onTimeout : null;
      VoidTodynamic()._check(onTimeout);
      return this[_primaryCompleter].future.timeout(timeLimit, {onTimeout: onTimeout});
    }
    whenComplete(action) {
      return this[_primaryCompleter].future.whenComplete(action);
    }
    toString() {
      return dart.str(diagnostics.describeIdentity(this)) + "(" + (this[_completed] == null ? "active" : dart.test(this[_completed]) ? "complete" : "canceled") + ")";
    }
  };
  (ticker$.TickerFuture.__ = function() {
    this[_primaryCompleter] = CompleterOfvoid().new();
    this[_secondaryCompleter] = null;
    this[_completed] = null;
    ;
  }).prototype = ticker$.TickerFuture.prototype;
  (ticker$.TickerFuture.complete = function() {
    this[_primaryCompleter] = CompleterOfvoid().new();
    this[_secondaryCompleter] = null;
    this[_completed] = null;
    this[_complete]();
  }).prototype = ticker$.TickerFuture.prototype;
  ticker$.TickerFuture.prototype[dart.isFuture] = true;
  dart.addTypeTests(ticker$.TickerFuture);
  ticker$.TickerFuture[dart.implements] = () => [async.Future$(dart.void)];
  dart.setMethodSignature(ticker$.TickerFuture, () => ({
    __proto__: dart.getMethods(ticker$.TickerFuture.__proto__),
    [_complete]: dart.fnType(dart.void, []),
    [_cancel]: dart.fnType(dart.void, [ticker$.Ticker]),
    whenCompleteOrCancel: dart.fnType(dart.void, [dart.fnType(dart.void, [])]),
    asStream: dart.fnType(async.Stream$(dart.void), []),
    catchError: dart.fnType(async.Future$(dart.void), [core.Function], {test: dart.fnType(core.bool, [dart.dynamic])}, {}),
    then: dart.gFnType(E => [async.Future$(E), [dart.fnType(dart.dynamic, [dart.void])], {onError: core.Function}, {}]),
    timeout: dart.fnType(async.Future$(dart.void), [core.Duration], {onTimeout: core.Object}, {}),
    whenComplete: dart.fnType(async.Future$(dart.void), [dart.fnType(dart.dynamic, [])])
  }));
  dart.setGetterSignature(ticker$.TickerFuture, () => ({
    __proto__: dart.getGetters(ticker$.TickerFuture.__proto__),
    orCancel: async.Future$(dart.void)
  }));
  dart.setLibraryUri(ticker$.TickerFuture, "package:flutter/src/scheduler/ticker.dart");
  dart.setFieldSignature(ticker$.TickerFuture, () => ({
    __proto__: dart.getFields(ticker$.TickerFuture.__proto__),
    [_primaryCompleter]: dart.finalFieldType(async.Completer$(dart.void)),
    [_secondaryCompleter]: dart.fieldType(async.Completer$(dart.void)),
    [_completed]: dart.fieldType(core.bool)
  }));
  dart.defineExtensionMethods(ticker$.TickerFuture, ['toString']);
  ticker$.TickerCanceled = class TickerCanceled extends core.Object {
    get ticker() {
      return this[ticker$0];
    }
    set ticker(value) {
      super.ticker = value;
    }
    toString() {
      if (this.ticker != null) return "This ticker was canceled: " + dart.str(this.ticker);
      return "The ticker was canceled before the \"orCancel\" property was first used.";
    }
  };
  (ticker$.TickerCanceled.new = function(ticker) {
    if (ticker === void 0) ticker = null;
    this[ticker$0] = ticker;
    ;
  }).prototype = ticker$.TickerCanceled.prototype;
  dart.addTypeTests(ticker$.TickerCanceled);
  const ticker$0 = TickerCanceled_ticker;
  ticker$.TickerCanceled[dart.implements] = () => [core.Exception];
  dart.setLibraryUri(ticker$.TickerCanceled, "package:flutter/src/scheduler/ticker.dart");
  dart.setFieldSignature(ticker$.TickerCanceled, () => ({
    __proto__: dart.getFields(ticker$.TickerCanceled.__proto__),
    ticker: dart.finalFieldType(ticker$.Ticker)
  }));
  dart.defineExtensionMethods(ticker$.TickerCanceled, ['toString']);
  const _is__TaskEntry_default = Symbol('_is__TaskEntry_default');
  const completer = dart.privateName(binding$0, "_TaskEntry.completer");
  binding$0._TaskEntry$ = dart.generic(T => {
    let CompleterOfT = () => (CompleterOfT = dart.constFn(async.Completer$(T)))();
    class _TaskEntry extends core.Object {
      get completer() {
        return this[completer];
      }
      set completer(value) {
        this[completer] = CompleterOfT()._check(value);
      }
      run() {
        let t0;
        if (!false) {
          developer.Timeline.timeSync(core.Null, (t0 = this.debugLabel, t0 == null ? "Scheduled Task" : t0), dart.fn(() => {
            this.completer.complete(this.task());
          }, VoidToNull()), {flow: this.flow != null ? developer.Flow.step(this.flow.id) : null});
        } else {
          this.completer.complete(this.task());
        }
      }
    }
    (_TaskEntry.new = function(task, priority, debugLabel, flow) {
      this.debugStack = null;
      this[completer] = null;
      this.task = task;
      this.priority = priority;
      this.debugLabel = debugLabel;
      this.flow = flow;
      if (!dart.test(dart.fn(() => {
        this.debugStack = core.StackTrace.current;
        return true;
      }, VoidTobool())())) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 62, 12, "() {\n      debugStack = StackTrace.current;\n      return true;\n    }()");
      this.completer = CompleterOfT().new();
    }).prototype = _TaskEntry.prototype;
    dart.addTypeTests(_TaskEntry);
    _TaskEntry.prototype[_is__TaskEntry_default] = true;
    dart.setMethodSignature(_TaskEntry, () => ({
      __proto__: dart.getMethods(_TaskEntry.__proto__),
      run: dart.fnType(dart.void, [])
    }));
    dart.setLibraryUri(_TaskEntry, "package:flutter/src/scheduler/binding.dart");
    dart.setFieldSignature(_TaskEntry, () => ({
      __proto__: dart.getFields(_TaskEntry.__proto__),
      task: dart.finalFieldType(dart.fnType(T, [])),
      priority: dart.finalFieldType(core.int),
      debugLabel: dart.finalFieldType(core.String),
      flow: dart.finalFieldType(developer.Flow),
      debugStack: dart.fieldType(core.StackTrace),
      completer: dart.fieldType(async.Completer$(T))
    }));
    return _TaskEntry;
  });
  binding$0._TaskEntry = binding$0._TaskEntry$();
  dart.addTypeTests(binding$0._TaskEntry, _is__TaskEntry_default);
  binding$0._FrameCallbackEntry = class _FrameCallbackEntry extends core.Object {};
  (binding$0._FrameCallbackEntry.new = function(callback, opts) {
    let rescheduling = opts && 'rescheduling' in opts ? opts.rescheduling : false;
    this.debugStack = null;
    this.callback = callback;
    if (!dart.test(dart.fn(() => {
      if (dart.test(rescheduling)) {
        if (!dart.test(dart.fn(() => {
          if (binding$0._FrameCallbackEntry.debugCurrentCallbackStack == null) {
            dart.throw(new assertions.FlutterError.fromParts(JSArrayOfDiagnosticsNode().of([new assertions.ErrorSummary.new("scheduleFrameCallback called with rescheduling true, but no callback is in scope."), new assertions.ErrorDescription.new("The \"rescheduling\" argument should only be set to true if the " + "callback is being reregistered from within the callback itself, " + "and only then if the callback itself is entirely synchronous."), new assertions.ErrorHint.new("If this is the initial registration of the callback, or if the " + "callback is asynchronous, then do not use the \"rescheduling\" " + "argument.")])));
          }
          return true;
        }, VoidTobool())())) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 95, 16, "() {\n          if (debugCurrentCallbackStack == null) {\n            throw FlutterError.fromParts(<DiagnosticsNode>[\n              ErrorSummary('scheduleFrameCallback called with rescheduling true, but no callback is in scope.'),\n              ErrorDescription(\n                'The \"rescheduling\" argument should only be set to true if the '\n                'callback is being reregistered from within the callback itself, '\n                'and only then if the callback itself is entirely synchronous.'\n              ),\n              ErrorHint(\n                'If this is the initial registration of the callback, or if the '\n                'callback is asynchronous, then do not use the \"rescheduling\" '\n                'argument.'\n              )\n            ]);\n          }\n          return true;\n        }()");
        this.debugStack = binding$0._FrameCallbackEntry.debugCurrentCallbackStack;
      } else {
        this.debugStack = core.StackTrace.current;
      }
      return true;
    }, VoidTobool())())) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 93, 12, "() {\n      if (rescheduling) {\n        assert(() {\n          if (debugCurrentCallbackStack == null) {\n            throw FlutterError.fromParts(<DiagnosticsNode>[\n              ErrorSummary('scheduleFrameCallback called with rescheduling true, but no callback is in scope.'),\n              ErrorDescription(\n                'The \"rescheduling\" argument should only be set to true if the '\n                'callback is being reregistered from within the callback itself, '\n                'and only then if the callback itself is entirely synchronous.'\n              ),\n              ErrorHint(\n                'If this is the initial registration of the callback, or if the '\n                'callback is asynchronous, then do not use the \"rescheduling\" '\n                'argument.'\n              )\n            ]);\n          }\n          return true;\n        }());\n        debugStack = debugCurrentCallbackStack;\n      } else {\n        // TODO(ianh): trim the frames from this library, so that the call to scheduleFrameCallback is the top one\n        debugStack = StackTrace.current;\n      }\n      return true;\n    }()");
  }).prototype = binding$0._FrameCallbackEntry.prototype;
  dart.addTypeTests(binding$0._FrameCallbackEntry);
  dart.setLibraryUri(binding$0._FrameCallbackEntry, "package:flutter/src/scheduler/binding.dart");
  dart.setFieldSignature(binding$0._FrameCallbackEntry, () => ({
    __proto__: dart.getFields(binding$0._FrameCallbackEntry.__proto__),
    callback: dart.finalFieldType(dart.fnType(dart.void, [core.Duration])),
    debugStack: dart.fieldType(core.StackTrace)
  }));
  dart.defineLazy(binding$0._FrameCallbackEntry, {
    /*binding$0._FrameCallbackEntry.debugCurrentCallbackStack*/get debugCurrentCallbackStack() {
      return null;
    },
    set debugCurrentCallbackStack(_) {}
  });
  const _name$ = dart.privateName(binding$0, "_name");
  let C1;
  let C2;
  let C3;
  let C4;
  let C5;
  let C6;
  binding$0.SchedulerPhase = class SchedulerPhase extends core.Object {
    toString() {
      return this[_name$];
    }
  };
  (binding$0.SchedulerPhase.new = function(index, _name) {
    this.index = index;
    this[_name$] = _name;
    ;
  }).prototype = binding$0.SchedulerPhase.prototype;
  dart.addTypeTests(binding$0.SchedulerPhase);
  dart.setLibraryUri(binding$0.SchedulerPhase, "package:flutter/src/scheduler/binding.dart");
  dart.setFieldSignature(binding$0.SchedulerPhase, () => ({
    __proto__: dart.getFields(binding$0.SchedulerPhase.__proto__),
    index: dart.finalFieldType(core.int),
    [_name$]: dart.finalFieldType(core.String)
  }));
  dart.defineExtensionMethods(binding$0.SchedulerPhase, ['toString']);
  binding$0.SchedulerPhase.idle = C1 || CT.C1;
  binding$0.SchedulerPhase.transientCallbacks = C2 || CT.C2;
  binding$0.SchedulerPhase.midFrameMicrotasks = C3 || CT.C3;
  binding$0.SchedulerPhase.persistentCallbacks = C4 || CT.C4;
  binding$0.SchedulerPhase.postFrameCallbacks = C5 || CT.C5;
  binding$0.SchedulerPhase.values = C6 || CT.C6;
  const _timingsCallbacks = dart.privateName(binding$0, "_timingsCallbacks");
  const _lifecycleState = dart.privateName(binding$0, "_lifecycleState");
  let C7;
  const _taskQueue = dart.privateName(binding$0, "_taskQueue");
  let C8;
  const _hasRequestedAnEventLoopCallback = dart.privateName(binding$0, "_hasRequestedAnEventLoopCallback");
  const _nextFrameCallbackId = dart.privateName(binding$0, "_nextFrameCallbackId");
  const _transientCallbacks = dart.privateName(binding$0, "_transientCallbacks");
  const _removedIds = dart.privateName(binding$0, "_removedIds");
  const _persistentCallbacks = dart.privateName(binding$0, "_persistentCallbacks");
  const _postFrameCallbacks = dart.privateName(binding$0, "_postFrameCallbacks");
  const _nextFrameCompleter = dart.privateName(binding$0, "_nextFrameCompleter");
  const _hasScheduledFrame = dart.privateName(binding$0, "_hasScheduledFrame");
  const _schedulerPhase = dart.privateName(binding$0, "_schedulerPhase");
  const _framesEnabled = dart.privateName(binding$0, "_framesEnabled");
  const _warmUpFrame = dart.privateName(binding$0, "_warmUpFrame");
  const _firstRawTimeStampInEpoch = dart.privateName(binding$0, "_firstRawTimeStampInEpoch");
  const _epochStart = dart.privateName(binding$0, "_epochStart");
  const _lastRawTimeStamp = dart.privateName(binding$0, "_lastRawTimeStamp");
  const _currentFrameTimeStamp = dart.privateName(binding$0, "_currentFrameTimeStamp");
  const _debugFrameNumber = dart.privateName(binding$0, "_debugFrameNumber");
  const _debugBanner = dart.privateName(binding$0, "_debugBanner");
  const _ignoreNextEngineDrawFrame = dart.privateName(binding$0, "_ignoreNextEngineDrawFrame");
  const _handleLifecycleMessage = dart.privateName(binding$0, "_handleLifecycleMessage");
  const _profileFramePostEvent = dart.privateName(binding$0, "_profileFramePostEvent");
  const _executeTimingsCallbacks = dart.privateName(binding$0, "_executeTimingsCallbacks");
  const _setFramesEnabledState = dart.privateName(binding$0, "_setFramesEnabledState");
  const _name = dart.privateName(ui, "_name");
  let C9;
  let C10;
  let C11;
  let C12;
  const _ensureEventLoopCallback = dart.privateName(binding$0, "_ensureEventLoopCallback");
  const _runTasks = dart.privateName(binding$0, "_runTasks");
  const _handleBeginFrame = dart.privateName(binding$0, "_handleBeginFrame");
  const _handleDrawFrame = dart.privateName(binding$0, "_handleDrawFrame");
  const _adjustForEpoch = dart.privateName(binding$0, "_adjustForEpoch");
  const _invokeFrameCallback = dart.privateName(binding$0, "_invokeFrameCallback");
  const schedulingStrategy = dart.privateName(binding$0, "SchedulerBinding.schedulingStrategy");
  binding$0.SchedulerBinding = class SchedulerBinding extends core.Object {
    static get instance() {
      return binding$0.SchedulerBinding._instance;
    }
    static _parseAppLifecycleMessage(message) {
      switch (message) {
        case "AppLifecycleState.paused":
        {
          return ui.AppLifecycleState.paused;
        }
        case "AppLifecycleState.resumed":
        {
          return ui.AppLifecycleState.resumed;
        }
        case "AppLifecycleState.inactive":
        {
          return ui.AppLifecycleState.inactive;
        }
        case "AppLifecycleState.suspending":
        {
          return ui.AppLifecycleState.suspending;
        }
      }
      return null;
    }
    static _taskSorter(e1, e2) {
      return -e1.priority[$compareTo](e2.priority);
    }
    static debugPrintTransientCallbackRegistrationStack() {
      if (!dart.test(dart.fn(() => {
        if (binding$0._FrameCallbackEntry.debugCurrentCallbackStack != null) {
          print.debugPrint("When the current transient callback was registered, this was the stack:");
          print.debugPrint(assertions.FlutterError.defaultStackFilter(dart.toString(binding$0._FrameCallbackEntry.debugCurrentCallbackStack)[$trimRight]()[$split]("\n"))[$join]("\n"));
        } else {
          print.debugPrint("No transient callback is currently executing.");
        }
        return true;
      }, VoidTobool())())) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 610, 12, " assert(() {\n      if (_FrameCallbackEntry.debugCurrentCallbackStack != null) {\n        debugPrint('When the current transient callback was registered, this was the stack:');\n        debugPrint(\n          FlutterError.defaultStackFilter(\n            _FrameCallbackEntry.debugCurrentCallbackStack.toString().trimRight().split('\\n')\n          ).join('\\n')\n        );\n      } else {\n        debugPrint('No transient callback is currently executing.');\n      }\n      return true;");
    }
    static _debugDescribeTimeStamp(timeStamp, buffer) {
      if (dart.notNull(timeStamp.inDays) > 0) buffer.write(dart.str(timeStamp.inDays) + "d ");
      if (dart.notNull(timeStamp.inHours) > 0) buffer.write(dart.str(dart.notNull(timeStamp.inHours) - dart.notNull(timeStamp.inDays) * 24) + "h ");
      if (dart.notNull(timeStamp.inMinutes) > 0) buffer.write(dart.str(dart.notNull(timeStamp.inMinutes) - dart.notNull(timeStamp.inHours) * 60) + "m ");
      if (dart.notNull(timeStamp.inSeconds) > 0) buffer.write(dart.str(dart.notNull(timeStamp.inSeconds) - dart.notNull(timeStamp.inMinutes) * 60) + "s ");
      buffer.write(dart.str(dart.notNull(timeStamp.inMilliseconds) - dart.notNull(timeStamp.inSeconds) * 1000));
      let microseconds = dart.notNull(timeStamp.inMicroseconds) - dart.notNull(timeStamp.inMilliseconds) * 1000;
      if (microseconds > 0) buffer.write("." + microseconds[$toString]()[$padLeft](3, "0"));
      buffer.write("ms");
    }
  };
  binding$0.SchedulerBinding[dart.mixinOn] = _SchedulerBinding$36BindingBase$36ServicesBinding => class SchedulerBinding extends _SchedulerBinding$36BindingBase$36ServicesBinding {
    get schedulingStrategy() {
      return this[schedulingStrategy];
    }
    set schedulingStrategy(value) {
      this[schedulingStrategy] = value;
    }
    initInstances() {
      super.initInstances();
      binding$0.SchedulerBinding._instance = this;
      system_channels.SystemChannels.lifecycle.setMessageHandler(dart.bind(this, _handleLifecycleMessage));
      this.readInitialLifecycleStateFromNativeWindow();
      if (!false) {
        let frameNumber = 0;
        this.addTimingsCallback(dart.fn(timings => {
          for (let frameTiming of timings) {
            frameNumber = frameNumber + 1;
            this[_profileFramePostEvent](frameNumber, frameTiming);
          }
        }, ListOfFrameTimingToNull()));
      }
    }
    addTimingsCallback(callback) {
      this[_timingsCallbacks][$add](callback);
      if (this[_timingsCallbacks][$length] === 1) {
        if (!(this.window.onReportTimings == null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 232, 14, "window.onReportTimings == null");
        this.window.onReportTimings = dart.bind(this, _executeTimingsCallbacks);
      }
      if (!dart.equals(this.window.onReportTimings, dart.bind(this, _executeTimingsCallbacks))) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 235, 12, "window.onReportTimings == _executeTimingsCallbacks");
    }
    removeTimingsCallback(callback) {
      if (!dart.test(this[_timingsCallbacks][$contains](callback))) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 240, 12, "_timingsCallbacks.contains(callback)");
      this[_timingsCallbacks][$remove](callback);
      if (dart.test(this[_timingsCallbacks][$isEmpty])) {
        this.window.onReportTimings = null;
      }
    }
    [_executeTimingsCallbacks](timings) {
      let clonedCallbacks = ListOfListOfFrameTimingTovoid().from(this[_timingsCallbacks]);
      for (let callback of clonedCallbacks) {
        try {
          if (dart.test(this[_timingsCallbacks][$contains](callback))) {
            callback(timings);
          }
        } catch (e) {
          let exception = dart.getThrown(e);
          let stack = dart.stackTrace(e);
          assertions.FlutterError.reportError(new assertions.FlutterErrorDetails.new({exception: exception, stack: stack, context: new assertions.ErrorDescription.new("while executing callbacks for FrameTiming"), informationCollector: dart.fn(() => new (SyncIterableOfDiagnosticsPropertyOfListOfFrameTimingTovoid()).new(function*() {
              yield new (DiagnosticsPropertyOfListOfFrameTimingTovoid()).new("The TimingsCallback that gets executed was", callback, {style: diagnostics.DiagnosticsTreeStyle.errorProperty});
            }), VoidToIterableOfDiagnosticsPropertyOfListOfFrameTimingTovoid())}));
        }
      }
    }
    initServiceExtensions() {
      super.initServiceExtensions();
      if (!false) {
        this.registerNumericServiceExtension({name: "timeDilation", getter: dart.fn(() => async.async(core.double, function*() {
            return binding$0.timeDilation;
          }), VoidToFutureOfdouble()), setter: dart.fn(value => async.async(core.Null, function*() {
            binding$0.timeDilation = value;
          }), doubleToFutureOfNull())});
      }
    }
    get lifecycleState() {
      return this[_lifecycleState];
    }
    readInitialLifecycleStateFromNativeWindow() {
      if (this[_lifecycleState] == null && binding$0.SchedulerBinding._parseAppLifecycleMessage(this.window.initialLifecycleState) != null) {
        this[_handleLifecycleMessage](this.window.initialLifecycleState);
      }
    }
    handleAppLifecycleStateChanged(state) {
      if (!(state != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 328, 12, "state != null");
      this[_lifecycleState] = state;
      switch (state) {
        case C9 || CT.C9:
        case C10 || CT.C10:
        {
          this[_setFramesEnabledState](true);
          break;
        }
        case C11 || CT.C11:
        case C12 || CT.C12:
        {
          this[_setFramesEnabledState](false);
          break;
        }
      }
    }
    [_handleLifecycleMessage](message) {
      return async.async(core.String, (function* _handleLifecycleMessage() {
        this.handleAppLifecycleStateChanged(binding$0.SchedulerBinding._parseAppLifecycleMessage(message));
        return null;
      }).bind(this));
    }
    scheduleTask(T, task, priority, opts) {
      let debugLabel = opts && 'debugLabel' in opts ? opts.debugLabel : null;
      let flow = opts && 'flow' in opts ? opts.flow : null;
      let isFirstTask = this[_taskQueue].isEmpty;
      let entry = new (binding$0._TaskEntry$(T)).new(task, priority.value, debugLabel, flow);
      this[_taskQueue].add(entry);
      if (dart.test(isFirstTask) && !dart.test(this.locked)) this[_ensureEventLoopCallback]();
      return entry.completer.future;
    }
    unlocked() {
      super.unlocked();
      if (dart.test(this[_taskQueue].isNotEmpty)) this[_ensureEventLoopCallback]();
    }
    [_ensureEventLoopCallback]() {
      if (!!dart.test(this.locked)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 421, 12, "!locked");
      if (!dart.test(this[_taskQueue].isNotEmpty)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 422, 12, "_taskQueue.isNotEmpty");
      if (dart.test(this[_hasRequestedAnEventLoopCallback])) return;
      this[_hasRequestedAnEventLoopCallback] = true;
      async.Timer.run(dart.bind(this, _runTasks));
    }
    [_runTasks]() {
      this[_hasRequestedAnEventLoopCallback] = false;
      if (dart.test(this.handleEventLoopCallback())) this[_ensureEventLoopCallback]();
    }
    handleEventLoopCallback() {
      if (dart.test(this[_taskQueue].isEmpty) || dart.test(this.locked)) return false;
      let entry = this[_taskQueue].first;
      if (dart.test(this.schedulingStrategy({priority: entry.priority, scheduler: this}))) {
        try {
          this[_taskQueue].removeFirst();
          entry.run();
        } catch (e) {
          let exception = dart.getThrown(e);
          let exceptionStack = dart.stackTrace(e);
          let callbackStack = null;
          if (!dart.test(dart.fn(() => {
            callbackStack = entry.debugStack;
            return true;
          }, VoidTobool())())) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 457, 16, "() {\n          callbackStack = entry.debugStack;\n          return true;\n        }()");
          assertions.FlutterError.reportError(new assertions.FlutterErrorDetails.new({exception: exception, stack: exceptionStack, library: "scheduler library", context: new assertions.ErrorDescription.new("during a task callback"), informationCollector: callbackStack == null ? null : dart.fn(() => new (SyncIterableOfDiagnosticsStackTrace()).new(function*() {
              yield new assertions.DiagnosticsStackTrace.new("\nThis exception was thrown in the context of a scheduler callback. " + "When the scheduler callback was _registered_ (as opposed to when the " + "exception was thrown), this was the stack", callbackStack);
            }), VoidToIterableOfDiagnosticsStackTrace())}));
        }
        return this[_taskQueue].isNotEmpty;
      }
      return false;
    }
    get transientCallbackCount() {
      return this[_transientCallbacks][$length];
    }
    scheduleFrameCallback(callback, opts) {
      let rescheduling = opts && 'rescheduling' in opts ? opts.rescheduling : false;
      this.scheduleFrame();
      this[_nextFrameCallbackId] = dart.notNull(this[_nextFrameCallbackId]) + 1;
      this[_transientCallbacks][$_set](this[_nextFrameCallbackId], new binding$0._FrameCallbackEntry.new(callback, {rescheduling: rescheduling}));
      return this[_nextFrameCallbackId];
    }
    cancelFrameCallbackWithId(id) {
      if (!(dart.notNull(id) > 0)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 529, 12, "id > 0");
      this[_transientCallbacks][$remove](id);
      this[_removedIds].add(id);
    }
    debugAssertNoTransientCallbacks(reason) {
      if (!dart.test(dart.fn(() => {
        if (dart.notNull(this.transientCallbackCount) > 0) {
          let count = this.transientCallbackCount;
          let callbacks = LinkedHashMapOfint$_FrameCallbackEntry().from(this[_transientCallbacks]);
          assertions.FlutterError.reportError(new assertions.FlutterErrorDetails.new({exception: reason, library: "scheduler library", informationCollector: dart.fn(() => new (SyncIterableOfDiagnosticsNode()).new(function*() {
              if (count === 1) {
                yield new assertions.ErrorDescription.new("There was one transient callback left. " + "The stack trace for when it was registered is as follows:");
              } else {
                yield new assertions.ErrorDescription.new("There were " + dart.str(count) + " transient callbacks left. " + "The stack traces for when they were registered are as follows:");
              }
              for (let id of callbacks[$keys]) {
                let entry = callbacks[$_get](id);
                yield new assertions.DiagnosticsStackTrace.new("── callback " + dart.str(id) + " ──", entry.debugStack, {showSeparator: false});
              }
            }), VoidToIterableOfDiagnosticsNode())}));
        }
        return true;
      }, VoidTobool())())) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 555, 12, "() {\n      if (transientCallbackCount > 0) {\n        // We cache the values so that we can produce them later\n        // even if the information collector is called after\n        // the problem has been resolved.\n        final int count = transientCallbackCount;\n        final Map<int, _FrameCallbackEntry> callbacks = Map<int, _FrameCallbackEntry>.from(_transientCallbacks);\n        FlutterError.reportError(FlutterErrorDetails(\n          exception: reason,\n          library: 'scheduler library',\n          informationCollector: () sync* {\n            if (count == 1) {\n              // TODO(jacobr): I have added an extra line break in this case.\n              yield ErrorDescription(\n                'There was one transient callback left. '\n                'The stack trace for when it was registered is as follows:'\n              );\n            } else {\n              yield ErrorDescription(\n                'There were $count transient callbacks left. '\n                'The stack traces for when they were registered are as follows:'\n              );\n            }\n            for (int id in callbacks.keys) {\n              final _FrameCallbackEntry entry = callbacks[id];\n              yield DiagnosticsStackTrace('── callback $id ──', entry.debugStack, showSeparator: false);\n            }\n          },\n        ));\n      }\n      return true;");
      return true;
    }
    addPersistentFrameCallback(callback) {
      this[_persistentCallbacks][$add](callback);
    }
    addPostFrameCallback(callback) {
      this[_postFrameCallbacks][$add](callback);
    }
    get endOfFrame() {
      if (this[_nextFrameCompleter] == null) {
        if (dart.equals(this.schedulerPhase, binding$0.SchedulerPhase.idle)) this.scheduleFrame();
        this[_nextFrameCompleter] = CompleterOfvoid().new();
        this.addPostFrameCallback(dart.fn(timeStamp => {
          this[_nextFrameCompleter].complete();
          this[_nextFrameCompleter] = null;
        }, DurationToNull()));
      }
      return this[_nextFrameCompleter].future;
    }
    get hasScheduledFrame() {
      return this[_hasScheduledFrame];
    }
    get schedulerPhase() {
      return this[_schedulerPhase];
    }
    get framesEnabled() {
      return this[_framesEnabled];
    }
    [_setFramesEnabledState](enabled) {
      if (dart.equals(this[_framesEnabled], enabled)) return;
      this[_framesEnabled] = enabled;
      if (dart.test(enabled)) this.scheduleFrame();
    }
    ensureFrameCallbacksRegistered() {
      let t2, t2$;
      t2 = this.window;
      t2.onBeginFrame == null ? t2.onBeginFrame = dart.bind(this, _handleBeginFrame) : null;
      t2$ = this.window;
      t2$.onDrawFrame == null ? t2$.onDrawFrame = dart.bind(this, _handleDrawFrame) : null;
    }
    ensureVisualUpdate() {
      switch (this.schedulerPhase) {
        case C1 || CT.C1:
        case C5 || CT.C5:
        {
          this.scheduleFrame();
          return;
        }
        case C2 || CT.C2:
        case C3 || CT.C3:
        case C4 || CT.C4:
        {
          return;
        }
      }
    }
    scheduleFrame() {
      if (dart.test(this[_hasScheduledFrame]) || !dart.test(this[_framesEnabled])) return;
      if (!dart.test(dart.fn(() => {
        if (dart.test(debug$.debugPrintScheduleFrameStacks)) assertions.debugPrintStack({label: "scheduleFrame() called. Current phase is " + dart.str(this.schedulerPhase) + "."});
        return true;
      }, VoidTobool())())) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 777, 12, " assert(() {\n      if (debugPrintScheduleFrameStacks)\n        debugPrintStack(label: 'scheduleFrame() called. Current phase is $schedulerPhase.');\n      return true;");
      this.ensureFrameCallbacksRegistered();
      this.window.scheduleFrame();
      this[_hasScheduledFrame] = true;
    }
    scheduleForcedFrame() {
      if (dart.test(this[_hasScheduledFrame])) return;
      if (!dart.test(dart.fn(() => {
        if (dart.test(debug$.debugPrintScheduleFrameStacks)) assertions.debugPrintStack({label: "scheduleForcedFrame() called. Current phase is " + dart.str(this.schedulerPhase) + "."});
        return true;
      }, VoidTobool())())) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 809, 12, " assert(() {\n      if (debugPrintScheduleFrameStacks)\n        debugPrintStack(label: 'scheduleForcedFrame() called. Current phase is $schedulerPhase.');\n      return true;");
      this.window.scheduleFrame();
      this[_hasScheduledFrame] = true;
    }
    scheduleWarmUpFrame() {
      if (dart.test(this[_warmUpFrame]) || !dart.equals(this.schedulerPhase, binding$0.SchedulerPhase.idle)) return;
      this[_warmUpFrame] = true;
      developer.Timeline.startSync("Warm-up frame");
      let hadScheduledFrame = this[_hasScheduledFrame];
      async.Timer.run(dart.fn(() => {
        if (!dart.test(this[_warmUpFrame])) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 844, 14, " assert(_war");
        this.handleBeginFrame(null);
      }, VoidToNull()));
      async.Timer.run(dart.fn(() => {
        if (!dart.test(this[_warmUpFrame])) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 848, 14, " assert(_war");
        this.handleDrawFrame();
        this.resetEpoch();
        this[_warmUpFrame] = false;
        if (dart.test(hadScheduledFrame)) this.scheduleFrame();
      }, VoidToNull()));
      this.lockEvents(dart.fn(() => async.async(core.Null, (function*() {
        yield this.endOfFrame;
        developer.Timeline.finishSync();
      }).bind(this)), VoidToFutureOfNull()));
    }
    resetEpoch() {
      this[_epochStart] = this[_adjustForEpoch](this[_lastRawTimeStamp]);
      this[_firstRawTimeStampInEpoch] = null;
    }
    [_adjustForEpoch](rawTimeStamp) {
      let rawDurationSinceEpoch = this[_firstRawTimeStampInEpoch] == null ? core.Duration.zero : rawTimeStamp['-'](this[_firstRawTimeStampInEpoch]);
      return new core.Duration.new({microseconds: (dart.notNull(rawDurationSinceEpoch.inMicroseconds) / dart.notNull(binding$0.timeDilation))[$round]() + dart.notNull(this[_epochStart].inMicroseconds)});
    }
    get currentFrameTimeStamp() {
      if (!(this[_currentFrameTimeStamp] != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 917, 12, " assert(_currentFrameTimeStamp");
      return this[_currentFrameTimeStamp];
    }
    get currentSystemFrameTimeStamp() {
      if (!(this[_lastRawTimeStamp] != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 934, 12, " assert(_lastRawTimeStamp");
      return this[_lastRawTimeStamp];
    }
    [_handleBeginFrame](rawTimeStamp) {
      if (dart.test(this[_warmUpFrame])) {
        if (!!dart.test(this[_ignoreNextEngineDrawFrame])) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 944, 14, " assert(!_ignoreNextEngineD");
        this[_ignoreNextEngineDrawFrame] = true;
        return;
      }
      this.handleBeginFrame(rawTimeStamp);
    }
    [_handleDrawFrame]() {
      if (dart.test(this[_ignoreNextEngineDrawFrame])) {
        this[_ignoreNextEngineDrawFrame] = false;
        return;
      }
      this.handleDrawFrame();
    }
    handleBeginFrame(rawTimeStamp) {
      let t2;
      developer.Timeline.startSync("Frame", {arguments: debug.timelineWhitelistArguments});
      this[_firstRawTimeStampInEpoch] == null ? this[_firstRawTimeStampInEpoch] = rawTimeStamp : null;
      this[_currentFrameTimeStamp] = this[_adjustForEpoch]((t2 = rawTimeStamp, t2 == null ? this[_lastRawTimeStamp] : t2));
      if (rawTimeStamp != null) this[_lastRawTimeStamp] = rawTimeStamp;
      if (!dart.test(dart.fn(() => {
        this[_debugFrameNumber] = dart.notNull(this[_debugFrameNumber]) + 1;
        if (dart.test(debug$.debugPrintBeginFrameBanner) || dart.test(debug$.debugPrintEndFrameBanner)) {
          let frameTimeStampDescription = new core.StringBuffer.new();
          if (rawTimeStamp != null) {
            binding$0.SchedulerBinding._debugDescribeTimeStamp(this[_currentFrameTimeStamp], frameTimeStampDescription);
          } else {
            frameTimeStampDescription.write("(warm-up frame)");
          }
          this[_debugBanner] = "▄▄▄▄▄▄▄▄ Frame " + dart.toString(this[_debugFrameNumber])[$padRight](7) + "   " + frameTimeStampDescription.toString()[$padLeft](18) + " ▄▄▄▄▄▄▄▄";
          if (dart.test(debug$.debugPrintBeginFrameBanner)) print.debugPrint(this[_debugBanner]);
        }
        return true;
      }, VoidTobool())())) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 989, 12, " assert(() {\n      _debugFrameNumber += 1;\n\n      if (debugPrintBeginFrameBanner || debugPrintEndFrameBanner) {\n        final StringBuffer frameTimeStampDescription = StringBuffer();\n        if (rawTimeStamp != null) {\n          _debugDescribeTimeStamp(_currentFrameTimeStamp, frameTimeStampDescription);\n        } else {\n          frameTimeStampDescription.write('(warm-up frame)');\n        }\n        _debugBanner = '▄▄▄▄▄▄▄▄ Frame ${_debugFrameNumber.toString().padRight(7)}   ${frameTimeStampDescription.toString().padLeft(18)} ▄▄▄▄▄▄▄▄';\n        if (debugPrintBeginFrameBanner)\n          debugPrint(_debugBan");
      if (!dart.equals(this.schedulerPhase, binding$0.SchedulerPhase.idle)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 1006, 12, "     return true;\n    }());\n\n    asse");
      this[_hasScheduledFrame] = false;
      try {
        developer.Timeline.startSync("Animate", {arguments: debug.timelineWhitelistArguments});
        this[_schedulerPhase] = binding$0.SchedulerPhase.transientCallbacks;
        let callbacks = this[_transientCallbacks];
        this[_transientCallbacks] = new (IdentityMapOfint$_FrameCallbackEntry()).new();
        callbacks[$forEach](dart.fn((id, callbackEntry) => {
          if (!dart.test(this[_removedIds].contains(id))) this[_invokeFrameCallback](callbackEntry.callback, this[_currentFrameTimeStamp], callbackEntry.debugStack);
        }, intAnd_FrameCallbackEntryToNull()));
        this[_removedIds].clear();
      } finally {
        this[_schedulerPhase] = binding$0.SchedulerPhase.midFrameMicrotasks;
      }
    }
    handleDrawFrame() {
      if (!dart.equals(this[_schedulerPhase], binding$0.SchedulerPhase.midFrameMicrotasks)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 1034, 12, ".\n  void handleDrawFrame() {\n    assert(_schedulerPh");
      developer.Timeline.finishSync();
      try {
        this[_schedulerPhase] = binding$0.SchedulerPhase.persistentCallbacks;
        for (let callback of this[_persistentCallbacks])
          this[_invokeFrameCallback](callback, this[_currentFrameTimeStamp]);
        this[_schedulerPhase] = binding$0.SchedulerPhase.postFrameCallbacks;
        let localPostFrameCallbacks = ListOfDurationTovoid().from(this[_postFrameCallbacks]);
        this[_postFrameCallbacks][$clear]();
        for (let callback of localPostFrameCallbacks)
          this[_invokeFrameCallback](callback, this[_currentFrameTimeStamp]);
      } finally {
        this[_schedulerPhase] = binding$0.SchedulerPhase.idle;
        developer.Timeline.finishSync();
        if (!dart.test(dart.fn(() => {
          if (dart.test(debug$.debugPrintEndFrameBanner)) print.debugPrint("▀"[$times](this[_debugBanner].length));
          this[_debugBanner] = null;
          return true;
        }, VoidTobool())())) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 1052, 14, "shSync(); // end the Frame\n      assert(() {\n        if (debugPrintEndFrameBanner)\n          debugPrint('▀' * _debugBanner.length);\n        _debugBan");
        this[_currentFrameTimeStamp] = null;
      }
    }
    [_profileFramePostEvent](frameNumber, frameTiming) {
      this.postEvent("Flutter.Frame", new (IdentityMapOfString$dynamic()).from(["number", frameNumber, "startTime", frameTiming.timestampInMicroseconds(ui.FramePhase.buildStart), "elapsed", frameTiming.totalSpan.inMicroseconds, "build", frameTiming.buildDuration.inMicroseconds, "raster", frameTiming.rasterDuration.inMicroseconds]));
    }
    [_invokeFrameCallback](callback, timeStamp, callbackStack) {
      if (callbackStack === void 0) callbackStack = null;
      if (!(callback != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 1094, 12, " StackTrace call");
      if (!(binding$0._FrameCallbackEntry.debugCurrentCallbackStack == null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 1095, 12, "\n    assert(callback != null);\n    assert(_FrameCallb");
      if (!dart.test(dart.fn(() => {
        binding$0._FrameCallbackEntry.debugCurrentCallbackStack = callbackStack;
        return true;
      }, VoidTobool())())) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 1096, 12, "CurrentCallbackStack == null);\n    assert(() {\n      _FrameCallbackEntry.debugCurrentCallbackStack =");
      try {
        callback(timeStamp);
      } catch (e) {
        let exception = dart.getThrown(e);
        let exceptionStack = dart.stackTrace(e);
        assertions.FlutterError.reportError(new assertions.FlutterErrorDetails.new({exception: exception, stack: exceptionStack, library: "scheduler library", context: new assertions.ErrorDescription.new("during a scheduler callback"), informationCollector: callbackStack == null ? null : dart.fn(() => new (SyncIterableOfDiagnosticsStackTrace()).new(function*() {
            yield new assertions.DiagnosticsStackTrace.new("\nThis exception was thrown in the context of a scheduler callback. " + "When the scheduler callback was _registered_ (as opposed to when the " + "exception was thrown), this was the stack", callbackStack);
          }), VoidToIterableOfDiagnosticsStackTrace())}));
      }
      if (!dart.test(dart.fn(() => {
        binding$0._FrameCallbackEntry.debugCurrentCallbackStack = null;
        return true;
      }, VoidTobool())())) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 1118, 12, " );\n        },\n      ));\n    }\n    assert(() {\n      _FrameCallbackEntry.debugCurrentCallba");
    }
  };
  (binding$0.SchedulerBinding[dart.mixinNew] = function() {
    this[_timingsCallbacks] = JSArrayOfListOfFrameTimingTovoid().of([]);
    this[_lifecycleState] = null;
    this[schedulingStrategy] = C7 || CT.C7;
    this[_taskQueue] = new (HeapPriorityQueueOf_TaskEntry()).new(C8 || CT.C8);
    this[_hasRequestedAnEventLoopCallback] = false;
    this[_nextFrameCallbackId] = 0;
    this[_transientCallbacks] = new (IdentityMapOfint$_FrameCallbackEntry()).new();
    this[_removedIds] = new (_IdentityHashSetOfint()).new();
    this[_persistentCallbacks] = JSArrayOfDurationTovoid().of([]);
    this[_postFrameCallbacks] = JSArrayOfDurationTovoid().of([]);
    this[_nextFrameCompleter] = null;
    this[_hasScheduledFrame] = false;
    this[_schedulerPhase] = binding$0.SchedulerPhase.idle;
    this[_framesEnabled] = true;
    this[_warmUpFrame] = false;
    this[_firstRawTimeStampInEpoch] = null;
    this[_epochStart] = core.Duration.zero;
    this[_lastRawTimeStamp] = core.Duration.zero;
    this[_currentFrameTimeStamp] = null;
    this[_debugFrameNumber] = 0;
    this[_debugBanner] = null;
    this[_ignoreNextEngineDrawFrame] = false;
  }).prototype = binding$0.SchedulerBinding.prototype;
  dart.addTypeTests(binding$0.SchedulerBinding);
  binding$0.SchedulerBinding[dart.implements] = () => [binding$.ServicesBinding, binding.BindingBase];
  dart.setMethodSignature(binding$0.SchedulerBinding, () => ({
    __proto__: dart.getMethods(binding$0.SchedulerBinding.__proto__),
    initInstances: dart.fnType(dart.void, []),
    addTimingsCallback: dart.fnType(dart.void, [dart.fnType(dart.void, [core.List$(ui.FrameTiming)])]),
    removeTimingsCallback: dart.fnType(dart.void, [dart.fnType(dart.void, [core.List$(ui.FrameTiming)])]),
    [_executeTimingsCallbacks]: dart.fnType(dart.void, [core.List$(ui.FrameTiming)]),
    initServiceExtensions: dart.fnType(dart.void, []),
    readInitialLifecycleStateFromNativeWindow: dart.fnType(dart.void, []),
    handleAppLifecycleStateChanged: dart.fnType(dart.void, [ui.AppLifecycleState]),
    [_handleLifecycleMessage]: dart.fnType(async.Future$(core.String), [core.String]),
    scheduleTask: dart.gFnType(T => [async.Future$(T), [dart.fnType(T, []), priority$.Priority], {debugLabel: core.String, flow: developer.Flow}, {}]),
    unlocked: dart.fnType(dart.void, []),
    [_ensureEventLoopCallback]: dart.fnType(dart.void, []),
    [_runTasks]: dart.fnType(dart.void, []),
    handleEventLoopCallback: dart.fnType(core.bool, []),
    scheduleFrameCallback: dart.fnType(core.int, [dart.fnType(dart.void, [core.Duration])], {rescheduling: core.bool}, {}),
    cancelFrameCallbackWithId: dart.fnType(dart.void, [core.int]),
    debugAssertNoTransientCallbacks: dart.fnType(core.bool, [core.String]),
    addPersistentFrameCallback: dart.fnType(dart.void, [dart.fnType(dart.void, [core.Duration])]),
    addPostFrameCallback: dart.fnType(dart.void, [dart.fnType(dart.void, [core.Duration])]),
    [_setFramesEnabledState]: dart.fnType(dart.void, [core.bool]),
    ensureFrameCallbacksRegistered: dart.fnType(dart.void, []),
    ensureVisualUpdate: dart.fnType(dart.void, []),
    scheduleFrame: dart.fnType(dart.void, []),
    scheduleForcedFrame: dart.fnType(dart.void, []),
    scheduleWarmUpFrame: dart.fnType(dart.void, []),
    resetEpoch: dart.fnType(dart.void, []),
    [_adjustForEpoch]: dart.fnType(core.Duration, [core.Duration]),
    [_handleBeginFrame]: dart.fnType(dart.void, [core.Duration]),
    [_handleDrawFrame]: dart.fnType(dart.void, []),
    handleBeginFrame: dart.fnType(dart.void, [core.Duration]),
    handleDrawFrame: dart.fnType(dart.void, []),
    [_profileFramePostEvent]: dart.fnType(dart.void, [core.int, ui.FrameTiming]),
    [_invokeFrameCallback]: dart.fnType(dart.void, [dart.fnType(dart.void, [core.Duration]), core.Duration], [core.StackTrace])
  }));
  dart.setGetterSignature(binding$0.SchedulerBinding, () => ({
    __proto__: dart.getGetters(binding$0.SchedulerBinding.__proto__),
    lifecycleState: ui.AppLifecycleState,
    transientCallbackCount: core.int,
    endOfFrame: async.Future$(dart.void),
    hasScheduledFrame: core.bool,
    schedulerPhase: binding$0.SchedulerPhase,
    framesEnabled: core.bool,
    currentFrameTimeStamp: core.Duration,
    currentSystemFrameTimeStamp: core.Duration
  }));
  dart.setLibraryUri(binding$0.SchedulerBinding, "package:flutter/src/scheduler/binding.dart");
  dart.setFieldSignature(binding$0.SchedulerBinding, () => ({
    __proto__: dart.getFields(binding$0.SchedulerBinding.__proto__),
    [_timingsCallbacks]: dart.finalFieldType(core.List$(dart.fnType(dart.void, [core.List$(ui.FrameTiming)]))),
    [_lifecycleState]: dart.fieldType(ui.AppLifecycleState),
    schedulingStrategy: dart.fieldType(dart.fnType(core.bool, [], {priority: core.int, scheduler: binding$0.SchedulerBinding}, {})),
    [_taskQueue]: dart.finalFieldType(priority_queue.PriorityQueue$(binding$0._TaskEntry)),
    [_hasRequestedAnEventLoopCallback]: dart.fieldType(core.bool),
    [_nextFrameCallbackId]: dart.fieldType(core.int),
    [_transientCallbacks]: dart.fieldType(core.Map$(core.int, binding$0._FrameCallbackEntry)),
    [_removedIds]: dart.finalFieldType(core.Set$(core.int)),
    [_persistentCallbacks]: dart.finalFieldType(core.List$(dart.fnType(dart.void, [core.Duration]))),
    [_postFrameCallbacks]: dart.finalFieldType(core.List$(dart.fnType(dart.void, [core.Duration]))),
    [_nextFrameCompleter]: dart.fieldType(async.Completer$(dart.void)),
    [_hasScheduledFrame]: dart.fieldType(core.bool),
    [_schedulerPhase]: dart.fieldType(binding$0.SchedulerPhase),
    [_framesEnabled]: dart.fieldType(core.bool),
    [_warmUpFrame]: dart.fieldType(core.bool),
    [_firstRawTimeStampInEpoch]: dart.fieldType(core.Duration),
    [_epochStart]: dart.fieldType(core.Duration),
    [_lastRawTimeStamp]: dart.fieldType(core.Duration),
    [_currentFrameTimeStamp]: dart.fieldType(core.Duration),
    [_debugFrameNumber]: dart.fieldType(core.int),
    [_debugBanner]: dart.fieldType(core.String),
    [_ignoreNextEngineDrawFrame]: dart.fieldType(core.bool)
  }));
  dart.defineLazy(binding$0.SchedulerBinding, {
    /*binding$0.SchedulerBinding._instance*/get _instance() {
      return null;
    },
    set _instance(_) {}
  });
  binding$0.defaultSchedulingStrategy = function defaultSchedulingStrategy(opts) {
    let priority = opts && 'priority' in opts ? opts.priority : null;
    let scheduler = opts && 'scheduler' in opts ? opts.scheduler : null;
    if (dart.notNull(scheduler.transientCallbackCount) > 0) return dart.notNull(priority) >= dart.notNull(priority$.Priority.animation.value);
    return true;
  };
  dart.copyProperties(binding$0, {
    get timeDilation() {
      return binding$0._timeDilation;
    },
    set timeDilation(value) {
      let t3;
      if (!(dart.notNull(value) > 0.0)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/scheduler/binding.dart", 26, 10, "value > 0.0");
      if (binding$0._timeDilation == value) return;
      t3 = binding$0.SchedulerBinding.instance;
      t3 == null ? null : t3.resetEpoch();
      binding$0._timeDilation = value;
    }
  });
  dart.defineLazy(binding$0, {
    /*binding$0._timeDilation*/get _timeDilation() {
      return 1.0;
    },
    set _timeDilation(_) {}
  });
  const _nextPlatformViewId = dart.privateName(platform_views, "_nextPlatformViewId");
  platform_views.PlatformViewsRegistry = class PlatformViewsRegistry extends core.Object {
    getNextPlatformViewId() {
      let t3;
      t3 = this[_nextPlatformViewId];
      this[_nextPlatformViewId] = dart.notNull(t3) + 1;
      return t3;
    }
  };
  (platform_views.PlatformViewsRegistry._instance = function() {
    this[_nextPlatformViewId] = 0;
    ;
  }).prototype = platform_views.PlatformViewsRegistry.prototype;
  dart.addTypeTests(platform_views.PlatformViewsRegistry);
  dart.setMethodSignature(platform_views.PlatformViewsRegistry, () => ({
    __proto__: dart.getMethods(platform_views.PlatformViewsRegistry.__proto__),
    getNextPlatformViewId: dart.fnType(core.int, [])
  }));
  dart.setLibraryUri(platform_views.PlatformViewsRegistry, "package:flutter/src/services/platform_views.dart");
  dart.setFieldSignature(platform_views.PlatformViewsRegistry, () => ({
    __proto__: dart.getFields(platform_views.PlatformViewsRegistry.__proto__),
    [_nextPlatformViewId]: dart.fieldType(core.int)
  }));
  const _focusCallbacks = dart.privateName(platform_views, "_focusCallbacks");
  const _onMethodCall = dart.privateName(platform_views, "_onMethodCall");
  platform_views.PlatformViewsService = class PlatformViewsService extends core.Object {
    static get _instance() {
      platform_views.PlatformViewsService._serviceInstance == null ? platform_views.PlatformViewsService._serviceInstance = new platform_views.PlatformViewsService.__() : null;
      return platform_views.PlatformViewsService._serviceInstance;
    }
    [_onMethodCall](call) {
      switch (call.method) {
        case "viewFocused":
        {
          let id = core.int._check(call.arguments);
          if (dart.test(this[_focusCallbacks][$containsKey](id))) {
            this[_focusCallbacks][$_get](id)();
          }
          break;
        }
        default:
        {
          dart.throw(new core.UnimplementedError.new(dart.str(call.method) + " was invoked but isn't implemented by PlatformViewsService"));
        }
      }
      return null;
    }
    static initAndroidView(opts) {
      let t3;
      let id = opts && 'id' in opts ? opts.id : null;
      let viewType = opts && 'viewType' in opts ? opts.viewType : null;
      let layoutDirection = opts && 'layoutDirection' in opts ? opts.layoutDirection : null;
      let creationParams = opts && 'creationParams' in opts ? opts.creationParams : null;
      let creationParamsCodec = opts && 'creationParamsCodec' in opts ? opts.creationParamsCodec : null;
      let onFocus = opts && 'onFocus' in opts ? opts.onFocus : null;
      if (!(id != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 117, 12, "id != null");
      if (!(viewType != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 118, 12, "viewType != null");
      if (!(layoutDirection != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 119, 12, "layoutDirection != null");
      if (!(creationParams == null || creationParamsCodec != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 120, 12, "creationParams == null || creationParamsCodec != null");
      let controller = new platform_views.AndroidViewController.__(id, viewType, creationParams, creationParamsCodec, layoutDirection);
      platform_views.PlatformViewsService._instance[_focusCallbacks][$_set](id, (t3 = onFocus, t3 == null ? dart.fn(() => {
      }, VoidToNull()) : t3));
      return controller;
    }
    static initUiKitView(opts) {
      let id = opts && 'id' in opts ? opts.id : null;
      let viewType = opts && 'viewType' in opts ? opts.viewType : null;
      let layoutDirection = opts && 'layoutDirection' in opts ? opts.layoutDirection : null;
      let creationParams = opts && 'creationParams' in opts ? opts.creationParams : null;
      let creationParamsCodec = opts && 'creationParamsCodec' in opts ? opts.creationParamsCodec : null;
      return async.async(platform_views.UiKitViewController, function* initUiKitView() {
        if (!(id != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 150, 12, "id != null");
        if (!(viewType != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 151, 12, "viewType != null");
        if (!(layoutDirection != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 152, 12, "layoutDirection != null");
        if (!(creationParams == null || creationParamsCodec != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 153, 12, "creationParams == null || creationParamsCodec != null");
        let args = new (IdentityMapOfString$dynamic()).from(["id", id, "viewType", viewType]);
        if (creationParams != null) {
          let paramsByteData = creationParamsCodec.encodeMessage(creationParams);
          args[$_set]("params", typed_data.Uint8List.view(paramsByteData[$buffer], 0, paramsByteData[$lengthInBytes]));
        }
        yield system_channels.SystemChannels.platform_views.invokeMethod(dart.void, "create", args);
        return new platform_views.UiKitViewController.__(id, layoutDirection);
      });
    }
  };
  (platform_views.PlatformViewsService.__ = function() {
    this[_focusCallbacks] = new (IdentityMapOfint$VoidTovoid()).new();
    system_channels.SystemChannels.platform_views.setMethodCallHandler(dart.bind(this, _onMethodCall));
  }).prototype = platform_views.PlatformViewsService.prototype;
  dart.addTypeTests(platform_views.PlatformViewsService);
  dart.setMethodSignature(platform_views.PlatformViewsService, () => ({
    __proto__: dart.getMethods(platform_views.PlatformViewsService.__proto__),
    [_onMethodCall]: dart.fnType(async.Future$(dart.void), [message_codec.MethodCall])
  }));
  dart.setLibraryUri(platform_views.PlatformViewsService, "package:flutter/src/services/platform_views.dart");
  dart.setFieldSignature(platform_views.PlatformViewsService, () => ({
    __proto__: dart.getFields(platform_views.PlatformViewsService.__proto__),
    [_focusCallbacks]: dart.finalFieldType(core.Map$(core.int, dart.fnType(dart.void, [])))
  }));
  dart.defineLazy(platform_views.PlatformViewsService, {
    /*platform_views.PlatformViewsService._serviceInstance*/get _serviceInstance() {
      return null;
    },
    set _serviceInstance(_) {}
  });
  const _asList = dart.privateName(platform_views, "_asList");
  const id$ = dart.privateName(platform_views, "AndroidPointerProperties.id");
  const toolType$ = dart.privateName(platform_views, "AndroidPointerProperties.toolType");
  platform_views.AndroidPointerProperties = class AndroidPointerProperties extends core.Object {
    get id() {
      return this[id$];
    }
    set id(value) {
      super.id = value;
    }
    get toolType() {
      return this[toolType$];
    }
    set toolType(value) {
      super.toolType = value;
    }
    [_asList]() {
      return JSArrayOfint().of([this.id, this.toolType]);
    }
    toString() {
      return "AndroidPointerProperties(id: " + dart.str(this.id) + ", toolType: " + dart.str(this.toolType) + ")";
    }
  };
  (platform_views.AndroidPointerProperties.new = function(opts) {
    let id = opts && 'id' in opts ? opts.id : null;
    let toolType = opts && 'toolType' in opts ? opts.toolType : null;
    this[id$] = id;
    this[toolType$] = toolType;
    if (!(id != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 183, 15, "id != null");
    if (!(toolType != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 184, 15, "toolType != null");
    ;
  }).prototype = platform_views.AndroidPointerProperties.prototype;
  dart.addTypeTests(platform_views.AndroidPointerProperties);
  dart.setMethodSignature(platform_views.AndroidPointerProperties, () => ({
    __proto__: dart.getMethods(platform_views.AndroidPointerProperties.__proto__),
    [_asList]: dart.fnType(core.List$(core.int), [])
  }));
  dart.setLibraryUri(platform_views.AndroidPointerProperties, "package:flutter/src/services/platform_views.dart");
  dart.setFieldSignature(platform_views.AndroidPointerProperties, () => ({
    __proto__: dart.getFields(platform_views.AndroidPointerProperties.__proto__),
    id: dart.finalFieldType(core.int),
    toolType: dart.finalFieldType(core.int)
  }));
  dart.defineExtensionMethods(platform_views.AndroidPointerProperties, ['toString']);
  dart.defineLazy(platform_views.AndroidPointerProperties, {
    /*platform_views.AndroidPointerProperties.kToolTypeUnknown*/get kToolTypeUnknown() {
      return 0;
    },
    /*platform_views.AndroidPointerProperties.kToolTypeFinger*/get kToolTypeFinger() {
      return 1;
    },
    /*platform_views.AndroidPointerProperties.kToolTypeStylus*/get kToolTypeStylus() {
      return 2;
    },
    /*platform_views.AndroidPointerProperties.kToolTypeMouse*/get kToolTypeMouse() {
      return 3;
    },
    /*platform_views.AndroidPointerProperties.kToolTypeEraser*/get kToolTypeEraser() {
      return 4;
    }
  });
  const orientation$ = dart.privateName(platform_views, "AndroidPointerCoords.orientation");
  const pressure$ = dart.privateName(platform_views, "AndroidPointerCoords.pressure");
  const size$ = dart.privateName(platform_views, "AndroidPointerCoords.size");
  const toolMajor$ = dart.privateName(platform_views, "AndroidPointerCoords.toolMajor");
  const toolMinor$ = dart.privateName(platform_views, "AndroidPointerCoords.toolMinor");
  const touchMajor$ = dart.privateName(platform_views, "AndroidPointerCoords.touchMajor");
  const touchMinor$ = dart.privateName(platform_views, "AndroidPointerCoords.touchMinor");
  const x$ = dart.privateName(platform_views, "AndroidPointerCoords.x");
  const y$ = dart.privateName(platform_views, "AndroidPointerCoords.y");
  platform_views.AndroidPointerCoords = class AndroidPointerCoords extends core.Object {
    get orientation() {
      return this[orientation$];
    }
    set orientation(value) {
      super.orientation = value;
    }
    get pressure() {
      return this[pressure$];
    }
    set pressure(value) {
      super.pressure = value;
    }
    get size() {
      return this[size$];
    }
    set size(value) {
      super.size = value;
    }
    get toolMajor() {
      return this[toolMajor$];
    }
    set toolMajor(value) {
      super.toolMajor = value;
    }
    get toolMinor() {
      return this[toolMinor$];
    }
    set toolMinor(value) {
      super.toolMinor = value;
    }
    get touchMajor() {
      return this[touchMajor$];
    }
    set touchMajor(value) {
      super.touchMajor = value;
    }
    get touchMinor() {
      return this[touchMinor$];
    }
    set touchMinor(value) {
      super.touchMinor = value;
    }
    get x() {
      return this[x$];
    }
    set x(value) {
      super.x = value;
    }
    get y() {
      return this[y$];
    }
    set y(value) {
      super.y = value;
    }
    [_asList]() {
      return JSArrayOfdouble().of([this.orientation, this.pressure, this.size, this.toolMajor, this.toolMinor, this.touchMajor, this.touchMinor, this.x, this.y]);
    }
    toString() {
      return "AndroidPointerCoords(orientation: " + dart.str(this.orientation) + ", pressure: " + dart.str(this.pressure) + ", size: " + dart.str(this.size) + ", toolMajor: " + dart.str(this.toolMajor) + ", toolMinor: " + dart.str(this.toolMinor) + ", touchMajor: " + dart.str(this.touchMajor) + ", touchMinor: " + dart.str(this.touchMinor) + ", x: " + dart.str(this.x) + ", y: " + dart.str(this.y) + ")";
    }
  };
  (platform_views.AndroidPointerCoords.new = function(opts) {
    let orientation = opts && 'orientation' in opts ? opts.orientation : null;
    let pressure = opts && 'pressure' in opts ? opts.pressure : null;
    let size = opts && 'size' in opts ? opts.size : null;
    let toolMajor = opts && 'toolMajor' in opts ? opts.toolMajor : null;
    let toolMinor = opts && 'toolMinor' in opts ? opts.toolMinor : null;
    let touchMajor = opts && 'touchMajor' in opts ? opts.touchMajor : null;
    let touchMinor = opts && 'touchMinor' in opts ? opts.touchMinor : null;
    let x = opts && 'x' in opts ? opts.x : null;
    let y = opts && 'y' in opts ? opts.y : null;
    this[orientation$] = orientation;
    this[pressure$] = pressure;
    this[size$] = size;
    this[toolMajor$] = toolMajor;
    this[toolMinor$] = toolMinor;
    this[touchMajor$] = touchMajor;
    this[touchMinor$] = touchMinor;
    this[x$] = x;
    this[y$] = y;
    if (!(orientation != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 233, 15, "orientation != null");
    if (!(pressure != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 234, 15, "pressure != null");
    if (!(size != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 235, 15, "size != null");
    if (!(toolMajor != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 236, 15, "toolMajor != null");
    if (!(toolMinor != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 237, 15, "toolMinor != null");
    if (!(touchMajor != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 238, 15, "touchMajor != null");
    if (!(touchMinor != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 239, 15, "touchMinor != null");
    if (!(x != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 240, 15, "x != null");
    if (!(y != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 241, 15, "y != null");
    ;
  }).prototype = platform_views.AndroidPointerCoords.prototype;
  dart.addTypeTests(platform_views.AndroidPointerCoords);
  dart.setMethodSignature(platform_views.AndroidPointerCoords, () => ({
    __proto__: dart.getMethods(platform_views.AndroidPointerCoords.__proto__),
    [_asList]: dart.fnType(core.List$(core.double), [])
  }));
  dart.setLibraryUri(platform_views.AndroidPointerCoords, "package:flutter/src/services/platform_views.dart");
  dart.setFieldSignature(platform_views.AndroidPointerCoords, () => ({
    __proto__: dart.getFields(platform_views.AndroidPointerCoords.__proto__),
    orientation: dart.finalFieldType(core.double),
    pressure: dart.finalFieldType(core.double),
    size: dart.finalFieldType(core.double),
    toolMajor: dart.finalFieldType(core.double),
    toolMinor: dart.finalFieldType(core.double),
    touchMajor: dart.finalFieldType(core.double),
    touchMinor: dart.finalFieldType(core.double),
    x: dart.finalFieldType(core.double),
    y: dart.finalFieldType(core.double)
  }));
  dart.defineExtensionMethods(platform_views.AndroidPointerCoords, ['toString']);
  const downTime$ = dart.privateName(platform_views, "AndroidMotionEvent.downTime");
  const eventTime$ = dart.privateName(platform_views, "AndroidMotionEvent.eventTime");
  const action$ = dart.privateName(platform_views, "AndroidMotionEvent.action");
  const pointerCount$ = dart.privateName(platform_views, "AndroidMotionEvent.pointerCount");
  const pointerProperties$ = dart.privateName(platform_views, "AndroidMotionEvent.pointerProperties");
  const pointerCoords$ = dart.privateName(platform_views, "AndroidMotionEvent.pointerCoords");
  const metaState$ = dart.privateName(platform_views, "AndroidMotionEvent.metaState");
  const buttonState$ = dart.privateName(platform_views, "AndroidMotionEvent.buttonState");
  const xPrecision$ = dart.privateName(platform_views, "AndroidMotionEvent.xPrecision");
  const yPrecision$ = dart.privateName(platform_views, "AndroidMotionEvent.yPrecision");
  const deviceId$ = dart.privateName(platform_views, "AndroidMotionEvent.deviceId");
  const edgeFlags$ = dart.privateName(platform_views, "AndroidMotionEvent.edgeFlags");
  const source$ = dart.privateName(platform_views, "AndroidMotionEvent.source");
  const flags$ = dart.privateName(platform_views, "AndroidMotionEvent.flags");
  platform_views.AndroidMotionEvent = class AndroidMotionEvent extends core.Object {
    get downTime() {
      return this[downTime$];
    }
    set downTime(value) {
      super.downTime = value;
    }
    get eventTime() {
      return this[eventTime$];
    }
    set eventTime(value) {
      super.eventTime = value;
    }
    get action() {
      return this[action$];
    }
    set action(value) {
      super.action = value;
    }
    get pointerCount() {
      return this[pointerCount$];
    }
    set pointerCount(value) {
      super.pointerCount = value;
    }
    get pointerProperties() {
      return this[pointerProperties$];
    }
    set pointerProperties(value) {
      super.pointerProperties = value;
    }
    get pointerCoords() {
      return this[pointerCoords$];
    }
    set pointerCoords(value) {
      super.pointerCoords = value;
    }
    get metaState() {
      return this[metaState$];
    }
    set metaState(value) {
      super.metaState = value;
    }
    get buttonState() {
      return this[buttonState$];
    }
    set buttonState(value) {
      super.buttonState = value;
    }
    get xPrecision() {
      return this[xPrecision$];
    }
    set xPrecision(value) {
      super.xPrecision = value;
    }
    get yPrecision() {
      return this[yPrecision$];
    }
    set yPrecision(value) {
      super.yPrecision = value;
    }
    get deviceId() {
      return this[deviceId$];
    }
    set deviceId(value) {
      super.deviceId = value;
    }
    get edgeFlags() {
      return this[edgeFlags$];
    }
    set edgeFlags(value) {
      super.edgeFlags = value;
    }
    get source() {
      return this[source$];
    }
    set source(value) {
      super.source = value;
    }
    get flags() {
      return this[flags$];
    }
    set flags(value) {
      super.flags = value;
    }
    [_asList](viewId) {
      return [viewId, this.downTime, this.eventTime, this.action, this.pointerCount, this.pointerProperties[$map](ListOfint(), dart.fn(p => p[_asList](), AndroidPointerPropertiesToListOfint()))[$toList](), this.pointerCoords[$map](ListOfdouble(), dart.fn(p => p[_asList](), AndroidPointerCoordsToListOfdouble()))[$toList](), this.metaState, this.buttonState, this.xPrecision, this.yPrecision, this.deviceId, this.edgeFlags, this.source, this.flags];
    }
    toString() {
      return "AndroidPointerEvent(downTime: " + dart.str(this.downTime) + ", eventTime: " + dart.str(this.eventTime) + ", action: " + dart.str(this.action) + ", pointerCount: " + dart.str(this.pointerCount) + ", pointerProperties: " + dart.str(this.pointerProperties) + ", pointerCoords: " + dart.str(this.pointerCoords) + ", metaState: " + dart.str(this.metaState) + ", buttonState: " + dart.str(this.buttonState) + ", xPrecision: " + dart.str(this.xPrecision) + ", yPrecision: " + dart.str(this.yPrecision) + ", deviceId: " + dart.str(this.deviceId) + ", edgeFlags: " + dart.str(this.edgeFlags) + ", source: " + dart.str(this.source) + ", flags: " + dart.str(this.flags) + ")";
    }
  };
  (platform_views.AndroidMotionEvent.new = function(opts) {
    let downTime = opts && 'downTime' in opts ? opts.downTime : null;
    let eventTime = opts && 'eventTime' in opts ? opts.eventTime : null;
    let action = opts && 'action' in opts ? opts.action : null;
    let pointerCount = opts && 'pointerCount' in opts ? opts.pointerCount : null;
    let pointerProperties = opts && 'pointerProperties' in opts ? opts.pointerProperties : null;
    let pointerCoords = opts && 'pointerCoords' in opts ? opts.pointerCoords : null;
    let metaState = opts && 'metaState' in opts ? opts.metaState : null;
    let buttonState = opts && 'buttonState' in opts ? opts.buttonState : null;
    let xPrecision = opts && 'xPrecision' in opts ? opts.xPrecision : null;
    let yPrecision = opts && 'yPrecision' in opts ? opts.yPrecision : null;
    let deviceId = opts && 'deviceId' in opts ? opts.deviceId : null;
    let edgeFlags = opts && 'edgeFlags' in opts ? opts.edgeFlags : null;
    let source = opts && 'source' in opts ? opts.source : null;
    let flags = opts && 'flags' in opts ? opts.flags : null;
    this[downTime$] = downTime;
    this[eventTime$] = eventTime;
    this[action$] = action;
    this[pointerCount$] = pointerCount;
    this[pointerProperties$] = pointerProperties;
    this[pointerCoords$] = pointerCoords;
    this[metaState$] = metaState;
    this[buttonState$] = buttonState;
    this[xPrecision$] = xPrecision;
    this[yPrecision$] = yPrecision;
    this[deviceId$] = deviceId;
    this[edgeFlags$] = edgeFlags;
    this[source$] = source;
    this[flags$] = flags;
    if (!(downTime != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 320, 15, "downTime != null");
    if (!(eventTime != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 321, 15, "eventTime != null");
    if (!(action != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 322, 15, "action != null");
    if (!(pointerCount != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 323, 15, "pointerCount != null");
    if (!(pointerProperties != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 324, 15, "pointerProperties != null");
    if (!(pointerCoords != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 325, 15, "pointerCoords != null");
    if (!(metaState != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 326, 15, "metaState != null");
    if (!(buttonState != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 327, 15, "buttonState != null");
    if (!(xPrecision != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 328, 15, "xPrecision != null");
    if (!(yPrecision != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 329, 15, "yPrecision != null");
    if (!(deviceId != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 330, 15, "deviceId != null");
    if (!(edgeFlags != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 331, 15, "edgeFlags != null");
    if (!(source != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 332, 15, "source != null");
    if (!(flags != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 333, 15, "flags != null");
    if (!(pointerProperties[$length] == pointerCount)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 334, 15, "pointerProperties.length == pointerCount");
    if (!(pointerCoords[$length] == pointerCount)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 335, 15, "pointerCoords.length == pointerCount");
    ;
  }).prototype = platform_views.AndroidMotionEvent.prototype;
  dart.addTypeTests(platform_views.AndroidMotionEvent);
  dart.setMethodSignature(platform_views.AndroidMotionEvent, () => ({
    __proto__: dart.getMethods(platform_views.AndroidMotionEvent.__proto__),
    [_asList]: dart.fnType(core.List, [core.int])
  }));
  dart.setLibraryUri(platform_views.AndroidMotionEvent, "package:flutter/src/services/platform_views.dart");
  dart.setFieldSignature(platform_views.AndroidMotionEvent, () => ({
    __proto__: dart.getFields(platform_views.AndroidMotionEvent.__proto__),
    downTime: dart.finalFieldType(core.int),
    eventTime: dart.finalFieldType(core.int),
    action: dart.finalFieldType(core.int),
    pointerCount: dart.finalFieldType(core.int),
    pointerProperties: dart.finalFieldType(core.List$(platform_views.AndroidPointerProperties)),
    pointerCoords: dart.finalFieldType(core.List$(platform_views.AndroidPointerCoords)),
    metaState: dart.finalFieldType(core.int),
    buttonState: dart.finalFieldType(core.int),
    xPrecision: dart.finalFieldType(core.double),
    yPrecision: dart.finalFieldType(core.double),
    deviceId: dart.finalFieldType(core.int),
    edgeFlags: dart.finalFieldType(core.int),
    source: dart.finalFieldType(core.int),
    flags: dart.finalFieldType(core.int)
  }));
  dart.defineExtensionMethods(platform_views.AndroidMotionEvent, ['toString']);
  const _name$0 = dart.privateName(platform_views, "_name");
  let C13;
  let C14;
  let C15;
  let C16;
  let C17;
  let C18;
  platform_views._AndroidViewState = class _AndroidViewState extends core.Object {
    toString() {
      return this[_name$0];
    }
  };
  (platform_views._AndroidViewState.new = function(index, _name) {
    this.index = index;
    this[_name$0] = _name;
    ;
  }).prototype = platform_views._AndroidViewState.prototype;
  dart.addTypeTests(platform_views._AndroidViewState);
  dart.setLibraryUri(platform_views._AndroidViewState, "package:flutter/src/services/platform_views.dart");
  dart.setFieldSignature(platform_views._AndroidViewState, () => ({
    __proto__: dart.getFields(platform_views._AndroidViewState.__proto__),
    index: dart.finalFieldType(core.int),
    [_name$0]: dart.finalFieldType(core.String)
  }));
  dart.defineExtensionMethods(platform_views._AndroidViewState, ['toString']);
  platform_views._AndroidViewState.waitingForSize = C13 || CT.C13;
  platform_views._AndroidViewState.creating = C14 || CT.C14;
  platform_views._AndroidViewState.created = C15 || CT.C15;
  platform_views._AndroidViewState.createFailed = C16 || CT.C16;
  platform_views._AndroidViewState.disposed = C17 || CT.C17;
  platform_views._AndroidViewState.values = C18 || CT.C18;
  const _textureId = dart.privateName(platform_views, "_textureId");
  const _platformViewCreatedCallbacks = dart.privateName(platform_views, "_platformViewCreatedCallbacks");
  const _viewType = dart.privateName(platform_views, "_viewType");
  const _creationParams = dart.privateName(platform_views, "_creationParams");
  const _creationParamsCodec = dart.privateName(platform_views, "_creationParamsCodec");
  const _layoutDirection = dart.privateName(platform_views, "_layoutDirection");
  const _state = dart.privateName(platform_views, "_state");
  const _create = dart.privateName(platform_views, "_create");
  let C19;
  let C20;
  const id$0 = dart.privateName(platform_views, "AndroidViewController.id");
  platform_views.AndroidViewController = class AndroidViewController extends core.Object {
    get id() {
      return this[id$0];
    }
    set id(value) {
      super.id = value;
    }
    get textureId() {
      return this[_textureId];
    }
    get isCreated() {
      return dart.equals(this[_state], platform_views._AndroidViewState.created);
    }
    addOnPlatformViewCreatedListener(listener) {
      if (!(listener != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 521, 12, "listener != null");
      if (!!dart.equals(this[_state], platform_views._AndroidViewState.disposed)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 522, 12, "_state != _AndroidViewState.disposed");
      this[_platformViewCreatedCallbacks][$add](listener);
    }
    removeOnPlatformViewCreatedListener(listener) {
      if (!!dart.equals(this[_state], platform_views._AndroidViewState.disposed)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 528, 12, "_state != _AndroidViewState.disposed");
      this[_platformViewCreatedCallbacks][$remove](listener);
    }
    dispose() {
      return async.async(dart.void, (function* dispose() {
        if (dart.equals(this[_state], platform_views._AndroidViewState.creating) || dart.equals(this[_state], platform_views._AndroidViewState.created)) yield system_channels.SystemChannels.platform_views.invokeMethod(dart.void, "dispose", this.id);
        this[_platformViewCreatedCallbacks][$clear]();
        this[_state] = platform_views._AndroidViewState.disposed;
      }).bind(this));
    }
    setSize(size) {
      return async.async(dart.void, (function* setSize() {
        if (!!dart.equals(this[_state], platform_views._AndroidViewState.disposed)) dart.assertFailed("trying to size a disposed Android View. View id: " + dart.str(this.id), "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 551, 12, "_state != _AndroidViewState.disposed");
        if (!(size != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 553, 12, "size != null");
        if (!!dart.test(size.isEmpty)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 554, 12, "!size.isEmpty");
        if (dart.equals(this[_state], platform_views._AndroidViewState.waitingForSize)) return this[_create](size);
        yield system_channels.SystemChannels.platform_views.invokeMethod(dart.void, "resize", new (IdentityMapOfString$dynamic()).from(["id", this.id, "width", size.width, "height", size.height]));
      }).bind(this));
    }
    setLayoutDirection(layoutDirection) {
      return async.async(dart.void, (function* setLayoutDirection() {
        if (!!dart.equals(this[_state], platform_views._AndroidViewState.disposed)) dart.assertFailed("trying to set a layout direction for a disposed UIView. View id: " + dart.str(this.id), "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 568, 12, "_state != _AndroidViewState.disposed");
        if (dart.equals(layoutDirection, this[_layoutDirection])) return;
        if (!(layoutDirection != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 573, 12, "layoutDirection != null");
        this[_layoutDirection] = layoutDirection;
        if (dart.equals(this[_state], platform_views._AndroidViewState.waitingForSize)) return;
        yield system_channels.SystemChannels.platform_views.invokeMethod(dart.void, "setDirection", new (IdentityMapOfString$dynamic()).from(["id", this.id, "direction", platform_views.AndroidViewController._getAndroidDirection(layoutDirection)]));
      }).bind(this));
    }
    clearFocus() {
      if (!dart.equals(this[_state], platform_views._AndroidViewState.created)) {
        return null;
      }
      return system_channels.SystemChannels.platform_views.invokeMethod(dart.void, "clearFocus", this.id);
    }
    static _getAndroidDirection(direction) {
      if (!(direction != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 596, 12, "direction != null");
      switch (direction) {
        case C19 || CT.C19:
        {
          return 0;
        }
        case C20 || CT.C20:
        {
          return 1;
        }
      }
      return null;
    }
    sendMotionEvent(event) {
      return async.async(dart.void, (function* sendMotionEvent() {
        yield system_channels.SystemChannels.platform_views.invokeMethod(dart.dynamic, "touch", event[_asList](this.id));
      }).bind(this));
    }
    static pointerAction(pointerId, action) {
      return dart.notNull(pointerId) << 8 & 65280 | dart.notNull(action) & 255;
    }
    [_create](size) {
      return async.async(dart.void, (function* _create() {
        let args = new (IdentityMapOfString$dynamic()).from(["id", this.id, "viewType", this[_viewType], "width", size.width, "height", size.height, "direction", platform_views.AndroidViewController._getAndroidDirection(this[_layoutDirection])]);
        if (this[_creationParams] != null) {
          let paramsByteData = this[_creationParamsCodec].encodeMessage(this[_creationParams]);
          args[$_set]("params", typed_data.Uint8List.view(paramsByteData[$buffer], 0, paramsByteData[$lengthInBytes]));
        }
        this[_textureId] = (yield system_channels.SystemChannels.platform_views.invokeMethod(core.int, "create", args));
        this[_state] = platform_views._AndroidViewState.created;
        for (let callback of this[_platformViewCreatedCallbacks]) {
          callback(this.id);
        }
      }).bind(this));
    }
  };
  (platform_views.AndroidViewController.__ = function(id, viewType, creationParams, creationParamsCodec, layoutDirection) {
    this[_textureId] = null;
    this[_platformViewCreatedCallbacks] = JSArrayOfintTovoid().of([]);
    this[id$0] = id;
    if (!(id != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 445, 14, "id != null");
    if (!(viewType != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 446, 14, "viewType != null");
    if (!(layoutDirection != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 447, 14, "layoutDirection != null");
    if (!(creationParams == null || creationParamsCodec != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 448, 14, "creationParams == null || creationParamsCodec != null");
    this[_viewType] = viewType;
    this[_creationParams] = creationParams;
    this[_creationParamsCodec] = creationParamsCodec;
    this[_layoutDirection] = layoutDirection;
    this[_state] = platform_views._AndroidViewState.waitingForSize;
    ;
  }).prototype = platform_views.AndroidViewController.prototype;
  dart.addTypeTests(platform_views.AndroidViewController);
  dart.setMethodSignature(platform_views.AndroidViewController, () => ({
    __proto__: dart.getMethods(platform_views.AndroidViewController.__proto__),
    addOnPlatformViewCreatedListener: dart.fnType(dart.void, [dart.fnType(dart.void, [core.int])]),
    removeOnPlatformViewCreatedListener: dart.fnType(dart.void, [dart.fnType(dart.void, [core.int])]),
    dispose: dart.fnType(async.Future$(dart.void), []),
    setSize: dart.fnType(async.Future$(dart.void), [ui.Size]),
    setLayoutDirection: dart.fnType(async.Future$(dart.void), [ui.TextDirection]),
    clearFocus: dart.fnType(async.Future$(dart.void), []),
    sendMotionEvent: dart.fnType(async.Future$(dart.void), [platform_views.AndroidMotionEvent]),
    [_create]: dart.fnType(async.Future$(dart.void), [ui.Size])
  }));
  dart.setGetterSignature(platform_views.AndroidViewController, () => ({
    __proto__: dart.getGetters(platform_views.AndroidViewController.__proto__),
    textureId: core.int,
    isCreated: core.bool
  }));
  dart.setLibraryUri(platform_views.AndroidViewController, "package:flutter/src/services/platform_views.dart");
  dart.setFieldSignature(platform_views.AndroidViewController, () => ({
    __proto__: dart.getFields(platform_views.AndroidViewController.__proto__),
    id: dart.finalFieldType(core.int),
    [_viewType]: dart.finalFieldType(core.String),
    [_textureId]: dart.fieldType(core.int),
    [_layoutDirection]: dart.fieldType(ui.TextDirection),
    [_state]: dart.fieldType(platform_views._AndroidViewState),
    [_creationParams]: dart.finalFieldType(dart.dynamic),
    [_creationParamsCodec]: dart.finalFieldType(message_codec.MessageCodec),
    [_platformViewCreatedCallbacks]: dart.finalFieldType(core.List$(dart.fnType(dart.void, [core.int])))
  }));
  dart.defineLazy(platform_views.AndroidViewController, {
    /*platform_views.AndroidViewController.kActionDown*/get kActionDown() {
      return 0;
    },
    /*platform_views.AndroidViewController.kActionUp*/get kActionUp() {
      return 1;
    },
    /*platform_views.AndroidViewController.kActionMove*/get kActionMove() {
      return 2;
    },
    /*platform_views.AndroidViewController.kActionCancel*/get kActionCancel() {
      return 3;
    },
    /*platform_views.AndroidViewController.kActionPointerDown*/get kActionPointerDown() {
      return 5;
    },
    /*platform_views.AndroidViewController.kActionPointerUp*/get kActionPointerUp() {
      return 6;
    },
    /*platform_views.AndroidViewController.kAndroidLayoutDirectionLtr*/get kAndroidLayoutDirectionLtr() {
      return 0;
    },
    /*platform_views.AndroidViewController.kAndroidLayoutDirectionRtl*/get kAndroidLayoutDirectionRtl() {
      return 1;
    }
  });
  const _debugDisposed = dart.privateName(platform_views, "_debugDisposed");
  const id$1 = dart.privateName(platform_views, "UiKitViewController.id");
  platform_views.UiKitViewController = class UiKitViewController extends core.Object {
    get id() {
      return this[id$1];
    }
    set id(value) {
      super.id = value;
    }
    setLayoutDirection(layoutDirection) {
      return async.async(dart.void, (function* setLayoutDirection() {
        if (!!dart.test(this[_debugDisposed])) dart.assertFailed("trying to set a layout direction for a disposed iOS UIView. View id: " + dart.str(this.id), "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 672, 12, "!_debugDisposed");
        if (dart.equals(layoutDirection, this[_layoutDirection])) return;
        if (!(layoutDirection != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 677, 12, "layoutDirection != null");
        this[_layoutDirection] = layoutDirection;
      }).bind(this));
    }
    acceptGesture() {
      let args = new (IdentityMapOfString$dynamic()).from(["id", this.id]);
      return system_channels.SystemChannels.platform_views.invokeMethod(dart.void, "acceptGesture", args);
    }
    rejectGesture() {
      let args = new (IdentityMapOfString$dynamic()).from(["id", this.id]);
      return system_channels.SystemChannels.platform_views.invokeMethod(dart.void, "rejectGesture", args);
    }
    dispose() {
      return async.async(dart.void, (function* dispose() {
        this[_debugDisposed] = true;
        yield system_channels.SystemChannels.platform_views.invokeMethod(dart.void, "dispose", this.id);
      }).bind(this));
    }
  };
  (platform_views.UiKitViewController.__ = function(id, layoutDirection) {
    this[_debugDisposed] = false;
    this[id$1] = id;
    if (!(id != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 655, 14, "id != null");
    if (!(layoutDirection != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_views.dart", 656, 14, "layoutDirection != null");
    this[_layoutDirection] = layoutDirection;
    ;
  }).prototype = platform_views.UiKitViewController.prototype;
  dart.addTypeTests(platform_views.UiKitViewController);
  dart.setMethodSignature(platform_views.UiKitViewController, () => ({
    __proto__: dart.getMethods(platform_views.UiKitViewController.__proto__),
    setLayoutDirection: dart.fnType(async.Future$(dart.void), [ui.TextDirection]),
    acceptGesture: dart.fnType(async.Future$(dart.void), []),
    rejectGesture: dart.fnType(async.Future$(dart.void), []),
    dispose: dart.fnType(async.Future$(dart.void), [])
  }));
  dart.setLibraryUri(platform_views.UiKitViewController, "package:flutter/src/services/platform_views.dart");
  dart.setFieldSignature(platform_views.UiKitViewController, () => ({
    __proto__: dart.getFields(platform_views.UiKitViewController.__proto__),
    id: dart.finalFieldType(core.int),
    [_debugDisposed]: dart.fieldType(core.bool),
    [_layoutDirection]: dart.fieldType(ui.TextDirection)
  }));
  platform_views.PlatformViewController = class PlatformViewController extends core.Object {};
  (platform_views.PlatformViewController.new = function() {
    ;
  }).prototype = platform_views.PlatformViewController.prototype;
  dart.addTypeTests(platform_views.PlatformViewController);
  dart.setLibraryUri(platform_views.PlatformViewController, "package:flutter/src/services/platform_views.dart");
  dart.defineLazy(platform_views, {
    /*platform_views.platformViewsRegistry*/get platformViewsRegistry() {
      return new platform_views.PlatformViewsRegistry._instance();
    }
  });
  const onEnter$ = dart.privateName(mouse_tracking, "MouseTrackerAnnotation.onEnter");
  const onHover$ = dart.privateName(mouse_tracking, "MouseTrackerAnnotation.onHover");
  const onExit$ = dart.privateName(mouse_tracking, "MouseTrackerAnnotation.onExit");
  mouse_tracking.MouseTrackerAnnotation = class MouseTrackerAnnotation extends core.Object {
    get onEnter() {
      return this[onEnter$];
    }
    set onEnter(value) {
      super.onEnter = value;
    }
    get onHover() {
      return this[onHover$];
    }
    set onHover(value) {
      super.onHover = value;
    }
    get onExit() {
      return this[onExit$];
    }
    set onExit(value) {
      super.onExit = value;
    }
    toString() {
      let callbacks = JSArrayOfString().of([]);
      if (this.onEnter != null) callbacks[$add]("enter");
      if (this.onHover != null) callbacks[$add]("hover");
      if (this.onExit != null) callbacks[$add]("exit");
      let describeCallbacks = dart.test(callbacks[$isEmpty]) ? "<none>" : callbacks[$join](" ");
      return dart.str(diagnostics.describeIdentity(this)) + "(callbacks: " + dart.str(describeCallbacks) + ")";
    }
  };
  (mouse_tracking.MouseTrackerAnnotation.new = function(opts) {
    let onEnter = opts && 'onEnter' in opts ? opts.onEnter : null;
    let onHover = opts && 'onHover' in opts ? opts.onHover : null;
    let onExit = opts && 'onExit' in opts ? opts.onExit : null;
    this[onEnter$] = onEnter;
    this[onHover$] = onHover;
    this[onExit$] = onExit;
    ;
  }).prototype = mouse_tracking.MouseTrackerAnnotation.prototype;
  dart.addTypeTests(mouse_tracking.MouseTrackerAnnotation);
  dart.setLibraryUri(mouse_tracking.MouseTrackerAnnotation, "package:flutter/src/gestures/mouse_tracking.dart");
  dart.setFieldSignature(mouse_tracking.MouseTrackerAnnotation, () => ({
    __proto__: dart.getFields(mouse_tracking.MouseTrackerAnnotation.__proto__),
    onEnter: dart.finalFieldType(dart.fnType(dart.void, [events.PointerEnterEvent])),
    onHover: dart.finalFieldType(dart.fnType(dart.void, [events.PointerHoverEvent])),
    onExit: dart.finalFieldType(dart.fnType(dart.void, [events.PointerExitEvent]))
  }));
  dart.defineExtensionMethods(mouse_tracking.MouseTrackerAnnotation, ['toString']);
  const _mostRecentEvent = dart.privateName(mouse_tracking, "_mostRecentEvent");
  mouse_tracking._MouseState = class _MouseState extends core.Object {
    get mostRecentEvent() {
      return this[_mostRecentEvent];
    }
    set mostRecentEvent(value) {
      if (!(value != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/gestures/mouse_tracking.dart", 93, 12, "value != null");
      if (!(value.device == this[_mostRecentEvent].device)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/gestures/mouse_tracking.dart", 94, 12, "value.device == _mostRecentEvent.device");
      this[_mostRecentEvent] = value;
    }
    get device() {
      return this[_mostRecentEvent].device;
    }
    toString() {
      let describeEvent = dart.str(dart.runtimeType(this[_mostRecentEvent])) + "(device: " + dart.str(this[_mostRecentEvent].device) + ")";
      let describeAnnotations = "[list of " + dart.str(this.lastAnnotations[$length]) + "]";
      return dart.str(diagnostics.describeIdentity(this)) + "(event: " + describeEvent + ", annotations: " + describeAnnotations + ")";
    }
  };
  (mouse_tracking._MouseState.new = function(opts) {
    let mostRecentEvent = opts && 'mostRecentEvent' in opts ? opts.mostRecentEvent : null;
    this.lastAnnotations = new (_HashSetOfMouseTrackerAnnotation()).new();
    if (!(mostRecentEvent != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/gestures/mouse_tracking.dart", 79, 15, "mostRecentEvent != null");
    this[_mostRecentEvent] = mostRecentEvent;
    ;
  }).prototype = mouse_tracking._MouseState.prototype;
  dart.addTypeTests(mouse_tracking._MouseState);
  dart.setGetterSignature(mouse_tracking._MouseState, () => ({
    __proto__: dart.getGetters(mouse_tracking._MouseState.__proto__),
    mostRecentEvent: events.PointerEvent,
    device: core.int
  }));
  dart.setSetterSignature(mouse_tracking._MouseState, () => ({
    __proto__: dart.getSetters(mouse_tracking._MouseState.__proto__),
    mostRecentEvent: events.PointerEvent
  }));
  dart.setLibraryUri(mouse_tracking._MouseState, "package:flutter/src/gestures/mouse_tracking.dart");
  dart.setFieldSignature(mouse_tracking._MouseState, () => ({
    __proto__: dart.getFields(mouse_tracking._MouseState.__proto__),
    lastAnnotations: dart.fieldType(collection.LinkedHashSet$(mouse_tracking.MouseTrackerAnnotation)),
    [_mostRecentEvent]: dart.fieldType(events.PointerEvent)
  }));
  dart.defineExtensionMethods(mouse_tracking._MouseState, ['toString']);
  const _mouseStates = dart.privateName(mouse_tracking, "_mouseStates");
  const _trackedAnnotations = dart.privateName(mouse_tracking, "_trackedAnnotations");
  const _scheduledPostFramePositionCheck = dart.privateName(mouse_tracking, "_scheduledPostFramePositionCheck");
  const _router$ = dart.privateName(mouse_tracking, "_router");
  const _handleEvent = dart.privateName(mouse_tracking, "_handleEvent");
  const _addMouseDevice = dart.privateName(mouse_tracking, "_addMouseDevice");
  const _guaranteeMouseState = dart.privateName(mouse_tracking, "_guaranteeMouseState");
  const _hasAttachedAnnotations = dart.privateName(mouse_tracking, "_hasAttachedAnnotations");
  const _checkDeviceUpdates = dart.privateName(mouse_tracking, "_checkDeviceUpdates");
  const _removeMouseDevice = dart.privateName(mouse_tracking, "_removeMouseDevice");
  const _checkAllDevicesUpdates = dart.privateName(mouse_tracking, "_checkAllDevicesUpdates");
  const _scheduleMousePositionCheck = dart.privateName(mouse_tracking, "_scheduleMousePositionCheck");
  const annotationFinder$ = dart.privateName(mouse_tracking, "MouseTracker.annotationFinder");
  mouse_tracking.MouseTracker = class MouseTracker extends change_notifier.ChangeNotifier {
    get annotationFinder() {
      return this[annotationFinder$];
    }
    set annotationFinder(value) {
      super.annotationFinder = value;
    }
    dispose() {
      super.dispose();
      this[_router$].removeGlobalRoute(dart.bind(this, _handleEvent));
    }
    [_guaranteeMouseState](device, mostRecentEvent) {
      let t3;
      let currentState = this[_mouseStates][$_get](device);
      if (currentState == null) {
        this[_addMouseDevice](device, mostRecentEvent);
      }
      let result = (t3 = currentState, t3 == null ? this[_mouseStates][$_get](device) : t3);
      if (!(result != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/gestures/mouse_tracking.dart", 170, 12, "result != null");
      return result;
    }
    get [_hasAttachedAnnotations]() {
      return this[_trackedAnnotations][$isNotEmpty];
    }
    [_addMouseDevice](device, event) {
      let wasConnected = this.mouseIsConnected;
      if (!!dart.test(this[_mouseStates][$containsKey](device))) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/gestures/mouse_tracking.dart", 181, 12, "!_mouseStates.containsKey(device)");
      this[_mouseStates][$_set](device, new mouse_tracking._MouseState.new({mostRecentEvent: event}));
      this[_checkDeviceUpdates]({device: device});
      if (!dart.equals(this.mouseIsConnected, wasConnected)) {
        this.notifyListeners();
      }
    }
    [_removeMouseDevice](device, event) {
      let wasConnected = this.mouseIsConnected;
      if (!dart.test(this[_mouseStates][$containsKey](device))) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/gestures/mouse_tracking.dart", 192, 12, "_mouseStates.containsKey(device)");
      let disconnectedMouseState = this[_mouseStates][$remove](device);
      disconnectedMouseState.mostRecentEvent = event;
      this[_checkDeviceUpdates]({device: device, disconnectedMouseState: disconnectedMouseState});
      if (!dart.equals(this.mouseIsConnected, wasConnected)) {
        this.notifyListeners();
      }
    }
    [_handleEvent](event) {
      if (!dart.equals(event.kind, ui.PointerDeviceKind.mouse)) {
        return;
      }
      let device = event.device;
      if (events.PointerAddedEvent.is(event)) {
        this[_addMouseDevice](device, event);
      } else if (events.PointerRemovedEvent.is(event)) {
        this[_removeMouseDevice](device, event);
      } else if (events.PointerHoverEvent.is(event)) {
        let mouseState = this[_guaranteeMouseState](device, event);
        let previousEvent = mouseState.mostRecentEvent;
        mouseState.mostRecentEvent = event;
        if (events.PointerAddedEvent.is(previousEvent) || !dart.equals(previousEvent.position, event.position)) {
          this[_checkDeviceUpdates]({device: device});
        }
      }
    }
    [_scheduleMousePositionCheck]() {
      if (!dart.test(this[_scheduledPostFramePositionCheck])) {
        this[_scheduledPostFramePositionCheck] = true;
        binding$0.SchedulerBinding.instance.addPostFrameCallback(dart.fn(duration => {
          this[_checkAllDevicesUpdates]();
          this[_scheduledPostFramePositionCheck] = false;
        }, DurationToNull()));
      }
    }
    [_checkDeviceUpdates](opts) {
      let t3;
      let device = opts && 'device' in opts ? opts.device : null;
      let disconnectedMouseState = opts && 'disconnectedMouseState' in opts ? opts.disconnectedMouseState : null;
      let mouseState = (t3 = disconnectedMouseState, t3 == null ? this[_mouseStates][$_get](device) : t3);
      let thisDeviceIsConnected = !dart.equals(mouseState, disconnectedMouseState);
      if (!(mouseState != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/gestures/mouse_tracking.dart", 260, 12, "mouseState != null");
      let nextAnnotations = LinkedHashSetOfMouseTrackerAnnotation()._check(dart.test(this[_hasAttachedAnnotations]) && thisDeviceIsConnected ? LinkedHashSetOfMouseTrackerAnnotation().from(this.annotationFinder(mouseState.mostRecentEvent.position)) : LinkedHashSetOfMouseTrackerAnnotation().new());
      mouse_tracking.MouseTracker._dispatchDeviceCallbacks({currentState: mouseState, nextAnnotations: nextAnnotations});
      mouseState.lastAnnotations = nextAnnotations;
    }
    [_checkAllDevicesUpdates]() {
      for (let device of this[_mouseStates][$keys]) {
        this[_checkDeviceUpdates]({device: device});
      }
    }
    static _dispatchDeviceCallbacks(opts) {
      let nextAnnotations = opts && 'nextAnnotations' in opts ? opts.nextAnnotations : null;
      let currentState = opts && 'currentState' in opts ? opts.currentState : null;
      let mostRecentEvent = currentState.mostRecentEvent;
      let lastAnnotations = currentState.lastAnnotations;
      let exitingAnnotations = lastAnnotations.difference(nextAnnotations);
      for (let annotation of exitingAnnotations) {
        if (annotation.onExit != null) {
          annotation.onExit(new events.PointerExitEvent.fromMouseEvent(mostRecentEvent));
        }
      }
      let enteringAnnotations = nextAnnotations.difference(lastAnnotations)[$toList]()[$reversed];
      for (let annotation of enteringAnnotations) {
        if (annotation.onEnter != null) {
          annotation.onEnter(new events.PointerEnterEvent.fromMouseEvent(mostRecentEvent));
        }
      }
      if (events.PointerHoverEvent.is(mostRecentEvent)) {
        let hoveringAnnotations = nextAnnotations[$toList]()[$reversed];
        for (let annotation of hoveringAnnotations) {
          if (annotation.onHover != null) {
            annotation.onHover(mostRecentEvent);
          }
        }
      }
    }
    isAnnotationAttached(annotation) {
      return this[_trackedAnnotations].contains(annotation);
    }
    get mouseIsConnected() {
      return this[_mouseStates][$isNotEmpty];
    }
    attachAnnotation(annotation) {
      this[_trackedAnnotations].add(annotation);
      if (dart.test(this.mouseIsConnected)) {
        this[_scheduleMousePositionCheck]();
      }
    }
    detachAnnotation(annotation) {
      this[_mouseStates][$forEach](dart.fn((device, mouseState) => {
        if (dart.test(mouseState.lastAnnotations.contains(annotation))) {
          if (annotation.onExit != null) {
            let event = mouseState.mostRecentEvent;
            if (!(event != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/gestures/mouse_tracking.dart", 397, 18, "event != null");
            annotation.onExit(new events.PointerExitEvent.fromMouseEvent(event));
          }
          mouseState.lastAnnotations.remove(annotation);
        }
      }, intAnd_MouseStateToNull()));
      this[_trackedAnnotations].remove(annotation);
    }
  };
  (mouse_tracking.MouseTracker.new = function(_router, annotationFinder) {
    this[_mouseStates] = new (IdentityMapOfint$_MouseState()).new();
    this[_trackedAnnotations] = LinkedHashSetOfMouseTrackerAnnotation().new();
    this[_scheduledPostFramePositionCheck] = false;
    this[_router$] = _router;
    this[annotationFinder$] = annotationFinder;
    if (!(_router != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/gestures/mouse_tracking.dart", 130, 16, "_router != null");
    if (!(annotationFinder != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/gestures/mouse_tracking.dart", 131, 16, "annotationFinder != null");
    mouse_tracking.MouseTracker.__proto__.new.call(this);
    this[_router$].addGlobalRoute(dart.bind(this, _handleEvent));
  }).prototype = mouse_tracking.MouseTracker.prototype;
  dart.addTypeTests(mouse_tracking.MouseTracker);
  dart.setMethodSignature(mouse_tracking.MouseTracker, () => ({
    __proto__: dart.getMethods(mouse_tracking.MouseTracker.__proto__),
    [_guaranteeMouseState]: dart.fnType(mouse_tracking._MouseState, [core.int, events.PointerEvent]),
    [_addMouseDevice]: dart.fnType(dart.void, [core.int, events.PointerEvent]),
    [_removeMouseDevice]: dart.fnType(dart.void, [core.int, events.PointerEvent]),
    [_handleEvent]: dart.fnType(dart.void, [events.PointerEvent]),
    [_scheduleMousePositionCheck]: dart.fnType(dart.void, []),
    [_checkDeviceUpdates]: dart.fnType(dart.void, [], {device: core.int, disconnectedMouseState: mouse_tracking._MouseState}, {}),
    [_checkAllDevicesUpdates]: dart.fnType(dart.void, []),
    isAnnotationAttached: dart.fnType(core.bool, [mouse_tracking.MouseTrackerAnnotation]),
    attachAnnotation: dart.fnType(dart.void, [mouse_tracking.MouseTrackerAnnotation]),
    detachAnnotation: dart.fnType(dart.void, [mouse_tracking.MouseTrackerAnnotation])
  }));
  dart.setGetterSignature(mouse_tracking.MouseTracker, () => ({
    __proto__: dart.getGetters(mouse_tracking.MouseTracker.__proto__),
    [_hasAttachedAnnotations]: core.bool,
    mouseIsConnected: core.bool
  }));
  dart.setLibraryUri(mouse_tracking.MouseTracker, "package:flutter/src/gestures/mouse_tracking.dart");
  dart.setFieldSignature(mouse_tracking.MouseTracker, () => ({
    __proto__: dart.getFields(mouse_tracking.MouseTracker.__proto__),
    annotationFinder: dart.finalFieldType(dart.fnType(core.Iterable$(mouse_tracking.MouseTrackerAnnotation), [ui.Offset])),
    [_router$]: dart.finalFieldType(pointer_router.PointerRouter),
    [_mouseStates]: dart.finalFieldType(core.Map$(core.int, mouse_tracking._MouseState)),
    [_trackedAnnotations]: dart.finalFieldType(core.Set$(mouse_tracking.MouseTrackerAnnotation)),
    [_scheduledPostFramePositionCheck]: dart.fieldType(core.bool)
  }));
  dart.trackLibraries("packages/flutter/gestures", {
    "package:flutter/scheduler.dart": scheduler,
    "package:flutter/src/scheduler/ticker.dart": ticker$,
    "package:flutter/src/scheduler/binding.dart": binding$0,
    "package:flutter/services.dart": services,
    "package:flutter/src/services/platform_views.dart": platform_views,
    "package:flutter/gestures.dart": gestures,
    "package:flutter/src/gestures/mouse_tracking.dart": mouse_tracking
  }, {
  }, '{"version":3,"sourceRoot":"","sources":["src/scheduler/ticker.dart","src/scheduler/binding.dart","src/services/platform_views.dart","src/gestures/mouse_tracking.dart"],"names":[],"mappings":"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","file":"gestures.ddc.js"}');
  // Exports:
  return {
    scheduler: scheduler,
    src__scheduler__ticker: ticker$,
    src__scheduler__binding: binding$0,
    services: services,
    src__services__platform_views: platform_views,
    gestures: gestures,
    src__gestures__mouse_tracking: mouse_tracking
  };
});

//# sourceMappingURL=gestures.ddc.js.map
