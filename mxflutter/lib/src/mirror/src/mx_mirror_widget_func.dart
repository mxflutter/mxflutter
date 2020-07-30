import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:mxflutter/src/widgets/mx_widgets.dart';

/// 注册widget方法
void registerMirrorWidgetFunc() {
  // Image
  MXMirrorFunc.getInstance()
      .registerBizFunction(registerImageSeries());

  // Meterial
  MXMirrorFunc.getInstance()
      .registerBizFunction(registerMaterialSeries());

  // Layout
  MXMirrorFunc.getInstance()
      .registerBizFunction(registerLayoutSeries());
}
