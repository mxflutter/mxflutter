//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

let { DartClass, FlutterWidget, Color } = require("./js_flutter_basic_types.js");
let { Duration , Curves} = require("./js_flutter_animation.js");

class MaterialApp extends FlutterWidget {
  constructor({
    key,
    navigatorKey,
    home,
    routes,
    initialRoute,
    onGenerateRoute,
    onUnknownRoute,
    navigatorObservers,
    builder,
    title,
    onGenerateTitle,
    color,
    theme,
    locale,
    localizationsDelegates,
    localeListResolutionCallback,
    localeResolutionCallback,
    supportedLocales,
    debugShowMaterialGrid,
    showPerformanceOverlay,
    checkerboardRasterCacheImages,
    checkerboardOffscreenLayers,
    showSemanticsDebugger,
    debugShowCheckedModeBanner
  } = {}) {
    super("MaterialApp");

    this.key = key;
    this.navigatorKey = navigatorKey;
    this.home = home;
    this.routes = routes;
    this.initialRoute = initialRoute;
    this.onGenerateRoute = onGenerateRoute;
    this.onUnknownRoute = onUnknownRoute;
    this.navigatorObservers = navigatorObservers;
    this.builder = builder;
    this.title = title;
    this.onGenerateTitle = onGenerateTitle;
    this.color = color;
    this.theme = theme;
    this.locale = locale;
    this.localizationsDelegates = localizationsDelegates;
    this.localeListResolutionCallback = localeListResolutionCallback;
    this.localeResolutionCallback = localeResolutionCallback;
    this.supportedLocales = supportedLocales;
    this.debugShowMaterialGrid = routes;
    this.showPerformanceOverlay = debugShowMaterialGrid;
    this.checkerboardRasterCacheImages = checkerboardRasterCacheImages;
    this.checkerboardOffscreenLayers = checkerboardOffscreenLayers;
    this.showSemanticsDebugger = showSemanticsDebugger;
    this.debugShowCheckedModeBanner = debugShowCheckedModeBanner;
  }
}

MaterialApp.new = function (arg) {
  return new MaterialApp(arg);
};


class Material extends FlutterWidget {
  constructor({
    key,
    type,
    elevation,
    color,
    shadowColor,
    textStyle,
    borderRadius,
    shape,
    borderOnForeground,
    clipBehavior,
    animationDuration,
    child,
  } = {}) {
    super();

    this.key = key;
    this.type = type;
    this.elevation = elevation;
    this.color = color;
    this.shadowColor = shadowColor;
    this.textStyle = textStyle;
    this.borderRadius = borderRadius;
    this.shape = shape;
    this.borderOnForeground = borderOnForeground;
    this.clipBehavior = clipBehavior;
    this.animationDuration = animationDuration;
    this.child = child;
  }
}
Material.new = function (arg) {
  return new Material(arg);
};

class Scaffold extends FlutterWidget {
  constructor({
    key,
    appBar,
    body,
    floatingActionButton,
    floatingActionButtonLocation,
    floatingActionButtonAnimator,
    persistentFooterButtons,
    drawer,
    endDrawer,
    bottomNavigationBar,
    bottomSheet,
    backgroundColor,
    resizeToAvoidBottomPadding,
    primary
  } = {}) {
    super("Scaffold");

    this.key = key;
    this.appBar = appBar;
    this.body = body;
    this.floatingActionButton = floatingActionButton;
    this.floatingActionButtonLocation = floatingActionButtonLocation;
    this.floatingActionButtonAnimator = floatingActionButtonAnimator;
    this.persistentFooterButtons = persistentFooterButtons;
    this.drawer = drawer;
    this.endDrawer = endDrawer;
    this.bottomNavigationBar = bottomNavigationBar;
    this.bottomSheet = bottomSheet;
    this.backgroundColor = backgroundColor;
    this.resizeToAvoidBottomPadding = resizeToAvoidBottomPadding;
    this.primary = primary;
  }

  //FIXME,github mergegithub merge
  static of(context) {
    return {
      showSnackBar: function (snackBar) {
        //准备调用Native方法执行真正的 showSnackBar动作
        //1.把这里的context和snackBar数据传递到native层 ✔️
        //2.通过context找到Native里的 Scaffold.of(context) ？
        //3.解析snackBar为真snackBar对象 ✔️
        //4.执行调用
        MXJSLog.log("showSnackBar in js call native-->");
        let argument = new FlutterCallArgs({
          widgetID: context.widgetID,
          className: 'Scaffold',
          funcName: 'of',
          args: {
            snackBar: snackBar,
          },
        });
        invokeCommonFlutterFunction(argument);
      },
      openDrawer: function () {
        MXJSLog.log("openDrawer---in js---to call native-->");
      },
    };
  }
}

Scaffold.new = function (arg) {
  return new Scaffold(arg);
};

class ScaffoldState extends DartClass {
  constructor({ } = {}) {
    super("ScaffoldState");
  }
}

ScaffoldState.new = function (arg) {
  return new ScaffoldState(arg);
};

class AppBar extends FlutterWidget {
  constructor({
    key,
    leading,
    automaticallyImplyLeading,
    title,
    actions,
    flexibleSpace,
    bottom,
    elevation,
    backgroundColor,
    brightness,
    iconTheme,
    textTheme,
    primary,
    centerTitle,
    titleSpacing,
    toolbarOpacity,
    bottomOpacity
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
    this.backgroundColor = backgroundColor;
    this.brightness = brightness;
    this.iconTheme = iconTheme;
    this.textTheme = textTheme;
    this.primary = primary;
    this.centerTitle = centerTitle;
    this.titleSpacing = titleSpacing;
    this.toolbarOpacity = toolbarOpacity;
    this.bottomOpacity = bottomOpacity;
  }
}

AppBar.new = function (arg) {
  return new AppBar(arg);
};

class FlatButton extends FlutterWidget {
  constructor({
    key,
    onPressed,
    onHighlightChanged,
    textTheme,
    textColor,
    disabledTextColor,
    color,
    disabledColor,
    highlightColor,
    splashColor,
    colorBrightness,
    padding,
    shape,
    clipBehavior,
    materialTapTargetSize,
    child
  } = {}) {
    super();

    this.key = key;
    this.onPressed = onPressed;
    this.onHighlightChanged = onHighlightChanged;
    this.textTheme = textTheme;
    this.textColor = textColor;
    this.disabledTextColor = disabledTextColor;
    this.color = color;
    this.disabledColor = disabledColor;
    this.highlightColor = highlightColor;
    this.splashColor = splashColor;
    this.colorBrightness = colorBrightness;
    this.padding = padding;
    this.shape = shape;
    this.clipBehavior = clipBehavior;
    this.materialTapTargetSize = materialTapTargetSize;
    this.child = child;
  }
}

FlatButton.new = function (arg) {
  return new FlatButton(arg);
};

FlatButton.icon = function ({
  key,
  onPressed,
  onHighlightChanged,
  textTheme,
  textColor,
  disabledTextColor,
  color,
  disabledColor,
  highlightColor,
  splashColor,
  colorBrightness,
  padding,
  shape,
  clipBehavior,
  materialTapTargetSize,
  icon,
  label
}) {
  let v = new FlatButton();
  v.staticFunctionName = "icon";

  v.key = key;
  v.onPressed = onPressed;
  v.onHighlightChanged = onHighlightChanged;
  v.textTheme = textTheme;
  v.textColor = textColor;
  v.disabledTextColor = disabledTextColor;
  v.color = color;
  v.disabledColor = disabledColor;
  v.highlightColor = highlightColor;
  v.splashColor = splashColor;
  v.colorBrightness = colorBrightness;
  v.padding = padding;
  v.shape = shape;
  v.clipBehavior = clipBehavior;
  v.materialTapTargetSize = materialTapTargetSize;
  v.icon = icon;
  v.label = label;

  return v;
};

class FlatButtonWithIcon extends FlatButton {
  constructor({
    key,
    onPressed,
    onHighlightChanged,
    textTheme,
    textColor,
    disabledTextColor,
    color,
    disabledColor,
    highlightColor,
    splashColor,
    colorBrightness,
    padding,
    shape,
    clipBehavior,
    materialTapTargetSize,
    icon,
    label
  } = {}) {
    super();

    this.className = "FlatButton";
    this.staticFunctionName = "icon";

    this.key = key;
    this.onPressed = onPressed;
    this.onHighlightChanged = onHighlightChanged;
    this.textTheme = textTheme;
    this.textColor = textColor;
    this.disabledTextColor = disabledTextColor;
    this.color = color;
    this.disabledColor = disabledColor;
    this.highlightColor = highlightColor;
    this.splashColor = splashColor;
    this.colorBrightness = colorBrightness;
    this.padding = padding;
    this.shape = shape;
    this.clipBehavior = clipBehavior;
    this.materialTapTargetSize = materialTapTargetSize;
    this.icon = icon;
    this.label = label;
  }
}

FlatButtonWithIcon.new = function (arg) {
  return new FlatButtonWithIcon(arg);
};

class RaisedButton extends FlutterWidget {
  constructor({
    key,
    onPressed,
    onHighlightChanged,
    textTheme,
    textColor,
    disabledTextColor,
    color,
    disabledColor,
    highlightColor,
    splashColor,
    colorBrightness,
    elevation,
    highlightElevation,
    disabledElevation,
    padding,
    shape,
    clipBehavior,
    materialTapTargetSize,
    animationDuration,
    child
  } = {}) {
    super();

    this.key = key;
    this.onPressed = onPressed;
    this.onHighlightChanged = onHighlightChanged;
    this.textTheme = textTheme;
    this.textColor = textColor;
    this.disabledTextColor = disabledTextColor;
    this.color = color;
    this.disabledColor = disabledColor;
    this.highlightColor = highlightColor;
    this.splashColor = splashColor;
    this.colorBrightness = colorBrightness;
    this.elevation = elevation;
    this.highlightElevation = highlightElevation;
    this.disabledElevation = disabledElevation;
    this.padding = padding;
    this.shape = shape;
    this.clipBehavior = clipBehavior;
    this.materialTapTargetSize = materialTapTargetSize;
    this.animationDuration = animationDuration;
    this.child = child;
  }
}

RaisedButton.new = function (arg) {
  return new RaisedButton(arg);
};
RaisedButton.icon = function ({
  key,
  onPressed,
  onHighlightChanged,
  textTheme,
  textColor,
  disabledTextColor,
  color,
  disabledColor,
  highlightColor,
  splashColor,
  colorBrightness,
  elevation,
  highlightElevation,
  disabledElevation,
  shape,
  clipBehavior,
  materialTapTargetSize,
  animationDuration,
  icon,
  label
}) {
  let v = new RaisedButton();
  v.staticFunctionName = "icon";

  v.key = key;
  v.onPressed = onPressed;
  v.onHighlightChanged = onHighlightChanged;
  v.textTheme = textTheme;
  v.textColor = textColor;
  v.disabledTextColor = disabledTextColor;
  v.color = color;
  v.disabledColor = disabledColor;
  v.highlightColor = highlightColor;
  v.splashColor = splashColor;
  v.colorBrightness = colorBrightness;
  v.elevation = elevation;
  v.highlightElevation = highlightElevation;
  v.disabledElevation = disabledElevation;
  v.shape = shape;
  v.clipBehavior = clipBehavior;
  v.materialTapTargetSize = materialTapTargetSize;
  v.animationDuration = animationDuration;
  v.icon = icon;
  v.label = label;

  return v;
};

class RaisedButtonWithIcon extends FlatButton {
  constructor({
    key,
    onPressed,
    onHighlightChanged,
    textTheme,
    textColor,
    disabledTextColor,
    color,
    disabledColor,
    highlightColor,
    splashColor,
    colorBrightness,
    elevation,
    highlightElevation,
    disabledElevation,
    shape,
    clipBehavior,
    materialTapTargetSize,
    animationDuration,
    icon,
    label
  } = {}) {
    super();

    this.className = "RaisedButton";
    this.staticFunctionName = "icon";

    this.key = key;
    this.onPressed = onPressed;
    this.onHighlightChanged = onHighlightChanged;
    this.textTheme = textTheme;
    this.textColor = textColor;
    this.disabledTextColor = disabledTextColor;
    this.color = color;
    this.disabledColor = disabledColor;
    this.highlightColor = highlightColor;
    this.splashColor = splashColor;
    this.colorBrightness = colorBrightness;
    this.elevation = elevation;
    this.highlightElevation = highlightElevation;
    this.disabledElevation = disabledElevation;
    this.shape = shape;
    this.clipBehavior = clipBehavior;
    this.materialTapTargetSize = materialTapTargetSize;
    this.animationDuration = animationDuration;
    this.icon = icon;
    this.label = label;
  }
}

class FloatingActionButton extends FlutterWidget {
  constructor({
    key,
    child,
    tooltip,
    foregroundColor,
    backgroundColor,
    heroTag,
    elevation,
    highlightElevation,
    onPressed,
    mini,
    shape,
    clipBehavior,
    materialTapTargetSize,
    isExtended
  } = {}) {
    super();

    this.key = key;
    this.child = child;
    this.tooltip = tooltip;
    this.foregroundColor = foregroundColor;
    this.backgroundColor = backgroundColor;
    this.heroTag = heroTag;
    this.elevation = elevation;
    this.highlightElevation = highlightElevation;
    this.onPressed = onPressed;
    this.mini = mini;
    this.shape = shape;
    this.clipBehavior = clipBehavior;
    this.materialTapTargetSize = materialTapTargetSize;
    this.isExtended = isExtended;
  }
}

FloatingActionButton.new = function (arg) {
  return new FloatingActionButton(arg);
};

class IconButton extends FlutterWidget {
  constructor({
    key,
    iconSize,
    padding,
    alignment,
    icon,
    color,
    highlightColor,
    splashColor,
    disabledColor,
    onPressed,
    tooltip
  } = {}) {
    super();

    this.key = key;
    this.iconSize = iconSize;
    this.padding = padding;
    this.alignment = alignment;
    this.icon = icon;
    this.color = color;
    this.highlightColor = highlightColor;
    this.splashColor = splashColor;
    this.disabledColor = disabledColor;
    this.onPressed = onPressed;
    this.tooltip = tooltip;
  }
}

IconButton.new = function (arg) {
  return new IconButton(arg);
};

class DropdownButton extends FlutterWidget {
  constructor({
    key,
    items,
    value,
    hint,
    disabledHint,
    onChanged,
    elevation,
    style,
    iconSize,
    isDense,
    isExpanded
  } = {}) {
    super();

    this.key = key;
    this.items = items;
    this.value = value;
    this.hint = hint;
    this.disabledHint = disabledHint;
    this.onChanged = onChanged;
    this.elevation = elevation;
    this.style = style;
    this.iconSize = iconSize;
    this.isDense = isDense;
    this.isExpanded = isExpanded;
  }
}

DropdownButton.new = function (arg) {
  return new DropdownButton(arg);
};

class PopupMenuButton extends FlutterWidget {
  constructor({
    key,
    itemBuilder,
    initialValue,
    onSelected,
    onCanceled,
    tooltip,
    elevation,
    padding,
    child,
    icon,
    offset
  } = {}) {
    super();

    this.key = key;
    this.itemBuilder = itemBuilder;
    this.initialValue = initialValue;
    this.onSelected = onSelected;
    this.onCanceled = onCanceled;
    this.tooltip = tooltip;
    this.elevation = elevation;
    this.padding = padding;
    this.child = child;
    this.icon = icon;
    this.offset = offset;

    // 本地创建的，供flutter使用
    this.children = [];
  }

  //在生成json前调用
  //用于list delegate 等的items build
  //用于 widget 有类似 onTab 等响应函数变量，在此转换成 callback id,
  //但注意，delegate 中确实需要 function ,不需要转ID的，不要调用super.preBuild
  preBuild(jsWidgetHelper, buildContext) {
    //先把调用函数
    if (this.itemBuilder) {
      this.children = this.itemBuilder(buildContext);
      delete this.itemBuilder;
    }

    //function 转 id
    super.preBuild(jsWidgetHelper, buildContext);
  }
}

PopupMenuButton.new = function (arg) {
  return new PopupMenuButton(arg);
};

class ButtonBar extends FlutterWidget {
  constructor({ key, alignment, mainAxisSize, children } = {}) {
    super();

    this.key = key;
    this.alignment = alignment;
    this.mainAxisSize = mainAxisSize;
    this.children = children;
  }
}

ButtonBar.new = function (arg) {
  return new ButtonBar(arg);
};

class Icon extends FlutterWidget {
  constructor(icon, { key, size, color, semanticLabel, textDirection } = {}) {
    super();

    this.icon = icon;
    this.key = key;
    this.size = size;
    this.color = color;
    this.semanticLabel = semanticLabel;
    this.textDirection = textDirection;
  }
}

Icon.new = function (arg1, arg2) {
  return new Icon(arg1, arg2);
};

class Hero extends FlutterWidget {
  constructor({
    key,
    tag,
    createRectTween,
    flightShuttleBuilder,
    placeholderBuilder,
    transitionOnUserGestures,
    child
  } = {}) {
    super();

    this.key = key;
    this.tag = tag;
    this.createRectTween = createRectTween;
    this.flightShuttleBuilder = flightShuttleBuilder;
    this.placeholderBuilder = placeholderBuilder;
    this.transitionOnUserGestures = transitionOnUserGestures;
    this.child = child;
  }
}

Hero.new = function (arg) {
  return new Hero(arg);
};

class Card extends FlutterWidget {
  constructor({
    key,
    color,
    elevation,
    shape,
    margin,
    clipBehavior,
    child,
    semanticContainer
  } = {}) {
    super();

    this.key = key;
    this.color = color;
    this.elevation = elevation;
    this.shape = shape;
    this.margin = margin;
    this.clipBehavior = clipBehavior;
    this.child = child;
    this.semanticContainer = semanticContainer;
  }
}

Card.new = function (arg) {
  return new Card(arg);
};

class MergeSemantics extends FlutterWidget {
  constructor({ key, child } = {}) {
    super();

    this.key = key;
    this.child = child;
  }
}

MergeSemantics.new = function (arg) {
  return new MergeSemantics(arg);
};

class PopupMenuItem extends FlutterWidget {
  constructor({ key, value, enabled, height, child } = {}) {
    super();

    this.key = key;
    this.value = value;
    this.enabled = enabled;
    this.height = height;
    this.child = child;
  }
}

PopupMenuItem.new = function (arg) {
  return new PopupMenuItem(arg);
};

class FlexibleSpaceBar extends FlutterWidget {
  constructor({ key, title, background, centerTitle, collapseMode } = {}) {
    super();

    this.key = key;
    this.title = title;
    this.background = background;
    this.centerTitle = centerTitle;
    this.collapseMode = collapseMode;
  }
}

FlexibleSpaceBar.new = function (arg) {
  return new FlexibleSpaceBar(arg);
};

class BottomAppBar extends FlutterWidget {
  constructor({
    key,
    color,
    elevation,
    shape,
    clipBehavior,
    notchMargin,
    child
  } = {}) {
    super();

    this.key = key;
    this.color = color;
    this.elevation = elevation;
    this.shape = shape;
    this.clipBehavior = clipBehavior;
    this.notchMargin = notchMargin;
    this.child = child;
  }
}

BottomAppBar.new = function (arg) {
  return new BottomAppBar(arg);
};

class BottomNavigationBar extends FlutterWidget {
  constructor({
    key,
    items,
    onTap,
    currentIndex,
    type,
    fixedColor,
    iconSize
  } = {}) {
    super();

    this.key = key;
    this.items = items;
    this.onTap = onTap;
    this.currentIndex = currentIndex;
    this.type = type;
    this.fixedColor = fixedColor;
    this.iconSize = iconSize;
  }
}

BottomNavigationBar.new = function (arg) {
  return new BottomNavigationBar(arg);
};

class Radio extends FlutterWidget {
  constructor({
    key,
    value,
    groupValue,
    onChanged,
    activeColor,
    materialTapTargetSize
  } = {}) {
    super();

    this.key = key;
    this.value = value;
    this.groupValue = groupValue;
    this.onChanged = onChanged;
    this.activeColor = activeColor;
    this.materialTapTargetSize = materialTapTargetSize;
  }
}

Radio.new = function (arg) {
  return new Radio(arg);
};

class Semantics extends FlutterWidget {
  constructor({
    key,
    child,
    container,
    explicitChildNodes,
    excludeSemantics,
    enabled,
    checked,
    selected,
    toggled,
    button,
    header,
    textField,
    focused,
    inMutuallyExclusiveGroup,
    obscured,
    scopesRoute,
    namesRoute,
    hidden,
    image,
    liveRegion,
    label,
    value,
    increasedValue,
    decreasedValue,
    hint,
    onTapHint,
    onLongPressHint,
    textDirection,
    sortKey,
    onTap,
    onLongPress,
    onScrollLeft,
    onScrollRight,
    onScrollUp,
    onScrollDown,
    onIncrease,
    onDecrease,
    onCopy,
    onCut,
    onPaste,
    onDismiss,
    onMoveCursorForwardByCharacter,
    onMoveCursorBackwardByCharacter,
    onSetSelection,
    onDidGainAccessibilityFocus,
    onDidLoseAccessibilityFocus,
    customSemanticsActions
  } = {}) {
    super();

    this.key = key;
    this.child = child;
    this.container = container;
    this.explicitChildNodes = explicitChildNodes;
    this.excludeSemantics = excludeSemantics;
    this.enabled = enabled;
    this.checked = checked;
    this.selected = selected;
    this.toggled = toggled;
    this.button = button;
    this.header = header;
    this.textField = textField;
    this.focused = focused;
    this.inMutuallyExclusiveGroup = inMutuallyExclusiveGroup;
    this.obscured = obscured;
    this.scopesRoute = scopesRoute;
    this.namesRoute = namesRoute;
    this.hidden = hidden;
    this.image = image;
    this.liveRegion = liveRegion;
    this.label = label;
    this.value = value;
    this.increasedValue = increasedValue;
    this.decreasedValue = decreasedValue;
    this.hint = hint;
    this.onTapHint = onTapHint;
    this.onLongPressHint = onLongPressHint;
    this.textDirection = textDirection;
    this.sortKey = sortKey;
    this.onTap = onTap;
    this.onLongPress = onLongPress;
    this.onScrollLeft = onScrollLeft;
    this.onScrollRight = onScrollRight;
    this.onScrollUp = onScrollUp;
    this.onScrollDown = onScrollDown;
    this.onIncrease = onIncrease;
    this.onDecrease = onDecrease;
    this.onCopy = onCopy;
    this.onCut = onCut;
    this.onPaste = onPaste;
    this.onDismiss = onDismiss;
    this.onMoveCursorForwardByCharacter = onMoveCursorForwardByCharacter;
    this.onMoveCursorBackwardByCharacter = onMoveCursorBackwardByCharacter;
    this.onSetSelection = onSetSelection;
    this.onDidGainAccessibilityFocus = onDidGainAccessibilityFocus;
    this.onDidLoseAccessibilityFocus = onDidLoseAccessibilityFocus;
    this.customSemanticsActions = customSemanticsActions;
  }
}

Semantics.new = function (arg) {
  return new Semantics(arg);
};

class RawMaterialButton extends FlutterWidget {
  constructor({
    key,
    onPressed,
    onHighlightChanged,
    textStyle,
    fillColor,
    highlightColor,
    splashColor,
    elevation,
    highlightElevation,
    disabledElevation,
    padding,
    constraints,
    shape,
    animationDuration,
    clipBehavior,
    materialTapTargetSize,
    child
  } = {}) {
    super();

    this.key = key;
    this.onPressed = onPressed;
    this.onHighlightChanged = onHighlightChanged;
    this.textStyle = textStyle;
    this.fillColor = fillColor;
    this.highlightColor = highlightColor;
    this.splashColor = splashColor;
    this.elevation = elevation;
    this.highlightElevation = highlightElevation;
    this.disabledElevation = disabledElevation;
    this.padding = padding;
    this.constraints = constraints;
    this.shape = shape;
    this.animationDuration = animationDuration;
    this.clipBehavior = clipBehavior;
    this.materialTapTargetSize = materialTapTargetSize;
    this.child = child;
  }
}

RawMaterialButton.new = function (arg) {
  return new RawMaterialButton(arg);
};

class CircleBorder extends FlutterWidget {
  constructor({ side } = {}) {
    super();

    this.side = side;
  }
}

CircleBorder.new = function (arg) {
  return new CircleBorder(arg);
};

class SafeArea extends FlutterWidget {
  constructor({ key, left, top, right, bottom, minimum, child } = {}) {
    super();

    this.key = key;
    this.left = left;
    this.top = top;
    this.right = right;
    this.bottom = bottom;
    this.minimum = minimum;
    this.child = child;
  }
}

SafeArea.new = function (arg) {
  return new SafeArea(arg);
};

// MaterialTapTargetSize = {
//   padded: "MaterialTapTargetSize.padded",
//   shrinkWrap: "MaterialTapTargetSize.shrinkWrap"
// };

MaterialTapTargetSize = {
  padded: { _name: "MaterialTapTargetSize.padded", index: 0 },
  shrinkWrap: { _name: "MaterialTapTargetSize.shrinkWrap", index: 1 }
};

class Builder extends FlutterWidget {
  constructor({ key, builder } = {}) {
    super();

    this.key = key;
    this.builder = builder;

    // 本地创建的，供flutter使用
    this.child = null;
  }

  preBuild(jsWidgetHelper, buildContext) {
    if (this.builder) {
      this.child = this.builder(buildContext);
      delete this.builder;
    }

    super.preBuild(jsWidgetHelper, buildContext);
  }
}

Builder.new = function (arg) {
  return new Builder(arg);
};

class DefaultTabController extends FlutterWidget {
  constructor({ key, length, initialIndex, child } = {}) {
    super();

    this.key = key;
    this.length = length;
    this.initialIndex = initialIndex;
    this.child = child;
  }
}

DefaultTabController.new = function (arg) {
  return new DefaultTabController(arg);
};

class TabBar extends FlutterWidget {
  constructor({
    key,
    tabs,
    controller,
    isScrollable,
    indicatorColor,
    indicatorWeight,
    indicatorPadding,
    indicator,
    indicatorSize,
    labelColor,
    labelStyle,
    labelPadding,
    unselectedLabelColor,
    unselectedLabelStyle,
    dragStartBehavior,
    onTap
  } = {}) {
    super();

    this.key = key;
    this.tabs = tabs;
    this.controller = controller;
    this.isScrollable = isScrollable;
    this.indicatorColor = indicatorColor;
    this.indicatorWeight = indicatorWeight;
    this.indicatorPadding = indicatorPadding;
    this.indicator = indicator;
    this.indicatorSize = indicatorSize;
    this.labelColor = labelColor;
    this.labelStyle = labelStyle;
    this.labelPadding = labelPadding;
    this.unselectedLabelColor = unselectedLabelColor;
    this.unselectedLabelStyle = unselectedLabelStyle;
    this.dragStartBehavior = dragStartBehavior;
    this.onTap = onTap;
  }
}

TabBar.new = function (arg) {
  return new TabBar(arg);
};

class TabController extends FlutterWidget {
  constructor({ initialIndex, length, vsync } = {}) {
    super();

    this.initialIndex = initialIndex;
    this.length = length;
    this.vsync = vsync;
  }
}

TabController.new = function (arg) {
  return new TabController(arg);
};

class Tab extends FlutterWidget {
  constructor({ key, text, icon, child } = {}) {
    super();

    this.key = key;
    this.text = text;
    this.icon = icon;
    this.child = child;
  }
}

Tab.new = function (arg) {
  return new Tab(arg);
};

class TabBarView extends FlutterWidget {
  constructor({ key, children, controller, physics, dragStartBehavior } = {}) {
    super();

    this.key = key;
    this.children = children;
    this.controller = controller;
    this.physics = physics;
    this.dragStartBehavior = dragStartBehavior;
  }
}

TabBarView.new = function (arg) {
  return new TabBarView(arg);
};

class NavigatorState extends FlutterWidget {
  constructor(context) {
    super();

    this.context = context;
  }

  push(T, materialPageRoute) {
    this.context.widget.helper.navigatorPush(materialPageRoute.builder(this.context));
  }
  pop(T) {
    this.context.widget.helper.navigatorPop();
  }
}

class Navigator extends FlutterWidget {
  constructor({
    key,
    initialRoute,
    onGenerateRoute,
    onUnknownRoute,
    observers,
  } = {}) {
    super();

    this.key = key;
    this.initialRoute = initialRoute;
    this.onGenerateRoute = onGenerateRoute;
    this.onUnknownRoute = onUnknownRoute;
    this.observers = observers;
  }

  static push(context, materialPageRoute) {

    let T = null;
    if (arguments.length == 3) {
      T = arguments[0];
      context = arguments[1];
      materialPageRoute = arguments[2];
    }

    var navigatorState = new NavigatorState(context);
    navigatorState.push(T, materialPageRoute);
  }
  static pop(context) {
    let T = null;
    if (arguments.length == 2) {
      T = arguments[0];
      context = arguments[1];
    }
    var navigatorState = new NavigatorState(context);
    navigatorState.pop(T);
  }

  static of(context, opt) {
    var navigatorState = new NavigatorState(context);
    return navigatorState;
  }
}

Navigator.new = function (arg) {
  return new Navigator(arg);
};

class MaterialPageRoute extends FlutterWidget {
  constructor({
    builder,
    settings,
    maintainState,
    fullscreenDialog,
  } = {}) {
    super();

    this.builder = builder;
    this.settings = settings;
    this.maintainState = maintainState;
    this.fullscreenDialog = fullscreenDialog;

    this.child = null;
  }

  preBuild(jsWidgetHelper, buildContext) {
    if (this.builder) {
      this.child = this.builder(buildContext);
      delete this.builder;
    }

    super.preBuild(jsWidgetHelper, buildContext);
  }
}

MaterialPageRoute.new = function (args) {
  return new MaterialPageRoute(args);
};

class RouteSettings extends FlutterWidget {
  constructor({
    name,
    isInitialRoute,
    arg,
  } = {}) {
    super();

    this.name = name;
    this.isInitialRoute = isInitialRoute;
    this.arg = arg;
  }
}

RouteSettings.new = function (args) {
  return new RouteSettings(args);
};

StretchMode = {
  zoomBackground: { _name: "StretchMode.zoomBackground", index: 0 },
  blurBackground: { _name: "StretchMode.blurBackground", index: 1 },
  fadeTitle: { _name: "StretchMode.fadeTitle", index: 2 },
};

CollapseMode = {
  parallax: { _name: "CollapseMode.parallax", index: 0 },
  pin: { _name: "CollapseMode.pin", index: 1 },
  none: { _name: "CollapseMode.none", index: 2 },
};

//FIXME,github merge
MaterialTapTargetSize = {
  padded: "MaterialTapTargetSize.padded",
  shrinkWrap: "MaterialTapTargetSize.shrinkWrap"
};

class Scrollbar extends FlutterWidget {
  constructor({
    key,
    child,
  } = {}) {
    super();
    this.key = key;
    this.child = child;
  }

}


class SnackBar extends FlutterWidget {
  constructor({
    key,
    content, //@required
    backgroundColor,
    elevation,
    shape,
    behavior,
    action,
    duration,
    animation,
    onVisible,
  } = {}) {
    super();
    this.key = key;
    this.content = content;
    this.backgroundColor = backgroundColor;
    this.elevation = elevation;
    this.shape = shape;
    this.behavior = behavior;
    this.action = action;
    this.duration = duration;
    this.animation = animation;
    this.onVisible = onVisible;
  }
}


class FlutterLogo extends FlutterWidget {
  constructor({
    key,
    size,
    colors,
    textColor,
    style,
    duration,
    curve,
  } = {
      textColor: new Color(0xFF616161),
      // style:FlutterLogoStyle.markOnly,
      duration: new Duration({ milliseconds: 750 }),
      curve: Curves.fastOutSlowIn
    }) {
    super();
    this.key = key;
    this.size = size;
    this.colors = colors;
    this.textColor = textColor;
    this.duration = duration;
    this.curve = curve;
  }
}


module.exports = {
  MaterialApp,
  Material,
  Scaffold,
  ScaffoldState,
  AppBar,
  FlatButton,
  FlatButtonWithIcon,
  RaisedButton,
  RaisedButtonWithIcon,
  FloatingActionButton,
  IconButton,
  DropdownButton,
  PopupMenuButton,
  ButtonBar,
  Icon,
  Hero,
  Card,
  MergeSemantics,
  PopupMenuItem,
  FlexibleSpaceBar,
  BottomAppBar,
  BottomNavigationBar,
  Radio,
  Semantics,
  RawMaterialButton,
  CircleBorder,
  SafeArea,
  MaterialTapTargetSize,
  Builder,
  DefaultTabController,
  TabBar,
  TabController,
  Tab,
  TabBarView,
  Navigator,
  MaterialPageRoute,
  RouteSettings,
  StretchMode,
  CollapseMode,
  Scrollbar,
  SnackBar,
  FlutterLogo,

};
