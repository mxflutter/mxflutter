import 'dart_builder.dart';

var list = <String>[
  """
  const MaterialApp({
    Key key,
    this.navigatorKey,
    this.home,
    this.routes = const <String, WidgetBuilder>{},
    this.initialRoute,
    this.onGenerateRoute,
    this.onUnknownRoute,
    this.navigatorObservers = const <NavigatorObserver>[],
    this.builder,
    this.title = '',
    this.onGenerateTitle,
    this.color,
    this.theme,
    this.locale,
    this.localizationsDelegates,
    this.localeListResolutionCallback,
    this.localeResolutionCallback,
    this.supportedLocales = const <Locale>[Locale('en', 'US')],
    this.debugShowMaterialGrid = false,
    this.showPerformanceOverlay = false,
    this.checkerboardRasterCacheImages = false,
    this.checkerboardOffscreenLayers = false,
    this.showSemanticsDebugger = false,
    this.debugShowCheckedModeBanner = true,
  }) 
  """,
  """
  const Scaffold({
    Key key,
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.floatingActionButtonAnimator,
    this.persistentFooterButtons,
    this.drawer,
    this.endDrawer,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.backgroundColor,
    this.resizeToAvoidBottomPadding = true,
    this.primary = true,
  }) 
  """,
  """
AppBar({
    Key key,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.title,
    this.actions,
    this.flexibleSpace,
    this.bottom,
    this.elevation = 4.0,
    this.backgroundColor,
    this.brightness,
    this.iconTheme,
    this.textTheme,
    this.primary = true,
    this.centerTitle,
    this.titleSpacing = NavigationToolbar.kMiddleSpacing,
    this.toolbarOpacity = 1.0,
    this.bottomOpacity = 1.0,
  }) 
  """,
  """
  BottomNavigationBar({
    Key key,
    @required this.items,
    this.onTap,
    this.currentIndex = 0,
    BottomNavigationBarType type,
    this.fixedColor,
    this.iconSize = 24.0,
  }) 
  """,
  """
  const TabBar({
    Key key,
    @required this.tabs,
    this.controller,
    this.isScrollable = false,
    this.indicatorColor,
    this.indicatorWeight = 2.0,
    this.indicatorPadding = EdgeInsets.zero,
    this.indicator,
    this.indicatorSize,
    this.labelColor,
    this.labelStyle,
    this.labelPadding,
    this.unselectedLabelColor,
    this.unselectedLabelStyle,
  }) 
  """,
  """
const CloseButton({
   Key key 
   })
  """,
  """
const BackButton({
   Key key 
   })
  """,
  """
const BackButtonIcon({
   Key key 
   })
  """,
  """
  const MaterialButton({
    Key key,
    @required this.onPressed,
    this.onHighlightChanged,
    this.textTheme,
    this.textColor,
    this.disabledTextColor,
    this.color,
    this.disabledColor,
    this.highlightColor,
    this.splashColor,
    this.colorBrightness,
    this.elevation,
    this.highlightElevation,
    this.disabledElevation,
    this.padding,
    this.shape,
    this.clipBehavior = Clip.none,
    this.materialTapTargetSize,
    this.animationDuration,
    this.minWidth,
    this.height,
    this.child,
  })
  """,
  """
  const FlatButton({
    Key key,
    @required VoidCallback onPressed,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    EdgeInsetsGeometry padding,
    ShapeBorder shape,
    Clip clipBehavior = Clip.none,
    MaterialTapTargetSize materialTapTargetSize,
    @required Widget child,
  }) 
  """,
  """
  const RaisedButton({
    Key key,
    @required VoidCallback onPressed,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    double elevation,
    double highlightElevation,
    double disabledElevation,
    EdgeInsetsGeometry padding,
    ShapeBorder shape,
    Clip clipBehavior = Clip.none,
    MaterialTapTargetSize materialTapTargetSize,
    Duration animationDuration,
    Widget child,
  }) 
  """,
  """
  const FloatingActionButton({
    Key key,
    this.child,
    this.tooltip,
    this.foregroundColor,
    this.backgroundColor,
    this.heroTag = const _DefaultHeroTag(),
    this.elevation = 6.0,
    this.highlightElevation = 12.0,
    @required this.onPressed,
    this.mini = false,
    this.shape = const CircleBorder(),
    this.clipBehavior = Clip.none,
    this.materialTapTargetSize,
    this.isExtended = false,
  }) 
  """,
  """
  const IconButton({
    Key key,
    this.iconSize = 24.0,
    this.padding = const EdgeInsets.all(8.0),
    this.alignment = Alignment.center,
    @required this.icon,
    this.color,
    this.highlightColor,
    this.splashColor,
    this.disabledColor,
    @required this.onPressed,
    this.tooltip
  })
  """,
  """
  DropdownButton({
    Key key,
    @required this.items,
    this.value,
    this.hint,
    this.disabledHint,
    @required this.onChanged,
    this.elevation = 8,
    this.style,
    this.iconSize = 24.0,
    this.isDense = false,
    this.isExpanded = false,
  }) 
  """,
  """

  const PopupMenuButton({
    Key key,
    @required this.itemBuilder,
    this.initialValue,
    this.onSelected,
    this.onCanceled,
    this.tooltip,
    this.elevation = 8.0,
    this.padding = const EdgeInsets.all(8.0),
    this.child,
    this.icon,
    this.offset = Offset.zero,
  }) 
  """,
  """
  const ButtonBar({
    Key key,
    this.alignment = MainAxisAlignment.end,
    this.mainAxisSize = MainAxisSize.max,
    this.children = const <Widget>[],
  }) 
  """,
  """

  const Icon(
    this.icon, {
    Key key,
    this.size,
    this.color,
    this.semanticLabel,
    this.textDirection,
  })
  """,
  """
  const Hero({
    Key key,
    @required this.tag,
    this.createRectTween,
    this.flightShuttleBuilder,
    this.placeholderBuilder,
    this.transitionOnUserGestures = false,
    @required this.child,
  })
  """
  ,
  """
 const Card({
    Key key,
    this.color,
    this.elevation,
    this.shape,
    this.margin = const EdgeInsets.all(4.0),
    this.clipBehavior = Clip.none,
    this.child,
    this.semanticContainer = true,
  })
  """
    ,
  """
 const Border({
    this.top = BorderSide.none,
    this.right = BorderSide.none,
    this.bottom = BorderSide.none,
    this.left = BorderSide.none,
  })
  """
    ,
  """
  const MergeSemantics({ 
    Key key,
    Widget child 
    })
  """
    ,
  """
  const PopupMenuItem({
    Key key,
    this.value,
    this.enabled = true,
    this.height = _kMenuItemHeight,
    @required this.child,
  })
  """
  ,
  """
  const FlexibleSpaceBar({
    Key key,
    this.title,
    this.background,
    this.centerTitle,
    this.collapseMode = CollapseMode.parallax
  }) 
  """
  ,
  """
  const Radio({
    Key key,
    @required this.value,
    @required this.groupValue,
    @required this.onChanged,
    this.activeColor,
    this.materialTapTargetSize,
  })
  """
  ,
"""
const PopupMenuItem({
    Key key,
    this.value,
    this.enabled = true,
    this.height = _kMenuItemHeight,
    @required this.child,
  }
  """
  ,

  """
  Semantics({
    Key key,
    Widget child,
    bool container = false,
    bool explicitChildNodes = false,
    bool excludeSemantics = false,
    bool enabled,
    bool checked,
    bool selected,
    bool toggled,
    bool button,
    bool header,
    bool textField,
    bool focused,
    bool inMutuallyExclusiveGroup,
    bool obscured,
    bool scopesRoute,
    bool namesRoute,
    bool hidden,
    bool image,
    bool liveRegion,
    String label,
    String value,
    String increasedValue,
    String decreasedValue,
    String hint,
    String onTapHint,
    String onLongPressHint,
    TextDirection textDirection,
    SemanticsSortKey sortKey,
    VoidCallback onTap,
    VoidCallback onLongPress,
    VoidCallback onScrollLeft,
    VoidCallback onScrollRight,
    VoidCallback onScrollUp,
    VoidCallback onScrollDown,
    VoidCallback onIncrease,
    VoidCallback onDecrease,
    VoidCallback onCopy,
    VoidCallback onCut,
    VoidCallback onPaste,
    VoidCallback onDismiss,
    MoveCursorHandler onMoveCursorForwardByCharacter,
    MoveCursorHandler onMoveCursorBackwardByCharacter,
    SetSelectionHandler onSetSelection,
    VoidCallback onDidGainAccessibilityFocus,
    VoidCallback onDidLoseAccessibilityFocus,
    Map<CustomSemanticsAction, VoidCallback> customSemanticsActions,
  })
  """
  ,
"""
  const RawMaterialButton({
    Key key,
    @required this.onPressed,
    this.onHighlightChanged,
    this.textStyle,
    this.fillColor,
    this.highlightColor,
    this.splashColor,
    this.elevation = 2.0,
    this.highlightElevation = 8.0,
    this.disabledElevation = 0.0,
    this.padding = EdgeInsets.zero,
    this.constraints = const BoxConstraints(minWidth: 88.0, minHeight: 36.0),
    this.shape = const RoundedRectangleBorder(),
    this.animationDuration = kThemeChangeDuration,
    this.clipBehavior = Clip.none,
    MaterialTapTargetSize materialTapTargetSize,
    this.child,
  }) 
  """,

  """
  const CircleBorder({ 
    this.side = BorderSide.none 
  })
  """,
  
  """
  const SafeArea({
    Key key,
    this.left = true,
    this.top = true,
    this.right = true,
    this.bottom = true,
    this.minimum = EdgeInsets.zero,
    @required this.child,
  }
  """,

  """
  enum MaterialTapTargetSize {
  /// Expands the minimum tap target size to 48px by 48px.
  ///
  /// This is the default value of [ThemeData.materialHitTestSize] and the
  /// recommended size to conform to Android accessibility scanner
  /// recommendations.
  padded,

  /// Shrinks the tap target size to the minimum provided by the Material
  /// specification.
  shrinkWrap,
}
  """,

   """
   const Builder({
    Key key,
    @required this.builder
  })
  """,

  """
  const DefaultTabController({
    Key key,
    @required this.length,
    this.initialIndex = 0,
    @required this.child,
  })
  """,

  """
  TabController({ 
    int initialIndex = 0,
    @required this.length, 
    @required TickerProvider vsync 
    })
  """,

  """
const Tab({
    Key key,
    this.text,
    this.icon,
    this.child,
  })
  """,

  """
const TabBarView({
    Key key,
    @required this.children,
    this.controller,
    this.physics,
    this.dragStartBehavior = DragStartBehavior.down,
  })
  """,

  """
  const ScaffoldState(
    
  )
  """,

  """
  const Navigator({
    Key key,
    this.initialRoute,
    @required this.onGenerateRoute,
    this.onUnknownRoute,
    this.observers = const <NavigatorObserver>[],
  }) 
  """,

  """
  MaterialPageRoute({
    @required this.builder,
    RouteSettings settings,
    this.maintainState = true,
    bool fullscreenDialog = false,
  }) 
  """,

  """
  const RouteSettings({
    this.name,
    this.isInitialRoute = false,
    this.arguments,
  })
  """,

  """
  enum StretchMode {
  /// The background widget will expand to fill the extra space.
  zoomBackground,

  /// The background will blur using a [ImageFilter.blur] effect.
  blurBackground,

  /// The title will fade away as the user over-scrolls.
  fadeTitle,
}
""",

"""
enum CollapseMode {
  /// The background widget will scroll in a parallax fashion.
  parallax,

  /// The background widget pin in place until it reaches the min extent.
  pin,

  /// The background widget will act as normal with no collapsing effect.
  none,
}
""",

"""
const Material({
    Key key,
    this.type = MaterialType.canvas,
    this.elevation = 0.0,
    this.color,
    this.shadowColor = const Color(0xFF000000),
    this.textStyle,
    this.borderRadius,
    this.shape,
    this.borderOnForeground = true,
    this.clipBehavior = Clip.none,
    this.animationDuration = kThemeChangeDuration,
    this.child,
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
  print(translateDart(src));
  print(translateJS(src));
  // print(translateDartFlutter(src));
}
