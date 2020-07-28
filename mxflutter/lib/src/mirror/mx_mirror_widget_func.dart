import 'package:mxflutter/src/mirror/mx_mirror_func.dart';
import 'package:mxflutter/src/widgets/image/mx_json_proxy_image_new.dart';
import 'package:mxflutter/src/widgets/material/mx_json_proxy_material_new.dart';
import 'package:mxflutter/src/widgets/layout/mx_json_proxy_layout_new.dart';

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