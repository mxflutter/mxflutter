import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:mxflutter/src/widgets/mx_widgets.dart';

/// 注册widget方法
void registerMirrorWidgetFunc() {
  //TODO: 待删除
  // Image
  MXMirrorFunc.getInstance().registerBizFunction(registerImageSeriesOld());

  // Meterial
  MXMirrorFunc.getInstance().registerBizFunction(registerMaterialSeriesOld());

  // Layout
  MXMirrorFunc.getInstance().registerBizFunction(registerLayoutSeriesOld());

  // flutter/animation
  MXMirrorFunc.getInstance().registerBizFunction(registerAnimationSeries());

  // flutter/cupertino
  MXMirrorFunc.getInstance().registerBizFunction(registerCupertinoSeries());

  // flutter/foundation
  MXMirrorFunc.getInstance().registerBizFunction(registerFoundationSeries());

  // flutter/gestures
  MXMirrorFunc.getInstance().registerBizFunction(registerGesturesSeries());

  // flutter/material
  MXMirrorFunc.getInstance().registerBizFunction(registerMaterialSeries());

  // flutter/painting
  MXMirrorFunc.getInstance().registerBizFunction(registerPaintingSeries());

  // flutter/physics
  MXMirrorFunc.getInstance().registerBizFunction(registerPhysicsSeries());

  // flutter/rendering
  MXMirrorFunc.getInstance().registerBizFunction(registerRenderingSeries());

  // flutter/scheduler
  MXMirrorFunc.getInstance().registerBizFunction(registerSchedulerSeries());

  // flutter/semantics
  MXMirrorFunc.getInstance().registerBizFunction(registerSemanticsSeries());

  // flutter/services
  MXMirrorFunc.getInstance().registerBizFunction(registerServicesSeries());

  // flutter/widgets
  MXMirrorFunc.getInstance().registerBizFunction(registerWidgetsSeries());
}
