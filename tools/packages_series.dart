
import 'dart_builder.dart';

var list = <String>[
  """
  enum LoadStatus {
  /// Initial state, which can be triggered loading more by gesture pull up
  idle,

  canLoading,

  /// indicator is loading more data
  loading,

  /// indicator is no more data to loading,this state doesn't allow to load more whatever
  noMore,

  /// indicator load failed,Initial state, which can be click retry,If you need to pull up trigger load more,you should set enableLoadingWhenFailed = true in RefreshConfiguration
  failed
}
  """,

  """
  RefreshConfiguration({
    @required this.child,
      this.headerBuilder,
      this.footerBuilder,
      this.dragSpeedRatio = 1.0,
      this.shouldFooterFollowWhenNotFull,
      this.enableScrollWhenTwoLevel = true,
      this.enableLoadingWhenNoData = false,
      this.enableBallisticRefresh = false,
      this.springDescription,
      this.enableScrollWhenRefreshCompleted = false,
      this.enableLoadingWhenFailed = true,
      this.twiceTriggerDistance = 150.0,
      this.closeTwoLevelDistance = 80.0,
      this.skipCanRefresh = false,
      this.autoLoad = true,
      this.maxOverScrollExtent,
      this.enableBallisticLoad = true,
      this.maxUnderScrollExtent,
      this.headerTriggerDistance = 80.0,
      this.footerTriggerDistance = 15.0,
      this.hideFooterWhenNotFull = false,
      this.topHitBoundary,
      this.bottomHitBoundary
    })
  """,

  """
  SmartRefresher({
    Key key,
      @required this.controller,
      this.child,
      this.header,
      this.footer,
      this.enablePullDown = true,
      this.enablePullUp = false,
      this.enableTwoLevel = false,
      this.onRefresh,
      this.onLoading,
      this.onTwoLevel,
      this.onOffsetChange,
      this.dragStartBehavior,
      this.primary,
      this.cacheExtent,
      this.semanticChildCount,
      this.reverse,
      this.physics,
      this.scrollDirection,
      this.scrollController
      })
  """,

  """
  const ClassicFooter({
    Key key,
    VoidCallback onClick,
    LoadStyle loadStyle = LoadStyle.ShowAlways,
    double height = 60.0,
    this.outerBuilder,
    this.textStyle = const TextStyle(color: Colors.grey),
    this.loadingText,
    this.noDataText,
    this.noMoreIcon,
    this.idleText,
    this.failedText,
    this.canLoadingText,
    this.failedIcon = const Icon(Icons.error, color: Colors.grey),
    this.iconPos = IconPosition.left,
    this.spacing = 15.0,
    this.completeDuration = const Duration(milliseconds: 300),
    this.loadingIcon,
    this.canLoadingIcon = const Icon(Icons.autorenew, color: Colors.grey),
    this.idleIcon = const Icon(Icons.arrow_upward, color: Colors.grey),
  })
  """,

  """
  enum LoadStyle {
  /// indicator always own layoutExtent whatever the state
  ShowAlways,

  /// indicator always own 0.0 layoutExtent whatever the state
  HideAlways,

  /// indicator always own layoutExtent when loading state, the other state is 0.0 layoutExtent
  ShowWhenLoading
}
""",

"""
enum IconPosition {
   left, 
   right, 
   top,
   bottom 
  }
""",

"""
CachedNetworkImage({
    Key key,
    @required this.imageUrl,
    this.imageBuilder,
    this.placeholder,
    this.errorWidget,
    this.fadeOutDuration = const Duration(milliseconds: 1000),
    this.fadeOutCurve = Curves.easeOut,
    this.fadeInDuration = const Duration(milliseconds: 500),
    this.fadeInCurve = Curves.easeIn,
    this.width,
    this.height,
    this.fit,
    this.alignment = Alignment.center,
    this.repeat = ImageRepeat.noRepeat,
    this.matchTextDirection = false,
    this.httpHeaders,
    this.cacheManager,
    this.useOldImageOnUrlChange = false,
    this.color,
    this.filterQuality = FilterQuality.low,
    this.colorBlendMode,
    this.placeholderFadeInDuration,
  }) 
  """,

  """
    RefreshController({
      this.initialRefresh = false,
      RefreshStatus initialRefreshStatus,
      LoadStatus initialLoadStatus
      })
  """,

  """
  enum RefreshStatus {
  /// Initial state, when not being overscrolled into, or after the overscroll
  /// is canceled or after done and the sliver retracted away.
  idle,

  /// Dragged far enough that the onRefresh callback will callback
  canRefresh,

  /// the indicator is refreshing,waiting for the finish callback
  refreshing,

  /// the indicator refresh completed
  completed,

  /// the indicator refresh failed
  failed,

  ///  Dragged far enough that the onTwoLevel callback will callback
  canTwoLevel,

  ///  indicator is opening twoLevel
  twoLevelOpening,

  /// indicator is in twoLevel
  twoLeveling,

  ///  indicator is closing twoLevel
  twoLevelClosing
}
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