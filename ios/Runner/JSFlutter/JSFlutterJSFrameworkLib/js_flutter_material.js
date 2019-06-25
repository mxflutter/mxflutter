//VSCode Run support=====================================================================================
//为便于在JS IDE如VSCode，webStorm里脱离APP环境执行JS，以快速验证JS代码正确性
//如果不在App环境，Native接口重定向到JS同名函数打印调用
//jsFlutterRequire 转调Node运行环境中的require
//只有JSFlutterJSFrameworkLib中的文件，才能用这个头
let jsFlutterRequire = typeof mxRequire != "undefined" ? mxRequire : require;
//VSCode Run support end ================================================================================

//js_flutter_material.js 正式开始，😝

let {
    DartClass,
    FlutterWidget,
} = jsFlutterRequire("./js_flutter_basic_types.js");

class MaterialApp extends FlutterWidget {

    constructor(
        {
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
            debugShowCheckedModeBanner } = {}
    ) {
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

class Material extends FlutterWidget {
    constructor(
        key,
        {
            type,
            elevation,
            color,
            shadowColor,
            textStyle,
            borderRadius,
            shape,
            clipBehavior,
            animationDuration,
            child } = {}
    ) {
        super("Material");

        this.key = key;
        this.type = type;
        this.elevation = elevation;
        this.color = color;
        this.shadowColor = shadowColor;
        this.textStyle = textStyle;
        this.borderRadius = borderRadius;
        this.shape = shape;
        this.clipBehavior = clipBehavior;
        this.animationDuration = animationDuration;
        this.child = child;
    }
}

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
        primary,
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
}

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
        bottomOpacity,
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


class FlatButton extends FlutterWidget {
    constructor ({
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
        child,
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

    static icon({
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
        label,
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
    }
}

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
        child,
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

    static icon({
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
        label,
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
        isExtended,
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
        tooltip,
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
        isExpanded,
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
        offset,
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
    preBuild(jsWidget, buildContext) {

        //先把调用函数
        if(this.itemBuilder){
            this.children = this.itemBuilder(buildContext);
            delete this.itemBuilder;
        }

        //function 转 id
        super.preBuild(jsWidget, buildContext);
    }
}

class ButtonBar extends FlutterWidget {
    constructor({
        key,
        alignment,
        mainAxisSize,
        children,
    } = {}) {
        super();

        this.key = key;
        this.alignment = alignment;
        this.mainAxisSize = mainAxisSize;
        this.children = children;
    }
}

class Icon extends FlutterWidget {
    constructor(
        icon,
        { key,
            size,
            color,
            semanticLabel,
            textDirection,
        } = {}) {
        super();

        this.icon = icon;
        this.key = key;
        this.size = size;
        this.color = color;
        this.semanticLabel = semanticLabel;
        this.textDirection = textDirection;
    }
}

class Hero extends FlutterWidget {
    constructor ({
        key,
        tag,
        createRectTween,
        flightShuttleBuilder,
        placeholderBuilder,
        transitionOnUserGestures,
        child,
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

class Card extends FlutterWidget {
    constructor ({
        key,
        color,
        elevation,
        shape,
        margin,
        clipBehavior,
        child,
        semanticContainer,
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

class MergeSemantics extends FlutterWidget {
    constructor ({
        key,
        child,
    } = {}) {
        super();

        this.key = key;
        this.child = child;
    }
}

class PopupMenuItem extends FlutterWidget {
    constructor ({
        key,
        value,
        enabled,
        height,
        child,
    } = {}) {
        super();

        this.key = key;
        this.value = value;
        this.enabled = enabled;
        this.height = height;
        this.child = child;
    }
}

class FlexibleSpaceBar extends FlutterWidget {
    constructor ({
        key,
        title,
        background,
        centerTitle,
        collapseMode,
    } = {}) {
        super();

        this.key = key;
        this.title = title;
        this.background = background;
        this.centerTitle = centerTitle;
        this.collapseMode = collapseMode;
    }
}

class BottomAppBar extends FlutterWidget {
    constructor ({
        key,
        color,
        elevation,
        shape,
        clipBehavior,
        notchMargin,
        child,
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

class BottomNavigationBar extends FlutterWidget {
    constructor ({
        key,
        items,
        onTap,
        currentIndex,
        type,
        fixedColor,
        iconSize,
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


class Radio extends FlutterWidget {
    constructor ({
        key,
        value,
        groupValue,
        onChanged,
        activeColor,
        materialTapTargetSize,
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

class Semantics extends FlutterWidget {
    constructor ({
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
        customSemanticsActions,
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

class RawMaterialButton extends FlutterWidget {
    constructor ({
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
        child,
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

class CircleBorder extends FlutterWidget {
    constructor ({
        side,
    } = {}) {
        super();

        this.side = side;
    }
}


class SafeArea extends FlutterWidget {
    constructor ({
        key,
        left,
        top,
        right,
        bottom,
        minimum,
        child,
    } = {}) {
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

MaterialTapTargetSize = {
    padded: "MaterialTapTargetSize.padded",
    shrinkWrap: "MaterialTapTargetSize.shrinkWrap",
};


class Builder extends FlutterWidget {
    constructor ({
        key,
        builder,
    } = {}) {
        super();

        this.key = key;
        this.builder = builder;

        // 本地创建的，供flutter使用
        this.child = null;
    }

    preBuild(jsWidget, buildContext) {

        if(this.builder){
            this.child = this.builder(buildContext);
            delete this.builder;
        }

        super.preBuild(jsWidget, buildContext);
    }
}

class DefaultTabController extends FlutterWidget {
    constructor ({
        key,
        length,
        initialIndex,
        child,
    } = {}) {
        super();

        this.key = key;
        this.length = length;
        this.initialIndex = initialIndex;
        this.child = child;
    }
}


class TabBar extends FlutterWidget {
    constructor ({
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
        onTap,
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

class TabController extends FlutterWidget {
    constructor ({
        initialIndex,
        length,
        vsync,
    } = {}) {
        super();

        this.initialIndex = initialIndex;
        this.length = length;
        this.vsync = vsync;
    }
}

class Tab extends FlutterWidget {
    constructor ({
        key,
        text,
        icon,
        child,
    } = {}) {
        super();

        this.key = key;
        this.text = text;
        this.icon = icon;
        this.child = child;
    }
}


class TabBarView extends FlutterWidget {
    constructor ({
        key,
        children,
        controller,
        physics,
        dragStartBehavior,
    } = {}) {
        super();

        this.key = key;
        this.children = children;
        this.controller = controller;
        this.physics = physics;
        this.dragStartBehavior = dragStartBehavior;
    }
}

MaterialTapTargetSize = {
    padded: "MaterialTapTargetSize.padded",
    shrinkWrap: "MaterialTapTargetSize.shrinkWrap",
};

module.exports = {
    MaterialApp,
    Material,
    Scaffold,
    AppBar,
    FlatButton,
    RaisedButton,
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
};