import 'package:mxflutter/src/mirror/mx_function_invoke.dart';
import 'package:mxflutter/src/mirror/mx_mirror_func.dart';
import 'package:mxflutter/src/mirror/mx_mirror_object.dart';

class MXMirrorCommonFunc {
  /// 注册common方法
  static void registerCommonFunc() {
    Map<String, MXFunctionInvoke> funMap = {};

    // 移除Mirror对象
    var removeMirrorObject = MXFunctionInvoke("MXMirror_removeMirrorObject", ({String mirrorID}) =>
        MXMirrorObject.getInstance().removeMirrorObject(mirrorID));
    funMap[removeMirrorObject.funName] = removeMirrorObject;

    // 其他方法往这里加

    MXMirrorFunc.getInstance().registerBizFunction(funMap);
  }
}