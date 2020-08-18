import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:mxflutter/src/widgets/mx_widgets.dart';
import 'package:mxflutter/src/pkg/cached_network_image/cached_network_image.dart';
import 'package:mxflutter/src/pkg/pull_to_refresh/pull_to_refresh.dart';
import 'package:mxflutter/src/mx_json_state_widget.dart';
import 'package:mxflutter/src/pkg/dio/dio.dart';

/// 注册自动生成的widget方法
void registerBuilderWidgetFunc() {
  // mx_dart_sdk
  MXMirror.getInstance().registerFunctions(registerMxDartSdkSeries());

  // flutter/animation
  MXMirror.getInstance()
      .registerFunctions(registerAnimationLibrarySeries());
  // flutter/cupertino
  MXMirror.getInstance()
      .registerFunctions(registerCupertinoLibrarySeries());
  // flutter/foundation
  MXMirror.getInstance()
      .registerFunctions(registerFoundationLibrarySeries());
  // flutter/gestures
  MXMirror.getInstance()
      .registerFunctions(registerGesturesLibrarySeries());
  // flutter/material
  MXMirror.getInstance()
      .registerFunctions(registerMaterialLibrarySeries());
  // flutter/painting
  MXMirror.getInstance()
      .registerFunctions(registerPaintingLibrarySeries());
  // flutter/physics
  MXMirror.getInstance()
      .registerFunctions(registerPhysicsLibrarySeries());
  // flutter/rendering
  MXMirror.getInstance()
      .registerFunctions(registerRenderingLibrarySeries());
  // flutter/scheduler
  MXMirror.getInstance()
      .registerFunctions(registerSchedulerLibrarySeries());
  // flutter/semantics
  MXMirror.getInstance()
      .registerFunctions(registerSemanticsLibrarySeries());
  // flutter/services
  MXMirror.getInstance()
      .registerFunctions(registerServicesLibrarySeries());
  // flutter/widgets
  MXMirror.getInstance()
      .registerFunctions(registerWidgetsLibrarySeries());
}

/// 注册MXJSStatefulWidget和MXJSStatelessWidget方法
void registerStateWidgetFunc() {
  // widget代码。这是自动生成的widget注册
  MXMirror.getInstance()
      .registerFunctions(registerMXJSStateWidgetSeries());
}

/// 注册第三方库方法
void registerThirdPartyWidgetFunc() {
  // cache_network_image
  MXMirror.getInstance()
      .registerFunctions(registerCachedNetworkImageSeries());

  // pull_to_refresh
  MXMirror.getInstance().registerFunctions(registerPullToRefreshSeries());

  // dio
  MXMirror.getInstance().registerFunctions(registerDioLibrarySeries());
}
