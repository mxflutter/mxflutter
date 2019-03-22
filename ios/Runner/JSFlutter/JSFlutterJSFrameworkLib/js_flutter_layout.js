//VSCode Run support=====================================================================================
//为便于在JS IDE如VSCode，webStorm里脱离APP环境执行JS，以快速验证JS代码正确性
//如果不在App环境，Native接口重定向到JS同名函数打印调用
//jsFlutterRequire 转调Node运行环境中的require
//只有JSFlutterJSFrameworkLib中的文件，才能用这个头
let jsFlutterRequire = typeof mxRequire != "undefined" ? mxRequire : require;
//VSCode Run support end ================================================================================

//js_flutter_layout.js 正式开始，😝

let {
    DartClass,
    FlutterWidget,
} = jsFlutterRequire("./js_flutter_basic_types.js");

class Center extends FlutterWidget {
    constructor({
        key,
        widthFactor,
        heightFactor,
        child,
    } = {}) {
        super("Center");

        this.key = key;
        this.widthFactor = widthFactor;
        this.heightFactor = heightFactor;
        this.child = child;
    }
}

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
        child,
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

class Padding extends DartClass {
    constructor({
        key,
        padding,
        child,
    } = {}) {
        super();

        this.key = key;
        this.padding = padding;
        this.child = child;
    }
}

class Align extends FlutterWidget {
    constructor({
        key,
        alignment,
        widthFactor,
        heightFactor,
        child,
    } = {}) {
        super();

        this.key = key;
        this.alignment = alignment;
        this.widthFactor = widthFactor;
        this.heightFactor = heightFactor;
        this.child = child;
    }
}


class FittedBox extends FlutterWidget {
    constructor({
        key,
        fit,
        alignment,
        child,
    } = {}) {
        super();

        this.key = key;
        this.fit = fit;
        this.alignment = alignment;
        this.child = child;
    }
}

class AspectRatio extends FlutterWidget {
    constructor({
        key,
        aspectRatio,
        child,
    } = {}) {
        super();

        this.key = key;
        this.aspectRatio = aspectRatio;
        this.child = child;
    }
}

class ConstrainedBox extends FlutterWidget {
    constructor({
        key,
        constraints,
        child,
    } = {}) {
        super();

        this.key = key;
        this.constraints = constraints;
        this.child = child;
    }
}

class Baseline extends FlutterWidget {
    constructor({
        key,
        baseline,
        baselineType,
        child,
    } = {}) {
        super();

        this.key = key;
        this.baseline = baseline;
        this.baselineType = baselineType;
        this.child = child;
    }
}

class FractionallySizedBox extends FlutterWidget {
    constructor({
        key,
        alignment,
        widthFactor,
        heightFactor,
        child,
    } = {}) {
        super();

        this.key = key;
        this.alignment = alignment;
        this.widthFactor = widthFactor;
        this.heightFactor = heightFactor;
        this.child = child;
    }
}

class IntrinsicHeight extends FlutterWidget {
    constructor({
        key,
        child,
    } = {}) {
        super();

        this.key = key;
        this.child = child;
    }
}

class IntrinsicWidth extends FlutterWidget {
    constructor({
        key,
        stepWidth,
        stepHeight,
        child,
    } = {}) {
        super();

        this.key = key;
        this.stepWidth = stepWidth;
        this.stepHeight = stepHeight;
        this.child = child;
    }
}

class LimitedBox extends FlutterWidget {
    constructor({
        key,
        maxWidth,
        maxHeight,
        child,
    } = {}) {
        super();

        this.key = key;
        this.maxWidth = maxWidth;
        this.maxHeight = maxHeight;
        this.child = child;
    }
}

class Offstage extends FlutterWidget {
    constructor({
        key,
        offstage,
        child,
    } = {}) {
        super();

        this.key = key;
        this.offstage = offstage;
        this.child = child;
    }
}

class OverflowBox extends FlutterWidget {
    constructor({
        key,
        alignment,
        minWidth,
        maxWidth,
        minHeight,
        maxHeight,
        child,
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


class SizedBox extends FlutterWidget {
    constructor({
        key,
        width,
        height,
        child,
    } = {}) {
        super();

        this.key = key;
        this.width = width;
        this.height = height;
        this.child = child;
    }
}


class SizedOverflowBox extends FlutterWidget {
    constructor({
        key,
        size,
        alignment,
        child,
    } = {}) {
        super();

        this.key = key;
        this.size = size;
        this.alignment = alignment;
        this.child = child;
    }
}


class Transform extends FlutterWidget {
    constructor({
        key,
        transform,
        origin,
        alignment,
        transformHitTests,
        child,
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

class CustomSingleChildLayout extends FlutterWidget {
    constructor({
        key,
        delegate,
        child,
    } = {}) {
        super();

        this.key = key;
        this.delegate = delegate;
        this.child = child;
    }
}

class Row extends FlutterWidget {
    constructor({
        key,
        mainAxisAlignment,
        mainAxisSize,
        crossAxisAlignment,
        textDirection,
        verticalDirection,
        textBaseline,
        children,
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

class Column extends FlutterWidget {
    constructor({
        key,
        mainAxisAlignment,
        mainAxisSize,
        crossAxisAlignment,
        textDirection,
        verticalDirection,
        textBaseline,
        children,
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

class Stack extends FlutterWidget {
    constructor({
        key,
        alignment,
        textDirection,
        fit,
        overflow,
        children,
    } = {}) {
        super();

        this.key = key;
        this.alignment = alignment;
        this.textDirection = textDirection;
        this.fit = fit;
        this.overflow = overflow;
        this.children = children;
    }
}

class IndexedStack extends FlutterWidget {
    constructor({
        key,
        alignment,
        textDirection,
        sizing,
        index,
        children,
    } = {}) {
        super();

        this.key = key;
        this.alignment = alignment;
        this.textDirection = textDirection;
        this.sizing = sizing;
        this.index = index;
        this.children = children;
    }
}

class Flow extends FlutterWidget {
    constructor({
        key,
        delegate,
        children,
    } = {}) {
        super();

        this.key = key;
        this.delegate = delegate;
        this.children = children;
    }
}

class Table extends FlutterWidget {
    constructor({
        key,
        children,
        columnWidths,
        defaultColumnWidth,
        textDirection,
        border,
        defaultVerticalAlignment,
        textBaseline,
    } = {}) {
        super();

        this.key = key;
        this.children = children;
        this.columnWidths = columnWidths;
        this.defaultColumnWidth = defaultColumnWidth;
        this.textDirection = textDirection;
        this.border = border;
        this.defaultVerticalAlignment = defaultVerticalAlignment;
        this.textBaseline = textBaseline;
    }
}

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
        children,
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

class ListBody extends FlutterWidget {
    constructor({
        key,
        mainAxis,
        reverse,
        children,
    } = {}) {
        super();

        this.key = key;
        this.mainAxis = mainAxis;
        this.reverse = reverse;
        this.children = children;
    }
}

class CustomMultiChildLayout extends FlutterWidget {
    constructor({
        key,
        delegate,
        children,
    } = {}) {
        super();

        this.key = key;
        this.delegate = delegate;
        this.children = children;
    }
}

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
        semanticChildCount,
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
        selected,
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


class LayoutBuilder extends FlutterWidget {
    constructor({
        key,
        builder,
    } = {}) {
        super();

        this.key = key;
        this.builder = builder;
    }
}

class CustomScrollView extends FlutterWidget {
    constructor ({
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
        dragStartBehavior,
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
        snap,
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


class SliverPadding extends FlutterWidget {
    constructor({
        key,
        padding,
        sliver,
    } = {}) {
        super();

        this.key = key;
        this.padding = padding;
        this.sliver = sliver;
    }
}

class SliverGrid extends FlutterWidget {
    constructor({
        key,
        delegate,
        gridDelegate,
    } = {}) {
        super();

        this.key = key;
        this.delegate = delegate;
        this.gridDelegate = gridDelegate;
    }
}

class SliverGridDelegateWithMaxCrossAxisExtent extends FlutterWidget {
    constructor({
        maxCrossAxisExtent,
        mainAxisSpacing,
        crossAxisSpacing,
        childAspectRatio,
    } = {}) {
        super();

        this.maxCrossAxisExtent = maxCrossAxisExtent;
        this.mainAxisSpacing = mainAxisSpacing;
        this.crossAxisSpacing = crossAxisSpacing;
        this.childAspectRatio = childAspectRatio;
    }
}

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
        excludeFromSemantics,
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

class Expanded extends FlutterWidget {
    constructor({
        key,
        flex,
        child,
    } = {}) {
        super();

        this.key = key;
        this.flex = flex;
        this.child = child;
    }
}

class DecoratedBox extends FlutterWidget {
    constructor ({
        key,
        decoration,
        position,
        child,
    } = {}) {
        super();

        this.key = key;
        this.decoration = decoration;
        this.position = position;
        this.child = child;
    }
}

class SliverList extends FlutterWidget {
    constructor ({
        key,
        delegate,
    } = {}) {
        super();

        this.key = key;
        this.delegate = delegate;
    }
}

HitTestBehavior = {
    deferToChild: "HitTestBehavior.deferToChild",
    opaque: "HitTestBehavior.opaque",
    translucent: "HitTestBehavior.translucent",
};

DragStartBehavior = {
    down: "DragStartBehavior.down",
    start: "DragStartBehavior.start",
};

DecorationPosition = {
    background: "DecorationPosition.background",
    foreground: "DecorationPosition.foreground",
};


class SliverOverlapInjector extends FlutterWidget {
    constructor ({
        key,
        handle,
        child,
    } = {}) {
        super();

        this.key = key;
        this.handle = handle;
        this.child = child;
    }
}

class SliverFixedExtentList extends FlutterWidget {
    constructor ({
        key,
        delegate,
        itemExtent,
    } = {}) {
        super();

        this.key = key;
        this.delegate = delegate;
        this.itemExtent = itemExtent;
    }
}

class NestedScrollView extends FlutterWidget {
    constructor ({
        key,
        controller,
        scrollDirection,
        reverse,
        physics,
        headerSliverBuilder,
        body,
        dragStartBehavior,
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

    preBuild(jsWidget, buildContext) {

        ///TODO: innerBoxIsScrolled 暂时不支持，默认为false
        if(this.headerSliverBuilder){
            this.children = this.headerSliverBuilder(buildContext);
            delete this.headerSliverBuilder;
        }

        super.preBuild(jsWidget, buildContext);
    }

    static sliverOverlapAbsorberHandleFor(context) {
        let v = new NestedScrollView();
        v.staticFunctionName = "sliverOverlapAbsorberHandleFor";

        return v;
    }
}

class SliverOverlapAbsorber extends FlutterWidget {
    constructor ({
        key,
        handle,
        child,
    } = {}) {
        super();

        this.key = key;
        this.handle = handle;
        this.child = child;
    }
}


class SingleChildScrollView extends FlutterWidget {
    constructor ({
        key,
        scrollDirection,
        reverse,
        padding,
        primary,
        physics,
        controller,
        child,
        dragStartBehavior,
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
};