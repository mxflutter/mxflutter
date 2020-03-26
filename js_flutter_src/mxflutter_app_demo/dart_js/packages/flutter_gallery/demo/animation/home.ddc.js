'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const math = dart_sdk.math;
const ui = dart_sdk.ui;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__rendering__animated_size = require('packages/flutter/src/rendering/animated_size');
const sliver = packages__flutter__src__rendering__animated_size.src__rendering__sliver;
const box = packages__flutter__src__rendering__animated_size.src__rendering__box;
const custom_layout = packages__flutter__src__rendering__animated_size.src__rendering__custom_layout;
const proxy_box = packages__flutter__src__rendering__animated_size.src__rendering__proxy_box;
const flex = packages__flutter__src__rendering__animated_size.src__rendering__flex;
const packages__flutter__src__foundation___bitfield_web = require('packages/flutter/src/foundation/_bitfield_web');
const diagnostics = packages__flutter__src__foundation___bitfield_web.src__foundation__diagnostics;
const change_notifier = packages__flutter__src__foundation___bitfield_web.src__foundation__change_notifier;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const sliver_persistent_header = packages__flutter__src__widgets__actions.src__widgets__sliver_persistent_header;
const layout_builder = packages__flutter__src__widgets__actions.src__widgets__layout_builder;
const transitions = packages__flutter__src__widgets__actions.src__widgets__transitions;
const scroll_physics = packages__flutter__src__widgets__actions.src__widgets__scroll_physics;
const scroll_controller = packages__flutter__src__widgets__actions.src__widgets__scroll_controller;
const page_view = packages__flutter__src__widgets__actions.src__widgets__page_view;
const navigator = packages__flutter__src__widgets__actions.src__widgets__navigator;
const scroll_notification = packages__flutter__src__widgets__actions.src__widgets__scroll_notification;
const gesture_detector = packages__flutter__src__widgets__actions.src__widgets__gesture_detector;
const container = packages__flutter__src__widgets__actions.src__widgets__container;
const media_query = packages__flutter__src__widgets__actions.src__widgets__media_query;
const notification_listener = packages__flutter__src__widgets__actions.src__widgets__notification_listener;
const scroll_view = packages__flutter__src__widgets__actions.src__widgets__scroll_view;
const icon_theme = packages__flutter__src__widgets__actions.src__widgets__icon_theme;
const icon_theme_data = packages__flutter__src__widgets__actions.src__widgets__icon_theme_data;
const safe_area = packages__flutter__src__widgets__actions.src__widgets__safe_area;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const alignment = packages__flutter__src__painting___network_image_web.src__painting__alignment;
const packages__flutter_gallery__demo__animation__widgets = require('packages/flutter_gallery/demo/animation/widgets');
const widgets = packages__flutter_gallery__demo__animation__widgets.demo__animation__widgets;
const packages__flutter_gallery__demo__animation__sections = require('packages/flutter_gallery/demo/animation/sections');
const sections = packages__flutter_gallery__demo__animation__sections.demo__animation__sections;
const packages__flutter__src__physics__clamped_simulation = require('packages/flutter/src/physics/clamped_simulation');
const spring_simulation = packages__flutter__src__physics__clamped_simulation.src__physics__spring_simulation;
const simulation = packages__flutter__src__physics__clamped_simulation.src__physics__simulation;
const packages__flutter__material = require('packages/flutter/material');
const scaffold = packages__flutter__material.src__material__scaffold;
const list_tile = packages__flutter__material.src__material__list_tile;
const icon_button = packages__flutter__material.src__material__icon_button;
const back_button = packages__flutter__material.src__material__back_button;
const packages__flutter__src__gestures__arena = require('packages/flutter/src/gestures/arena');
const tap = packages__flutter__src__gestures__arena.src__gestures__tap;
const packages__flutter__src__animation__animation = require('packages/flutter/src/animation/animation');
const curves = packages__flutter__src__animation__animation.src__animation__curves;
const home = Object.create(dart.library);
const $clamp = dartx.clamp;
const $length = dartx.length;
const $toDouble = dartx.toDouble;
const $abs = dartx.abs;
const $_get = dartx._get;
const $add = dartx.add;
const $_equals = dartx._equals;
const $map = dartx.map;
const $toList = dartx.toList;
let intTodouble = () => (intTodouble = dart.constFn(dart.fnType(core.double, [core.int])))();
let ListOfWidget = () => (ListOfWidget = dart.constFn(core.List$(framework.Widget)))();
let ValueNotifierOfdouble = () => (ValueNotifierOfdouble = dart.constFn(change_notifier.ValueNotifier$(core.double)))();
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let SectionDetailToSectionDetailView = () => (SectionDetailToSectionDetailView = dart.constFn(dart.fnType(widgets.SectionDetailView, [sections.SectionDetail])))();
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
let TapUpDetailsToNull = () => (TapUpDetailsToNull = dart.constFn(dart.fnType(core.Null, [tap.TapUpDetails])))();
let NotificationListenerOfScrollNotification = () => (NotificationListenerOfScrollNotification = dart.constFn(notification_listener.NotificationListener$(scroll_notification.ScrollNotification)))();
let ScrollNotificationTobool = () => (ScrollNotificationTobool = dart.constFn(dart.fnType(core.bool, [scroll_notification.ScrollNotification])))();
let SectionToColumn = () => (SectionToColumn = dart.constFn(dart.fnType(basic.Column, [sections.Section])))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C3() {
    return C3 = dart.constList([], framework.Widget);
  },
  get C27() {
    return C27 = dart.const({
      __proto__: scroll_physics.NeverScrollableScrollPhysics.prototype,
      [ScrollPhysics_parent]: null
    });
  },
  get C35() {
    return C35 = dart.const({
      __proto__: page_view.PageScrollPhysics.prototype,
      [ScrollPhysics_parent]: null
    });
  },
  get C113() {
    return C113 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4294967295.0
    });
  },
  get C112() {
    return C112 = dart.const({
      __proto__: icon_theme_data.IconThemeData.prototype,
      [IconThemeData_size]: null,
      [IconThemeData__opacity]: null,
      [IconThemeData_color]: C113 || CT.C113
    });
  },
  get C114() {
    return C114 = dart.const({
      __proto__: back_button.BackButtonIcon.prototype,
      [Widget_key]: null
    });
  },
  get C140() {
    return C140 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4281677410.0
    });
  },
  get C141() {
    return C141 = dart.const({
      __proto__: core.Duration.prototype,
      [Duration__duration]: 400000
    });
  },
  get C142() {
    return C142 = dart.const({
      __proto__: curves.Cubic.prototype,
      [Cubic_d]: 1,
      [Cubic_c]: 0.2,
      [Cubic_b]: 0,
      [Cubic_a]: 0.4
    });
  }
});
const _maxHeight = dart.privateName(home, "_maxHeight");
const _scrollFactor = dart.privateName(home, "_scrollFactor");
home._RenderStatusBarPaddingSliver = class _RenderStatusBarPaddingSliver extends sliver.RenderSliver {
  get maxHeight() {
    return this[_maxHeight];
  }
  set maxHeight(value) {
    if (!(this.maxHeight != null && dart.notNull(this.maxHeight) >= 0.0)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/animation/home.dart", 46, 12, "maxHeight != null && maxHeight >= 0.0");
    if (this[_maxHeight] == value) return;
    this[_maxHeight] = value;
    this.markNeedsLayout();
  }
  get scrollFactor() {
    return this[_scrollFactor];
  }
  set scrollFactor(value) {
    if (!(this.scrollFactor != null && dart.notNull(this.scrollFactor) >= 1.0)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/animation/home.dart", 58, 12, "scrollFactor != null && scrollFactor >= 1.0");
    if (this[_scrollFactor] == value) return;
    this[_scrollFactor] = value;
    this.markNeedsLayout();
  }
  performLayout() {
    let height = (dart.notNull(this.maxHeight) - dart.notNull(this.constraints.scrollOffset) / dart.notNull(this.scrollFactor))[$clamp](0.0, this.maxHeight);
    this.geometry = new sliver.SliverGeometry.new({paintExtent: math.min(core.double, height, this.constraints.remainingPaintExtent), scrollExtent: this.maxHeight, maxPaintExtent: this.maxHeight});
  }
};
(home._RenderStatusBarPaddingSliver.new = function(opts) {
  let maxHeight = opts && 'maxHeight' in opts ? opts.maxHeight : null;
  let scrollFactor = opts && 'scrollFactor' in opts ? opts.scrollFactor : null;
  if (!(maxHeight != null && dart.notNull(maxHeight) >= 0.0)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/animation/home.dart", 37, 15, "maxHeight != null && maxHeight >= 0.0");
  if (!(scrollFactor != null && dart.notNull(scrollFactor) >= 1.0)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/animation/home.dart", 38, 15, "scrollFactor != null && scrollFactor >= 1.0");
  this[_maxHeight] = maxHeight;
  this[_scrollFactor] = scrollFactor;
  home._RenderStatusBarPaddingSliver.__proto__.new.call(this);
  ;
}).prototype = home._RenderStatusBarPaddingSliver.prototype;
dart.addTypeTests(home._RenderStatusBarPaddingSliver);
dart.setMethodSignature(home._RenderStatusBarPaddingSliver, () => ({
  __proto__: dart.getMethods(home._RenderStatusBarPaddingSliver.__proto__),
  performLayout: dart.fnType(dart.void, [])
}));
dart.setGetterSignature(home._RenderStatusBarPaddingSliver, () => ({
  __proto__: dart.getGetters(home._RenderStatusBarPaddingSliver.__proto__),
  maxHeight: core.double,
  scrollFactor: core.double
}));
dart.setSetterSignature(home._RenderStatusBarPaddingSliver, () => ({
  __proto__: dart.getSetters(home._RenderStatusBarPaddingSliver.__proto__),
  maxHeight: core.double,
  scrollFactor: core.double
}));
dart.setLibraryUri(home._RenderStatusBarPaddingSliver, "package:flutter_gallery/demo/animation/home.dart");
dart.setFieldSignature(home._RenderStatusBarPaddingSliver, () => ({
  __proto__: dart.getFields(home._RenderStatusBarPaddingSliver.__proto__),
  [_maxHeight]: dart.fieldType(core.double),
  [_scrollFactor]: dart.fieldType(core.double)
}));
const maxHeight$ = dart.privateName(home, "_StatusBarPaddingSliver.maxHeight");
const scrollFactor$ = dart.privateName(home, "_StatusBarPaddingSliver.scrollFactor");
home._StatusBarPaddingSliver = class _StatusBarPaddingSliver extends framework.SingleChildRenderObjectWidget {
  get maxHeight() {
    return this[maxHeight$];
  }
  set maxHeight(value) {
    super.maxHeight = value;
  }
  get scrollFactor() {
    return this[scrollFactor$];
  }
  set scrollFactor(value) {
    super.scrollFactor = value;
  }
  createRenderObject(context) {
    return new home._RenderStatusBarPaddingSliver.new({maxHeight: this.maxHeight, scrollFactor: this.scrollFactor});
  }
  updateRenderObject(context, renderObject) {
    let t0;
    home._RenderStatusBarPaddingSliver._check(renderObject);
    t0 = renderObject;
    t0.maxHeight = this.maxHeight;
    t0.scrollFactor = this.scrollFactor;
    t0;
  }
  debugFillProperties(description) {
    super.debugFillProperties(description);
    description.add(new diagnostics.DoubleProperty.new("maxHeight", this.maxHeight));
    description.add(new diagnostics.DoubleProperty.new("scrollFactor", this.scrollFactor));
  }
};
(home._StatusBarPaddingSliver.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let maxHeight = opts && 'maxHeight' in opts ? opts.maxHeight : null;
  let scrollFactor = opts && 'scrollFactor' in opts ? opts.scrollFactor : 5;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[maxHeight$] = maxHeight;
  this[scrollFactor$] = scrollFactor;
  if (!(maxHeight != null && dart.notNull(maxHeight) >= 0.0)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/animation/home.dart", 81, 15, "maxHeight != null && maxHeight >= 0.0");
  if (!(scrollFactor != null && dart.notNull(scrollFactor) >= 1.0)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/animation/home.dart", 82, 15, "scrollFactor != null && scrollFactor >= 1.0");
  home._StatusBarPaddingSliver.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = home._StatusBarPaddingSliver.prototype;
dart.addTypeTests(home._StatusBarPaddingSliver);
dart.setMethodSignature(home._StatusBarPaddingSliver, () => ({
  __proto__: dart.getMethods(home._StatusBarPaddingSliver.__proto__),
  createRenderObject: dart.fnType(home._RenderStatusBarPaddingSliver, [framework.BuildContext])
}));
dart.setLibraryUri(home._StatusBarPaddingSliver, "package:flutter_gallery/demo/animation/home.dart");
dart.setFieldSignature(home._StatusBarPaddingSliver, () => ({
  __proto__: dart.getFields(home._StatusBarPaddingSliver.__proto__),
  maxHeight: dart.finalFieldType(core.double),
  scrollFactor: dart.finalFieldType(core.double)
}));
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
home._SliverAppBarDelegate = class _SliverAppBarDelegate extends sliver_persistent_header.SliverPersistentHeaderDelegate {
  get minExtent() {
    return this.minHeight;
  }
  get maxExtent() {
    return math.max(core.double, this.maxHeight, this.minHeight);
  }
  build(context, shrinkOffset, overlapsContent) {
    return new basic.SizedBox.expand({child: this.child, $creationLocationd_0dea112b090073317d4: C0 || CT.C0});
  }
  shouldRebuild(oldDelegate) {
    home._SliverAppBarDelegate._check(oldDelegate);
    return this.maxHeight != oldDelegate.maxHeight || this.minHeight != oldDelegate.minHeight || !dart.equals(this.child, oldDelegate.child);
  }
  toString() {
    return "_SliverAppBarDelegate";
  }
};
(home._SliverAppBarDelegate.new = function(opts) {
  let minHeight = opts && 'minHeight' in opts ? opts.minHeight : null;
  let maxHeight = opts && 'maxHeight' in opts ? opts.maxHeight : null;
  let child = opts && 'child' in opts ? opts.child : null;
  this.minHeight = minHeight;
  this.maxHeight = maxHeight;
  this.child = child;
  home._SliverAppBarDelegate.__proto__.new.call(this);
  ;
}).prototype = home._SliverAppBarDelegate.prototype;
dart.addTypeTests(home._SliverAppBarDelegate);
dart.setMethodSignature(home._SliverAppBarDelegate, () => ({
  __proto__: dart.getMethods(home._SliverAppBarDelegate.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext, core.double, core.bool]),
  shouldRebuild: dart.fnType(core.bool, [core.Object])
}));
dart.setGetterSignature(home._SliverAppBarDelegate, () => ({
  __proto__: dart.getGetters(home._SliverAppBarDelegate.__proto__),
  minExtent: core.double,
  maxExtent: core.double
}));
dart.setLibraryUri(home._SliverAppBarDelegate, "package:flutter_gallery/demo/animation/home.dart");
dart.setFieldSignature(home._SliverAppBarDelegate, () => ({
  __proto__: dart.getFields(home._SliverAppBarDelegate.__proto__),
  minHeight: dart.finalFieldType(core.double),
  maxHeight: dart.finalFieldType(core.double),
  child: dart.finalFieldType(framework.Widget)
}));
dart.defineExtensionMethods(home._SliverAppBarDelegate, ['toString']);
const _interpolateRect = dart.privateName(home, "_interpolateRect");
const _interpolatePoint = dart.privateName(home, "_interpolatePoint");
home._AllSectionsLayout = class _AllSectionsLayout extends custom_layout.MultiChildLayoutDelegate {
  [_interpolateRect](begin, end) {
    return ui.Rect.lerp(begin, end, this.tColumnToRow);
  }
  [_interpolatePoint](begin, end) {
    return ui.Offset.lerp(begin, end, this.tColumnToRow);
  }
  performLayout(size) {
    let columnCardX = dart.notNull(size.width) / 5.0;
    let columnCardWidth = dart.notNull(size.width) - columnCardX;
    let columnCardHeight = dart.notNull(size.height) / dart.notNull(this.cardCount);
    let rowCardWidth = size.width;
    let offset = this.translation.alongSize(size);
    let columnCardY = 0.0;
    let rowCardX = -(dart.notNull(this.selectedIndex) * dart.notNull(rowCardWidth));
    let columnTitleX = dart.notNull(size.width) / 10.0;
    let rowTitleWidth = dart.notNull(size.width) * ((1 + dart.notNull(this.tCollapsed)) / 2.25);
    let rowTitleX = (dart.notNull(size.width) - rowTitleWidth) / 2.0 - dart.notNull(this.selectedIndex) * rowTitleWidth;
    let rowIndicatorWidth = 40 + (1.0 - dart.notNull(this.tCollapsed)) * (rowTitleWidth - 40);
    let rowIndicatorX = (dart.notNull(size.width) - rowIndicatorWidth) / 2.0 - dart.notNull(this.selectedIndex) * rowIndicatorWidth;
    for (let index = 0; index < dart.notNull(this.cardCount); index = index + 1) {
      let columnCardRect = new ui.Rect.fromLTWH(columnCardX, columnCardY, columnCardWidth, columnCardHeight);
      let rowCardRect = new ui.Rect.fromLTWH(rowCardX, 0.0, rowCardWidth, size.height);
      let cardRect = this[_interpolateRect](columnCardRect, rowCardRect).shift(offset);
      let cardId = "card" + dart.str(index);
      if (dart.test(this.hasChild(cardId))) {
        this.layoutChild(cardId, new box.BoxConstraints.tight(cardRect.size));
        this.positionChild(cardId, cardRect.topLeft);
      }
      let titleSize = this.layoutChild("title" + dart.str(index), new box.BoxConstraints.loose(cardRect.size));
      let columnTitleY = dart.notNull(columnCardRect.centerLeft.dy) - dart.notNull(titleSize.height) / 2.0;
      let rowTitleY = dart.notNull(rowCardRect.centerLeft.dy) - dart.notNull(titleSize.height) / 2.0;
      let centeredRowTitleX = rowTitleX + (rowTitleWidth - dart.notNull(titleSize.width)) / 2.0;
      let columnTitleOrigin = new ui.Offset.new(columnTitleX, columnTitleY);
      let rowTitleOrigin = new ui.Offset.new(centeredRowTitleX, rowTitleY);
      let titleOrigin = this[_interpolatePoint](columnTitleOrigin, rowTitleOrigin);
      this.positionChild("title" + dart.str(index), titleOrigin['+'](offset));
      let indicatorSize = this.layoutChild("indicator" + dart.str(index), new box.BoxConstraints.loose(cardRect.size));
      let columnIndicatorX = dart.notNull(cardRect.centerRight.dx) - dart.notNull(indicatorSize.width) - 16.0;
      let columnIndicatorY = dart.notNull(cardRect.bottomRight.dy) - dart.notNull(indicatorSize.height) - 16.0;
      let columnIndicatorOrigin = new ui.Offset.new(columnIndicatorX, columnIndicatorY);
      let titleRect = new ui.Rect.fromPoints(titleOrigin, titleSize.bottomRight(titleOrigin));
      let centeredRowIndicatorX = rowIndicatorX + (rowIndicatorWidth - dart.notNull(indicatorSize.width)) / 2.0;
      let rowIndicatorY = dart.notNull(titleRect.bottomCenter.dy) + 16.0;
      let rowIndicatorOrigin = new ui.Offset.new(centeredRowIndicatorX, rowIndicatorY);
      let indicatorOrigin = this[_interpolatePoint](columnIndicatorOrigin, rowIndicatorOrigin);
      this.positionChild("indicator" + dart.str(index), indicatorOrigin['+'](offset));
      columnCardY = columnCardY + columnCardHeight;
      rowCardX = rowCardX + dart.notNull(rowCardWidth);
      rowTitleX = rowTitleX + rowTitleWidth;
      rowIndicatorX = rowIndicatorX + rowIndicatorWidth;
    }
  }
  shouldRelayout(oldDelegate) {
    home._AllSectionsLayout._check(oldDelegate);
    return this.tColumnToRow != oldDelegate.tColumnToRow || this.cardCount != oldDelegate.cardCount || this.selectedIndex != oldDelegate.selectedIndex;
  }
};
(home._AllSectionsLayout.new = function(opts) {
  let translation = opts && 'translation' in opts ? opts.translation : null;
  let tColumnToRow = opts && 'tColumnToRow' in opts ? opts.tColumnToRow : null;
  let tCollapsed = opts && 'tCollapsed' in opts ? opts.tCollapsed : null;
  let cardCount = opts && 'cardCount' in opts ? opts.cardCount : null;
  let selectedIndex = opts && 'selectedIndex' in opts ? opts.selectedIndex : null;
  this.translation = translation;
  this.tColumnToRow = tColumnToRow;
  this.tCollapsed = tCollapsed;
  this.cardCount = cardCount;
  this.selectedIndex = selectedIndex;
  home._AllSectionsLayout.__proto__.new.call(this);
  ;
}).prototype = home._AllSectionsLayout.prototype;
dart.addTypeTests(home._AllSectionsLayout);
dart.setMethodSignature(home._AllSectionsLayout, () => ({
  __proto__: dart.getMethods(home._AllSectionsLayout.__proto__),
  [_interpolateRect]: dart.fnType(ui.Rect, [ui.Rect, ui.Rect]),
  [_interpolatePoint]: dart.fnType(ui.Offset, [ui.Offset, ui.Offset]),
  performLayout: dart.fnType(dart.void, [ui.Size]),
  shouldRelayout: dart.fnType(core.bool, [core.Object])
}));
dart.setLibraryUri(home._AllSectionsLayout, "package:flutter_gallery/demo/animation/home.dart");
dart.setFieldSignature(home._AllSectionsLayout, () => ({
  __proto__: dart.getFields(home._AllSectionsLayout.__proto__),
  translation: dart.finalFieldType(alignment.Alignment),
  tColumnToRow: dart.finalFieldType(core.double),
  tCollapsed: dart.finalFieldType(core.double),
  cardCount: dart.finalFieldType(core.int),
  selectedIndex: dart.finalFieldType(core.double)
}));
let C3;
const _selectedIndexDelta = dart.privateName(home, "_selectedIndexDelta");
const _build = dart.privateName(home, "_build");
home._AllSectionsView = class _AllSectionsView extends transitions.AnimatedWidget {
  [_selectedIndexDelta](index) {
    return (index[$toDouble]() - dart.notNull(this.selectedIndex.value))[$abs]()[$clamp](0.0, 1.0);
  }
  [_build](context, constraints) {
    let size = constraints.biggest;
    let tColumnToRow = 1.0 - ((dart.notNull(size.height) - dart.notNull(this.midHeight)) / (dart.notNull(this.maxHeight) - dart.notNull(this.midHeight)))[$clamp](0.0, 1.0);
    let tCollapsed = 1.0 - ((dart.notNull(size.height) - dart.notNull(this.minHeight)) / (dart.notNull(this.midHeight) - dart.notNull(this.minHeight)))[$clamp](0.0, 1.0);
    const _indicatorOpacity = index => {
      return 1.0 - dart.notNull(this[_selectedIndexDelta](index)) * 0.5;
    };
    dart.fn(_indicatorOpacity, intTodouble());
    const _titleOpacity = index => {
      return 1.0 - dart.notNull(this[_selectedIndexDelta](index)) * tColumnToRow * 0.5;
    };
    dart.fn(_titleOpacity, intTodouble());
    const _titleScale = index => {
      return 1.0 - dart.notNull(this[_selectedIndexDelta](index)) * tColumnToRow * 0.15;
    };
    dart.fn(_titleScale, intTodouble());
    let children = ListOfWidget().from(this.sectionCards);
    for (let index = 0; index < dart.notNull(this.sections[$length]); index = index + 1) {
      let section = this.sections[$_get](index);
      children[$add](new basic.LayoutId.new({id: "title" + dart.str(index), child: new widgets.SectionTitle.new({section: section, scale: _titleScale(index), opacity: _titleOpacity(index), $creationLocationd_0dea112b090073317d4: C4 || CT.C4}), $creationLocationd_0dea112b090073317d4: C9 || CT.C9}));
    }
    for (let index = 0; index < dart.notNull(this.sections[$length]); index = index + 1) {
      children[$add](new basic.LayoutId.new({id: "indicator" + dart.str(index), child: new widgets.SectionIndicator.new({opacity: _indicatorOpacity(index), $creationLocationd_0dea112b090073317d4: C13 || CT.C13}), $creationLocationd_0dea112b090073317d4: C16 || CT.C16}));
    }
    return new basic.CustomMultiChildLayout.new({delegate: new home._AllSectionsLayout.new({translation: new alignment.Alignment.new((dart.notNull(this.selectedIndex.value) - dart.notNull(this.sectionIndex)) * 2.0 - 1.0, -1.0), tColumnToRow: tColumnToRow, tCollapsed: tCollapsed, cardCount: this.sections[$length], selectedIndex: this.selectedIndex.value}), children: children, $creationLocationd_0dea112b090073317d4: C20 || CT.C20});
  }
  build(context) {
    return new layout_builder.LayoutBuilder.new({builder: dart.bind(this, _build), $creationLocationd_0dea112b090073317d4: C24 || CT.C24});
  }
};
(home._AllSectionsView.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let sectionIndex = opts && 'sectionIndex' in opts ? opts.sectionIndex : null;
  let sections = opts && 'sections' in opts ? opts.sections : null;
  let selectedIndex = opts && 'selectedIndex' in opts ? opts.selectedIndex : null;
  let minHeight = opts && 'minHeight' in opts ? opts.minHeight : null;
  let midHeight = opts && 'midHeight' in opts ? opts.midHeight : null;
  let maxHeight = opts && 'maxHeight' in opts ? opts.maxHeight : null;
  let sectionCards = opts && 'sectionCards' in opts ? opts.sectionCards : C3 || CT.C3;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this.sectionIndex = sectionIndex;
  this.sections = sections;
  this.selectedIndex = selectedIndex;
  this.minHeight = minHeight;
  this.midHeight = midHeight;
  this.maxHeight = maxHeight;
  this.sectionCards = sectionCards;
  if (!(sections != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/animation/home.dart", 271, 15, "sections != null");
  if (!(sectionCards != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/animation/home.dart", 272, 15, "sectionCards != null");
  if (!(sectionCards[$length] == sections[$length])) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/animation/home.dart", 273, 15, "sectionCards.length == sections.length");
  if (!(dart.notNull(sectionIndex) >= 0 && dart.notNull(sectionIndex) < dart.notNull(sections[$length]))) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/animation/home.dart", 274, 15, "sectionIndex >= 0 && sectionIndex < sections.length");
  if (!(selectedIndex != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/animation/home.dart", 275, 15, "selectedIndex != null");
  if (!(dart.notNull(selectedIndex.value) >= 0.0 && dart.notNull(selectedIndex.value) < sections[$length][$toDouble]())) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/animation/home.dart", 276, 15, "selectedIndex.value >= 0.0 && selectedIndex.value < sections.length.toDouble()");
  home._AllSectionsView.__proto__.new.call(this, {key: key, listenable: selectedIndex, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = home._AllSectionsView.prototype;
dart.addTypeTests(home._AllSectionsView);
dart.setMethodSignature(home._AllSectionsView, () => ({
  __proto__: dart.getMethods(home._AllSectionsView.__proto__),
  [_selectedIndexDelta]: dart.fnType(core.double, [core.int]),
  [_build]: dart.fnType(framework.Widget, [framework.BuildContext, box.BoxConstraints]),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(home._AllSectionsView, "package:flutter_gallery/demo/animation/home.dart");
dart.setFieldSignature(home._AllSectionsView, () => ({
  __proto__: dart.getFields(home._AllSectionsView.__proto__),
  sectionIndex: dart.finalFieldType(core.int),
  sections: dart.finalFieldType(core.List$(sections.Section)),
  selectedIndex: dart.finalFieldType(change_notifier.ValueNotifier$(core.double)),
  minHeight: dart.finalFieldType(core.double),
  midHeight: dart.finalFieldType(core.double),
  maxHeight: dart.finalFieldType(core.double),
  sectionCards: dart.finalFieldType(core.List$(framework.Widget))
}));
const _toMidScrollOffsetSimulation = dart.privateName(home, "_toMidScrollOffsetSimulation");
const _toZeroScrollOffsetSimulation = dart.privateName(home, "_toZeroScrollOffsetSimulation");
const midScrollOffset$ = dart.privateName(home, "_SnappingScrollPhysics.midScrollOffset");
home._SnappingScrollPhysics = class _SnappingScrollPhysics extends scroll_physics.ClampingScrollPhysics {
  get midScrollOffset() {
    return this[midScrollOffset$];
  }
  set midScrollOffset(value) {
    super.midScrollOffset = value;
  }
  applyTo(ancestor) {
    return new home._SnappingScrollPhysics.new({parent: this.buildParent(ancestor), midScrollOffset: this.midScrollOffset});
  }
  [_toMidScrollOffsetSimulation](offset, dragVelocity) {
    let velocity = math.max(core.double, dragVelocity, this.minFlingVelocity);
    return new spring_simulation.ScrollSpringSimulation.new(this.spring, offset, this.midScrollOffset, velocity, {tolerance: this.tolerance});
  }
  [_toZeroScrollOffsetSimulation](offset, dragVelocity) {
    let velocity = math.max(core.double, dragVelocity, this.minFlingVelocity);
    return new spring_simulation.ScrollSpringSimulation.new(this.spring, offset, 0.0, velocity, {tolerance: this.tolerance});
  }
  createBallisticSimulation(position, dragVelocity) {
    let simulation = super.createBallisticSimulation(position, dragVelocity);
    let offset = position.pixels;
    if (simulation != null) {
      let simulationEnd = simulation.x(1 / 0);
      if (dart.notNull(simulationEnd) >= dart.notNull(this.midScrollOffset)) return simulation;
      if (dart.notNull(dragVelocity) > 0.0) return this[_toMidScrollOffsetSimulation](offset, dragVelocity);
      if (dart.notNull(dragVelocity) < 0.0) return this[_toZeroScrollOffsetSimulation](offset, dragVelocity);
    } else {
      let snapThreshold = dart.notNull(this.midScrollOffset) / 2.0;
      if (dart.notNull(offset) >= snapThreshold && dart.notNull(offset) < dart.notNull(this.midScrollOffset)) return this[_toMidScrollOffsetSimulation](offset, dragVelocity);
      if (dart.notNull(offset) > 0.0 && dart.notNull(offset) < snapThreshold) return this[_toZeroScrollOffsetSimulation](offset, dragVelocity);
    }
    return simulation;
  }
};
(home._SnappingScrollPhysics.new = function(opts) {
  let parent = opts && 'parent' in opts ? opts.parent : null;
  let midScrollOffset = opts && 'midScrollOffset' in opts ? opts.midScrollOffset : null;
  this[midScrollOffset$] = midScrollOffset;
  if (!(midScrollOffset != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/animation/home.dart", 369, 15, "midScrollOffset != null");
  home._SnappingScrollPhysics.__proto__.new.call(this, {parent: parent});
  ;
}).prototype = home._SnappingScrollPhysics.prototype;
dart.addTypeTests(home._SnappingScrollPhysics);
dart.setMethodSignature(home._SnappingScrollPhysics, () => ({
  __proto__: dart.getMethods(home._SnappingScrollPhysics.__proto__),
  applyTo: dart.fnType(home._SnappingScrollPhysics, [scroll_physics.ScrollPhysics]),
  [_toMidScrollOffsetSimulation]: dart.fnType(simulation.Simulation, [core.double, core.double]),
  [_toZeroScrollOffsetSimulation]: dart.fnType(simulation.Simulation, [core.double, core.double])
}));
dart.setLibraryUri(home._SnappingScrollPhysics, "package:flutter_gallery/demo/animation/home.dart");
dart.setFieldSignature(home._SnappingScrollPhysics, () => ({
  __proto__: dart.getFields(home._SnappingScrollPhysics.__proto__),
  midScrollOffset: dart.finalFieldType(core.double)
}));
home.AnimationDemoHome = class AnimationDemoHome extends framework.StatefulWidget {
  createState() {
    return new home._AnimationDemoHomeState.new();
  }
};
(home.AnimationDemoHome.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  home.AnimationDemoHome.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = home.AnimationDemoHome.prototype;
dart.addTypeTests(home.AnimationDemoHome);
dart.setMethodSignature(home.AnimationDemoHome, () => ({
  __proto__: dart.getMethods(home.AnimationDemoHome.__proto__),
  createState: dart.fnType(home._AnimationDemoHomeState, [])
}));
dart.setLibraryUri(home.AnimationDemoHome, "package:flutter_gallery/demo/animation/home.dart");
dart.defineLazy(home.AnimationDemoHome, {
  /*home.AnimationDemoHome.routeName*/get routeName() {
    return "/animation";
  }
});
const _scrollController = dart.privateName(home, "_scrollController");
const _headingPageController = dart.privateName(home, "_headingPageController");
const _detailsPageController = dart.privateName(home, "_detailsPageController");
const _headingScrollPhysics = dart.privateName(home, "_headingScrollPhysics");
const ScrollPhysics_parent = dart.privateName(scroll_physics, "ScrollPhysics.parent");
let C27;
const _buildBody = dart.privateName(home, "_buildBody");
const _handleBackButton = dart.privateName(home, "_handleBackButton");
let C35;
const _handleScrollNotification = dart.privateName(home, "_handleScrollNotification");
const _maybeScroll = dart.privateName(home, "_maybeScroll");
const _handlePageNotification = dart.privateName(home, "_handlePageNotification");
const _detailItemsFor = dart.privateName(home, "_detailItemsFor");
const _allHeadingItems = dart.privateName(home, "_allHeadingItems");
const IconThemeData_size = dart.privateName(icon_theme_data, "IconThemeData.size");
const IconThemeData__opacity = dart.privateName(icon_theme_data, "IconThemeData._opacity");
const Color_value = dart.privateName(ui, "Color.value");
let C113;
const IconThemeData_color = dart.privateName(icon_theme_data, "IconThemeData.color");
let C112;
const Widget_key = dart.privateName(framework, "Widget.key");
let C114;
home._AnimationDemoHomeState = class _AnimationDemoHomeState extends framework.State$(home.AnimationDemoHome) {
  build(context) {
    return new scaffold.Scaffold.new({backgroundColor: home._kAppBackgroundColor, body: new basic.Builder.new({builder: dart.bind(this, _buildBody), $creationLocationd_0dea112b090073317d4: C28 || CT.C28}), $creationLocationd_0dea112b090073317d4: C31 || CT.C31});
  }
  [_handleBackButton](midScrollOffset) {
    if (dart.notNull(this[_scrollController].offset) >= dart.notNull(midScrollOffset))
      this[_scrollController].animateTo(0.0, {curve: home._kScrollCurve, duration: home._kScrollDuration});
    else
      navigator.Navigator.maybePop(core.Object, this.context);
  }
  [_handleScrollNotification](notification, midScrollOffset) {
    if (notification.depth === 0 && scroll_notification.ScrollUpdateNotification.is(notification)) {
      let physics = dart.notNull(this[_scrollController].position.pixels) >= dart.notNull(midScrollOffset) ? C35 || CT.C35 : C27 || CT.C27;
      if (!physics[$_equals](this[_headingScrollPhysics])) {
        this.setState(dart.fn(() => {
          this[_headingScrollPhysics] = physics;
        }, VoidToNull()));
      }
    }
    return false;
  }
  [_maybeScroll](midScrollOffset, pageIndex, xOffset) {
    if (dart.notNull(this[_scrollController].offset) < dart.notNull(midScrollOffset)) {
      this[_headingPageController].animateToPage(pageIndex, {curve: home._kScrollCurve, duration: home._kScrollDuration});
      this[_scrollController].animateTo(midScrollOffset, {curve: home._kScrollCurve, duration: home._kScrollDuration});
    } else {
      let centerX = dart.notNull(this[_headingPageController].position.viewportDimension) / 2.0;
      let newPageIndex = dart.notNull(xOffset) > centerX ? dart.notNull(pageIndex) + 1 : dart.notNull(pageIndex) - 1;
      this[_headingPageController].animateToPage(newPageIndex, {curve: home._kScrollCurve, duration: home._kScrollDuration});
    }
  }
  [_handlePageNotification](notification, leader, follower) {
    if (notification.depth === 0 && scroll_notification.ScrollUpdateNotification.is(notification)) {
      this.selectedIndex.value = leader.page;
      if (follower.page != leader.page) follower.position.jumpToWithoutSettling(leader.position.pixels);
    }
    return false;
  }
  [_detailItemsFor](section) {
    let detailItems = section.details[$map](framework.Widget, dart.fn(detail => new widgets.SectionDetailView.new({detail: detail, $creationLocationd_0dea112b090073317d4: C36 || CT.C36}), SectionDetailToSectionDetailView()));
    return list_tile.ListTile.divideTiles({context: this.context, tiles: detailItems});
  }
  [_allHeadingItems](maxHeight, midScrollOffset) {
    let sectionCards = JSArrayOfWidget().of([]);
    for (let index = 0; index < dart.notNull(sections.allSections[$length]); index = index + 1) {
      sectionCards[$add](new basic.LayoutId.new({id: "card" + dart.str(index), child: new gesture_detector.GestureDetector.new({behavior: proxy_box.HitTestBehavior.opaque, child: new widgets.SectionCard.new({section: sections.allSections[$_get](index), $creationLocationd_0dea112b090073317d4: C39 || CT.C39}), onTapUp: dart.fn(details => {
            let xOffset = details.globalPosition.dx;
            this.setState(dart.fn(() => {
              this[_maybeScroll](midScrollOffset, index, xOffset);
            }, VoidToNull()));
          }, TapUpDetailsToNull()), $creationLocationd_0dea112b090073317d4: C42 || CT.C42}), $creationLocationd_0dea112b090073317d4: C47 || CT.C47}));
    }
    let headings = JSArrayOfWidget().of([]);
    for (let index = 0; index < dart.notNull(sections.allSections[$length]); index = index + 1) {
      headings[$add](new container.Container.new({color: home._kAppBackgroundColor, child: new basic.ClipRect.new({child: new home._AllSectionsView.new({sectionIndex: index, sections: sections.allSections, selectedIndex: this.selectedIndex, minHeight: 90, midHeight: 256, maxHeight: maxHeight, sectionCards: sectionCards, $creationLocationd_0dea112b090073317d4: C51 || CT.C51}), $creationLocationd_0dea112b090073317d4: C60 || CT.C60}), $creationLocationd_0dea112b090073317d4: C63 || CT.C63}));
    }
    return headings;
  }
  [_buildBody](context) {
    let mediaQueryData = media_query.MediaQuery.of(context);
    let statusBarHeight = mediaQueryData.padding.top;
    let screenHeight = mediaQueryData.size.height;
    let appBarMaxHeight = dart.notNull(screenHeight) - dart.notNull(statusBarHeight);
    let appBarMidScrollOffset = dart.notNull(statusBarHeight) + appBarMaxHeight - 256;
    return new basic.SizedBox.expand({child: new basic.Stack.new({children: JSArrayOfWidget().of([new (NotificationListenerOfScrollNotification()).new({onNotification: dart.fn(notification => this[_handleScrollNotification](notification, appBarMidScrollOffset), ScrollNotificationTobool()), child: new scroll_view.CustomScrollView.new({controller: this[_scrollController], physics: new home._SnappingScrollPhysics.new({midScrollOffset: appBarMidScrollOffset}), slivers: JSArrayOfWidget().of([new home._StatusBarPaddingSliver.new({maxHeight: statusBarHeight, scrollFactor: 7.0, $creationLocationd_0dea112b090073317d4: C67 || CT.C67}), new sliver_persistent_header.SliverPersistentHeader.new({pinned: true, delegate: new home._SliverAppBarDelegate.new({minHeight: 90, maxHeight: appBarMaxHeight, child: new (NotificationListenerOfScrollNotification()).new({onNotification: dart.fn(notification => this[_handlePageNotification](notification, this[_headingPageController], this[_detailsPageController]), ScrollNotificationTobool()), child: new page_view.PageView.new({physics: this[_headingScrollPhysics], controller: this[_headingPageController], children: ListOfWidget()._check(this[_allHeadingItems](appBarMaxHeight, appBarMidScrollOffset)), $creationLocationd_0dea112b090073317d4: C71 || CT.C71}), $creationLocationd_0dea112b090073317d4: C76 || CT.C76})}), $creationLocationd_0dea112b090073317d4: C80 || CT.C80}), new basic.SliverToBoxAdapter.new({child: new basic.SizedBox.new({height: 610.0, child: new (NotificationListenerOfScrollNotification()).new({onNotification: dart.fn(notification => this[_handlePageNotification](notification, this[_detailsPageController], this[_headingPageController]), ScrollNotificationTobool()), child: new page_view.PageView.new({controller: this[_detailsPageController], children: sections.allSections[$map](framework.Widget, dart.fn(section => new basic.Column.new({crossAxisAlignment: flex.CrossAxisAlignment.stretch, children: this[_detailItemsFor](section)[$toList](), $creationLocationd_0dea112b090073317d4: C84 || CT.C84}), SectionToColumn()))[$toList](), $creationLocationd_0dea112b090073317d4: C88 || CT.C88}), $creationLocationd_0dea112b090073317d4: C92 || CT.C92}), $creationLocationd_0dea112b090073317d4: C96 || CT.C96}), $creationLocationd_0dea112b090073317d4: C100 || CT.C100})]), $creationLocationd_0dea112b090073317d4: C103 || CT.C103}), $creationLocationd_0dea112b090073317d4: C108 || CT.C108}), new basic.Positioned.new({top: statusBarHeight, left: 0.0, child: new icon_theme.IconTheme.new({data: C112 || CT.C112, child: new safe_area.SafeArea.new({top: false, bottom: false, child: new icon_button.IconButton.new({icon: C114 || CT.C114, tooltip: "Back", onPressed: dart.fn(() => {
                    this[_handleBackButton](appBarMidScrollOffset);
                  }, VoidToNull()), $creationLocationd_0dea112b090073317d4: C115 || CT.C115}), $creationLocationd_0dea112b090073317d4: C120 || CT.C120}), $creationLocationd_0dea112b090073317d4: C125 || CT.C125}), $creationLocationd_0dea112b090073317d4: C129 || CT.C129})]), $creationLocationd_0dea112b090073317d4: C134 || CT.C134}), $creationLocationd_0dea112b090073317d4: C137 || CT.C137});
  }
};
(home._AnimationDemoHomeState.new = function() {
  this[_scrollController] = new scroll_controller.ScrollController.new();
  this[_headingPageController] = new page_view.PageController.new();
  this[_detailsPageController] = new page_view.PageController.new();
  this[_headingScrollPhysics] = C27 || CT.C27;
  this.selectedIndex = new (ValueNotifierOfdouble()).new(0.0);
  home._AnimationDemoHomeState.__proto__.new.call(this);
  ;
}).prototype = home._AnimationDemoHomeState.prototype;
dart.addTypeTests(home._AnimationDemoHomeState);
dart.setMethodSignature(home._AnimationDemoHomeState, () => ({
  __proto__: dart.getMethods(home._AnimationDemoHomeState.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext]),
  [_handleBackButton]: dart.fnType(dart.void, [core.double]),
  [_handleScrollNotification]: dart.fnType(core.bool, [scroll_notification.ScrollNotification, core.double]),
  [_maybeScroll]: dart.fnType(dart.void, [core.double, core.int, core.double]),
  [_handlePageNotification]: dart.fnType(core.bool, [scroll_notification.ScrollNotification, page_view.PageController, page_view.PageController]),
  [_detailItemsFor]: dart.fnType(core.Iterable$(framework.Widget), [sections.Section]),
  [_allHeadingItems]: dart.fnType(core.Iterable$(framework.Widget), [core.double, core.double]),
  [_buildBody]: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(home._AnimationDemoHomeState, "package:flutter_gallery/demo/animation/home.dart");
dart.setFieldSignature(home._AnimationDemoHomeState, () => ({
  __proto__: dart.getFields(home._AnimationDemoHomeState.__proto__),
  [_scrollController]: dart.finalFieldType(scroll_controller.ScrollController),
  [_headingPageController]: dart.finalFieldType(page_view.PageController),
  [_detailsPageController]: dart.finalFieldType(page_view.PageController),
  [_headingScrollPhysics]: dart.fieldType(scroll_physics.ScrollPhysics),
  selectedIndex: dart.fieldType(change_notifier.ValueNotifier$(core.double))
}));
let C140;
const Duration__duration = dart.privateName(core, "Duration._duration");
let C141;
const Cubic_d = dart.privateName(curves, "Cubic.d");
const Cubic_c = dart.privateName(curves, "Cubic.c");
const Cubic_b = dart.privateName(curves, "Cubic.b");
const Cubic_a = dart.privateName(curves, "Cubic.a");
let C142;
dart.defineLazy(home, {
  /*home._kAppBackgroundColor*/get _kAppBackgroundColor() {
    return C140 || CT.C140;
  },
  /*home._kScrollDuration*/get _kScrollDuration() {
    return C141 || CT.C141;
  },
  /*home._kScrollCurve*/get _kScrollCurve() {
    return C142 || CT.C142;
  },
  /*home._kAppBarMinHeight*/get _kAppBarMinHeight() {
    return 90;
  },
  /*home._kAppBarMidHeight*/get _kAppBarMidHeight() {
    return 256;
  }
});
dart.trackLibraries("packages/flutter_gallery/demo/animation/home", {
  "package:flutter_gallery/demo/animation/home.dart": home
}, {
}, '{"version":3,"sourceRoot":"","sources":["home.dart"],"names":[],"mappings":"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","file":"home.ddc.js"}');
// Exports:
exports.demo__animation__home = home;

//# sourceMappingURL=home.ddc.js.map
