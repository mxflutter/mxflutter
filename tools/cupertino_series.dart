import 'dart_builder.dart';

var list = <String>[
  """
  const CupertinoActivityIndicator({
    Key key,
    this.animating = true,
    this.radius = _kDefaultIndicatorRadius,
  })
  """,

  """
  const CupertinoAlertDialog({
    Key key,
    this.title,
    this.content,
    this.actions = const <Widget>[],
    this.scrollController,
    this.actionScrollController,
  })

  """,

  """
  const CupertinoButton({
    @required this.child,
    this.padding,
    this.color,
    this.disabledColor,
    this.minSize = 44.0,
    this.pressedOpacity = 0.1,
    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
    @required this.onPressed,
  })
  """,
  
  """
  const CupertinoDialog({
    Key key,
    this.child,
  })
  """,

  """
  const CupertinoDialogAction({
    this.onPressed,
    this.isDefaultAction = false,
    this.isDestructiveAction = false,
    this.textStyle,
    @required this.child,
  })
  """,

  """
  const CupertinoSlider({
    Key key,
    @required this.value,
    @required this.onChanged,
    this.onChangeStart,
    this.onChangeEnd,
    this.min = 0.0,
    this.max = 1.0,
    this.divisions,
    this.activeColor,
  })
  """,

  """
  const CupertinoSwitch({
    Key key,
    @required this.value,
    @required this.onChanged,
    this.activeColor,
    this.dragStartBehavior = DragStartBehavior.down,
  }) 
  """,

  """
  CupertinoPageTransition({
    Key key,
    @required Animation<double> primaryRouteAnimation,
    @required Animation<double> secondaryRouteAnimation,
    @required this.child,
    @required bool linearTransition,
  })
  """,

  """
  CupertinoFullscreenDialogTransition({
    Key key,
    @required Animation<double> primaryRouteAnimation,
    @required Animation<double> secondaryRouteAnimation,
    @required this.child,
    @required bool linearTransition,
  })
  """,

  """
  const CupertinoNavigationBar({
    Key key,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.automaticallyImplyMiddle = true,
    this.previousPageTitle,
    this.middle,
    this.trailing,
    this.border = _kDefaultNavBarBorder,
    this.backgroundColor,
    this.padding,
    this.actionsForegroundColor,
    this.transitionBetweenRoutes = true,
    this.heroTag = _defaultHeroTag,
  })
  """,

  """
  CupertinoTabBar({
    Key key,
    @required this.items,
    this.onTap,
    this.currentIndex = 0,
    this.backgroundColor,
    this.activeColor,
    this.inactiveColor = CupertinoColors.inactiveGray,
    this.iconSize = 30.0,
    this.border,
  })
  """,

  """
  const CupertinoPageScaffold({
    Key key,
    this.navigationBar,
    this.backgroundColor,
    this.resizeToAvoidBottomInset = true,
    @required this.child,
  })
  """,

  """
  const CupertinoTabScaffold({
    Key key,
    @required this.tabBar,
    @required this.tabBuilder,
    this.backgroundColor,
    this.resizeToAvoidBottomInset = true,
  })
  """,

  """
  const CupertinoTabView({
    Key key,
    this.builder,
    this.navigatorKey,
    this.defaultTitle,
    this.routes,
    this.onGenerateRoute,
    this.onUnknownRoute,
    this.navigatorObservers = const <NavigatorObserver>[],
  })
  """,

];

void main(List<String> arguments) {

  //打印输出所有
  list.map(translate).toList().join('\n\n\n');

  //打印输出最后一个
  //translate(list.last);
}

 translate(String src) {
  print(translateDart(src));
  print(translateJS(src));
}
