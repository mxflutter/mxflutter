'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const async = dart_sdk.async;
const ui = dart_sdk.ui;
const io = dart_sdk.io;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const heroes = packages__flutter__src__widgets__actions.src__widgets__heroes;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const pages = packages__flutter__src__widgets__actions.src__widgets__pages;
const navigator = packages__flutter__src__widgets__actions.src__widgets__navigator;
const safe_area = packages__flutter__src__widgets__actions.src__widgets__safe_area;
const gesture_detector = packages__flutter__src__widgets__actions.src__widgets__gesture_detector;
const icon = packages__flutter__src__widgets__actions.src__widgets__icon;
const icon_data = packages__flutter__src__widgets__actions.src__widgets__icon_data;
const container = packages__flutter__src__widgets__actions.src__widgets__container;
const ticker_provider = packages__flutter__src__widgets__actions.src__widgets__ticker_provider;
const scroll_view = packages__flutter__src__widgets__actions.src__widgets__scroll_view;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const alignment = packages__flutter__src__painting___network_image_web.src__painting__alignment;
const colors = packages__flutter__src__painting___network_image_web.src__painting__colors;
const packages__flutter__material = require('packages/flutter/material');
const scaffold = packages__flutter__material.src__material__scaffold;
const app_bar = packages__flutter__material.src__material__app_bar;
const card = packages__flutter__material.src__material__card;
const list_tile = packages__flutter__material.src__material__list_tile;
const progress_indicator = packages__flutter__material.src__material__progress_indicator;
const snack_bar = packages__flutter__material.src__material__snack_bar;
const colors$ = packages__flutter__material.src__material__colors;
const scrollbar = packages__flutter__material.src__material__scrollbar;
const packages__flutter__src__animation__animation = require('packages/flutter/src/animation/animation');
const animation = packages__flutter__src__animation__animation.src__animation__animation;
const animation_controller = packages__flutter__src__animation__animation.src__animation__animation_controller;
const packages__video_player__video_player = require('packages/video_player/video_player');
const video_player = packages__video_player__video_player.video_player;
const packages__flutter__src__rendering__animated_size = require('packages/flutter/src/rendering/animated_size');
const stack = packages__flutter__src__rendering__animated_size.src__rendering__stack;
const packages__connectivity__connectivity = require('packages/connectivity/connectivity');
const connectivity$ = packages__connectivity__connectivity.connectivity;
const packages__device_info__device_info = require('packages/device_info/device_info');
const device_info = packages__device_info__device_info.device_info;
const video_demo = Object.create(dart.library);
let AnimationOfdouble = () => (AnimationOfdouble = dart.constFn(animation.Animation$(core.double)))();
let BuildContextAndAnimationOfdoubleAndAnimationOfdoubleToWidget = () => (BuildContextAndAnimationOfdoubleAndAnimationOfdoubleToWidget = dart.constFn(dart.fnType(framework.Widget, [framework.BuildContext, AnimationOfdouble(), AnimationOfdouble()])))();
let PageRouteBuilderOfvoid = () => (PageRouteBuilderOfvoid = dart.constFn(pages.PageRouteBuilder$(dart.void)))();
let voidToNull = () => (voidToNull = dart.constFn(dart.fnType(core.Null, [dart.void])))();
let VoidTovoid = () => (VoidTovoid = dart.constFn(dart.fnType(dart.void, [])))();
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let _AsyncStarImplOfConnectivityResult = () => (_AsyncStarImplOfConnectivityResult = dart.constFn(async._AsyncStarImpl$(connectivity$.ConnectivityResult)))();
let ConnectivityResultToNull = () => (ConnectivityResultToNull = dart.constFn(dart.fnType(core.Null, [connectivity$.ConnectivityResult])))();
let GlobalKeyOfScaffoldState = () => (GlobalKeyOfScaffoldState = dart.constFn(framework.GlobalKey$(scaffold.ScaffoldState)))();
let CompleterOfvoid = () => (CompleterOfvoid = dart.constFn(async.Completer$(dart.void)))();
let FutureOfvoid = () => (FutureOfvoid = dart.constFn(async.Future$(dart.void)))();
let VideoPlayerControllerAndStringToFutureOfvoid = () => (VideoPlayerControllerAndStringToFutureOfvoid = dart.constFn(dart.fnType(FutureOfvoid(), [video_player.VideoPlayerController, core.String])))();
let boolToNull = () => (boolToNull = dart.constFn(dart.fnType(core.Null, [core.bool])))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 10,
      [EdgeInsets_right]: 30,
      [EdgeInsets_top]: 10,
      [EdgeInsets_left]: 30
    });
  },
  get C75() {
    return C75 = dart.const({
      __proto__: progress_indicator.CircularProgressIndicator.prototype,
      [Widget_key]: null,
      [ProgressIndicator_semanticsValue]: null,
      [ProgressIndicator_semanticsLabel]: null,
      [ProgressIndicator_valueColor]: null,
      [ProgressIndicator_backgroundColor]: null,
      [ProgressIndicator_value]: null,
      [CircularProgressIndicator_strokeWidth]: 4
    });
  },
  get C76() {
    return C76 = dart.const({
      __proto__: alignment.Alignment.prototype,
      [Alignment_y]: 0,
      [Alignment_x]: 0
    });
  },
  get C74() {
    return C74 = dart.const({
      __proto__: basic.Center.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: C75 || CT.C75,
      [Align_heightFactor]: null,
      [Align_widthFactor]: null,
      [Align_alignment]: C76 || CT.C76
    });
  },
  get C85() {
    return C85 = dart.const({
      __proto__: core.Duration.prototype,
      [Duration__duration]: 500000
    });
  },
  get C87() {
    return C87 = dart.const({
      __proto__: icon_data.IconData.prototype,
      [IconData_matchTextDirection]: false,
      [IconData_fontPackage]: null,
      [IconData_fontFamily]: "MaterialIcons",
      [IconData_codePoint]: 57396
    });
  },
  get C86() {
    return C86 = dart.const({
      __proto__: icon.Icon.prototype,
      [Widget_key]: null,
      [Icon_textDirection]: null,
      [Icon_semanticLabel]: null,
      [Icon_color]: null,
      [Icon_size]: 100,
      [Icon_icon]: C87 || CT.C87
    });
  },
  get C84() {
    return C84 = dart.const({
      __proto__: video_demo.FadeAnimation.prototype,
      [Widget_key]: null,
      [FadeAnimation_duration]: C85 || CT.C85,
      [FadeAnimation_child]: C86 || CT.C86
    });
  },
  get C90() {
    return C90 = dart.const({
      __proto__: icon_data.IconData.prototype,
      [IconData_matchTextDirection]: false,
      [IconData_fontPackage]: null,
      [IconData_fontFamily]: "MaterialIcons",
      [IconData_codePoint]: 57399
    });
  },
  get C89() {
    return C89 = dart.const({
      __proto__: icon.Icon.prototype,
      [Widget_key]: null,
      [Icon_textDirection]: null,
      [Icon_semanticLabel]: null,
      [Icon_color]: null,
      [Icon_size]: 100,
      [Icon_icon]: C90 || CT.C90
    });
  },
  get C88() {
    return C88 = dart.const({
      __proto__: video_demo.FadeAnimation.prototype,
      [Widget_key]: null,
      [FadeAnimation_duration]: C85 || CT.C85,
      [FadeAnimation_child]: C89 || CT.C89
    });
  },
  get C110() {
    return C110 = dart.const({
      __proto__: core.Duration.prototype,
      [Duration__duration]: 4000000
    });
  },
  get C113() {
    return C113 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4294962158.0
    });
  },
  get C114() {
    return C114 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4294954450.0
    });
  },
  get C115() {
    return C115 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4293892762.0
    });
  },
  get C116() {
    return C116 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4293227379.0
    });
  },
  get C117() {
    return C117 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4293874512.0
    });
  },
  get C118() {
    return C118 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4294198070.0
    });
  },
  get C119() {
    return C119 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4293212469.0
    });
  },
  get C120() {
    return C120 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4292030255.0
    });
  },
  get C121() {
    return C121 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4291176488.0
    });
  },
  get C122() {
    return C122 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4290190364.0
    });
  },
  get C112() {
    return C112 = dart.constMap(core.int, ui.Color, [50, C113 || CT.C113, 100, C114 || CT.C114, 200, C115 || CT.C115, 300, C116 || CT.C116, 400, C117 || CT.C117, 500, C118 || CT.C118, 600, C119 || CT.C119, 700, C120 || CT.C120, 800, C121 || CT.C121, 900, C122 || CT.C122]);
  },
  get C111() {
    return C111 = dart.const({
      __proto__: colors$.MaterialColor.prototype,
      [Color_value]: 4294198070.0,
      [ColorSwatch__swatch]: C112 || CT.C112
    });
  },
  get C124() {
    return C124 = dart.const({
      __proto__: text.Text.prototype,
      [Widget_key]: null,
      [Text_textWidthBasis]: null,
      [Text_semanticsLabel]: null,
      [Text_maxLines]: null,
      [Text_textScaleFactor]: null,
      [Text_overflow]: null,
      [Text_softWrap]: null,
      [Text_locale]: null,
      [Text_textDirection]: null,
      [Text_textAlign]: null,
      [Text_strutStyle]: null,
      [Text_style]: null,
      [Text_textSpan]: null,
      [Text_data]: "To load the videos you must have an active network connection"
    });
  },
  get C125() {
    return C125 = dart.const({
      __proto__: text.Text.prototype,
      [Widget_key]: null,
      [Text_textWidthBasis]: null,
      [Text_semanticsLabel]: null,
      [Text_maxLines]: null,
      [Text_textScaleFactor]: null,
      [Text_overflow]: null,
      [Text_softWrap]: null,
      [Text_locale]: null,
      [Text_textDirection]: null,
      [Text_textAlign]: null,
      [Text_strutStyle]: null,
      [Text_style]: null,
      [Text_textSpan]: null,
      [Text_data]: "No network"
    });
  },
  get C123() {
    return C123 = dart.const({
      __proto__: list_tile.ListTile.prototype,
      [Widget_key]: null,
      [ListTile_selected]: false,
      [ListTile_onLongPress]: null,
      [ListTile_onTap]: null,
      [ListTile_enabled]: true,
      [ListTile_contentPadding]: null,
      [ListTile_dense]: null,
      [ListTile_isThreeLine]: false,
      [ListTile_trailing]: null,
      [ListTile_subtitle]: C124 || CT.C124,
      [ListTile_title]: C125 || CT.C125,
      [ListTile_leading]: null
    });
  },
  get C109() {
    return C109 = dart.const({
      __proto__: snack_bar.SnackBar.prototype,
      [Widget_key]: null,
      [SnackBar_onVisible]: null,
      [SnackBar_animation]: null,
      [SnackBar_duration]: C110 || CT.C110,
      [SnackBar_action]: null,
      [SnackBar_behavior]: null,
      [SnackBar_shape]: null,
      [SnackBar_elevation]: null,
      [SnackBar_backgroundColor]: C111 || CT.C111,
      [SnackBar_content]: C123 || CT.C123
    });
  },
  get C126() {
    return C126 = dart.const({
      __proto__: text.Text.prototype,
      [Widget_key]: null,
      [Text_textWidthBasis]: null,
      [Text_semanticsLabel]: null,
      [Text_maxLines]: null,
      [Text_textScaleFactor]: null,
      [Text_overflow]: null,
      [Text_softWrap]: null,
      [Text_locale]: null,
      [Text_textDirection]: null,
      [Text_textAlign]: null,
      [Text_strutStyle]: null,
      [Text_style]: null,
      [Text_textSpan]: null,
      [Text_data]: "Videos"
    });
  },
  get C152() {
    return C152 = dart.const({
      __proto__: text.Text.prototype,
      [Widget_key]: null,
      [Text_textWidthBasis]: null,
      [Text_semanticsLabel]: null,
      [Text_maxLines]: null,
      [Text_textScaleFactor]: null,
      [Text_overflow]: null,
      [Text_softWrap]: null,
      [Text_locale]: null,
      [Text_textDirection]: null,
      [Text_textAlign]: null,
      [Text_strutStyle]: null,
      [Text_style]: null,
      [Text_textSpan]: null,
      [Text_data]: "Video playback not supported on the iOS Simulator."
    });
  },
  get C151() {
    return C151 = dart.const({
      __proto__: basic.Center.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: C152 || CT.C152,
      [Align_heightFactor]: null,
      [Align_widthFactor]: null,
      [Align_alignment]: C76 || CT.C76
    });
  }
});
const EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
const EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
const EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
const EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
let C0;
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
const _buildInlineVideo = dart.privateName(video_demo, "_buildInlineVideo");
const _buildFullScreenVideo = dart.privateName(video_demo, "_buildFullScreenVideo");
const controller$ = dart.privateName(video_demo, "VideoCard.controller");
const title$ = dart.privateName(video_demo, "VideoCard.title");
const subtitle$ = dart.privateName(video_demo, "VideoCard.subtitle");
video_demo.VideoCard = class VideoCard extends framework.StatelessWidget {
  get controller() {
    return this[controller$];
  }
  set controller(value) {
    super.controller = value;
  }
  get title() {
    return this[title$];
  }
  set title(value) {
    super.title = value;
  }
  get subtitle() {
    return this[subtitle$];
  }
  set subtitle(value) {
    super.subtitle = value;
  }
  [_buildInlineVideo]() {
    return new basic.Padding.new({padding: C0 || CT.C0, child: new basic.Center.new({child: new basic.AspectRatio.new({aspectRatio: 3 / 2, child: new heroes.Hero.new({tag: this.controller, child: new video_demo.VideoPlayerLoading.new(this.controller, {$creationLocationd_0dea112b090073317d4: C1 || CT.C1}), $creationLocationd_0dea112b090073317d4: C4 || CT.C4}), $creationLocationd_0dea112b090073317d4: C8 || CT.C8}), $creationLocationd_0dea112b090073317d4: C12 || CT.C12}), $creationLocationd_0dea112b090073317d4: C15 || CT.C15});
  }
  [_buildFullScreenVideo]() {
    return new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: new text.Text.new(this.title, {$creationLocationd_0dea112b090073317d4: C19 || CT.C19}), $creationLocationd_0dea112b090073317d4: C22 || CT.C22}), body: new basic.Center.new({child: new basic.AspectRatio.new({aspectRatio: 3 / 2, child: new heroes.Hero.new({tag: this.controller, child: new video_demo.VideoPlayPause.new(this.controller, {$creationLocationd_0dea112b090073317d4: C25 || CT.C25}), $creationLocationd_0dea112b090073317d4: C28 || CT.C28}), $creationLocationd_0dea112b090073317d4: C32 || CT.C32}), $creationLocationd_0dea112b090073317d4: C36 || CT.C36}), $creationLocationd_0dea112b090073317d4: C39 || CT.C39});
  }
  build(context) {
    const fullScreenRoutePageBuilder = (context, animation, secondaryAnimation) => {
      return this[_buildFullScreenVideo]();
    };
    dart.fn(fullScreenRoutePageBuilder, BuildContextAndAnimationOfdoubleAndAnimationOfdoubleToWidget());
    const pushFullScreenWidget = () => {
      let route = new (PageRouteBuilderOfvoid()).new({settings: new navigator.RouteSettings.new({name: this.title, isInitialRoute: false}), pageBuilder: fullScreenRoutePageBuilder});
      route.completed.then(core.Null, dart.fn(value => {
        this.controller.setVolume(0.0);
      }, voidToNull()));
      this.controller.setVolume(1.0);
      navigator.Navigator.of(context).push(dart.void, route);
    };
    dart.fn(pushFullScreenWidget, VoidTovoid());
    return new safe_area.SafeArea.new({top: false, bottom: false, child: new card.Card.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new list_tile.ListTile.new({title: new text.Text.new(this.title, {$creationLocationd_0dea112b090073317d4: C43 || CT.C43}), subtitle: new text.Text.new(this.subtitle, {$creationLocationd_0dea112b090073317d4: C46 || CT.C46}), $creationLocationd_0dea112b090073317d4: C49 || CT.C49}), new gesture_detector.GestureDetector.new({onTap: pushFullScreenWidget, child: this[_buildInlineVideo](), $creationLocationd_0dea112b090073317d4: C53 || CT.C53})]), $creationLocationd_0dea112b090073317d4: C57 || CT.C57}), $creationLocationd_0dea112b090073317d4: C60 || CT.C60}), $creationLocationd_0dea112b090073317d4: C63 || CT.C63});
  }
};
(video_demo.VideoCard.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let controller = opts && 'controller' in opts ? opts.controller : null;
  let title = opts && 'title' in opts ? opts.title : null;
  let subtitle = opts && 'subtitle' in opts ? opts.subtitle : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[controller$] = controller;
  this[title$] = title;
  this[subtitle$] = subtitle;
  video_demo.VideoCard.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = video_demo.VideoCard.prototype;
dart.addTypeTests(video_demo.VideoCard);
dart.setMethodSignature(video_demo.VideoCard, () => ({
  __proto__: dart.getMethods(video_demo.VideoCard.__proto__),
  [_buildInlineVideo]: dart.fnType(framework.Widget, []),
  [_buildFullScreenVideo]: dart.fnType(framework.Widget, []),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(video_demo.VideoCard, "package:flutter_gallery/demo/video_demo.dart");
dart.setFieldSignature(video_demo.VideoCard, () => ({
  __proto__: dart.getFields(video_demo.VideoCard.__proto__),
  controller: dart.finalFieldType(video_player.VideoPlayerController),
  title: dart.finalFieldType(core.String),
  subtitle: dart.finalFieldType(core.String)
}));
const controller$0 = dart.privateName(video_demo, "VideoPlayerLoading.controller");
video_demo.VideoPlayerLoading = class VideoPlayerLoading extends framework.StatefulWidget {
  get controller() {
    return this[controller$0];
  }
  set controller(value) {
    super.controller = value;
  }
  createState() {
    return new video_demo._VideoPlayerLoadingState.new();
  }
};
(video_demo.VideoPlayerLoading.new = function(controller, opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[controller$0] = controller;
  video_demo.VideoPlayerLoading.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = video_demo.VideoPlayerLoading.prototype;
dart.addTypeTests(video_demo.VideoPlayerLoading);
dart.setMethodSignature(video_demo.VideoPlayerLoading, () => ({
  __proto__: dart.getMethods(video_demo.VideoPlayerLoading.__proto__),
  createState: dart.fnType(video_demo._VideoPlayerLoadingState, [])
}));
dart.setLibraryUri(video_demo.VideoPlayerLoading, "package:flutter_gallery/demo/video_demo.dart");
dart.setFieldSignature(video_demo.VideoPlayerLoading, () => ({
  __proto__: dart.getFields(video_demo.VideoPlayerLoading.__proto__),
  controller: dart.finalFieldType(video_player.VideoPlayerController)
}));
const _initialized = dart.privateName(video_demo, "_initialized");
const Widget_key = dart.privateName(framework, "Widget.key");
const ProgressIndicator_semanticsValue = dart.privateName(progress_indicator, "ProgressIndicator.semanticsValue");
const ProgressIndicator_semanticsLabel = dart.privateName(progress_indicator, "ProgressIndicator.semanticsLabel");
const ProgressIndicator_valueColor = dart.privateName(progress_indicator, "ProgressIndicator.valueColor");
const ProgressIndicator_backgroundColor = dart.privateName(progress_indicator, "ProgressIndicator.backgroundColor");
const ProgressIndicator_value = dart.privateName(progress_indicator, "ProgressIndicator.value");
const CircularProgressIndicator_strokeWidth = dart.privateName(progress_indicator, "CircularProgressIndicator.strokeWidth");
let C75;
const SingleChildRenderObjectWidget_child = dart.privateName(framework, "SingleChildRenderObjectWidget.child");
const Align_heightFactor = dart.privateName(basic, "Align.heightFactor");
const Align_widthFactor = dart.privateName(basic, "Align.widthFactor");
const Alignment_y = dart.privateName(alignment, "Alignment.y");
const Alignment_x = dart.privateName(alignment, "Alignment.x");
let C76;
const Align_alignment = dart.privateName(basic, "Align.alignment");
let C74;
video_demo._VideoPlayerLoadingState = class _VideoPlayerLoadingState extends framework.State$(video_demo.VideoPlayerLoading) {
  initState() {
    super.initState();
    this[_initialized] = this.widget.controller.value.initialized;
    this.widget.controller.addListener(dart.fn(() => {
      if (!dart.test(this.mounted)) {
        return;
      }
      let controllerInitialized = this.widget.controller.value.initialized;
      if (!dart.equals(this[_initialized], controllerInitialized)) {
        this.setState(dart.fn(() => {
          this[_initialized] = controllerInitialized;
        }, VoidToNull()));
      }
    }, VoidToNull()));
  }
  build(context) {
    if (dart.test(this[_initialized])) {
      return new video_player.VideoPlayer.new(this.widget.controller, {$creationLocationd_0dea112b090073317d4: C68 || CT.C68});
    }
    return new basic.Stack.new({children: JSArrayOfWidget().of([new video_player.VideoPlayer.new(this.widget.controller, {$creationLocationd_0dea112b090073317d4: C71 || CT.C71}), C74 || CT.C74]), fit: stack.StackFit.expand, $creationLocationd_0dea112b090073317d4: C77 || CT.C77});
  }
};
(video_demo._VideoPlayerLoadingState.new = function() {
  this[_initialized] = null;
  video_demo._VideoPlayerLoadingState.__proto__.new.call(this);
  ;
}).prototype = video_demo._VideoPlayerLoadingState.prototype;
dart.addTypeTests(video_demo._VideoPlayerLoadingState);
dart.setMethodSignature(video_demo._VideoPlayerLoadingState, () => ({
  __proto__: dart.getMethods(video_demo._VideoPlayerLoadingState.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(video_demo._VideoPlayerLoadingState, "package:flutter_gallery/demo/video_demo.dart");
dart.setFieldSignature(video_demo._VideoPlayerLoadingState, () => ({
  __proto__: dart.getFields(video_demo._VideoPlayerLoadingState.__proto__),
  [_initialized]: dart.fieldType(core.bool)
}));
const controller$1 = dart.privateName(video_demo, "VideoPlayPause.controller");
video_demo.VideoPlayPause = class VideoPlayPause extends framework.StatefulWidget {
  get controller() {
    return this[controller$1];
  }
  set controller(value) {
    super.controller = value;
  }
  createState() {
    return new video_demo._VideoPlayPauseState.new();
  }
};
(video_demo.VideoPlayPause.new = function(controller, opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[controller$1] = controller;
  video_demo.VideoPlayPause.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = video_demo.VideoPlayPause.prototype;
dart.addTypeTests(video_demo.VideoPlayPause);
dart.setMethodSignature(video_demo.VideoPlayPause, () => ({
  __proto__: dart.getMethods(video_demo.VideoPlayPause.__proto__),
  createState: dart.fnType(framework.State$(framework.StatefulWidget), [])
}));
dart.setLibraryUri(video_demo.VideoPlayPause, "package:flutter_gallery/demo/video_demo.dart");
dart.setFieldSignature(video_demo.VideoPlayPause, () => ({
  __proto__: dart.getFields(video_demo.VideoPlayPause.__proto__),
  controller: dart.finalFieldType(video_player.VideoPlayerController)
}));
const Duration__duration = dart.privateName(core, "Duration._duration");
let C85;
const FadeAnimation_duration = dart.privateName(video_demo, "FadeAnimation.duration");
const Icon_textDirection = dart.privateName(icon, "Icon.textDirection");
const Icon_semanticLabel = dart.privateName(icon, "Icon.semanticLabel");
const Icon_color = dart.privateName(icon, "Icon.color");
const Icon_size = dart.privateName(icon, "Icon.size");
const IconData_matchTextDirection = dart.privateName(icon_data, "IconData.matchTextDirection");
const IconData_fontPackage = dart.privateName(icon_data, "IconData.fontPackage");
const IconData_fontFamily = dart.privateName(icon_data, "IconData.fontFamily");
const IconData_codePoint = dart.privateName(icon_data, "IconData.codePoint");
let C87;
const Icon_icon = dart.privateName(icon, "Icon.icon");
let C86;
const FadeAnimation_child = dart.privateName(video_demo, "FadeAnimation.child");
let C84;
let C90;
let C89;
let C88;
video_demo._VideoPlayPauseState = class _VideoPlayPauseState extends framework.State$(video_demo.VideoPlayPause) {
  get controller() {
    return this.widget.controller;
  }
  initState() {
    super.initState();
    this.controller.addListener(this.listener);
  }
  deactivate() {
    this.controller.removeListener(this.listener);
    super.deactivate();
  }
  build(context) {
    return new basic.Stack.new({alignment: alignment.Alignment.bottomCenter, fit: stack.StackFit.expand, children: JSArrayOfWidget().of([new gesture_detector.GestureDetector.new({child: new video_demo.VideoPlayerLoading.new(this.controller, {$creationLocationd_0dea112b090073317d4: C81 || CT.C81}), onTap: dart.fn(() => {
            if (!dart.test(this.controller.value.initialized)) {
              return;
            }
            if (dart.test(this.controller.value.isPlaying)) {
              this.imageFadeAnimation = C84 || CT.C84;
              this.controller.pause();
            } else {
              this.imageFadeAnimation = C88 || CT.C88;
              this.controller.play();
            }
          }, VoidToNull()), $creationLocationd_0dea112b090073317d4: C91 || CT.C91}), new basic.Center.new({child: this.imageFadeAnimation, $creationLocationd_0dea112b090073317d4: C95 || CT.C95})]), $creationLocationd_0dea112b090073317d4: C98 || CT.C98});
  }
};
(video_demo._VideoPlayPauseState.new = function() {
  this.imageFadeAnimation = null;
  this.listener = null;
  video_demo._VideoPlayPauseState.__proto__.new.call(this);
  this.listener = dart.fn(() => {
    if (dart.test(this.mounted)) this.setState(dart.fn(() => {
    }, VoidToNull()));
  }, VoidToNull());
}).prototype = video_demo._VideoPlayPauseState.prototype;
dart.addTypeTests(video_demo._VideoPlayPauseState);
dart.setMethodSignature(video_demo._VideoPlayPauseState, () => ({
  __proto__: dart.getMethods(video_demo._VideoPlayPauseState.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setGetterSignature(video_demo._VideoPlayPauseState, () => ({
  __proto__: dart.getGetters(video_demo._VideoPlayPauseState.__proto__),
  controller: video_player.VideoPlayerController
}));
dart.setLibraryUri(video_demo._VideoPlayPauseState, "package:flutter_gallery/demo/video_demo.dart");
dart.setFieldSignature(video_demo._VideoPlayPauseState, () => ({
  __proto__: dart.getFields(video_demo._VideoPlayPauseState.__proto__),
  imageFadeAnimation: dart.fieldType(video_demo.FadeAnimation),
  listener: dart.fieldType(dart.fnType(dart.void, []))
}));
video_demo.FadeAnimation = class FadeAnimation extends framework.StatefulWidget {
  get child() {
    return this[child$];
  }
  set child(value) {
    super.child = value;
  }
  get duration() {
    return this[duration$];
  }
  set duration(value) {
    super.duration = value;
  }
  createState() {
    return new video_demo._FadeAnimationState.new();
  }
};
(video_demo.FadeAnimation.new = function(opts) {
  let child = opts && 'child' in opts ? opts.child : null;
  let duration = opts && 'duration' in opts ? opts.duration : C85 || CT.C85;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[child$] = child;
  this[duration$] = duration;
  video_demo.FadeAnimation.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = video_demo.FadeAnimation.prototype;
dart.addTypeTests(video_demo.FadeAnimation);
const child$ = FadeAnimation_child;
const duration$ = FadeAnimation_duration;
dart.setMethodSignature(video_demo.FadeAnimation, () => ({
  __proto__: dart.getMethods(video_demo.FadeAnimation.__proto__),
  createState: dart.fnType(video_demo._FadeAnimationState, [])
}));
dart.setLibraryUri(video_demo.FadeAnimation, "package:flutter_gallery/demo/video_demo.dart");
dart.setFieldSignature(video_demo.FadeAnimation, () => ({
  __proto__: dart.getFields(video_demo.FadeAnimation.__proto__),
  child: dart.finalFieldType(framework.Widget),
  duration: dart.finalFieldType(core.Duration)
}));
const State_SingleTickerProviderStateMixin$36 = class State_SingleTickerProviderStateMixin extends framework.State$(video_demo.FadeAnimation) {};
(State_SingleTickerProviderStateMixin$36.new = function() {
  ticker_provider.SingleTickerProviderStateMixin$(video_demo.FadeAnimation)[dart.mixinNew].call(this);
  State_SingleTickerProviderStateMixin$36.__proto__.new.call(this);
}).prototype = State_SingleTickerProviderStateMixin$36.prototype;
dart.applyMixin(State_SingleTickerProviderStateMixin$36, ticker_provider.SingleTickerProviderStateMixin$(video_demo.FadeAnimation));
video_demo._FadeAnimationState = class _FadeAnimationState extends State_SingleTickerProviderStateMixin$36 {
  initState() {
    super.initState();
    this.animationController = new animation_controller.AnimationController.new({duration: this.widget.duration, vsync: this});
    this.animationController.addListener(dart.fn(() => {
      if (dart.test(this.mounted)) {
        this.setState(dart.fn(() => {
        }, VoidToNull()));
      }
    }, VoidToNull()));
    this.animationController.forward({from: 0.0});
  }
  deactivate() {
    this.animationController.stop();
    super.deactivate();
  }
  didUpdateWidget(oldWidget) {
    video_demo.FadeAnimation._check(oldWidget);
    super.didUpdateWidget(oldWidget);
    if (!dart.equals(oldWidget.child, this.widget.child)) {
      this.animationController.forward({from: 0.0});
    }
  }
  dispose() {
    this.animationController.dispose();
    super.dispose();
  }
  build(context) {
    return dart.test(this.animationController.isAnimating) ? new basic.Opacity.new({opacity: 1.0 - dart.notNull(this.animationController.value), child: this.widget.child, $creationLocationd_0dea112b090073317d4: C103 || CT.C103}) : new container.Container.new({$creationLocationd_0dea112b090073317d4: C107 || CT.C107});
  }
};
(video_demo._FadeAnimationState.new = function() {
  this.animationController = null;
  video_demo._FadeAnimationState.__proto__.new.call(this);
  ;
}).prototype = video_demo._FadeAnimationState.prototype;
dart.addTypeTests(video_demo._FadeAnimationState);
dart.setMethodSignature(video_demo._FadeAnimationState, () => ({
  __proto__: dart.getMethods(video_demo._FadeAnimationState.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(video_demo._FadeAnimationState, "package:flutter_gallery/demo/video_demo.dart");
dart.setFieldSignature(video_demo._FadeAnimationState, () => ({
  __proto__: dart.getFields(video_demo._FadeAnimationState.__proto__),
  animationController: dart.fieldType(animation_controller.AnimationController)
}));
const child$0 = dart.privateName(video_demo, "ConnectivityOverlay.child");
const connectedCompleter$ = dart.privateName(video_demo, "ConnectivityOverlay.connectedCompleter");
const scaffoldKey$ = dart.privateName(video_demo, "ConnectivityOverlay.scaffoldKey");
video_demo.ConnectivityOverlay = class ConnectivityOverlay extends framework.StatefulWidget {
  get child() {
    return this[child$0];
  }
  set child(value) {
    super.child = value;
  }
  get connectedCompleter() {
    return this[connectedCompleter$];
  }
  set connectedCompleter(value) {
    super.connectedCompleter = value;
  }
  get scaffoldKey() {
    return this[scaffoldKey$];
  }
  set scaffoldKey(value) {
    super.scaffoldKey = value;
  }
  createState() {
    return new video_demo._ConnectivityOverlayState.new();
  }
};
(video_demo.ConnectivityOverlay.new = function(opts) {
  let child = opts && 'child' in opts ? opts.child : null;
  let connectedCompleter = opts && 'connectedCompleter' in opts ? opts.connectedCompleter : null;
  let scaffoldKey = opts && 'scaffoldKey' in opts ? opts.scaffoldKey : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[child$0] = child;
  this[connectedCompleter$] = connectedCompleter;
  this[scaffoldKey$] = scaffoldKey;
  video_demo.ConnectivityOverlay.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = video_demo.ConnectivityOverlay.prototype;
dart.addTypeTests(video_demo.ConnectivityOverlay);
dart.setMethodSignature(video_demo.ConnectivityOverlay, () => ({
  __proto__: dart.getMethods(video_demo.ConnectivityOverlay.__proto__),
  createState: dart.fnType(video_demo._ConnectivityOverlayState, [])
}));
dart.setLibraryUri(video_demo.ConnectivityOverlay, "package:flutter_gallery/demo/video_demo.dart");
dart.setFieldSignature(video_demo.ConnectivityOverlay, () => ({
  __proto__: dart.getFields(video_demo.ConnectivityOverlay.__proto__),
  child: dart.finalFieldType(framework.Widget),
  connectedCompleter: dart.finalFieldType(async.Completer$(dart.void)),
  scaffoldKey: dart.finalFieldType(framework.GlobalKey$(scaffold.ScaffoldState))
}));
const SnackBar_onVisible = dart.privateName(snack_bar, "SnackBar.onVisible");
const SnackBar_animation = dart.privateName(snack_bar, "SnackBar.animation");
let C110;
const SnackBar_duration = dart.privateName(snack_bar, "SnackBar.duration");
const SnackBar_action = dart.privateName(snack_bar, "SnackBar.action");
const SnackBar_behavior = dart.privateName(snack_bar, "SnackBar.behavior");
const SnackBar_shape = dart.privateName(snack_bar, "SnackBar.shape");
const SnackBar_elevation = dart.privateName(snack_bar, "SnackBar.elevation");
const Color_value = dart.privateName(ui, "Color.value");
let C113;
let C114;
let C115;
let C116;
let C117;
let C118;
let C119;
let C120;
let C121;
let C122;
let C112;
const ColorSwatch__swatch = dart.privateName(colors, "ColorSwatch._swatch");
let C111;
const SnackBar_backgroundColor = dart.privateName(snack_bar, "SnackBar.backgroundColor");
const ListTile_selected = dart.privateName(list_tile, "ListTile.selected");
const ListTile_onLongPress = dart.privateName(list_tile, "ListTile.onLongPress");
const ListTile_onTap = dart.privateName(list_tile, "ListTile.onTap");
const ListTile_enabled = dart.privateName(list_tile, "ListTile.enabled");
const ListTile_contentPadding = dart.privateName(list_tile, "ListTile.contentPadding");
const ListTile_dense = dart.privateName(list_tile, "ListTile.dense");
const ListTile_isThreeLine = dart.privateName(list_tile, "ListTile.isThreeLine");
const ListTile_trailing = dart.privateName(list_tile, "ListTile.trailing");
const Text_textWidthBasis = dart.privateName(text, "Text.textWidthBasis");
const Text_semanticsLabel = dart.privateName(text, "Text.semanticsLabel");
const Text_maxLines = dart.privateName(text, "Text.maxLines");
const Text_textScaleFactor = dart.privateName(text, "Text.textScaleFactor");
const Text_overflow = dart.privateName(text, "Text.overflow");
const Text_softWrap = dart.privateName(text, "Text.softWrap");
const Text_locale = dart.privateName(text, "Text.locale");
const Text_textDirection = dart.privateName(text, "Text.textDirection");
const Text_textAlign = dart.privateName(text, "Text.textAlign");
const Text_strutStyle = dart.privateName(text, "Text.strutStyle");
const Text_style = dart.privateName(text, "Text.style");
const Text_textSpan = dart.privateName(text, "Text.textSpan");
const Text_data = dart.privateName(text, "Text.data");
let C124;
const ListTile_subtitle = dart.privateName(list_tile, "ListTile.subtitle");
let C125;
const ListTile_title = dart.privateName(list_tile, "ListTile.title");
const ListTile_leading = dart.privateName(list_tile, "ListTile.leading");
let C123;
const SnackBar_content = dart.privateName(snack_bar, "SnackBar.content");
let C109;
video_demo._ConnectivityOverlayState = class _ConnectivityOverlayState extends framework.State$(video_demo.ConnectivityOverlay) {
  connectivityStream() {
    return new (_AsyncStarImplOfConnectivityResult()).new(function* connectivityStream(stream) {
      let connectivity = connectivity$.Connectivity.new();
      let previousResult = (yield connectivity.checkConnectivity());
      if (stream.add(previousResult)) return;
      yield;
      let iter = async.StreamIterator.new(connectivity.onConnectivityChanged);
      try {
        while (yield iter.moveNext()) {
          let result = iter.current;
          {
            if (!dart.equals(result, previousResult)) {
              if (stream.add(result)) return;
              yield;
              previousResult = result;
            }
          }
        }
      } finally {
        yield iter.cancel();
      }
    }).stream;
  }
  initState() {
    super.initState();
    this.connectivitySubscription = this.connectivityStream().listen(dart.fn(connectivityResult => {
      if (!dart.test(this.mounted)) {
        return;
      }
      if (dart.equals(connectivityResult, connectivity$.ConnectivityResult.none)) {
        this.widget.scaffoldKey.currentState.showSnackBar(snack_bar.SnackBar._check(video_demo._ConnectivityOverlayState.errorSnackBar));
      } else {
        if (!dart.test(this.widget.connectedCompleter.isCompleted)) {
          this.widget.connectedCompleter.complete(null);
        }
      }
    }, ConnectivityResultToNull()));
  }
  dispose() {
    this.connectivitySubscription.cancel();
    super.dispose();
  }
  build(context) {
    return this.widget.child;
  }
};
(video_demo._ConnectivityOverlayState.new = function() {
  this.connectivitySubscription = null;
  this.connected = true;
  video_demo._ConnectivityOverlayState.__proto__.new.call(this);
  ;
}).prototype = video_demo._ConnectivityOverlayState.prototype;
dart.addTypeTests(video_demo._ConnectivityOverlayState);
dart.setMethodSignature(video_demo._ConnectivityOverlayState, () => ({
  __proto__: dart.getMethods(video_demo._ConnectivityOverlayState.__proto__),
  connectivityStream: dart.fnType(async.Stream$(connectivity$.ConnectivityResult), []),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(video_demo._ConnectivityOverlayState, "package:flutter_gallery/demo/video_demo.dart");
dart.setFieldSignature(video_demo._ConnectivityOverlayState, () => ({
  __proto__: dart.getFields(video_demo._ConnectivityOverlayState.__proto__),
  connectivitySubscription: dart.fieldType(async.StreamSubscription$(connectivity$.ConnectivityResult)),
  connected: dart.fieldType(core.bool)
}));
dart.defineLazy(video_demo._ConnectivityOverlayState, {
  /*video_demo._ConnectivityOverlayState.errorSnackBar*/get errorSnackBar() {
    return C109 || CT.C109;
  }
});
video_demo.VideoDemo = class VideoDemo extends framework.StatefulWidget {
  createState() {
    return new video_demo._VideoDemoState.new();
  }
};
(video_demo.VideoDemo.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  video_demo.VideoDemo.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = video_demo.VideoDemo.prototype;
dart.addTypeTests(video_demo.VideoDemo);
dart.setMethodSignature(video_demo.VideoDemo, () => ({
  __proto__: dart.getMethods(video_demo.VideoDemo.__proto__),
  createState: dart.fnType(video_demo._VideoDemoState, [])
}));
dart.setLibraryUri(video_demo.VideoDemo, "package:flutter_gallery/demo/video_demo.dart");
dart.defineLazy(video_demo.VideoDemo, {
  /*video_demo.VideoDemo.routeName*/get routeName() {
    return "/video";
  }
});
let C126;
let C152;
let C151;
const State_SingleTickerProviderStateMixin$36$ = class State_SingleTickerProviderStateMixin extends framework.State$(video_demo.VideoDemo) {};
(State_SingleTickerProviderStateMixin$36$.new = function() {
  ticker_provider.SingleTickerProviderStateMixin$(video_demo.VideoDemo)[dart.mixinNew].call(this);
  State_SingleTickerProviderStateMixin$36$.__proto__.new.call(this);
}).prototype = State_SingleTickerProviderStateMixin$36$.prototype;
dart.applyMixin(State_SingleTickerProviderStateMixin$36$, ticker_provider.SingleTickerProviderStateMixin$(video_demo.VideoDemo));
video_demo._VideoDemoState = class _VideoDemoState extends State_SingleTickerProviderStateMixin$36$ {
  initState() {
    super.initState();
    const initController = (controller, name) => {
      return async.async(dart.void, (function* initController() {
        core.print("> VideoDemo initController \"" + dart.str(name) + "\" " + (dart.test(this.isDisposed) ? "DISPOSED" : ""));
        controller.setLooping(true);
        controller.setVolume(0.0);
        controller.play();
        yield this.connectedCompleter.future;
        yield controller.initialize();
        if (dart.test(this.mounted)) {
          core.print("< VideoDemo initController \"" + dart.str(name) + "\" done " + (dart.test(this.isDisposed) ? "DISPOSED" : ""));
          this.setState(dart.fn(() => {
          }, VoidToNull()));
        }
      }).bind(this));
    };
    dart.fn(initController, VideoPlayerControllerAndStringToFutureOfvoid());
    initController(this.butterflyController, "butterfly");
    initController(this.beeController, "bee");
    video_demo.isIOSSimulator().then(dart.void, dart.fn(result => {
      this.isSupported = !dart.test(result);
    }, boolToNull()));
  }
  dispose() {
    core.print("> VideoDemo dispose");
    this.isDisposed = true;
    this.butterflyController.dispose();
    this.beeController.dispose();
    core.print("< VideoDemo dispose");
    super.dispose();
  }
  build(context) {
    return new scaffold.Scaffold.new({key: this.scaffoldKey, appBar: new app_bar.AppBar.new({title: C126 || CT.C126, $creationLocationd_0dea112b090073317d4: C127 || CT.C127}), body: dart.test(this.isSupported) ? new video_demo.ConnectivityOverlay.new({child: new scrollbar.Scrollbar.new({child: new scroll_view.ListView.new({children: JSArrayOfWidget().of([new video_demo.VideoCard.new({title: "Butterfly", subtitle: "… flutters by", controller: this.butterflyController, $creationLocationd_0dea112b090073317d4: C130 || CT.C130}), new video_demo.VideoCard.new({title: "Bee", subtitle: "… gently buzzing", controller: this.beeController, $creationLocationd_0dea112b090073317d4: C135 || CT.C135})]), $creationLocationd_0dea112b090073317d4: C140 || CT.C140}), $creationLocationd_0dea112b090073317d4: C143 || CT.C143}), connectedCompleter: this.connectedCompleter, scaffoldKey: this.scaffoldKey, $creationLocationd_0dea112b090073317d4: C146 || CT.C146}) : C151 || CT.C151, $creationLocationd_0dea112b090073317d4: C153 || CT.C153});
  }
};
(video_demo._VideoDemoState.new = function() {
  this.butterflyController = new video_player.VideoPlayerController.asset("videos/butterfly.mp4", {package: "flutter_gallery_assets"});
  this.beeController = new video_player.VideoPlayerController.network(video_demo._VideoDemoState.beeUri);
  this.scaffoldKey = GlobalKeyOfScaffoldState().new();
  this.connectedCompleter = CompleterOfvoid().new();
  this.isSupported = true;
  this.isDisposed = false;
  video_demo._VideoDemoState.__proto__.new.call(this);
  ;
}).prototype = video_demo._VideoDemoState.prototype;
dart.addTypeTests(video_demo._VideoDemoState);
dart.setMethodSignature(video_demo._VideoDemoState, () => ({
  __proto__: dart.getMethods(video_demo._VideoDemoState.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(video_demo._VideoDemoState, "package:flutter_gallery/demo/video_demo.dart");
dart.setFieldSignature(video_demo._VideoDemoState, () => ({
  __proto__: dart.getFields(video_demo._VideoDemoState.__proto__),
  butterflyController: dart.finalFieldType(video_player.VideoPlayerController),
  beeController: dart.finalFieldType(video_player.VideoPlayerController),
  scaffoldKey: dart.finalFieldType(framework.GlobalKey$(scaffold.ScaffoldState)),
  connectedCompleter: dart.finalFieldType(async.Completer$(dart.void)),
  isSupported: dart.fieldType(core.bool),
  isDisposed: dart.fieldType(core.bool)
}));
dart.defineLazy(video_demo._VideoDemoState, {
  /*video_demo._VideoDemoState.beeUri*/get beeUri() {
    return "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4";
  }
});
video_demo.isIOSSimulator = function isIOSSimulator() {
  return async.async(core.bool, function* isIOSSimulator() {
    return dart.test(io.Platform.isIOS) && !dart.test((yield video_demo.deviceInfoPlugin.iosInfo).isPhysicalDevice);
  });
};
dart.defineLazy(video_demo, {
  /*video_demo.deviceInfoPlugin*/get deviceInfoPlugin() {
    return new device_info.DeviceInfoPlugin.new();
  }
});
dart.trackLibraries("packages/flutter_gallery/demo/video_demo", {
  "package:flutter_gallery/demo/video_demo.dart": video_demo
}, {
}, '{"version":3,"sourceRoot":"","sources":["video_demo.dart"],"names":[],"mappings":"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","file":"video_demo.ddc.js"}');
// Exports:
exports.demo__video_demo = video_demo;

//# sourceMappingURL=video_demo.ddc.js.map
