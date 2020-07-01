//mxflutter
import 'package:mxflutter/mxflutter.dart';

///向JS提供CustomJSApi example,
class CustomJSApi {
  //string 到 Function映射，注意位置参数都转为命名参数
  static Map<String, Function> funName2Fun = {
    "getMyAppName": (CustomJSApi mirrorObj, {String platform, String v}) =>
        mirrorObj.getMyAppName(platform, v: v),
    "getMyData": (CustomJSApi mirrorObj, {String sameInfo, String v,int v2}) =>
        mirrorObj.getMyData(sameInfo, v:v,v2:v2)
  };

  ///向JS提供getMyAppName
  getMyAppName(String platform, {String v}) {
    return "MyApp_$platform $v";
  }

  ///向JS提供getMyData
  getMyData(String sameInfo, {String v,int v2}) {
    return "MyData_$sameInfo $v $v2";
  }
}

//注册CustomJSApiProxy，用于js侧会调用过来创建CustomJSApi
class CustomJSApiProxy extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    //注册CustomJSApi的类名
    final String regClassName = "CustomJSApi";
    return {
      regClassName: () => CustomJSApiProxy()..init(className: regClassName)
    };
  }

  Map<String, Function> funName2Fun = {};

  @override
  CustomJSApi constructor(dynamic bo, Map<String, dynamic> jsonMap,
      {dynamic context}) {
    //2. 修改为自己的类
    var apiObj = CustomJSApi();
    funName2Fun = CustomJSApi.funName2Fun;
    //2end
    return apiObj;
  }

  @override
  void jsInvokeMirrorObjFunction(
      String mirrorID, dynamic mirrorObj, String funcName, Map args,
      {InvokeCallback callback}) {
    if (mirrorObj == null ) {
      return;
    }

    Function func = funName2Fun[funcName];

    if (func == null) {
      return;
    }

    Map<Symbol, dynamic> namedArgs = {};

    for (String argName in args.keys) {
      namedArgs[Symbol(argName)] = args[argName];
    }

    var result;
    try {
      result = Function.apply(func, [mirrorObj], namedArgs);
    } catch (e) {
      MXJSLog.debug(e);
    }

    if (callback != null) {
      callback(result);
    }
  }
}
