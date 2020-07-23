import 'package:mxflutter/src/mirror/mx_mirror_func.dart';
import 'package:mxflutter/src/mx_json_proxy_image_new.dart';
import 'package:mxflutter/src/mx_json_proxy_material_new.dart';
import 'package:mxflutter/src/mx_json_proxy_layout_new.dart';

// 向JS提供MXMirror example,
class MXMirrorWidgetFunc {
  // 注册widget方法
  static void registerWidgetFunc() {
    // Image
    MXMirrorFunc.getInstance().registerBizFunction(MXRegisterImageSeries.registerSeries());

    // Meterial
    MXMirrorFunc.getInstance().registerBizFunction(MXRegisterMeterialSeries.registerSeries());

    // Layout
    MXMirrorFunc.getInstance().registerBizFunction(MXRegisterLayoutSeries.registerSeries());
  }
}