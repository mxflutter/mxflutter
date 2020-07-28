import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:mxflutter/src/widgets/mx_widgets.dart';

/// 注册widget方法
class MXMirrorWidgetFunc {
  // 注册widget方法
  static void registerWidgetFunc() {
    // Image
    MXMirrorFunc.getInstance().registerBizFunction(MXRegisterImageSeries.registerSeries());

    // Meterial
    MXMirrorFunc.getInstance().registerBizFunction(MXRegisterMaterialSeries.registerSeries());

    // Layout
    MXMirrorFunc.getInstance().registerBizFunction(MXRegisterLayoutSeries.registerSeries());
  }
}