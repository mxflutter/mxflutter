import 'dart_builder.dart';

var list = <String>[
  """
    const Padding({
    Key key,
    @required this.padding,
    Widget child,
  }""",
  """
  const Align({
    Key key,
    this.alignment,
    this.widthFactor,
    this.heightFactor,
    Widget child,
  }) 
  """,
  """
    const FittedBox({
    Key key,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
    Widget child,
  }) 
  """,
  """
    const AspectRatio({
    Key key,
    @required this.aspectRatio,
    Widget child
  }) 
  """,
  """
  ConstrainedBox({
    Key key,
    @required this.constraints,
    Widget child
  }) 
  """,
  """
    const Baseline({
    Key key,
    @required this.baseline,
    @required this.baselineType,
    Widget child
  }) 

  """,
  """
    const FractionallySizedBox({
    Key key,
    this.alignment = Alignment.center,
    this.widthFactor,
    this.heightFactor,
    Widget child,
  })

  """,
  """
IntrinsicHeight({ 
  Key key, 
  Widget child
   })
  """,
  """
    const IntrinsicWidth({ 
      Key key,
       this.stepWidth,
        this.stepHeight, 
        Widget child 
        })

  """,
  """
    const LimitedBox({
    Key key,
    this.maxWidth = double.infinity,
    this.maxHeight = double.infinity,
    Widget child,
  }) 

  """,
  """
   Offstage({ 
     Key key, 
     this.offstage = true,
      Widget child 
      }
  """,
  """
  const OverflowBox({
    Key key,
    this.alignment = Alignment.center,
    this.minWidth,
    this.maxWidth,
    this.minHeight,
    this.maxHeight,
    Widget child,
  })
  """,
  """
  const SizedBox({ 
    Key key, 
    this.width, 
    this.height, 
    Widget child
     })
  """,
  """
const SizedOverflowBox({
    Key key,
    @required this.size,
    this.alignment = Alignment.center,
    Widget child,
  }) 
  """,
  """
    const Transform({
    Key key,
    @required this.transform,
    this.origin,
    this.alignment,
    this.transformHitTests = true,
    Widget child,
  }) 

  """,
  """
  const CustomSingleChildLayout({
    Key key,
    @required this.delegate,
    Widget child
  }) 

  """,
  """
  Row({
    Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    List<Widget> children = const <Widget>[],
  }) 
  
  """,
  """
  Column({
    Key key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    List<Widget> children = const <Widget>[],
  }) 
  
  """,
  """
  Stack({
    Key key,
    this.alignment = AlignmentDirectional.topStart,
    this.textDirection,
    this.fit = StackFit.loose,
    this.overflow = Overflow.clip,
    List<Widget> children = const <Widget>[],
  }) 
  
  """,
  """
  IndexedStack({
    Key key,
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection textDirection,
    StackFit sizing = StackFit.loose,
    this.index = 0,
    List<Widget> children = const <Widget>[],
  }) 
  
  """,
  """
  Flow({
    Key key,
    @required this.delegate,
    List<Widget> children = const <Widget>[],
  }) 
  
  """,
  """
  Table({
    Key key,
    this.children = const <TableRow>[],
    this.columnWidths,
    this.defaultColumnWidth = const FlexColumnWidth(1.0),
    this.textDirection,
    this.border,
    this.defaultVerticalAlignment = TableCellVerticalAlignment.top,
    this.textBaseline,
  }) 
  
  """,
  """
  Wrap({
    Key key,
    this.direction = Axis.horizontal,
    this.alignment = WrapAlignment.start,
    this.spacing = 0.0,
    this.runAlignment = WrapAlignment.start,
    this.runSpacing = 0.0,
    this.crossAxisAlignment = WrapCrossAlignment.start,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    List<Widget> children = const <Widget>[],
  }) 
  
  """,
  """
  ListBody({
    Key key,
    this.mainAxis = Axis.vertical,
    this.reverse = false,
    List<Widget> children = const <Widget>[],
  }) 
  
  """,
  """
  CustomMultiChildLayout({
    Key key,
    @required this.delegate,
    List<Widget> children = const <Widget>[],
  }) 
  
  """,
  """
  ListView({
    Key key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController controller,
    bool primary,
    ScrollPhysics physics,
    bool shrinkWrap = false,
    EdgeInsetsGeometry padding,
    this.itemExtent,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double cacheExtent,
    List<Widget> children = const <Widget>[],
    int semanticChildCount,
  }) 
  """,
  """
  const LayoutBuilder({
    Key key,
    @required this.builder
  }) 
  """,
  """
    const ListTile({
    Key key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.isThreeLine = false,
    this.dense,
    this.contentPadding,
    this.enabled = true,
    this.onTap,
    this.onLongPress,
    this.selected = false,
  })
  """,
  """
  const CustomScrollView({
    Key key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController controller,
    bool primary,
    ScrollPhysics physics,
    bool shrinkWrap = false,
    Key center,
    double anchor = 0.0,
    double cacheExtent,
    this.slivers = const <Widget>[],
    int semanticChildCount,
    DragStartBehavior dragStartBehavior = DragStartBehavior.down,
  })
"""
,
"""
  const SliverAppBar({
    Key key,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.title,
    this.actions,
    this.flexibleSpace,
    this.bottom,
    this.elevation,
    this.forceElevated = false,
    this.backgroundColor,
    this.brightness,
    this.iconTheme,
    this.textTheme,
    this.primary = true,
    this.centerTitle,
    this.titleSpacing = NavigationToolbar.kMiddleSpacing,
    this.expandedHeight,
    this.floating = false,
    this.pinned = false,
    this.snap = false,
  }) 
"""
,
"""
  const SliverPadding({
    Key key,
    @required this.padding,
    Widget sliver,
  }) 
"""
,
"""
  const SliverGrid({
    Key key,
    @required SliverChildDelegate delegate,
    @required this.gridDelegate,
  }) 
"""
,
"""
  const SliverGridDelegateWithMaxCrossAxisExtent({
    @required this.maxCrossAxisExtent,
    this.mainAxisSpacing = 0.0,
    this.crossAxisSpacing = 0.0,
    this.childAspectRatio = 1.0,
  }) 
"""
,
"""
  const SliverChildBuilderDelegate(
    this.builder, {
    this.childCount,
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.semanticIndexCallback = _kDefaultSemanticIndexCallback,
    this.semanticIndexOffset = 0,
  }) 

"""
,
"""
  GestureDetector({
    Key key,
    this.child,
    this.onTapDown,
    this.onTapUp,
    this.onTap,
    this.onTapCancel,
    this.onDoubleTap,
    this.onLongPress,
    this.onLongPressUp,
    this.onVerticalDragDown,
    this.onVerticalDragStart,
    this.onVerticalDragUpdate,
    this.onVerticalDragEnd,
    this.onVerticalDragCancel,
    this.onHorizontalDragDown,
    this.onHorizontalDragStart,
    this.onHorizontalDragUpdate,
    this.onHorizontalDragEnd,
    this.onHorizontalDragCancel,
    this.onPanDown,
    this.onPanStart,
    this.onPanUpdate,
    this.onPanEnd,
    this.onPanCancel,
    this.onScaleStart,
    this.onScaleUpdate,
    this.onScaleEnd,
    this.behavior,
    this.excludeFromSemantics = false
  })
"""
,
"""
  const Expanded({
    Key key,
    int flex = 1,
    @required Widget child,
  }) 
"""
,
"""
  const DecoratedBox({
    Key key,
    @required this.decoration,
    this.position = DecorationPosition.background,
    Widget child
  })
"""
,
"""
const SliverList({
    Key key,
    @required SliverChildDelegate delegate,
  })
"""
,
"""
  Container({
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
  })
""",
"""
  const CustomScrollView({
    Key key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController controller,
    bool primary,
    ScrollPhysics physics,
    bool shrinkWrap = false,
    Key center,
    double anchor = 0.0,
    double cacheExtent,
    this.slivers = const <Widget>[],
    int semanticChildCount,
    DragStartBehavior dragStartBehavior = DragStartBehavior.down,
  })
  """,

  """
  enum DragStartBehavior {
  /// Set the initial offset, at the position where the first down even was
  /// detected.
  down,

  /// Set the initial position at the position where the drag start event was
  /// detected.
  start,
  }
  """,

  """
  enum DecorationPosition {
  /// Paint the box decoration behind the children.
  background,

  /// Paint the box decoration in front of the children.
  foreground,
  }
  """,

  """
  const SliverOverlapInjector({
    Key key,
    @required this.handle,
    Widget child,
  })
  """,

  """
  const SliverFixedExtentList({
    Key key,
    @required SliverChildDelegate delegate,
    @required this.itemExtent,
  })
  """,

  """
  const NestedScrollView({
    Key key,
    this.controller,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.physics,
    @required this.headerSliverBuilder,
    @required this.body,
    this.dragStartBehavior = DragStartBehavior.down,
  })
  """,

  """
  const SliverOverlapAbsorber({
    Key key,
    @required this.handle,
    Widget child,
  }
  """,

  """
  const SingleChildScrollView({
    Key key,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.padding,
    bool primary,
    this.physics,
    this.controller,
    this.child,
    this.dragStartBehavior = DragStartBehavior.down,
  }) 
  """,

  """
  enum HitTestBehavior {
  /// Targets that defer to their children receive events within their bounds
  /// only if one of their children is hit by the hit test.
  deferToChild,

  /// Opaque targets can be hit by hit tests, causing them to both receive
  /// events within their bounds and prevent targets visually behind them from
  /// also receiving events.
  opaque,

  /// Translucent targets both receive events within their bounds and permit
  /// targets visually behind them to also receive events.
  translucent,
  }
  """,

  """
  const SliverToBoxAdapter({
    Key key,
    Widget child,
  }) 
  """,

  """
  const TableCell({
    Key key,
    this.verticalAlignment,
    @required Widget child,
  })
  """,
];

void main(List<String> arguments) {
  //打印输出所有
  // list.map(translate).toList().join('\n\n\n');

  //打印输出最后一个
  translate(list.last);
}

 translate(String src) {
  // print(translateDartFlutter(src));
  print(translateDart(src));
  print(translateJS(src));
}
