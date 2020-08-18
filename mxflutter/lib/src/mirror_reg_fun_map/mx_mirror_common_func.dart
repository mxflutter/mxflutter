import '../mirror/mx_mirror.dart';


/// 注册common方法
void registerMirrorCommonFunc() {
  var funMap = <String, MXFunctionInvoke>{};

  // 移除Mirror对象
  var removeMirrorObject = MXFunctionInvoke(
      "MXMirrorObject#removeMirrorObject",
      ({String mirrorID}) =>
          MXMirror.getInstance().removeMirrorObject(mirrorID));
  funMap[removeMirrorObject.funName] = removeMirrorObject;

  // 其他方法往这里加

  MXMirror.getInstance().registerFunctions(funMap);
}