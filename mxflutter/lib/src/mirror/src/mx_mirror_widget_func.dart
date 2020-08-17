import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:mxflutter/src/widgets/mx_widgets.dart';
import 'package:mxflutter/src/widgets/src/packages/flutter/src/foundation/collections.dart';
import 'package:mxflutter/src/pkg/cached_network_image/mx_json_proxy_cached_network_image.dart';
import 'package:mxflutter/src/pkg/pull_to_refresh/mx_json_proxy_pull_to_refresh.dart';
import 'package:mxflutter/src/mx_json_state_widget.dart';

/// 注册自动生成的widget方法
void registerBuilderWidgetFunc() {
  // mx_dart_sdk
  MXMirrorFunc.getInstance().registerBizFunction(registerMxDartSdkSeries());

  // flutter/animation
  MXMirrorFunc.getInstance()
      .registerBizFunction(registerAnimationLibrarySeries());
  // flutter/cupertino
  MXMirrorFunc.getInstance()
      .registerBizFunction(registerCupertinoLibrarySeries());
  // flutter/foundation
  MXMirrorFunc.getInstance()
      .registerBizFunction(registerFoundationLibrarySeries());
  // flutter/gestures
  MXMirrorFunc.getInstance()
      .registerBizFunction(registerGesturesLibrarySeries());
  // flutter/material
  MXMirrorFunc.getInstance()
      .registerBizFunction(registerMaterialLibrarySeries());
  // flutter/painting
  MXMirrorFunc.getInstance()
      .registerBizFunction(registerPaintingLibrarySeries());
  // flutter/physics
  MXMirrorFunc.getInstance()
      .registerBizFunction(registerPhysicsLibrarySeries());
  // flutter/rendering
  MXMirrorFunc.getInstance()
      .registerBizFunction(registerRenderingLibrarySeries());
  // flutter/scheduler
  MXMirrorFunc.getInstance()
      .registerBizFunction(registerSchedulerLibrarySeries());
  // flutter/semantics
  MXMirrorFunc.getInstance()
      .registerBizFunction(registerSemanticsLibrarySeries());
  // flutter/services
  MXMirrorFunc.getInstance()
      .registerBizFunction(registerServicesLibrarySeries());
  // flutter/widgets
  MXMirrorFunc.getInstance()
      .registerBizFunction(registerWidgetsLibrarySeries());
}

/// 注册MXJSStatefulWidget和MXJSStatelessWidget方法
void registerStateWidgetFunc() {
  // widget代码。这是自动生成的widget注册
  MXMirrorFunc.getInstance()
      .registerBizFunction(registerMXJSStateWidgetSeries());
}

/// 注册第三方库方法
void registerThirdPartyWidgetFunc() {
  // cache_network_image
  MXMirrorFunc.getInstance()
      .registerBizFunction(registerCachedNetworkImageSeries());

  // pull_to_refresh
  MXMirrorFunc.getInstance().registerBizFunction(registerPullToRefreshSeries());
}
