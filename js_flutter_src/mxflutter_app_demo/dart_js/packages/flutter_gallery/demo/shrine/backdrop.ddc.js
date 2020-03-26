'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const ui = dart_sdk.ui;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const focus_scope = packages__flutter__src__widgets__actions.src__widgets__focus_scope;
const gesture_detector = packages__flutter__src__widgets__actions.src__widgets__gesture_detector;
const container = packages__flutter__src__widgets__actions.src__widgets__container;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const image_icon = packages__flutter__src__widgets__actions.src__widgets__image_icon;
const transitions = packages__flutter__src__widgets__actions.src__widgets__transitions;
const icon = packages__flutter__src__widgets__actions.src__widgets__icon;
const icon_data = packages__flutter__src__widgets__actions.src__widgets__icon_data;
const navigator = packages__flutter__src__widgets__actions.src__widgets__navigator;
const layout_builder = packages__flutter__src__widgets__actions.src__widgets__layout_builder;
const ticker_provider = packages__flutter__src__widgets__actions.src__widgets__ticker_provider;
const packages__flutter__src__animation__animation = require('packages/flutter/src/animation/animation');
const animation_controller = packages__flutter__src__animation__animation.src__animation__animation_controller;
const animation = packages__flutter__src__animation__animation.src__animation__animation;
const animations = packages__flutter__src__animation__animation.src__animation__animations;
const curves = packages__flutter__src__animation__animation.src__animation__curves;
const tween = packages__flutter__src__animation__animation.src__animation__tween;
const tween_sequence = packages__flutter__src__animation__animation.src__animation__tween_sequence;
const packages__flutter__material = require('packages/flutter/material');
const material = packages__flutter__material.src__material__material;
const theme = packages__flutter__material.src__material__theme;
const icon_button = packages__flutter__material.src__material__icon_button;
const app_bar = packages__flutter__material.src__material__app_bar;
const page = packages__flutter__material.src__material__page;
const scaffold = packages__flutter__material.src__material__scaffold;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const beveled_rectangle_border = packages__flutter__src__painting___network_image_web.src__painting__beveled_rectangle_border;
const border_radius = packages__flutter__src__painting___network_image_web.src__painting__border_radius;
const borders = packages__flutter__src__painting___network_image_web.src__painting__borders;
const alignment = packages__flutter__src__painting___network_image_web.src__painting__alignment;
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const image_resolution = packages__flutter__src__painting___network_image_web.src__painting__image_resolution;
const packages__flutter__src__rendering__animated_size = require('packages/flutter/src/rendering/animated_size');
const flex = packages__flutter__src__rendering__animated_size.src__rendering__flex;
const proxy_box = packages__flutter__src__rendering__animated_size.src__rendering__proxy_box;
const paragraph = packages__flutter__src__rendering__animated_size.src__rendering__paragraph;
const stack = packages__flutter__src__rendering__animated_size.src__rendering__stack;
const box = packages__flutter__src__rendering__animated_size.src__rendering__box;
const packages__flutter_gallery__demo__shrine__login = require('packages/flutter_gallery/demo/shrine/login');
const login = packages__flutter_gallery__demo__shrine__login.demo__shrine__login;
const backdrop = Object.create(dart.library);
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
let AnimationOfdouble = () => (AnimationOfdouble = dart.constFn(animation.Animation$(core.double)))();
let VoidTovoid = () => (VoidTovoid = dart.constFn(dart.fnType(dart.void, [])))();
let TweenOfOffset = () => (TweenOfOffset = dart.constFn(tween.Tween$(ui.Offset)))();
let StateOfStatefulWidget = () => (StateOfStatefulWidget = dart.constFn(framework.State$(framework.StatefulWidget)))();
let GlobalKeyOfStateOfStatefulWidget = () => (GlobalKeyOfStateOfStatefulWidget = dart.constFn(framework.GlobalKey$(StateOfStatefulWidget())))();
let TweenSequenceOfRelativeRect = () => (TweenSequenceOfRelativeRect = dart.constFn(tween_sequence.TweenSequence$(stack.RelativeRect)))();
let TweenSequenceItemOfRelativeRect = () => (TweenSequenceItemOfRelativeRect = dart.constFn(tween_sequence.TweenSequenceItem$(stack.RelativeRect)))();
let JSArrayOfTweenSequenceItemOfRelativeRect = () => (JSArrayOfTweenSequenceItemOfRelativeRect = dart.constFn(_interceptors.JSArray$(TweenSequenceItemOfRelativeRect())))();
let MaterialPageRouteOfvoid = () => (MaterialPageRouteOfvoid = dart.constFn(page.MaterialPageRoute$(dart.void)))();
let BuildContextToLoginPage = () => (BuildContextToLoginPage = dart.constFn(dart.fnType(login.LoginPage, [framework.BuildContext])))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C11() {
    return C11 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 0,
      [Radius_x]: 0
    });
  },
  get C12() {
    return C12 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 46,
      [Radius_x]: 46
    });
  },
  get C10() {
    return C10 = dart.const({
      __proto__: border_radius.BorderRadius.prototype,
      [BorderRadius_bottomRight]: C11 || CT.C11,
      [BorderRadius_bottomLeft]: C11 || CT.C11,
      [BorderRadius_topRight]: C11 || CT.C11,
      [BorderRadius_topLeft]: C12 || CT.C12
    });
  },
  get C14() {
    return C14 = dart.const({
      __proto__: borders.BorderStyle.prototype,
      [_name]: "BorderStyle.none",
      index: 0
    });
  },
  get C15() {
    return C15 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4278190080.0
    });
  },
  get C13() {
    return C13 = dart.const({
      __proto__: borders.BorderSide.prototype,
      [BorderSide_style]: C14 || CT.C14,
      [BorderSide_width]: 0,
      [BorderSide_color]: C15 || CT.C15
    });
  },
  get C9() {
    return C9 = dart.const({
      __proto__: beveled_rectangle_border.BeveledRectangleBorder.prototype,
      [BeveledRectangleBorder_borderRadius]: C10 || CT.C10,
      [BeveledRectangleBorder_side]: C13 || CT.C13
    });
  },
  get C38() {
    return C38 = dart.const({
      __proto__: curves._Linear.prototype
    });
  },
  get C37() {
    return C37 = dart.const({
      __proto__: curves.Interval.prototype,
      [Interval_curve]: C38 || CT.C38,
      [Interval_end]: 0.78,
      [Interval_begin]: 0
    });
  },
  get C39() {
    return C39 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 8,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C41() {
    return C41 = dart.const({
      __proto__: image_resolution.AssetImage.prototype,
      [AssetImage_package]: null,
      [AssetImage_bundle]: null,
      [AssetImage_assetName]: "packages/shrine_images/slanted_menu.png"
    });
  },
  get C40() {
    return C40 = dart.const({
      __proto__: image_icon.ImageIcon.prototype,
      [Widget_key]: null,
      [ImageIcon_semanticLabel]: null,
      [ImageIcon_color]: null,
      [ImageIcon_size]: null,
      [ImageIcon_image]: C41 || CT.C41
    });
  },
  get C46() {
    return C46 = dart.const({
      __proto__: ui.Offset.prototype,
      [OffsetBase__dy]: 0,
      [OffsetBase__dx]: 1
    });
  },
  get C48() {
    return C48 = dart.const({
      __proto__: image_resolution.AssetImage.prototype,
      [AssetImage_package]: null,
      [AssetImage_bundle]: null,
      [AssetImage_assetName]: "packages/shrine_images/diamond.png"
    });
  },
  get C47() {
    return C47 = dart.const({
      __proto__: image_icon.ImageIcon.prototype,
      [Widget_key]: null,
      [ImageIcon_semanticLabel]: null,
      [ImageIcon_color]: null,
      [ImageIcon_size]: null,
      [ImageIcon_image]: C48 || CT.C48
    });
  },
  get C65() {
    return C65 = dart.const({
      __proto__: curves.Interval.prototype,
      [Interval_curve]: C38 || CT.C38,
      [Interval_end]: 1,
      [Interval_begin]: 0.5
    });
  },
  get C66() {
    return C66 = dart.const({
      __proto__: ui.Offset.prototype,
      [OffsetBase__dy]: 0,
      [OffsetBase__dx]: 0.5
    });
  },
  get C75() {
    return C75 = dart.const({
      __proto__: ui.Offset.prototype,
      [OffsetBase__dy]: 0,
      [OffsetBase__dx]: -0.25
    });
  },
  get C125() {
    return C125 = dart.const({
      __proto__: icon_data.IconData.prototype,
      [IconData_matchTextDirection]: false,
      [IconData_fontPackage]: null,
      [IconData_fontFamily]: "MaterialIcons",
      [IconData_codePoint]: 59574
    });
  },
  get C124() {
    return C124 = dart.const({
      __proto__: icon.Icon.prototype,
      [Widget_key]: null,
      [Icon_textDirection]: null,
      [Icon_semanticLabel]: "login",
      [Icon_color]: null,
      [Icon_size]: null,
      [Icon_icon]: C125 || CT.C125
    });
  },
  get C133() {
    return C133 = dart.const({
      __proto__: icon_data.IconData.prototype,
      [IconData_matchTextDirection]: false,
      [IconData_fontPackage]: null,
      [IconData_fontFamily]: "MaterialIcons",
      [IconData_codePoint]: 58409
    });
  },
  get C132() {
    return C132 = dart.const({
      __proto__: icon.Icon.prototype,
      [Widget_key]: null,
      [Icon_textDirection]: null,
      [Icon_semanticLabel]: "login",
      [Icon_color]: null,
      [Icon_size]: null,
      [Icon_icon]: C133 || CT.C133
    });
  },
  get C153() {
    return C153 = dart.const({
      __proto__: curves.Cubic.prototype,
      [Cubic_d]: 0.464,
      [Cubic_c]: 0.757,
      [Cubic_b]: 0,
      [Cubic_a]: 0.548
    });
  },
  get C154() {
    return C154 = dart.const({
      __proto__: curves.Cubic.prototype,
      [Cubic_d]: 1,
      [Cubic_c]: 0.41,
      [Cubic_b]: 0.94,
      [Cubic_a]: 0.23
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
dart.setLibraryUri(backdrop._TappableWhileStatusIs, "package:flutter_gallery/demo/shrine/backdrop.dart");
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
dart.setLibraryUri(backdrop._TappableWhileStatusIsState, "package:flutter_gallery/demo/shrine/backdrop.dart");
dart.setFieldSignature(backdrop._TappableWhileStatusIsState, () => ({
  __proto__: dart.getFields(backdrop._TappableWhileStatusIsState.__proto__),
  [_active]: dart.fieldType(core.bool)
}));
const Radius_y = dart.privateName(ui, "Radius.y");
const Radius_x = dart.privateName(ui, "Radius.x");
let C11;
const BorderRadius_bottomRight = dart.privateName(border_radius, "BorderRadius.bottomRight");
const BorderRadius_bottomLeft = dart.privateName(border_radius, "BorderRadius.bottomLeft");
const BorderRadius_topRight = dart.privateName(border_radius, "BorderRadius.topRight");
let C12;
const BorderRadius_topLeft = dart.privateName(border_radius, "BorderRadius.topLeft");
let C10;
const BeveledRectangleBorder_borderRadius = dart.privateName(beveled_rectangle_border, "BeveledRectangleBorder.borderRadius");
const _name = dart.privateName(borders, "_name");
let C14;
const BorderSide_style = dart.privateName(borders, "BorderSide.style");
const BorderSide_width = dart.privateName(borders, "BorderSide.width");
const Color_value = dart.privateName(ui, "Color.value");
let C15;
const BorderSide_color = dart.privateName(borders, "BorderSide.color");
let C13;
const BeveledRectangleBorder_side = dart.privateName(beveled_rectangle_border, "BeveledRectangleBorder.side");
let C9;
const onTap$ = dart.privateName(backdrop, "_FrontLayer.onTap");
const child$0 = dart.privateName(backdrop, "_FrontLayer.child");
backdrop._FrontLayer = class _FrontLayer extends framework.StatelessWidget {
  get onTap() {
    return this[onTap$];
  }
  set onTap(value) {
    super.onTap = value;
  }
  get child() {
    return this[child$0];
  }
  set child(value) {
    super.child = value;
  }
  build(context) {
    return new material.Material.new({elevation: 16.0, shape: C9 || CT.C9, child: new basic.Column.new({crossAxisAlignment: flex.CrossAxisAlignment.stretch, children: JSArrayOfWidget().of([new gesture_detector.GestureDetector.new({behavior: proxy_box.HitTestBehavior.opaque, onTap: this.onTap, child: new container.Container.new({height: 40.0, alignment: alignment.AlignmentDirectional.centerStart, $creationLocationd_0dea112b090073317d4: C16 || CT.C16}), $creationLocationd_0dea112b090073317d4: C20 || CT.C20}), new basic.Expanded.new({child: this.child, $creationLocationd_0dea112b090073317d4: C25 || CT.C25})]), $creationLocationd_0dea112b090073317d4: C28 || CT.C28}), $creationLocationd_0dea112b090073317d4: C32 || CT.C32});
  }
};
(backdrop._FrontLayer.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let onTap = opts && 'onTap' in opts ? opts.onTap : null;
  let child = opts && 'child' in opts ? opts.child : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[onTap$] = onTap;
  this[child$0] = child;
  backdrop._FrontLayer.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = backdrop._FrontLayer.prototype;
dart.addTypeTests(backdrop._FrontLayer);
dart.setMethodSignature(backdrop._FrontLayer, () => ({
  __proto__: dart.getMethods(backdrop._FrontLayer.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(backdrop._FrontLayer, "package:flutter_gallery/demo/shrine/backdrop.dart");
dart.setFieldSignature(backdrop._FrontLayer, () => ({
  __proto__: dart.getFields(backdrop._FrontLayer.__proto__),
  onTap: dart.finalFieldType(dart.fnType(dart.void, [])),
  child: dart.finalFieldType(framework.Widget)
}));
let C38;
const Interval_curve = dart.privateName(curves, "Interval.curve");
const Interval_end = dart.privateName(curves, "Interval.end");
const Interval_begin = dart.privateName(curves, "Interval.begin");
let C37;
const EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
const EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
const EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
const EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
let C39;
const Widget_key = dart.privateName(framework, "Widget.key");
const ImageIcon_semanticLabel = dart.privateName(image_icon, "ImageIcon.semanticLabel");
const ImageIcon_color = dart.privateName(image_icon, "ImageIcon.color");
const ImageIcon_size = dart.privateName(image_icon, "ImageIcon.size");
const AssetImage_package = dart.privateName(image_resolution, "AssetImage.package");
const AssetImage_bundle = dart.privateName(image_resolution, "AssetImage.bundle");
const AssetImage_assetName = dart.privateName(image_resolution, "AssetImage.assetName");
let C41;
const ImageIcon_image = dart.privateName(image_icon, "ImageIcon.image");
let C40;
const OffsetBase__dy = dart.privateName(ui, "OffsetBase._dy");
const OffsetBase__dx = dart.privateName(ui, "OffsetBase._dx");
let C46;
let C48;
let C47;
let C65;
let C66;
let C75;
const onPress$ = dart.privateName(backdrop, "_BackdropTitle.onPress");
const frontTitle$ = dart.privateName(backdrop, "_BackdropTitle.frontTitle");
const backTitle$ = dart.privateName(backdrop, "_BackdropTitle.backTitle");
backdrop._BackdropTitle = class _BackdropTitle extends transitions.AnimatedWidget {
  get onPress() {
    return this[onPress$];
  }
  set onPress(value) {
    super.onPress = value;
  }
  get frontTitle() {
    return this[frontTitle$];
  }
  set frontTitle(value) {
    super.frontTitle = value;
  }
  get backTitle() {
    return this[backTitle$];
  }
  set backTitle(value) {
    super.backTitle = value;
  }
  build(context) {
    let animation = new animations.CurvedAnimation.new({parent: AnimationOfdouble()._check(this.listenable), curve: C37 || CT.C37});
    return new text.DefaultTextStyle.new({style: theme.Theme.of(context).primaryTextTheme.title, softWrap: false, overflow: paragraph.TextOverflow.ellipsis, child: new basic.Row.new({children: JSArrayOfWidget().of([new basic.SizedBox.new({width: 72.0, child: new icon_button.IconButton.new({padding: C39 || CT.C39, onPressed: VoidTovoid()._check(this.onPress), icon: new basic.Stack.new({children: JSArrayOfWidget().of([new basic.Opacity.new({opacity: animation.value, child: C40 || CT.C40, $creationLocationd_0dea112b090073317d4: C42 || CT.C42}), new basic.FractionalTranslation.new({translation: new (TweenOfOffset()).new({begin: ui.Offset.zero, end: C46 || CT.C46}).evaluate(animation), child: C47 || CT.C47, $creationLocationd_0dea112b090073317d4: C49 || CT.C49})]), $creationLocationd_0dea112b090073317d4: C53 || CT.C53}), $creationLocationd_0dea112b090073317d4: C56 || CT.C56}), $creationLocationd_0dea112b090073317d4: C61 || CT.C61}), new basic.Stack.new({children: JSArrayOfWidget().of([new basic.Opacity.new({opacity: new animations.CurvedAnimation.new({parent: new animations.ReverseAnimation.new(animation), curve: C65 || CT.C65}).value, child: new basic.FractionalTranslation.new({translation: new (TweenOfOffset()).new({begin: ui.Offset.zero, end: C66 || CT.C66}).evaluate(animation), child: this.backTitle, $creationLocationd_0dea112b090073317d4: C67 || CT.C67}), $creationLocationd_0dea112b090073317d4: C71 || CT.C71}), new basic.Opacity.new({opacity: new animations.CurvedAnimation.new({parent: animation, curve: C65 || CT.C65}).value, child: new basic.FractionalTranslation.new({translation: new (TweenOfOffset()).new({begin: C75 || CT.C75, end: ui.Offset.zero}).evaluate(animation), child: this.frontTitle, $creationLocationd_0dea112b090073317d4: C76 || CT.C76}), $creationLocationd_0dea112b090073317d4: C80 || CT.C80})]), $creationLocationd_0dea112b090073317d4: C84 || CT.C84})]), $creationLocationd_0dea112b090073317d4: C87 || CT.C87}), $creationLocationd_0dea112b090073317d4: C90 || CT.C90});
  }
};
(backdrop._BackdropTitle.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let listenable = opts && 'listenable' in opts ? opts.listenable : null;
  let onPress = opts && 'onPress' in opts ? opts.onPress : null;
  let frontTitle = opts && 'frontTitle' in opts ? opts.frontTitle : null;
  let backTitle = opts && 'backTitle' in opts ? opts.backTitle : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[onPress$] = onPress;
  this[frontTitle$] = frontTitle;
  this[backTitle$] = backTitle;
  if (!(frontTitle != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/shrine/backdrop.dart", 118, 15, "frontTitle != null");
  if (!(backTitle != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/shrine/backdrop.dart", 119, 15, "backTitle != null");
  backdrop._BackdropTitle.__proto__.new.call(this, {key: key, listenable: listenable, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = backdrop._BackdropTitle.prototype;
dart.addTypeTests(backdrop._BackdropTitle);
dart.setMethodSignature(backdrop._BackdropTitle, () => ({
  __proto__: dart.getMethods(backdrop._BackdropTitle.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(backdrop._BackdropTitle, "package:flutter_gallery/demo/shrine/backdrop.dart");
dart.setFieldSignature(backdrop._BackdropTitle, () => ({
  __proto__: dart.getFields(backdrop._BackdropTitle.__proto__),
  onPress: dart.finalFieldType(core.Function),
  frontTitle: dart.finalFieldType(framework.Widget),
  backTitle: dart.finalFieldType(framework.Widget)
}));
const frontLayer$ = dart.privateName(backdrop, "Backdrop.frontLayer");
const backLayer$ = dart.privateName(backdrop, "Backdrop.backLayer");
const frontTitle$0 = dart.privateName(backdrop, "Backdrop.frontTitle");
const backTitle$0 = dart.privateName(backdrop, "Backdrop.backTitle");
const controller$0 = dart.privateName(backdrop, "Backdrop.controller");
backdrop.Backdrop = class Backdrop extends framework.StatefulWidget {
  get frontLayer() {
    return this[frontLayer$];
  }
  set frontLayer(value) {
    super.frontLayer = value;
  }
  get backLayer() {
    return this[backLayer$];
  }
  set backLayer(value) {
    super.backLayer = value;
  }
  get frontTitle() {
    return this[frontTitle$0];
  }
  set frontTitle(value) {
    super.frontTitle = value;
  }
  get backTitle() {
    return this[backTitle$0];
  }
  set backTitle(value) {
    super.backTitle = value;
  }
  get controller() {
    return this[controller$0];
  }
  set controller(value) {
    super.controller = value;
  }
  createState() {
    return new backdrop._BackdropState.new();
  }
};
(backdrop.Backdrop.new = function(opts) {
  let frontLayer = opts && 'frontLayer' in opts ? opts.frontLayer : null;
  let backLayer = opts && 'backLayer' in opts ? opts.backLayer : null;
  let frontTitle = opts && 'frontTitle' in opts ? opts.frontTitle : null;
  let backTitle = opts && 'backTitle' in opts ? opts.backTitle : null;
  let controller = opts && 'controller' in opts ? opts.controller : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[frontLayer$] = frontLayer;
  this[backLayer$] = backLayer;
  this[frontTitle$0] = frontTitle;
  this[backTitle$0] = backTitle;
  this[controller$0] = controller;
  if (!(frontLayer != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/shrine/backdrop.dart", 209, 15, "frontLayer != null");
  if (!(backLayer != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/shrine/backdrop.dart", 210, 15, "backLayer != null");
  if (!(frontTitle != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/shrine/backdrop.dart", 211, 15, "frontTitle != null");
  if (!(backTitle != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/shrine/backdrop.dart", 212, 15, "backTitle != null");
  if (!(controller != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/shrine/backdrop.dart", 213, 15, "controller != null");
  backdrop.Backdrop.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = backdrop.Backdrop.prototype;
dart.addTypeTests(backdrop.Backdrop);
dart.setMethodSignature(backdrop.Backdrop, () => ({
  __proto__: dart.getMethods(backdrop.Backdrop.__proto__),
  createState: dart.fnType(backdrop._BackdropState, [])
}));
dart.setLibraryUri(backdrop.Backdrop, "package:flutter_gallery/demo/shrine/backdrop.dart");
dart.setFieldSignature(backdrop.Backdrop, () => ({
  __proto__: dart.getFields(backdrop.Backdrop.__proto__),
  frontLayer: dart.finalFieldType(framework.Widget),
  backLayer: dart.finalFieldType(framework.Widget),
  frontTitle: dart.finalFieldType(framework.Widget),
  backTitle: dart.finalFieldType(framework.Widget),
  controller: dart.finalFieldType(animation_controller.AnimationController)
}));
const _backdropKey = dart.privateName(backdrop, "_backdropKey");
const _controller = dart.privateName(backdrop, "_controller");
const _layerAnimation = dart.privateName(backdrop, "_layerAnimation");
const _frontLayerVisible = dart.privateName(backdrop, "_frontLayerVisible");
const _toggleBackdropLayerVisibility = dart.privateName(backdrop, "_toggleBackdropLayerVisibility");
const _getLayerAnimation = dart.privateName(backdrop, "_getLayerAnimation");
const _buildStack = dart.privateName(backdrop, "_buildStack");
const Icon_textDirection = dart.privateName(icon, "Icon.textDirection");
const Icon_semanticLabel = dart.privateName(icon, "Icon.semanticLabel");
const Icon_color = dart.privateName(icon, "Icon.color");
const Icon_size = dart.privateName(icon, "Icon.size");
const IconData_matchTextDirection = dart.privateName(icon_data, "IconData.matchTextDirection");
const IconData_fontPackage = dart.privateName(icon_data, "IconData.fontPackage");
const IconData_fontFamily = dart.privateName(icon_data, "IconData.fontFamily");
const IconData_codePoint = dart.privateName(icon_data, "IconData.codePoint");
let C125;
const Icon_icon = dart.privateName(icon, "Icon.icon");
let C124;
let C133;
let C132;
const State_SingleTickerProviderStateMixin$36 = class State_SingleTickerProviderStateMixin extends framework.State$(backdrop.Backdrop) {};
(State_SingleTickerProviderStateMixin$36.new = function() {
  ticker_provider.SingleTickerProviderStateMixin$(backdrop.Backdrop)[dart.mixinNew].call(this);
  State_SingleTickerProviderStateMixin$36.__proto__.new.call(this);
}).prototype = State_SingleTickerProviderStateMixin$36.prototype;
dart.applyMixin(State_SingleTickerProviderStateMixin$36, ticker_provider.SingleTickerProviderStateMixin$(backdrop.Backdrop));
backdrop._BackdropState = class _BackdropState extends State_SingleTickerProviderStateMixin$36 {
  initState() {
    super.initState();
    this[_controller] = this.widget.controller;
  }
  dispose() {
    this[_controller].dispose();
    super.dispose();
  }
  get [_frontLayerVisible]() {
    let status = this[_controller].status;
    return dart.equals(status, animation.AnimationStatus.completed) || dart.equals(status, animation.AnimationStatus.forward);
  }
  [_toggleBackdropLayerVisibility]() {
    this.setState(dart.fn(() => {
      dart.test(this[_frontLayerVisible]) ? this[_controller].reverse() : this[_controller].forward();
    }, VoidToNull()));
  }
  [_getLayerAnimation](layerSize, layerTop) {
    let firstCurve = null;
    let secondCurve = null;
    let firstWeight = null;
    let secondWeight = null;
    let animation = null;
    if (dart.test(this[_frontLayerVisible])) {
      firstCurve = backdrop._kAccelerateCurve;
      secondCurve = backdrop._kDecelerateCurve;
      firstWeight = 0.24821;
      secondWeight = 1.0 - 0.24821;
      animation = new animations.CurvedAnimation.new({parent: this[_controller].view, curve: C37 || CT.C37});
    } else {
      firstCurve = backdrop._kDecelerateCurve.flipped;
      secondCurve = backdrop._kAccelerateCurve.flipped;
      firstWeight = 1.0 - 0.24821;
      secondWeight = 0.24821;
      animation = this[_controller].view;
    }
    return new (TweenSequenceOfRelativeRect()).new(JSArrayOfTweenSequenceItemOfRelativeRect().of([new (TweenSequenceItemOfRelativeRect()).new({tween: new transitions.RelativeRectTween.new({begin: new stack.RelativeRect.fromLTRB(0.0, layerTop, 0.0, dart.notNull(layerTop) - dart.notNull(layerSize.height)), end: new stack.RelativeRect.fromLTRB(0.0, dart.notNull(layerTop) * 0.379146, 0.0, (dart.notNull(layerTop) - dart.notNull(layerSize.height)) * 0.379146)}).chain(new tween.CurveTween.new({curve: firstCurve})), weight: firstWeight}), new (TweenSequenceItemOfRelativeRect()).new({tween: new transitions.RelativeRectTween.new({begin: new stack.RelativeRect.fromLTRB(0.0, dart.notNull(layerTop) * 0.379146, 0.0, (dart.notNull(layerTop) - dart.notNull(layerSize.height)) * 0.379146), end: stack.RelativeRect.fill}).chain(new tween.CurveTween.new({curve: secondCurve})), weight: secondWeight})])).animate(animation);
  }
  [_buildStack](context, constraints) {
    let layerSize = constraints.biggest;
    let layerTop = dart.notNull(layerSize.height) - 48;
    this[_layerAnimation] = this[_getLayerAnimation](layerSize, layerTop);
    return new basic.Stack.new({key: this[_backdropKey], children: JSArrayOfWidget().of([new backdrop._TappableWhileStatusIs.new(animation.AnimationStatus.dismissed, {controller: this[_controller], child: this.widget.backLayer, $creationLocationd_0dea112b090073317d4: C96 || CT.C96}), new transitions.PositionedTransition.new({rect: this[_layerAnimation], child: new backdrop._FrontLayer.new({onTap: dart.bind(this, _toggleBackdropLayerVisibility), child: new backdrop._TappableWhileStatusIs.new(animation.AnimationStatus.completed, {controller: this[_controller], child: this.widget.frontLayer, $creationLocationd_0dea112b090073317d4: C101 || CT.C101}), $creationLocationd_0dea112b090073317d4: C106 || CT.C106}), $creationLocationd_0dea112b090073317d4: C110 || CT.C110})]), $creationLocationd_0dea112b090073317d4: C114 || CT.C114});
  }
  build(context) {
    let appBar = new app_bar.AppBar.new({brightness: ui.Brightness.light, elevation: 0.0, titleSpacing: 0.0, title: new backdrop._BackdropTitle.new({listenable: this[_controller].view, onPress: dart.bind(this, _toggleBackdropLayerVisibility), frontTitle: this.widget.frontTitle, backTitle: this.widget.backTitle, $creationLocationd_0dea112b090073317d4: C118 || CT.C118}), actions: JSArrayOfWidget().of([new icon_button.IconButton.new({icon: C124 || CT.C124, onPressed: dart.fn(() => {
            navigator.Navigator.push(dart.void, context, new (MaterialPageRouteOfvoid()).new({builder: dart.fn(context => new login.LoginPage.new({$creationLocationd_0dea112b090073317d4: C126 || CT.C126}), BuildContextToLoginPage())}));
          }, VoidToNull()), $creationLocationd_0dea112b090073317d4: C128 || CT.C128}), new icon_button.IconButton.new({icon: C132 || CT.C132, onPressed: dart.fn(() => {
            navigator.Navigator.push(dart.void, context, new (MaterialPageRouteOfvoid()).new({builder: dart.fn(context => new login.LoginPage.new({$creationLocationd_0dea112b090073317d4: C134 || CT.C134}), BuildContextToLoginPage())}));
          }, VoidToNull()), $creationLocationd_0dea112b090073317d4: C135 || CT.C135})]), $creationLocationd_0dea112b090073317d4: C139 || CT.C139});
    return new scaffold.Scaffold.new({appBar: appBar, body: new layout_builder.LayoutBuilder.new({builder: dart.bind(this, _buildStack), $creationLocationd_0dea112b090073317d4: C146 || CT.C146}), $creationLocationd_0dea112b090073317d4: C149 || CT.C149});
  }
};
(backdrop._BackdropState.new = function() {
  this[_backdropKey] = GlobalKeyOfStateOfStatefulWidget().new({debugLabel: "Backdrop"});
  this[_controller] = null;
  this[_layerAnimation] = null;
  backdrop._BackdropState.__proto__.new.call(this);
  ;
}).prototype = backdrop._BackdropState.prototype;
dart.addTypeTests(backdrop._BackdropState);
dart.setMethodSignature(backdrop._BackdropState, () => ({
  __proto__: dart.getMethods(backdrop._BackdropState.__proto__),
  [_toggleBackdropLayerVisibility]: dart.fnType(dart.void, []),
  [_getLayerAnimation]: dart.fnType(animation.Animation$(stack.RelativeRect), [ui.Size, core.double]),
  [_buildStack]: dart.fnType(framework.Widget, [framework.BuildContext, box.BoxConstraints]),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setGetterSignature(backdrop._BackdropState, () => ({
  __proto__: dart.getGetters(backdrop._BackdropState.__proto__),
  [_frontLayerVisible]: core.bool
}));
dart.setLibraryUri(backdrop._BackdropState, "package:flutter_gallery/demo/shrine/backdrop.dart");
dart.setFieldSignature(backdrop._BackdropState, () => ({
  __proto__: dart.getFields(backdrop._BackdropState.__proto__),
  [_backdropKey]: dart.finalFieldType(framework.GlobalKey$(framework.State$(framework.StatefulWidget))),
  [_controller]: dart.fieldType(animation_controller.AnimationController),
  [_layerAnimation]: dart.fieldType(animation.Animation$(stack.RelativeRect))
}));
const Cubic_d = dart.privateName(curves, "Cubic.d");
const Cubic_c = dart.privateName(curves, "Cubic.c");
const Cubic_b = dart.privateName(curves, "Cubic.b");
const Cubic_a = dart.privateName(curves, "Cubic.a");
let C153;
let C154;
dart.defineLazy(backdrop, {
  /*backdrop._kAccelerateCurve*/get _kAccelerateCurve() {
    return C153 || CT.C153;
  },
  /*backdrop._kDecelerateCurve*/get _kDecelerateCurve() {
    return C154 || CT.C154;
  },
  /*backdrop._kPeakVelocityTime*/get _kPeakVelocityTime() {
    return 0.24821;
  },
  /*backdrop._kPeakVelocityProgress*/get _kPeakVelocityProgress() {
    return 0.379146;
  }
});
dart.trackLibraries("packages/flutter_gallery/demo/shrine/backdrop", {
  "package:flutter_gallery/demo/shrine/backdrop.dart": backdrop
}, {
}, '{"version":3,"sourceRoot":"","sources":["backdrop.dart"],"names":[],"mappings":"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","file":"backdrop.ddc.js"}');
// Exports:
exports.demo__shrine__backdrop = backdrop;

//# sourceMappingURL=backdrop.ddc.js.map
