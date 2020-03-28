//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

let { DartClass, FlutterWidget } = require("./js_flutter_basic_types.js");

class Center extends FlutterWidget {
  constructor({ key, widthFactor, heightFactor, child } = {}) {
    super("Center");

    this.key = key;
    this.widthFactor = widthFactor;
    this.heightFactor = heightFactor;
    this.child = child;
  }
}

Center.new = function(arg) {
  return new Center(arg);
};

class Container extends FlutterWidget {
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
    child
  } = {}) {
    super("Container");

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
  }
}

Container.new = function(arg) {
  return new Container(arg);
};

class Padding extends DartClass {
  constructor({ key, padding, child } = {}) {
    super();

    this.key = key;
    this.padding = padding;
    this.child = child;
  }
}

Padding.new = function(arg) {
  return new Padding(arg);
};

class Align extends FlutterWidget {
  constructor({ key, alignment, widthFactor, heightFactor, child } = {}) {
    super();

    this.key = key;
    this.alignment = alignment;
    this.widthFactor = widthFactor;
    this.heightFactor = heightFactor;
    this.child = child;
  }
}

Align.new = function(arg) {
  return new Align(arg);
};

class FittedBox extends FlutterWidget {
  constructor({ key, fit, alignment, child } = {}) {
    super();

    this.key = key;
    this.fit = fit;
    this.alignment = alignment;
    this.child = child;
  }
}

FittedBox.new = function(arg) {
  return new FittedBox(arg);
};

class AspectRatio extends FlutterWidget {
  constructor({ key, aspectRatio, child } = {}) {
    super();

    this.key = key;
    this.aspectRatio = aspectRatio;
    this.child = child;
  }
}

AspectRatio.new = function(arg) {
  return new AspectRatio(arg);
};

class ConstrainedBox extends FlutterWidget {
  constructor({ key, constraints, child } = {}) {
    super();

    this.key = key;
    this.constraints = constraints;
    this.child = child;
  }
}

ConstrainedBox.new = function(arg) {
  return new ConstrainedBox(arg);
};

class Baseline extends FlutterWidget {
  constructor({ key, baseline, baselineType, child } = {}) {
    super();

    this.key = key;
    this.baseline = baseline;
    this.baselineType = baselineType;
    this.child = child;
  }
}

Baseline.new = function(arg) {
  return new Baseline(arg);
};

class FractionallySizedBox extends FlutterWidget {
  constructor({ key, alignment, widthFactor, heightFactor, child } = {}) {
    super();

    this.key = key;
    this.alignment = alignment;
    this.widthFactor = widthFactor;
    this.heightFactor = heightFactor;
    this.child = child;
  }
}

FractionallySizedBox.new = function(arg) {
  return new FractionallySizedBox(arg);
};

class IntrinsicHeight extends FlutterWidget {
  constructor({ key, child } = {}) {
    super();

    this.key = key;
    this.child = child;
  }
}

IntrinsicHeight.new = function(arg) {
  return new IntrinsicHeight(arg);
};

class IntrinsicWidth extends FlutterWidget {
  constructor({ key, stepWidth, stepHeight, child } = {}) {
    super();

    this.key = key;
    this.stepWidth = stepWidth;
    this.stepHeight = stepHeight;
    this.child = child;
  }
}

IntrinsicWidth.new = function(arg) {
  return new IntrinsicWidth(arg);
};

class LimitedBox extends FlutterWidget {
  constructor({ key, maxWidth, maxHeight, child } = {}) {
    super();

    this.key = key;
    this.maxWidth = maxWidth;
    this.maxHeight = maxHeight;
    this.child = child;
  }
}

LimitedBox.new = function(arg) {
  return new LimitedBox(arg);
};

class Offstage extends FlutterWidget {
  constructor({ key, offstage, child } = {}) {
    super();

    this.key = key;
    this.offstage = offstage;
    this.child = child;
  }
}

Offstage.new = function(arg) {
  return new Offstage(arg);
};

class OverflowBox extends FlutterWidget {
  constructor({
    key,
    alignment,
    minWidth,
    maxWidth,
    minHeight,
    maxHeight,
    child
  } = {}) {
    super();

    this.key = key;
    this.alignment = alignment;
    this.minWidth = minWidth;
    this.maxWidth = maxWidth;
    this.minHeight = minHeight;
    this.maxHeight = maxHeight;
    this.child = child;
  }
}

OverflowBox.new = function(arg) {
  return new OverflowBox(arg);
};

class SizedBox extends FlutterWidget {
  constructor({ key, width, height, child } = {}) {
    super();

    this.key = key;
    this.width = width;
    this.height = height;
    this.child = child;
  }
}

SizedBox.new = function(arg) {
  return new SizedBox(arg);
};

class SizedOverflowBox extends FlutterWidget {
  constructor({ key, size, alignment, child } = {}) {
    super();

    this.key = key;
    this.size = size;
    this.alignment = alignment;
    this.child = child;
  }
}

SizedOverflowBox.new = function(arg) {
  return new SizedOverflowBox(arg);
};

class Transform extends FlutterWidget {
  constructor({
    key,
    transform,
    origin,
    alignment,
    transformHitTests,
    child
  } = {}) {
    super();

    this.key = key;
    this.transform = transform;
    this.origin = origin;
    this.alignment = alignment;
    this.transformHitTests = transformHitTests;
    this.child = child;
  }
}

Transform.new = function(arg) {
  return new Transform(arg);
};

class CustomSingleChildLayout extends FlutterWidget {
  constructor({ key, delegate, child } = {}) {
    super();

    this.key = key;
    this.delegate = delegate;
    this.child = child;
  }
}

CustomSingleChildLayout.new = function(arg) {
  return new CustomSingleChildLayout(arg);
};

class Row extends FlutterWidget {
  constructor({
    key,
    mainAxisAlignment,
    mainAxisSize,
    crossAxisAlignment,
    textDirection,
    verticalDirection,
    textBaseline,
    children
  } = {}) {
    super();

    this.key = key;
    this.mainAxisAlignment = mainAxisAlignment;
    this.mainAxisSize = mainAxisSize;
    this.crossAxisAlignment = crossAxisAlignment;
    this.textDirection = textDirection;
    this.verticalDirection = verticalDirection;
    this.textBaseline = textBaseline;
    this.children = children;
  }
}

Row.new = function(arg) {
  return new Row(arg);
};

class Column extends FlutterWidget {
  constructor({
    key,
    mainAxisAlignment,
    mainAxisSize,
    crossAxisAlignment,
    textDirection,
    verticalDirection,
    textBaseline,
    children
  } = {}) {
    super();

    this.key = key;
    this.mainAxisAlignment = mainAxisAlignment;
    this.mainAxisSize = mainAxisSize;
    this.crossAxisAlignment = crossAxisAlignment;
    this.textDirection = textDirection;
    this.verticalDirection = verticalDirection;
    this.textBaseline = textBaseline;
    this.children = children;
  }
}

Column.new = function(arg) {
  return new Column(arg);
};

class Stack extends FlutterWidget {
  constructor({ key, alignment, textDirection, fit, overflow, children } = {}) {
    super();

    this.key = key;
    this.alignment = alignment;
    this.textDirection = textDirection;
    this.fit = fit;
    this.overflow = overflow;
    this.children = children;
  }
}

Stack.new = function(arg) {
  return new Stack(arg);
};

class IndexedStack extends FlutterWidget {
  constructor({ key, alignment, textDirection, sizing, index, children } = {}) {
    super();

    this.key = key;
    this.alignment = alignment;
    this.textDirection = textDirection;
    this.sizing = sizing;
    this.index = index;
    this.children = children;
  }
}

IndexedStack.new = function(arg) {
  return new IndexedStack(arg);
};

class Flow extends FlutterWidget {
  constructor({ key, delegate, children } = {}) {
    super();

    this.key = key;
    this.delegate = delegate;
    this.children = children;
  }
}

Flow.new = function(arg) {
  return new Flow(arg);
};

class Table extends FlutterWidget {
  constructor({
    key,
    children,
    columnWidths,
    defaultColumnWidth,
    textDirection,
    border,
    defaultVerticalAlignment,
    textBaseline
  } = {}) {
    super();

    this.key = key;
    this.children = children;

    // 单独处理columnWidths
    if (columnWidths  && columnWidths._map) {
      var columnWidthsMap = columnWidths._map;
      var newMap = {};
      columnWidthsMap.forEach(function(value, key) {
        newMap[key] = value;
      });
      this.columnWidths = newMap;
    }
    
    this.defaultColumnWidth = defaultColumnWidth;
    this.textDirection = textDirection;
    this.border = border;
    this.defaultVerticalAlignment = defaultVerticalAlignment;
    this.textBaseline = textBaseline;
  }
}

Table.new = function(arg) {
  return new Table(arg);
};

class Wrap extends FlutterWidget {
  constructor({
    key,
    direction,
    alignment,
    spacing,
    runAlignment,
    runSpacing,
    crossAxisAlignment,
    textDirection,
    verticalDirection,
    children
  } = {}) {
    super();

    this.key = key;
    this.direction = direction;
    this.alignment = alignment;
    this.spacing = spacing;
    this.runAlignment = runAlignment;
    this.runSpacing = runSpacing;
    this.crossAxisAlignment = crossAxisAlignment;
    this.textDirection = textDirection;
    this.verticalDirection = verticalDirection;
    this.children = children;
  }
}

Wrap.new = function(arg) {
  return new Wrap(arg);
};

class ListBody extends FlutterWidget {
  constructor({ key, mainAxis, reverse, children } = {}) {
    super();

    this.key = key;
    this.mainAxis = mainAxis;
    this.reverse = reverse;
    this.children = children;
  }
}

ListBody.new = function(arg) {
  return new ListBody(arg);
};

class CustomMultiChildLayout extends FlutterWidget {
  constructor({ key, delegate, children } = {}) {
    super();

    this.key = key;
    this.delegate = delegate;
    this.children = children;
  }
}

CustomMultiChildLayout.new = function(arg) {
  return new CustomMultiChildLayout(arg);
};

class ListView extends FlutterWidget {
  constructor({
    key,
    scrollDirection,
    reverse,
    controller,
    primary,
    physics,
    shrinkWrap,
    padding,
    itemExtent,
    addAutomaticKeepAlives,
    addRepaintBoundaries,
    addSemanticIndexes,
    cacheExtent,
    children,
    semanticChildCount
  } = {}) {
    super();

    this.key = key;
    this.scrollDirection = scrollDirection;
    this.reverse = reverse;
    this.controller = controller;
    this.primary = primary;
    this.physics = physics;
    this.shrinkWrap = shrinkWrap;
    this.padding = padding;
    this.itemExtent = itemExtent;
    this.addAutomaticKeepAlives = addAutomaticKeepAlives;
    this.addRepaintBoundaries = addRepaintBoundaries;
    this.addSemanticIndexes = addSemanticIndexes;
    this.cacheExtent = cacheExtent;
    this.children = children;
    this.semanticChildCount = semanticChildCount;
  }

  preBuild(jsWidgetHelper, buildContext) {
    if (this.itemBuilder) {
      this.children = [];
      for (let i = 0; i < this.itemCount; ++i) {
        let w = this.itemBuilder(buildContext, i);
        this.children.push(w);
      }
      delete this.itemBuilder;
    }

    super.preBuild(jsWidgetHelper, buildContext);
  }
}

ListView.new = function(arg) {
  return new ListView(arg);
};

ListView.builder = function({
  key,
  scrollDirection,
  reverse,
  controller,
  primary,
  physics,
  shrinkWrap,
  padding,
  itemExtent,
  itemBuilder,
  itemCount,
  addAutomaticKeepAlives,
  addRepaintBoundaries,
  addSemanticIndexes,
  cacheExtent,
  semanticChildCount,
  dragStartBehavior,
}) {
  let jsObj = new ListView();
  jsObj.constructorName = "builder";

  jsObj.key = key;
  jsObj.scrollDirection = scrollDirection;
  jsObj.reverse = reverse;
  jsObj.controller = controller;
  jsObj.primary = primary;
  jsObj.physics = physics;
  jsObj.shrinkWrap = shrinkWrap;
  jsObj.padding = padding;
  jsObj.itemExtent = itemExtent;
  jsObj.itemBuilder = itemBuilder;
  jsObj.itemCount = itemCount;
  jsObj.addAutomaticKeepAlives = addAutomaticKeepAlives;
  jsObj.addRepaintBoundaries = addRepaintBoundaries;
  jsObj.addSemanticIndexes = addSemanticIndexes;
  jsObj.cacheExtent = cacheExtent;
  jsObj.semanticChildCount = semanticChildCount;
  jsObj.dragStartBehavior = dragStartBehavior;

  return jsObj;
}

class ListTile extends FlutterWidget {
  constructor({
    key,
    leading,
    title,
    subtitle,
    trailing,
    isThreeLine,
    dense,
    contentPadding,
    enabled,
    onTap,
    onLongPress,
    selected
  } = {}) {
    super();

    this.key = key;
    this.leading = leading;
    this.title = title;
    this.subtitle = subtitle;
    this.trailing = trailing;
    this.isThreeLine = isThreeLine;
    this.dense = dense;
    this.contentPadding = contentPadding;
    this.enabled = enabled;
    this.onTap = onTap;
    this.onLongPress = onLongPress;
    this.selected = selected;
  }
}

ListTile.new = function(arg) {
  return new ListTile(arg);
};

class LayoutBuilder extends FlutterWidget {
  constructor({ key, builder } = {}) {
    super();

    this.key = key;
    this.builder = builder;
  }
}

LayoutBuilder.new = function(arg) {
  return new LayoutBuilder(arg);
};

class CustomScrollView extends FlutterWidget {
  constructor({
    key,
    scrollDirection,
    reverse,
    controller,
    primary,
    physics,
    shrinkWrap,
    center,
    anchor,
    cacheExtent,
    slivers,
    semanticChildCount,
    dragStartBehavior
  } = {}) {
    super();

    this.key = key;
    this.scrollDirection = scrollDirection;
    this.reverse = reverse;
    this.controller = controller;
    this.primary = primary;
    this.physics = physics;
    this.shrinkWrap = shrinkWrap;
    this.center = center;
    this.anchor = anchor;
    this.cacheExtent = cacheExtent;
    this.slivers = slivers;
    this.semanticChildCount = semanticChildCount;
    this.dragStartBehavior = dragStartBehavior;
  }
}

CustomScrollView.new = function(arg) {
  return new CustomScrollView(arg);
};

class SliverAppBar extends FlutterWidget {
  constructor({
    key,
    leading,
    automaticallyImplyLeading,
    title,
    actions,
    flexibleSpace,
    bottom,
    elevation,
    forceElevated,
    backgroundColor,
    brightness,
    iconTheme,
    textTheme,
    primary,
    centerTitle,
    titleSpacing,
    expandedHeight,
    floating,
    pinned,
    snap
  } = {}) {
    super();

    this.key = key;
    this.leading = leading;
    this.automaticallyImplyLeading = automaticallyImplyLeading;
    this.title = title;
    this.actions = actions;
    this.flexibleSpace = flexibleSpace;
    this.bottom = bottom;
    this.elevation = elevation;
    this.forceElevated = forceElevated;
    this.backgroundColor = backgroundColor;
    this.brightness = brightness;
    this.iconTheme = iconTheme;
    this.textTheme = textTheme;
    this.primary = primary;
    this.centerTitle = centerTitle;
    this.titleSpacing = titleSpacing;
    this.expandedHeight = expandedHeight;
    this.floating = floating;
    this.pinned = pinned;
    this.snap = snap;
  }
}

SliverAppBar.new = function(arg) {
  return new SliverAppBar(arg);
};

class SliverPadding extends FlutterWidget {
  constructor({ key, padding, sliver } = {}) {
    super();

    this.key = key;
    this.padding = padding;
    this.sliver = sliver;
  }
}

SliverPadding.new = function(arg) {
  return new SliverPadding(arg);
};

class SliverGrid extends FlutterWidget {
  constructor({ key, delegate, gridDelegate } = {}) {
    super();

    this.key = key;
    this.delegate = delegate;
    this.gridDelegate = gridDelegate;
  }
}

SliverGrid.new = function(arg) {
  return new SliverGrid(arg);
};

class SliverGridDelegateWithMaxCrossAxisExtent extends FlutterWidget {
  constructor({
    maxCrossAxisExtent,
    mainAxisSpacing,
    crossAxisSpacing,
    childAspectRatio
  } = {}) {
    super();

    this.maxCrossAxisExtent = maxCrossAxisExtent;
    this.mainAxisSpacing = mainAxisSpacing;
    this.crossAxisSpacing = crossAxisSpacing;
    this.childAspectRatio = childAspectRatio;
  }
}

SliverGridDelegateWithMaxCrossAxisExtent.new = function(arg) {
  return new SliverGridDelegateWithMaxCrossAxisExtent(arg);
};

class GestureDetector extends FlutterWidget {
  constructor({
    key,
    child,
    onTapDown,
    onTapUp,
    onTap,
    onTapCancel,
    onDoubleTap,
    onLongPress,
    onLongPressUp,
    onVerticalDragDown,
    onVerticalDragStart,
    onVerticalDragUpdate,
    onVerticalDragEnd,
    onVerticalDragCancel,
    onHorizontalDragDown,
    onHorizontalDragStart,
    onHorizontalDragUpdate,
    onHorizontalDragEnd,
    onHorizontalDragCancel,
    onPanDown,
    onPanStart,
    onPanUpdate,
    onPanEnd,
    onPanCancel,
    onScaleStart,
    onScaleUpdate,
    onScaleEnd,
    behavior,
    excludeFromSemantics
  } = {}) {
    super();

    this.key = key;
    this.child = child;
    this.onTapDown = onTapDown;
    this.onTapUp = onTapUp;
    this.onTap = onTap;
    this.onTapCancel = onTapCancel;
    this.onDoubleTap = onDoubleTap;
    this.onLongPress = onLongPress;
    this.onLongPressUp = onLongPressUp;
    this.onVerticalDragDown = onVerticalDragDown;
    this.onVerticalDragStart = onVerticalDragStart;
    this.onVerticalDragUpdate = onVerticalDragUpdate;
    this.onVerticalDragEnd = onVerticalDragEnd;
    this.onVerticalDragCancel = onVerticalDragCancel;
    this.onHorizontalDragDown = onHorizontalDragDown;
    this.onHorizontalDragStart = onHorizontalDragStart;
    this.onHorizontalDragUpdate = onHorizontalDragUpdate;
    this.onHorizontalDragEnd = onHorizontalDragEnd;
    this.onHorizontalDragCancel = onHorizontalDragCancel;
    this.onPanDown = onPanDown;
    this.onPanStart = onPanStart;
    this.onPanUpdate = onPanUpdate;
    this.onPanEnd = onPanEnd;
    this.onPanCancel = onPanCancel;
    this.onScaleStart = onScaleStart;
    this.onScaleUpdate = onScaleUpdate;
    this.onScaleEnd = onScaleEnd;
    this.behavior = behavior;
    this.excludeFromSemantics = excludeFromSemantics;
  }
}

GestureDetector.new = function(arg) {
  return new GestureDetector(arg);
};

class Expanded extends FlutterWidget {
  constructor({ key, flex, child } = {}) {
    super();

    this.key = key;
    this.flex = flex;
    this.child = child;
  }
}

Expanded.new = function(arg) {
  return new Expanded(arg);
};

class DecoratedBox extends FlutterWidget {
  constructor({ key, decoration, position, child } = {}) {
    super();

    this.key = key;
    this.decoration = decoration;
    this.position = position;
    this.child = child;
  }
}

DecoratedBox.new = function(arg) {
  return new DecoratedBox(arg);
};

class SliverList extends FlutterWidget {
  constructor({ key, delegate } = {}) {
    super();

    this.key = key;
    this.delegate = delegate;
  }
}

SliverList.new = function(arg) {
  return new SliverList(arg);
};

// HitTestBehavior = {
//   deferToChild: "HitTestBehavior.deferToChild",
//   opaque: "HitTestBehavior.opaque",
//   translucent: "HitTestBehavior.translucent"
// };

HitTestBehavior = {
  deferToChild: { _name: "HitTestBehavior.deferToChild", index: 0 },
  opaque: { _name: "HitTestBehavior.opaque", index: 1 },
  translucent: { _name: "HitTestBehavior.translucent", index: 2 }
};

// DragStartBehavior = {
//   down: "DragStartBehavior.down",
//   start: "DragStartBehavior.start"
// };

DragStartBehavior = {
  down: { _name: "DragStartBehavior.down", index: 0 },
  start: { _name: "DragStartBehavior.start", index: 1 }
};

// DecorationPosition = {
//   background: "DecorationPosition.background",
//   foreground: "DecorationPosition.foreground"
// };
DecorationPosition = {
  background: { _name: "DecorationPosition.background", index: 0 },
  foreground: { _name: "DecorationPosition.foreground", index: 1 }
};

class SliverOverlapInjector extends FlutterWidget {
  constructor({ key, handle, child } = {}) {
    super();

    this.key = key;
    this.handle = handle;
    this.child = child;
  }
}

SliverOverlapInjector.new = function(arg) {
  return new SliverOverlapInjector(arg);
};

class SliverFixedExtentList extends FlutterWidget {
  constructor({ key, delegate, itemExtent } = {}) {
    super();

    this.key = key;
    this.delegate = delegate;
    this.itemExtent = itemExtent;
  }
}

SliverFixedExtentList.new = function(arg) {
  return new SliverFixedExtentList(arg);
};

class NestedScrollView extends FlutterWidget {
  constructor({
    key,
    controller,
    scrollDirection,
    reverse,
    physics,
    headerSliverBuilder,
    body,
    dragStartBehavior
  } = {}) {
    super();

    this.key = key;
    this.controller = controller;
    this.scrollDirection = scrollDirection;
    this.reverse = reverse;
    this.physics = physics;
    this.headerSliverBuilder = headerSliverBuilder;
    this.body = body;
    this.dragStartBehavior = dragStartBehavior;

    // 本地创建的，供flutter使用
    this.children = [];
  }

  preBuild(jsWidgetHelper, buildContext) {
    ///TODO: innerBoxIsScrolled 暂时不支持，默认为false
    if (this.headerSliverBuilder) {
      this.children = this.headerSliverBuilder(buildContext);
      delete this.headerSliverBuilder;
    }

    super.preBuild(jsWidgetHelper, buildContext);
  }
}

NestedScrollView.new = function(arg) {
  return new NestedScrollView(arg);
};

NestedScrollView.sliverOverlapAbsorberHandleFor = function(context) {
  let v = new NestedScrollView();
  v.staticFunctionName = "sliverOverlapAbsorberHandleFor";

  return v;
};

class SliverOverlapAbsorber extends FlutterWidget {
  constructor({ key, handle, child } = {}) {
    super();

    this.key = key;
    this.handle = handle;
    this.child = child;
  }
}

SliverOverlapAbsorber.new = function(arg) {
  return new SliverOverlapAbsorber(arg);
};

class SingleChildScrollView extends FlutterWidget {
  constructor({
    key,
    scrollDirection,
    reverse,
    padding,
    primary,
    physics,
    controller,
    child,
    dragStartBehavior
  } = {}) {
    super();

    this.key = key;
    this.scrollDirection = scrollDirection;
    this.reverse = reverse;
    this.padding = padding;
    this.primary = primary;
    this.physics = physics;
    this.controller = controller;
    this.child = child;
    this.dragStartBehavior = dragStartBehavior;
  }
}

SingleChildScrollView.new = function(arg) {
  return new SingleChildScrollView(arg);
};

class SliverToBoxAdapter extends FlutterWidget {
  constructor ({
    key,
    child,
  } = {}) {
    super();

    this.key = key;
    this.child = child;
  }
}

SliverToBoxAdapter.new = function(arg) {
  return new SliverToBoxAdapter(arg);
};


class TableCell extends FlutterWidget {
  constructor ({
    key,
    verticalAlignment,
    child,
  } = {}) {
    super();

    this.key = key;
    this.verticalAlignment = verticalAlignment;
    this.child = child;
  }
}

TableCell.new = function(arg) {
  return new TableCell(arg);
};

module.exports = {
  Center,
  Container,
  Padding,
  Align,
  FittedBox,
  AspectRatio,
  ConstrainedBox,
  Baseline,
  FractionallySizedBox,
  IntrinsicHeight,
  IntrinsicWidth,
  LimitedBox,
  Offstage,
  SizedBox,
  OverflowBox,
  SizedOverflowBox,
  Transform,
  CustomSingleChildLayout,
  Row,
  Column,
  Stack,
  IndexedStack,
  Flow,
  Table,
  Wrap,
  ListBody,
  CustomMultiChildLayout,
  ListView,
  LayoutBuilder,
  ListTile,
  CustomScrollView,
  SliverAppBar,
  SliverPadding,
  SliverGrid,
  SliverGridDelegateWithMaxCrossAxisExtent,
  GestureDetector,
  Expanded,
  DecoratedBox,
  SliverList,
  HitTestBehavior,
  DragStartBehavior,
  DecorationPosition,
  SliverOverlapInjector,
  SliverFixedExtentList,
  NestedScrollView,
  SliverOverlapAbsorber,
  SingleChildScrollView,
  SliverToBoxAdapter,
  TableCell,
};
