import 'package:mxflutter/src/mirror/mx_mirror_func.dart';
import 'package:mxflutter/src/widgets/1.17/image/mx_json_proxy_image_new.dart';
import 'package:mxflutter/src/widgets/1.17/material/mx_json_proxy_material_new.dart';
import 'package:mxflutter/src/widgets/1.17/layout/mx_json_proxy_layout_new.dart';

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