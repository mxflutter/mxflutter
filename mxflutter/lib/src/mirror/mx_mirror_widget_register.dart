import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:mxflutter/src/mx_json_proxy_image_new.dart';
import 'package:mxflutter/src/mx_json_proxy_material_new.dart';
import 'package:mxflutter/src/mx_json_proxy_layout_new.dart';

// 向JS提供MXMirror example,
class MXMirrorWidgetRegister {
  // 注册widget方法
  static void registerWidgetFunc() {
    // Image
    MXMirror.getInstance().registerBizFunction(MXRegisterImageSeries.registerSeries());

    // Meterial
    MXMirror.getInstance().registerBizFunction(MXRegisterMeterialSeries.registerSeries());

    // Layout
    MXMirror.getInstance().registerBizFunction(MXRegisterLayoutSeries.registerSeries());
  }
}