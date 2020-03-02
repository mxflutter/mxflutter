let {
    FlutterWidget,
    FlutterCallArgs
} = require("js_flutter_basic_types.js");

let { 
    invokeFlutterFunction 
} = require("js_flutter_framework.js");

LoadStatus = {
    start: {
        _name: "CrossAxisAlignment.idle",
        index: 0
    },
    end: {
        _name: "CrossAxisAlignment.canLoading",
        index: 1
    },
    center: {
        _name: "CrossAxisAlignment.loading",
        index: 2
    },
    stretch: {
        _name: "CrossAxisAlignment.noMore",
        index: 3
    },
    baseline: {
        _name: "CrossAxisAlignment.failed",
        index: 4
    }
};

class RefreshConfiguration extends FlutterWidget {
    constructor({
        child,
        headerBuilder,
        footerBuilder,
        dragSpeedRatio,
        shouldFooterFollowWhenNotFull,
        enableScrollWhenTwoLevel,
        enableLoadingWhenNoData,
        enableBallisticRefresh,
        springDescription,
        enableScrollWhenRefreshCompleted,
        enableLoadingWhenFailed,
        twiceTriggerDistance,
        closeTwoLevelDistance,
        skipCanRefresh,
        autoLoad,
        maxOverScrollExtent,
        enableBallisticLoad,
        maxUnderScrollExtent,
        headerTriggerDistance,
        footerTriggerDistance,
        hideFooterWhenNotFull,
        topHitBoundary,
        bottomHitBoundary,
    } = {}) {
        super();

        this.child = child;
        this.headerBuilder = headerBuilder;
        this.footerBuilder = footerBuilder;
        this.dragSpeedRatio = dragSpeedRatio;
        this.shouldFooterFollowWhenNotFull = shouldFooterFollowWhenNotFull;
        this.enableScrollWhenTwoLevel = enableScrollWhenTwoLevel;
        this.enableLoadingWhenNoData = enableLoadingWhenNoData;
        this.enableBallisticRefresh = enableBallisticRefresh;
        this.springDescription = springDescription;
        this.enableScrollWhenRefreshCompleted = enableScrollWhenRefreshCompleted;
        this.enableLoadingWhenFailed = enableLoadingWhenFailed;
        this.twiceTriggerDistance = twiceTriggerDistance;
        this.closeTwoLevelDistance = closeTwoLevelDistance;
        this.skipCanRefresh = skipCanRefresh;
        this.autoLoad = autoLoad;
        this.maxOverScrollExtent = maxOverScrollExtent;
        this.enableBallisticLoad = enableBallisticLoad;
        this.maxUnderScrollExtent = maxUnderScrollExtent;
        this.headerTriggerDistance = headerTriggerDistance;
        this.footerTriggerDistance = footerTriggerDistance;
        this.hideFooterWhenNotFull = hideFooterWhenNotFull;
        this.topHitBoundary = topHitBoundary;
        this.bottomHitBoundary = bottomHitBoundary;
    }
}

RefreshConfiguration.new = function (arg) {
    return new RefreshConfiguration(arg);
};

class SmartRefresher extends FlutterWidget {
    constructor({
        key,
        controller,
        child,
        header,
        footer,
        enablePullDown,
        enablePullUp,
        enableTwoLevel,
        onRefresh,
        onLoading,
        onTwoLevel,
        onOffsetChange,
        dragStartBehavior,
        primary,
        cacheExtent,
        semanticChildCount,
        reverse,
        physics,
        scrollDirection,
        scrollController,
    } = {}) {
        super();

        this.key = key;
        this.controller = controller;
        this.child = child;
        this.header = header;
        this.footer = footer;
        this.enablePullDown = enablePullDown;
        this.enablePullUp = enablePullUp;
        this.enableTwoLevel = enableTwoLevel;
        this.onRefresh = onRefresh;
        this.onLoading = onLoading;
        this.onTwoLevel = onTwoLevel;
        this.onOffsetChange = onOffsetChange;
        this.dragStartBehavior = dragStartBehavior;
        this.primary = primary;
        this.cacheExtent = cacheExtent;
        this.semanticChildCount = semanticChildCount;
        this.reverse = reverse;
        this.physics = physics;
        this.scrollDirection = scrollDirection;
        this.scrollController = scrollController;
    }
}

SmartRefresher.new = function (arg) {
    return new SmartRefresher(arg);
};

class ClassicFooter extends FlutterWidget {
    constructor({
        key,
        onClick,
        loadStyle,
        height,
        outerBuilder,
        textStyle,
        loadingText,
        noDataText,
        noMoreIcon,
        idleText,
        failedText,
        canLoadingText,
        failedIcon,
        iconPos,
        spacing,
        completeDuration,
        loadingIcon,
        canLoadingIcon,
        idleIcon,
    } = {}) {
        super();

        this.key = key;
        this.onClick = onClick;
        this.loadStyle = loadStyle;
        this.height = height;
        this.outerBuilder = outerBuilder;
        this.textStyle = textStyle;
        this.loadingText = loadingText;
        this.noDataText = noDataText;
        this.noMoreIcon = noMoreIcon;
        this.idleText = idleText;
        this.failedText = failedText;
        this.canLoadingText = canLoadingText;
        this.failedIcon = failedIcon;
        this.iconPos = iconPos;
        this.spacing = spacing;
        this.completeDuration = completeDuration;
        this.loadingIcon = loadingIcon;
        this.canLoadingIcon = canLoadingIcon;
        this.idleIcon = idleIcon;
    }
}

ClassicFooter.new = function (arg) {
    return new ClassicFooter(arg);
};

LoadStyle = {
    ShowAlways: {
        _name: "LoadStyle.ShowAlways",
        index: 0
    },
    HideAlways: {
        _name: "LoadStyle.HideAlways",
        index: 1
    },
    ShowWhenLoading: {
        _name: "LoadStyle.ShowWhenLoading",
        index: 2
    },
};

IconPosition = {
    left: {
        _name: "IconPosition.left",
        index: 0
    },
    right: {
        _name: "IconPosition.right",
        index: 1
    },
    top: {
        _name: "IconPosition.top",
        index: 2
    },
    bottom: {
        _name: "IconPosition.bottom",
        index: 3
    },
};

class RefreshController extends FlutterWidget {
    constructor({
        initialRefresh,
        initialRefreshStatus,
        initialLoadStatus,
    } = {}) {
        super();

        this.initialRefresh = initialRefresh;
        this.initialRefreshStatus = initialRefreshStatus;
        this.initialLoadStatus = initialLoadStatus;

        this.createMirrorObjectID();
    }

    loadComplete() {
        var argument = new FlutterCallArgs({
            mirrorID: this.mirrorID,
            className: "RefreshController",
            funcName: "loadComplete",
            args: {}
        });
        invokeFlutterFunction(argument);
    }
    
    loadFailed() {
        var argument = new FlutterCallArgs({
            mirrorID: this.mirrorID,
            className: "RefreshController",
            funcName: "loadFailed",
            args: {}
        });
        invokeFlutterFunction(argument);
    }
    
    loadNoData() {
        var argument = new FlutterCallArgs({
            mirrorID: this.mirrorID,
            className: "RefreshController",
            funcName: "loadNoData",
            args: {}
        });
        invokeFlutterFunction(argument);
    }
}

RefreshController.new = function (arg) {
    return new RefreshController(arg);
};

RefreshStatus = {
	idle:{ _name: "RefreshStatus.idle", index: 0 },
	canRefresh:{ _name: "RefreshStatus.canRefresh", index: 1 },
	refreshing:{ _name: "RefreshStatus.refreshing", index: 2 },
	completed:{ _name: "RefreshStatus.completed", index: 3 },
	failed:{ _name: "RefreshStatus.failed", index: 4 },
	canTwoLevel:{ _name: "RefreshStatus.canTwoLevel", index: 5 },
	twoLevelOpening:{ _name: "RefreshStatus.twoLevelOpening", index: 6 },
	twoLeveling:{ _name: "RefreshStatus.twoLeveling", index: 7 },
	twoLevelClosing:{ _name: "RefreshStatus.twoLevelClosing", index: 8 },
};

src__smart_refresher = Object.create(null);
src__smart_refresher.SmartRefresher = SmartRefresher;
src__smart_refresher.RefreshConfiguration = RefreshConfiguration;
src__smart_refresher.RefreshController = RefreshController;
src__smart_refresher.LoadStatus = LoadStatus;
src__smart_refresher.LoadStyle = LoadStyle;
src__smart_refresher.IconPosition = IconPosition;

src__indicator__classic_indicator = Object.create(null);
src__indicator__classic_indicator.ClassicFooter = ClassicFooter;

exports.src__smart_refresher = src__smart_refresher;
exports.src__indicator__classic_indicator = src__indicator__classic_indicator;