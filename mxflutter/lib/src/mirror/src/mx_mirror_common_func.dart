import 'mx_function_invoke.dart';
import 'mx_mirror_func.dart';
import 'mx_mirror_object.dart';

/// 注册common方法
void registerMirrorCommonFunc() {
  var funMap = <String, MXFunctionInvoke>{};

  // 移除Mirror对象
  var removeMirrorObject = MXFunctionInvoke(
      "MXMirrorObject_removeMirrorObject",
      ({String mirrorID}) =>
          MXMirrorObject.getInstance().removeMirrorObject(mirrorID));
  funMap[removeMirrorObject.funName] = removeMirrorObject;

  // 其他方法往这里加

  MXMirrorFunc.getInstance().registerBizFunction(funMap);
}