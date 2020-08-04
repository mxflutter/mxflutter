import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:mxflutter/src/widgets/mx_widgets.dart';

/// 注册widget方法
void registerMirrorWidgetFunc() {
  //TODO: 待删除
  // Image
  MXMirrorFunc.getInstance().registerBizFunction(registerImageSeries());

  // Meterial
  MXMirrorFunc.getInstance().registerBizFunction(registerMaterialSeries());

  // Layout
  MXMirrorFunc.getInstance().registerBizFunction(registerLayoutSeries());

  // flutter/animation
  MXMirrorFunc.getInstance()
      .registerBizFunction(MXProxyAnimation.registerSeries());

  // flutter/cupertino
  MXMirrorFunc.getInstance()
      .registerBizFunction(MXProxyCupertino.registerSeries());

  // flutter/foundation
  MXMirrorFunc.getInstance()
      .registerBizFunction(MXProxyFoundation.registerSeries());

  // flutter/gestures
  MXMirrorFunc.getInstance()
      .registerBizFunction(MXProxyGestures.registerSeries());

  // flutter/material
  MXMirrorFunc.getInstance()
      .registerBizFunction(MXProxyMaterial.registerSeries());

  // flutter/painting
  MXMirrorFunc.getInstance()
      .registerBizFunction(MXProxyPainting.registerSeries());

  // flutter/physics
  MXMirrorFunc.getInstance()
      .registerBizFunction(MXProxyPhysics.registerSeries());

  // flutter/rendering
  MXMirrorFunc.getInstance()
      .registerBizFunction(MXProxyRendering.registerSeries());

  // flutter/scheduler
  MXMirrorFunc.getInstance()
      .registerBizFunction(MXProxyScheduler.registerSeries());

  // flutter/semantics
  MXMirrorFunc.getInstance()
      .registerBizFunction(MXProxySemantics.registerSeries());

  // flutter/services
  MXMirrorFunc.getInstance()
      .registerBizFunction(MXProxyServices.registerSeries());

  // flutter/widgets
  MXMirrorFunc.getInstance()
      .registerBizFunction(MXProxyWidgets.registerSeries());
}
