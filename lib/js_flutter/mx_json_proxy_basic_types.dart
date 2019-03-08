import 'package:flutter/material.dart';
import 'dart:io';
import 'package:vector_math/vector_math_64.dart';
import 'mx_json_to_dart.dart';
import 'mx_build_owner.dart';
import 'package:flutter/services.dart';
import 'dart:typed_data';
import 'dart:math' as math;

/******************TODO List****************************/
/*

    

*/
/******************TODO List****************************/

///把Widget初始化用到的基础类型如 List, ，
class MXProxyRegisterHelperBasicTypesSeries {
  static Map<String, CreateJsonObjProxyFun> registerProxys() {
    Map<String, CreateJsonObjProxyFun> m = {};

    m.addAll(MXProxyKey.registerProxy());
    m.addAll(MXProxyAlignmentDirectional.registerProxy());
    m.addAll(MXProxyEdgeInsets.registerProxy());
    m.addAll(MXProxyEdgeInsetsDirectional.registerProxy());

    m.addAll(MXProxyColor.registerProxy());
    m.addAll(MXProxyLocale.registerProxy());
    m.addAll(MXProxyBoxDecoration.registerProxy());
    m.addAll(MXProxyBoxConstraints.registerProxy());
    m.addAll(MXProxySize.registerProxy());
    m.addAll(MXProxyOffset.registerProxy());
    m.addAll(MXProxyTableRow.registerProxy());
    m.addAll(MXProxyTableBorder.registerProxy());
    m.addAll(MXProxyBorderSide.registerProxy());
    m.addAll(MXProxyFlexColumnWidth.registerProxy());
    m.addAll(MXProxyMatrix4.registerProxy());
    m.addAll(MXProxyVector4.registerProxy());
    m.addAll(MXProxyVector3.registerProxy());
    m.addAll(MXProxyScrollController.registerProxy());
    m.addAll(MXProxyScrollPhysics.registerProxy());
    m.addAll(MXProxyBouncingScrollPhysics.registerProxy());
    m.addAll(MXProxyClampingScrollPhysics.registerProxy());
    m.addAll(MXProxyAlwaysScrollableScrollPhysics.registerProxy());
    m.addAll(MXProxyNeverScrollableScrollPhysics.registerProxy());
    m.addAll(MXProxyPaint.registerProxy());
    m.addAll(MXProxyFilter.registerProxy());
    m.addAll(MXProxyAlignment.registerProxy());
    m.addAll(MXProxyShader.registerProxy());
    m.addAll(MXProxyRect.registerProxy());
    m.addAll(MXProxyAssetBundle.registerProxy());
    m.addAll(MXProxyFile.registerProxy());
    m.addAll(MXProxyUint8List.registerProxy());
    m.addAll(MXProxyRadius.registerProxy());
    m.addAll(MXProxyBorderRadius.registerProxy());
    m.addAll(MXProxyBottomNavigationBarItem.registerProxy());
    m.addAll(MXProxyIconData.registerProxy());
    m.addAll(MXProxyBorder.registerProxy());
    m.addAll(MXProxyAnnotatedRegion.registerProxy());
    m.addAll(MXProxySystemUiOverlayStyle.registerProxy());
    m.addAll(MXProxyTheme.registerProxy());
    m.addAll(MXProxyThemeData.registerProxy());
    m.addAll(MXProxyMaterialColor.registerProxy());
    m.addAll(MXProxyInputDecorationTheme.registerProxy());
    m.addAll(MXProxyCircularNotchedRectangle.registerProxy());
    m.addAll(MXProxyIconTheme.registerProxy());
    m.addAll(MXProxyIconThemeData.registerProxy());
    m.addAll(MXProxyDropdownMenuItem.registerProxy());
    m.addAll(MXProxyBoxShadow.registerProxy());
    
    return m;
  }
}

///Key
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyKey extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中
  ///**@@@ 拷贝生成其他类  2 替换类名字符串
  static String regClassName = "Key";

  ///工厂函数 用于延迟加载转换器
  static MXJsonObjProxy createProxy() {
    ///**@@@@ 拷贝生成其他类  3 替换类构建函数
    var p = MXProxyKey();
    p.className = regClassName;
    return p;
  }

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    return {regClassName: createProxy};
  }

  @override
  Key constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    //Key(String value)

    String key = jsonMap["value"];

    if (key is String && key.isNotEmpty) {
      return Key(key);
    }

    return null;
  }
}

///AlignmentDirectional
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyAlignmentDirectional extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中
  ///**@@@ 拷贝生成其他类  2 替换类名字符串
  static String regClassName = "AlignmentDirectional";

  ///工厂函数 用于延迟加载转换器
  static MXJsonObjProxy createProxy() {
    ///**@@@@ 拷贝生成其他类  3 替换类构建函数
    var p = MXProxyAlignmentDirectional();
    p.className = regClassName;
    return p;
  }

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    return {regClassName: createProxy};
  }

  @override
  AlignmentDirectional constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = AlignmentDirectional(
        mxj2d(bo, jsonMap["start"])?.toDouble(), mxj2d(bo, jsonMap["y"])?.toDouble());

    return obj;
  }
}

class MXProxyEdgeInsets extends MXJsonObjProxy {
  static String regClassName = "EdgeInsets";
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyEdgeInsets()..init(className: regClassName)
    };
  }

  @override
  void init({String className}) {
    super.init(className: className);

    registerConstructor(
        className: regClassName,
        constructorName: "fromLTRB",
        constructor: constructorFromLTRB);
    registerConstructor(
        className: regClassName,
        constructorName: "all",
        constructor: constructorAll);

    registerConstructor(
        className: regClassName,
        constructorName: "only",
        constructor: constructorOnly);

    registerConstructor(
        className: regClassName,
        constructorName: "symmetric",
        constructor: constructorSymmetric);
  }

  @override
  EdgeInsets constructorFromLTRB(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = EdgeInsets.fromLTRB(
      mxj2d(bo, jsonMap["left"])?.toDouble(),
      mxj2d(bo, jsonMap["top"])?.toDouble(),
      mxj2d(bo, jsonMap["right"])?.toDouble(),
      mxj2d(bo, jsonMap["bottom"])?.toDouble(),
    );
    return widget;
  }

  EdgeInsets constructorAll(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = EdgeInsets.all(
      mxj2d(bo, jsonMap["value"])?.toDouble(),
    );
    return widget;
  }

  EdgeInsets constructorOnly(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = EdgeInsets.only(
      left: mxj2d(bo, jsonMap["left"], defaultValue: 0.0)?.toDouble(),
      top: mxj2d(bo, jsonMap["top"], defaultValue: 0.0)?.toDouble(),
      right: mxj2d(bo, jsonMap["right"], defaultValue: 0.0)?.toDouble(),
      bottom: mxj2d(bo, jsonMap["bottom"], defaultValue: 0.0)?.toDouble(),
    );
    return widget;
  }

  EdgeInsets constructorSymmetric(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = EdgeInsets.symmetric(
      vertical: mxj2d(bo, jsonMap["vertical"], defaultValue: 0.0)?.toDouble(),
      horizontal:
          mxj2d(bo, jsonMap["horizontal"], defaultValue: 0.0)?.toDouble(),
    );
    return widget;
  }
}

class MXProxyEdgeInsetsDirectional extends MXJsonObjProxy {
  static String regClassName = "EdgeInsetsDirectional";

  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyEdgeInsetsDirectional()..init(className: regClassName)
    };
  }

  @override
  void init({String className}) {
    super.init(className: className);

    registerConstructor(
        className: regClassName,
        constructorName: "fromSTEB",
        constructor: constructorFromSTEB);
    registerConstructor(
        className: regClassName,
        constructorName: "only",
        constructor: constructorOnly);
  }

  EdgeInsetsDirectional constructorFromSTEB(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = EdgeInsetsDirectional.fromSTEB(
      mxj2d(bo, jsonMap["start"])?.toDouble(),
      mxj2d(bo, jsonMap["top"])?.toDouble(),
      mxj2d(bo, jsonMap["end"])?.toDouble(),
      mxj2d(bo, jsonMap["bottom"])?.toDouble(),
    );
    return widget;
  }

  EdgeInsetsDirectional constructorOnly(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = EdgeInsetsDirectional.only(
      start: mxj2d(bo, jsonMap["start"], defaultValue: 0.0)?.toDouble(),
      top: mxj2d(bo, jsonMap["top"], defaultValue: 0.0)?.toDouble(),
      end: mxj2d(bo, jsonMap["end"], defaultValue: 0.0)?.toDouble(),
      bottom: mxj2d(bo, jsonMap["bottom"], defaultValue: 0.0)?.toDouble(),
    );
    return widget;
  }
}

///Color
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyColor extends MXJsonObjProxy {
  ///静态接口,子类重写*********************************************

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName1 = "Color";

    ///**@@@  3 替换类构造函数
    return {
      regClassName1: () => MXProxyColor()..init(className: regClassName1)
    };
  }

  ///*********************************************************************

  @override
  void init({String className}) {
    super.init(className: className);

    final String regClassName1 = "Color";

    registerConstructor(
        className: regClassName1,
        constructorName: "fromARGB",
        constructor: constructorFromARGB);
    registerConstructor(
        className: regClassName1,
        constructorName: "fromRGBO",
        constructor: constructorFromRGBO);
  }

  ///

  @override
  Color constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Color(mxj2d(bo, jsonMap["value"]));

    return obj;
  }

  Color constructorFromARGB(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Color.fromARGB(
      mxj2d(bo, jsonMap["a"]),
      mxj2d(bo, jsonMap["r"]),
      mxj2d(bo, jsonMap["g"]),
      mxj2d(bo, jsonMap["b"]),
    );

    return obj;
  }

  Color constructorFromRGBO(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Color.fromRGBO(
      mxj2d(bo, jsonMap["r"]),
      mxj2d(bo, jsonMap["g"]),
      mxj2d(bo, jsonMap["b"]),
      mxj2d(bo, jsonMap["opacity"])?.toDouble(),
    );

    return obj;
  }
}

///Paint
class MXBlendMode {
  static BlendMode parse(String value,
      {BlendMode defaultValue = BlendMode.clear}) {
    BlendMode retValut = defaultValue;
    switch (value) {
      case 'BlendMode.clear':
        retValut = BlendMode.clear;
        break;
      case 'BlendMode.color':
        retValut = BlendMode.color;
        break;
      case 'BlendMode.colorBurn':
        retValut = BlendMode.colorBurn;
        break;
      case 'BlendMode.colorDodge':
        retValut = BlendMode.colorDodge;
        break;
      case 'BlendMode.darken':
        retValut = BlendMode.darken;
        break;
      case 'BlendMode.difference':
        retValut = BlendMode.difference;
        break;
      case 'BlendMode.dst':
        retValut = BlendMode.dst;
        break;
      case 'BlendMode.dstATop':
        retValut = BlendMode.dstATop;
        break;
      case 'BlendMode.dstIn':
        retValut = BlendMode.dstIn;
        break;
      case 'BlendMode.dstOut':
        retValut = BlendMode.dstOut;
        break;
      case 'BlendMode.dstOver':
        retValut = BlendMode.dstOver;
        break;
      case 'BlendMode.exclusion':
        retValut = BlendMode.exclusion;
        break;
      case 'BlendMode.hardLight':
        retValut = BlendMode.hardLight;
        break;
      case 'BlendMode.hue':
        retValut = BlendMode.hue;
        break;
      case 'BlendMode.lighten':
        retValut = BlendMode.lighten;
        break;
      case 'BlendMode.luminosity':
        retValut = BlendMode.luminosity;
        break;
      case 'BlendMode.modulate':
        retValut = BlendMode.modulate;
        break;
      case 'BlendMode.multiply':
        retValut = BlendMode.multiply;
        break;
      case 'BlendMode.overlay':
        retValut = BlendMode.overlay;
        break;
      case 'BlendMode.plus':
        retValut = BlendMode.plus;
        break;
      case 'BlendMode.saturation':
        retValut = BlendMode.saturation;
        break;
      case 'BlendMode.screen':
        retValut = BlendMode.screen;
        break;
      case 'BlendMode.softLight':
        retValut = BlendMode.softLight;
        break;
      case 'BlendMode.src':
        retValut = BlendMode.src;
        break;
      case 'BlendMode.srcATop':
        retValut = BlendMode.srcATop;
        break;
      case 'BlendMode.srcIn':
        retValut = BlendMode.srcIn;
        break;
      case 'BlendMode.srcOut':
        retValut = BlendMode.srcOut;
        break;
      case 'BlendMode.srcOver':
        retValut = BlendMode.srcOver;
        break;
      case 'BlendMode.xor':
        retValut = BlendMode.xor;
        break;
      default:
        retValut = defaultValue;
    }

    return retValut;
  }
}

///FilterQuality
class MXFilterQuality {
  static FilterQuality parse(String value,
      {FilterQuality defaultValue = FilterQuality.high}) {
    FilterQuality retValut = defaultValue;
    switch (value) {
      case 'FilterQuality.high':
        retValut = FilterQuality.high;
        break;
      case 'FilterQuality.low':
        retValut = FilterQuality.low;
        break;
      case 'FilterQuality.medium':
        retValut = FilterQuality.medium;
        break;
      case 'FilterQuality.none':
        retValut = FilterQuality.none;
        break;
      default:
        retValut = defaultValue;
    }

    return retValut;
  }
}

///BlurStyle
class MXBlurStyle {
  static BlurStyle parse(String value,
      {BlurStyle defaultValue = BlurStyle.inner}) {
    BlurStyle retValut = defaultValue;
    switch (value) {
      case 'BlurStyle.inner':
        retValut = BlurStyle.inner;
        break;
      case 'BlurStyle.normal':
        retValut = BlurStyle.normal;
        break;
      case 'BlurStyle.outer':
        retValut = BlurStyle.outer;
        break;
      case 'BlurStyle.solid':
        retValut = BlurStyle.solid;
        break;
      default:
        retValut = defaultValue;
    }

    return retValut;
  }
}

class MXProxyAlignment extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "Alignment";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyAlignment()..init(className: regClassName)
    };
  }

  @override
  Alignment constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = Alignment(
      mxj2d(bo, jsonMap["x"])?.toDouble(),
      mxj2d(bo, jsonMap["y"])?.toDouble(),
    );
    return widget;
  }
}

///StrokeCap
class MXStrokeCap {
  static StrokeCap parse(String value,
      {StrokeCap defaultValue = StrokeCap.butt}) {
    StrokeCap retValut = defaultValue;
    switch (value) {
      case 'StrokeCap.butt':
        retValut = StrokeCap.butt;
        break;
      case 'StrokeCap.round':
        retValut = StrokeCap.round;
        break;
      case 'StrokeCap.square':
        retValut = StrokeCap.square;
        break;
      default:
        retValut = defaultValue;
    }

    return retValut;
  }
}

///StrokeJoin
class MXStrokeJoin {
  static StrokeJoin parse(String value,
      {StrokeJoin defaultValue = StrokeJoin.bevel}) {
    StrokeJoin retValut = defaultValue;
    switch (value) {
      case 'StrokeJoin.bevel':
        retValut = StrokeJoin.bevel;
        break;
      case 'StrokeJoin.miter':
        retValut = StrokeJoin.miter;
        break;
      case 'StrokeJoin.round':
        retValut = StrokeJoin.round;
        break;
      default:
        retValut = defaultValue;
    }

    return retValut;
  }
}

///PaintingStyle
class MXPaintingStyle {
  static PaintingStyle parse(String value,
      {PaintingStyle defaultValue = PaintingStyle.fill}) {
    PaintingStyle retValut = defaultValue;
    switch (value) {
      case 'PaintingStyle.fill':
        retValut = PaintingStyle.fill;
        break;
      case 'PaintingStyle.stroke':
        retValut = PaintingStyle.stroke;
        break;
      default:
        retValut = defaultValue;
    }

    return retValut;
  }
}

///Paint
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyPaint extends MXJsonObjProxy {
  ///静态接口,子类重写*********************************************

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName1 = "Paint";

    ///**@@@  3 替换类构造函数
    return {
      regClassName1: () => MXProxyPaint()..init(className: regClassName1)
    };
  }

  ///*********************************************************************

  @override
  void init({String className}) {
    super.init(className: className);

    final String regClassName1 = "Paint";
  }

  ///

  @override
  Paint constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    Paint obj = Paint()
      ..blendMode = MXBlendMode.parse(mxj2d(bo, jsonMap["blendMode"]))
      ..color = mxj2d(bo, jsonMap["color"])
      ..colorFilter = mxj2d(bo, jsonMap["colorFilter"])
      ..filterQuality =
          MXFilterQuality.parse(mxj2d(bo, jsonMap["filterQuality"]))
      ..invertColors = mxj2d(bo, jsonMap["invertColors"])
      ..isAntiAlias = mxj2d(bo, jsonMap["isAntiAlias"])
      ..maskFilter = mxj2d(bo, jsonMap["maskFilter"])
      ..shader = mxj2d(bo, jsonMap["shader"])
      ..strokeCap = MXStrokeCap.parse(mxj2d(bo, jsonMap["strokeCap"]))
      ..strokeJoin = MXStrokeJoin.parse(mxj2d(bo, jsonMap["strokeJoin"]))
      ..strokeMiterLimit = mxj2d(bo, jsonMap["strokeMiterLimit"])
      ..strokeWidth = mxj2d(bo, jsonMap["strokeWidth"])
      ..style = MXPaintingStyle.parse(mxj2d(bo, jsonMap["style"]));

    return obj;
  }
}

///ColorFilter
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyFilter extends MXJsonObjProxy {
  ///静态接口,子类�����写*********************************************

  static String regClassName1 = "ColorFilter";
  static String regClassName2 = "MaskFilter";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串

    ///**@@@  3 替换类构造函数
    return {
      regClassName1: () => MXProxyFilter()..init(className: regClassName1),
      regClassName2: () => MXProxyFilter()..init(className: regClassName2)
    };
  }

  ///*********************************************************************

  @override
  void init({String className}) {
    super.init(className: className);

    registerConstructor(
        className: regClassName1,
        constructorName: "mode",
        constructor: constructorMode);
    registerConstructor(
        className: regClassName2,
        constructorName: "blur",
        constructor: constructorBlur);
  }

  ///

  @override
  ColorFilter constructorMode(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    ColorFilter obj = ColorFilter.mode(
        mxj2d(bo, jsonMap["color"]), mxj2d(bo, jsonMap["blendMode"]));

    return obj;
  }

  @override
  MaskFilter constructorBlur(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    MaskFilter obj = MaskFilter.blur(
        MXBlurStyle.parse(mxj2d(bo, jsonMap["_style"])),
        mxj2d(bo, jsonMap["_sigma"]));

    return obj;
  }
}

///TileMode
class MXTileMode {
  static TileMode parse(String value,
      {TileMode defaultValue = TileMode.clamp}) {
    TileMode retValut = defaultValue;
    switch (value) {
      case 'TileMode.clamp':
        retValut = TileMode.clamp;
        break;
      case 'TileMode.repeated':
        retValut = TileMode.repeated;
        break;
      case 'TileMode.mirror':
        retValut = TileMode.mirror;
        break;
      default:
        retValut = defaultValue;
    }

    return retValut;
  }
}

///Shader
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyShader extends MXJsonObjProxy {
  ///静态接口,子类重写*********************************************

  static String regClassName1 = "LinearGradient";
  static String regClassName2 = "RadialGradient";
  static String regClassName3 = "SweepGradient";
  static String regClassName4 = "ImageShader";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {
      regClassName1: () => MXProxyShader()..init(className: regClassName1),
      regClassName2: () => MXProxyShader()..init(className: regClassName2),
      regClassName3: () => MXProxyShader()..init(className: regClassName3),
      regClassName4: () => MXProxyShader()..init(className: regClassName4),
    };
  }

  ///*********************************************************************

  @override
  void init({String className}) {
    super.init(className: className);

    registerConstructor(
        className: regClassName1, constructor: constructorLinear);
    registerConstructor(
        className: regClassName2, constructor: constructorRadial);
    registerConstructor(
        className: regClassName3, constructor: constructorSweep);
    registerConstructor(
        className: regClassName4, constructor: constructorImageShader);
  }

  ///
  LinearGradient constructorLinear(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    LinearGradient obj = LinearGradient(
        begin: mxj2d(bo, jsonMap["begin"], defaultValue: Alignment.centerLeft),
        end: mxj2d(bo, jsonMap["end"], defaultValue: Alignment.centerRight),
        colors: toListT<Color>(mxj2d(bo, jsonMap["colors"])),
        stops: toListT<double>(mxj2d(bo, jsonMap["stops"])));

    return obj;
  }

  RadialGradient constructorRadial(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    RadialGradient obj = RadialGradient(
        center: mxj2d(bo, jsonMap["center"], defaultValue: Alignment.center),
        radius: mxj2d(bo, jsonMap["radius"], defaultValue: 0.5),
        colors: toListT<Color>(mxj2d(bo, jsonMap["colors"])),
        stops: toListT<double>(mxj2d(bo, jsonMap["stops"])),
        tileMode: MXTileMode.parse(
            mxj2d(bo, jsonMap["tileMode"], defaultValue: TileMode.clamp)),
        focal: mxj2d(bo, jsonMap["focal"]),
        focalRadius: mxj2d(bo, jsonMap["focalRadius"]));

    return obj;
  }

  SweepGradient constructorSweep(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    SweepGradient obj = SweepGradient(
      center: mxj2d(bo, jsonMap["center"], defaultValue: Alignment.center),
      startAngle: mxj2d(bo, jsonMap["startAngle"], defaultValue: 0.0),
      endAngle: mxj2d(bo, jsonMap["endAngle"], defaultValue: math.pi * 2),
      colors: toListT<Color>(mxj2d(bo, jsonMap["colors"])),
      stops: toListT<double>(mxj2d(bo, jsonMap["stops"])),
      tileMode: MXTileMode.parse(
          mxj2d(bo, jsonMap["tileMode"], defaultValue: TileMode.clamp)),
    );

    return obj;
  }

  ImageShader constructorImageShader(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    ImageShader obj = ImageShader(
        mxj2d(bo, jsonMap["image"]),
        MXTileMode.parse(mxj2d(bo, jsonMap["tmx"])),
        MXTileMode.parse(mxj2d(bo, jsonMap["tmy"])),
        mxj2d(bo, jsonMap["matrix4"]));

    return obj;
  }
}

class MXProxyBoxDecoration extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "BoxDecoration";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyBoxDecoration()..init(className: regClassName)
    };
  }

  @override
  BoxDecoration constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = BoxDecoration(
      color: mxj2d(bo, jsonMap["color"]),
      image: mxj2d(bo, jsonMap["image"]),
      border: mxj2d(bo, jsonMap["border"]),
      borderRadius: mxj2d(bo, jsonMap["borderRadius"]),
      boxShadow: toListT<BoxShadow>(mxj2d(bo, jsonMap["boxShadow"])),
      gradient: mxj2d(bo, jsonMap["gradient"]),
      backgroundBlendMode: mxj2d(bo, jsonMap["backgroundBlendMode"]),
      shape: MXBoxShape.parse(mxj2d(bo, jsonMap["shape"]), defaultValue: BoxShape.rectangle),
    );
    return widget;
  }
}

///Locale
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyLocale extends MXJsonObjProxy {
  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName1 = "Locale";

    ///**@@@  3 替换类构造函数
    return {
      regClassName1: () => MXProxyLocale()..init(className: regClassName1)
    };
  }

  ///*********************************************************************
  @override
  void init({String className}) {
    super.init(className: className);

    final String regClassName1 = "Locale";

    registerConstructor(
        className: regClassName1,
        constructorName: "fromSubtags",
        constructor: constructorFromSubtags);
  }

  ///

  @override
  Locale constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Locale(
        mxj2d(bo, jsonMap["languageCode"]), mxj2d(bo, jsonMap["countryCode"]));

    return obj;
} //

  @override
  Locale constructorFromSubtags(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Locale.fromSubtags(
        languageCode: mxj2d(bo, jsonMap["languageCode"], defaultValue: 'und'),
        scriptCode: mxj2d(bo, jsonMap["scriptCode"]),
        countryCode: mxj2d(bo, jsonMap["countryCode"]));

    return obj;
  }
}

class MXMainAxisAlignment {
  static MainAxisAlignment parse(String value,
      {MainAxisAlignment defaultValue = MainAxisAlignment.start}) {
    MainAxisAlignment retValut = defaultValue;
    switch (value) {
      case 'MainAxisAlignment.start':
        retValut = MainAxisAlignment.start;
        break;
      case 'MainAxisAlignment.end':
        retValut = MainAxisAlignment.end;
        break;
      case 'MainAxisAlignment.center':
        retValut = MainAxisAlignment.center;
        break;
      case 'MainAxisAlignment.spaceBetween':
        retValut = MainAxisAlignment.spaceBetween;
        break;
      case 'MainAxisAlignment.spaceAround':
        retValut = MainAxisAlignment.spaceAround;
        break;
      case 'MainAxisAlignment.spaceEvenly':
        retValut = MainAxisAlignment.spaceEvenly;
        break;
      default:
        retValut = defaultValue;
    }

    return retValut;
  }
}

class MXMainAxisSize {
  static MainAxisSize parse(String value,
      {MainAxisSize defaultValue = MainAxisSize.min}) {
    MainAxisSize retValut = defaultValue;
    switch (value) {
      case 'MainAxisSize.min':
        retValut = MainAxisSize.min;
        break;
      case 'MainAxisSize.max':
        retValut = MainAxisSize.max;
        break;
      default:
        retValut = defaultValue;
    }

    return retValut;
  }
}

class MXCrossAxisAlignment {
  static CrossAxisAlignment parse(String value,
      {CrossAxisAlignment defaultValue = CrossAxisAlignment.start}) {
    CrossAxisAlignment retValut = defaultValue;
    switch (value) {
      case 'CrossAxisAlignment.start':
        retValut = CrossAxisAlignment.start;
        break;
      case 'CrossAxisAlignment.end':
        retValut = CrossAxisAlignment.end;
        break;
      case 'CrossAxisAlignment.center':
        retValut = CrossAxisAlignment.center;
        break;
      case 'CrossAxisAlignment.stretch':
        retValut = CrossAxisAlignment.stretch;
        break;
      case 'CrossAxisAlignment.baseline':
        retValut = CrossAxisAlignment.baseline;
        break;
      default:
        retValut = defaultValue;
    }

    return retValut;
  }
}

class MXVerticalDirection {
  static VerticalDirection parse(String value,
      {VerticalDirection defaultValue = VerticalDirection.up}) {
    VerticalDirection retValut = defaultValue;
    switch (value) {
      case 'VerticalDirection.up':
        retValut = VerticalDirection.up;
        break;
      case 'VerticalDirection.down':
        retValut = VerticalDirection.down;
        break;
      default:
        retValut = defaultValue;
    }

    return retValut;
  }
}

///BoxConstraints
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyBoxConstraints extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中
  ///**@@@ 拷贝生成其他类  2 替换类名字符串
  static String regClassName = "BoxConstraints";

  ///工厂函数 用于延迟加载转换器
  static MXJsonObjProxy createProxy() {
    ///**@@@@ 拷贝生成其他类  3 替换类构建函数
    var p = MXProxyBoxConstraints();
    p.className = regClassName;
    return p;
  }

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    return {regClassName: createProxy};
  }

  @override
  BoxConstraints constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = BoxConstraints(
      minWidth: mxj2d(bo, jsonMap["minWidth"], defaultValue: 0.0)?.toDouble(),
      maxWidth: mxj2d(bo, jsonMap["maxWidth"], defaultValue: double.infinity)?.toDouble(),
      minHeight: mxj2d(bo, jsonMap["minHeight"], defaultValue: 0.0)?.toDouble(),
      maxHeight: mxj2d(bo, jsonMap["maxHeight"], defaultValue: double.infinity)?.toDouble(),
    );

    return obj;
  }
}

///Size
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxySize extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中
  ///**@@@ 拷贝生成其他类  2 替换类名字符串
  static String regClassName = "Size";

  ///工厂函数 用于延迟加载转换器
  static MXJsonObjProxy createProxy() {
    ///**@@@@ 拷贝生成其他类  3 替换类构建函数
    var p = MXProxySize();
    p.className = regClassName;
    return p;
  }

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    return {regClassName: createProxy};
  }

  @override
  Size constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Size(mxj2d(bo, jsonMap["width"]), mxj2d(bo, jsonMap["height"]));
    return obj;
  }
}

///Offset
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyOffset extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中
  ///**@@@ 拷贝生成其他类  2 替换类名字符串
  static String regClassName = "Offset";

  ///工厂函数 用于延迟加载转换器
  static MXJsonObjProxy createProxy() {
    ///**@@@@ 拷贝生成其他类  3 替换类构建函数
    var p = MXProxyOffset();
    p.className = regClassName;
    return p;
  }

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    return {regClassName: createProxy};
  }

  @override
  Offset constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Offset(
      mxj2d(bo, jsonMap["dx"])?.toDouble(), 
      mxj2d(bo, jsonMap["dy"])?.toDouble());
    return obj;
  }
}

///TableRow
class MXProxyTableRow extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "TableRow";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyTableRow()..init(className: regClassName)
    };
  }

  @override
  TableRow constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = TableRow(
      key: mxj2d(bo, jsonMap["key"]),
      decoration: mxj2d(bo, jsonMap["decoration"]),
      children: mxj2d(bo, jsonMap["children"]),
    );
    return widget;
  }
}

///枚举类型处理，使��类方法来解析JSON的值
class MXBoxFit {
  static BoxFit parse(String value, {BoxFit defaultValue = BoxFit.fill}) {
    BoxFit retValut = defaultValue;
    switch (value) {
      case 'BoxFit.fill':
        retValut = BoxFit.fill;
        break;
      case 'BoxFit.contain':
        retValut = BoxFit.contain;
        break;
      case 'BoxFit.cover':
        retValut = BoxFit.cover;
        break;
      case 'BoxFit.fitWidth':
        retValut = BoxFit.fitWidth;
        break;
      case 'BoxFit.fitHeight':
        retValut = BoxFit.fitHeight;
        break;
      case 'BoxFit.none':
        retValut = BoxFit.none;
        break;
      case 'BoxFit.scaleDown':
        retValut = BoxFit.scaleDown;
        break;
      default:
        retValut = defaultValue;
    }

    return retValut;
  }
}

class MXOverflow {
  static Overflow parse(String value,
      {Overflow defaultValue = Overflow.visible}) {
    Overflow retValut = defaultValue;
    switch (value) {
      case 'Overflow.visible':
        retValut = Overflow.visible;
        break;
      case 'TextBaseline.clip':
        retValut = Overflow.clip;
        break;
      default:
        retValut = defaultValue;
    }

    return retValut;
  }
}

class MXStackFit {
  static StackFit parse(String value,
      {StackFit defaultValue = StackFit.loose}) {
    StackFit retValut = defaultValue;
    switch (value) {
      case 'StackFit.loose':
        retValut = StackFit.loose;
        break;
      case 'StackFit.expand':
        retValut = StackFit.expand;
        break;
      case 'StackFit.passthrough':
        retValut = StackFit.passthrough;
        break;
      default:
        retValut = defaultValue;
    }

    return retValut;
  }
}

class MXAxis {
  static Axis parse(String value, {Axis defaultValue = Axis.horizontal}) {
    Axis retValut = defaultValue;
    switch (value) {
      case 'Axis.horizontal':
        retValut = Axis.horizontal;
        break;
      case 'Axis.vertical':
        retValut = Axis.vertical;
        break;
      default:
        retValut = defaultValue;
    }

    return retValut;
  }
}

class MXTableCellVerticalAlignment {
  static TableCellVerticalAlignment parse(String value,
      {TableCellVerticalAlignment defaultValue =
          TableCellVerticalAlignment.top}) {
    TableCellVerticalAlignment retValut = defaultValue;
    switch (value) {
      case 'TableCellVerticalAlignment.top':
        retValut = TableCellVerticalAlignment.top;
        break;
      case 'TableCellVerticalAlignment.middle':
        retValut = TableCellVerticalAlignment.middle;
        break;
      case 'TableCellVerticalAlignment.bottom':
        retValut = TableCellVerticalAlignment.bottom;
        break;
      case 'TableCellVerticalAlignment.baseline':
        retValut = TableCellVerticalAlignment.baseline;
        break;
      case 'TableCellVerticalAlignment.fill':
        retValut = TableCellVerticalAlignment.fill;
        break;
      default:
        retValut = defaultValue;
    }

    return retValut;
  }
}

///TableBorder
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyTableBorder extends MXJsonObjProxy {
  ///静态接口,子类重写*********************************************

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName1 = "TableBorder";

    ///**@@@  3 替换类构造函数
    return {
      regClassName1: () => MXProxyTableBorder()..init(className: regClassName1)
    };
  }

  ///*********************************************************************

  @override
  void init({String className}) {
    super.init(className: className);

    final String regClassName1 = "TableBorder";

    registerConstructor(
        className: regClassName1,
        constructorName: "fromARGB",
        constructor: constructorAll);
    registerConstructor(
        className: regClassName1,
        constructorName: "fromRGBO",
        constructor: constructorSymmetric);
  }

  ///

  @override
  TableBorder constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = TableBorder(
      top: mxj2d(bo, jsonMap["top"], defaultValue: BorderSide.none),
      right: mxj2d(bo, jsonMap["right"], defaultValue: BorderSide.none),
      bottom: mxj2d(bo, jsonMap["bottom"], defaultValue: BorderSide.none),
      left: mxj2d(bo, jsonMap["left"], defaultValue: BorderSide.none),
      horizontalInside:
          mxj2d(bo, jsonMap["horizontalInside"], defaultValue: BorderSide.none),
      verticalInside:
          mxj2d(bo, jsonMap["verticalInside"], defaultValue: BorderSide.none),
    );

    return obj;
  }

  TableBorder constructorAll(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = TableBorder.all(
      color: mxj2d(bo, jsonMap["color"], defaultValue: const Color(0xFF000000)),
      width: mxj2d(bo, jsonMap["width"], defaultValue: 1.0)?.toDouble(),
      style: MXBorderStyle.parse(mxj2d(bo, jsonMap["width"]),
          defaultValue: BorderStyle.solid),
    );

    return obj;
  }

  TableBorder constructorSymmetric(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = TableBorder.symmetric(
      inside: mxj2d(bo, jsonMap["inside"], defaultValue: BorderSide.none),
      outside: mxj2d(bo, jsonMap["outside"], defaultValue: BorderSide.none),
    );

    return obj;
  }
}

///BorderSide
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyBorderSide extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中
  ///**@@@ 拷贝生成其他类  2 替换类名字符串
  static String regClassName = "BorderSide";

  ///工厂函数 用于延迟加载转换器
  static MXJsonObjProxy createProxy() {
    ///**@@@@ 拷贝生成其他类  3 替换类构建函数
    var p = MXProxyBorderSide();
    p.className = regClassName;
    return p;
  }

  ///把��己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    return {regClassName: createProxy};
  }

  @override
  BorderSide constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = BorderSide(
      color: mxj2d(bo, jsonMap["color"], defaultValue: const Color(0xFF000000)),
      width: mxj2d(bo, jsonMap["width"], defaultValue: 1.0)?.toDouble(),
      style: MXBorderStyle.parse(mxj2d(bo, jsonMap["style"]),
          defaultValue: BorderStyle.solid),
    );
    return obj;
  }
}

class MXBorderStyle {
  static BorderStyle parse(String value,
      {BorderStyle defaultValue = BorderStyle.none}) {
    BorderStyle retValut = defaultValue;
    switch (value) {
      case 'BorderStyle.none':
        retValut = BorderStyle.none;
        break;
      case 'BorderStyle.solid':
        retValut = BorderStyle.solid;
        break;
      default:
        retValut = defaultValue;
    }

    return retValut;
  }
}

///FlexColumnWidth
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyFlexColumnWidth extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中
  ///**@@@ 拷贝生成其他类  2 替换类名字符串
  static String regClassName = "FlexColumnWidth";

  ///工厂函数 用于延迟加载转换器
  static MXJsonObjProxy createProxy() {
    ///**@@@@ 拷贝生成其他类  3 替换类构建函数
    var p = MXProxyFlexColumnWidth();
    p.className = regClassName;
    return p;
  }

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    return {regClassName: createProxy};
  }

  @override
  FlexColumnWidth constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = FlexColumnWidth(
      mxj2d(bo, jsonMap["value"], defaultValue: 1.0)?.toDouble(),
    );
    return obj;
  }
}

class MXWrapAlignment {
  static WrapAlignment parse(String value,
      {WrapAlignment defaultValue = WrapAlignment.start}) {
    WrapAlignment retValut = defaultValue;
    switch (value) {
      case 'WrapAlignment.start':
        retValut = WrapAlignment.start;
        break;
      case 'WrapAlignment.end':
        retValut = WrapAlignment.end;
        break;
      case 'WrapAlignment.center':
        retValut = WrapAlignment.center;
        break;
      case 'WrapAlignment.spaceBetween':
        retValut = WrapAlignment.spaceBetween;
        break;
      case 'WrapAlignment.spaceAround':
        retValut = WrapAlignment.spaceAround;
        break;
      case 'WrapAlignment.spaceEvenly':
        retValut = WrapAlignment.spaceEvenly;
        break;
      default:
        retValut = defaultValue;
    }

    return retValut;
  }
}

class MXWrapCrossAlignment {
  static WrapCrossAlignment parse(String value,
      {WrapCrossAlignment defaultValue = WrapCrossAlignment.start}) {
    WrapCrossAlignment retValut = defaultValue;
    switch (value) {
      case 'WrapCrossAlignment.start':
        retValut = WrapCrossAlignment.start;
        break;
      case 'WrapCrossAlignment.end':
        retValut = WrapCrossAlignment.end;
        break;
      case 'WrapCrossAlignment.center':
        retValut = WrapCrossAlignment.center;
        break;
      default:
        retValut = defaultValue;
    }

    return retValut;
  }
}

///Matrix4
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyMatrix4 extends MXJsonObjProxy {
  static String regClassName = "Matrix4";

  ///静态接口,子类重写*********************************************

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyMatrix4()..init(className: regClassName)
    };
  }

  ///*********************************************************************

  @override
  void init({String className}) {
    super.init(className: className);

    registerConstructor(
        className: regClassName,
        constructorName: "fromList",
        constructor: constructorFromList);
    registerConstructor(
        className: regClassName,
        constructorName: "zero",
        constructor: constructorZero);
    registerConstructor(
        className: regClassName,
        constructorName: "identity",
        constructor: constructorIdentity);
    registerConstructor(
        className: regClassName,
        constructorName: "columns",
        constructor: constructorColumns);
    registerConstructor(
        className: regClassName,
        constructorName: "outer",
        constructor: constructorOuter);
    registerConstructor(
        className: regClassName,
        constructorName: "rotationX",
        constructor: constructorRotationX);
    registerConstructor(
        className: regClassName,
        constructorName: "rotationY",
        constructor: constructorRotationY);
    registerConstructor(
        className: regClassName,
        constructorName: "rotationZ",
        constructor: constructorRotationZ);
    registerConstructor(
        className: regClassName,
        constructorName: "translation",
        constructor: constructorTranslation);
    registerConstructor(
        className: regClassName,
        constructorName: "translationValues",
        constructor: constructorTranslationValues);
    registerConstructor(
        className: regClassName,
        constructorName: "diagonal3",
        constructor: constructorDiagonal3);
    registerConstructor(
        className: regClassName,
        constructorName: "diagonal3Values",
        constructor: constructorDiagonal3Values);
    registerConstructor(
        className: regClassName,
        constructorName: "skewX",
        constructor: constructorSkewX);
    registerConstructor(
        className: regClassName,
        constructorName: "skewY",
        constructor: constructorSkewY);
    registerConstructor(
        className: regClassName,
        constructorName: "skew",
        constructor: constructorSkew);
    registerConstructor(
        className: regClassName,
        constructorName: "compose",
        constructor: constructorCompose);
  }

  ///

  @override
  Matrix4 constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Matrix4(
      mxj2d(bo, jsonMap["arg0"]),
      mxj2d(bo, jsonMap["arg1"]),
      mxj2d(bo, jsonMap["arg2"]),
      mxj2d(bo, jsonMap["arg3"]),
      mxj2d(bo, jsonMap["arg4"]),
      mxj2d(bo, jsonMap["arg5"]),
      mxj2d(bo, jsonMap["arg6"]),
      mxj2d(bo, jsonMap["arg7"]),
      mxj2d(bo, jsonMap["arg8"]),
      mxj2d(bo, jsonMap["arg9"]),
      mxj2d(bo, jsonMap["arg10"]),
      mxj2d(bo, jsonMap["arg11"]),
      mxj2d(bo, jsonMap["arg12"]),
      mxj2d(bo, jsonMap["arg13"]),
      mxj2d(bo, jsonMap["arg14"]),
      mxj2d(bo, jsonMap["arg15"]),
    );
    return obj;
  }

  Matrix4 constructorFromList(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    List<double> values = mxj2d(bo, jsonMap["values"]);
    var obj = Matrix4.fromList(values);
    return obj;
  }

  Matrix4 constructorZero(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    return Matrix4.zero();
  }

  Matrix4 constructorIdentity(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    return Matrix4.identity();
  }

  Matrix4 constructorColumns(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Matrix4.columns(
      mxj2d(bo, jsonMap["arg0"]),
      mxj2d(bo, jsonMap["arg1"]),
      mxj2d(bo, jsonMap["arg2"]),
      mxj2d(bo, jsonMap["arg3"]),
    );
    return obj;
  }

  Matrix4 constructorOuter(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Matrix4.outer(
      mxj2d(bo, jsonMap["u"]),
      mxj2d(bo, jsonMap["v"]),
    );

    return obj;
  }

  Matrix4 constructorRotationX(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Matrix4.rotationX(
      mxj2d(bo, jsonMap["radians"]),
    );

    return obj;
  }

  Matrix4 constructorRotationY(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Matrix4.rotationY(
      mxj2d(bo, jsonMap["radians"]),
    );

    return obj;
  }

  Matrix4 constructorRotationZ(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Matrix4.rotationZ(
      mxj2d(bo, jsonMap["radians"]),
    );

    return obj;
  }

  Matrix4 constructorTranslation(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Matrix4.translation(
      mxj2d(bo, jsonMap["translation"]),
    );

    return obj;
  }

  Matrix4 constructorTranslationValues(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Matrix4.translationValues(
      mxj2d(bo, jsonMap["x"]),
      mxj2d(bo, jsonMap["y"]),
      mxj2d(bo, jsonMap["z"]),
    );

    return obj;
  }

  Matrix4 constructorDiagonal3(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Matrix4.diagonal3(
      mxj2d(bo, jsonMap["scale"]),
    );

    return obj;
  }

  Matrix4 constructorDiagonal3Values(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Matrix4.diagonal3Values(
      mxj2d(bo, jsonMap["x"]),
      mxj2d(bo, jsonMap["y"]),
      mxj2d(bo, jsonMap["z"]),
    );

    return obj;
  }

  Matrix4 constructorSkewX(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Matrix4.skewX(
      mxj2d(bo, jsonMap["alpha"]),
    );

    return obj;
  }

  Matrix4 constructorSkewY(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Matrix4.skewY(
      mxj2d(bo, jsonMap["beta"]),
    );

    return obj;
  }

  Matrix4 constructorSkew(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Matrix4.skew(
      mxj2d(bo, jsonMap["alpha"]),
      mxj2d(bo, jsonMap["beta"]),
    );

    return obj;
  }

  Matrix4 constructorCompose(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = Matrix4.compose(
      mxj2d(bo, jsonMap["translation"]),
      mxj2d(bo, jsonMap["rotation"]),
      mxj2d(bo, jsonMap["scale"]),
    );
    return widget;
  }
}

///Vector4
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyVector4 extends MXJsonObjProxy {
  static String regClassName = "Vector4";

  ///静态接口,子类重写*********************************************

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyVector4()..init(className: regClassName)
    };
  }

  ///*********************************************************************

  @override
  void init({String className}) {
    super.init(className: className);

    registerConstructor(
        className: regClassName,
        constructorName: "array",
        constructor: constructorArray);
    registerConstructor(
        className: regClassName,
        constructorName: "zero",
        constructor: constructorZero);
    registerConstructor(
        className: regClassName,
        constructorName: "identity",
        constructor: constructorIdentity);
    registerConstructor(
        className: regClassName,
        constructorName: "all",
        constructor: constructorAll);
    registerConstructor(
        className: regClassName,
        constructorName: "random",
        constructor: constructorRandom);
  }

  ///

  @override
  Vector4 constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Vector4(
      mxj2d(bo, jsonMap["x"]),
      mxj2d(bo, jsonMap["y"]),
      mxj2d(bo, jsonMap["z"]),
      mxj2d(bo, jsonMap["w"]),
    );
    return obj;
  }

  Vector4 constructorArray(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Vector4.array(mxj2d(bo, jsonMap["array"]),
        mxj2d(bo, jsonMap["offset"], defaultValue: 0));
    return obj;
  }

  Vector4 constructorZero(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    return Vector4.zero();
  }

  Vector4 constructorIdentity(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    return Vector4.identity();
  }

  Vector4 constructorAll(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Vector4.all(mxj2d(bo, jsonMap["value"]));
    return obj;
  }

  Vector4 constructorRandom(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Vector4.random();
    return obj;
  }
}

///Vector3
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyVector3 extends MXJsonObjProxy {
  static String regClassName = "Vector3";

  ///静态接口,子类重写*********************************************

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyVector3()..init(className: regClassName)
    };
  }

  ///*********************************************************************

  @override
  void init({String className}) {
    super.init(className: className);

    registerConstructor(
        className: regClassName,
        constructorName: "array",
        constructor: constructorArray);
    registerConstructor(
        className: regClassName,
        constructorName: "zero",
        constructor: constructorZero);
    registerConstructor(
        className: regClassName,
        constructorName: "all",
        constructor: constructorAll);
    registerConstructor(
        className: regClassName,
        constructorName: "random",
        constructor: constructorRandom);
  }

  ///

  @override
  Vector3 constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Vector3(
      mxj2d(bo, jsonMap["x"]),
      mxj2d(bo, jsonMap["y"]),
      mxj2d(bo, jsonMap["z"]),
    );
    return obj;
  }

  Vector3 constructorArray(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Vector3.array(mxj2d(bo, jsonMap["array"]),
        mxj2d(bo, jsonMap["offset"], defaultValue: 0));
    return obj;
  }

  Vector3 constructorZero(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    return Vector3.zero();
  }

  Vector3 constructorAll(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Vector3.all(mxj2d(bo, jsonMap["value"]));
    return obj;
  }

  Vector3 constructorRandom(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Vector3.random();
    return obj;
  }
}

///ScrollController

class MXProxyScrollController extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "ScrollController";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyScrollController()..init(className: regClassName)
    };
  }

  @override
  ScrollController constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = ScrollController(
      initialScrollOffset:
          mxj2d(bo, jsonMap["initialScrollOffset"], defaultValue: 0.0),
      keepScrollOffset:
          mxj2d(bo, jsonMap["keepScrollOffset"], defaultValue: true),
      debugLabel: mxj2d(bo, jsonMap["debugLabel"]),
    );
    return widget;
  }
}

/********************ScrollPhysics*******************/
///ScrollPhysics
class MXProxyScrollPhysics extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "ScrollPhysics";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyScrollPhysics()..init(className: regClassName)
    };
  }

  @override
  ScrollPhysics constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = ScrollPhysics(
      parent: mxj2d(bo, jsonMap["parent"]),
    );
    return widget;
  }
}

///BouncingScrollPhysics
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyBouncingScrollPhysics extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中
  ///**@@@ 拷贝生成其他类  2 替换类名字符串
  static String regClassName = "BouncingScrollPhysics";

  ///工厂函数 用于延迟加载转换器
  static MXJsonObjProxy createProxy() {
    ///**@@@@ 拷贝生成其他类  3 替换类构建函数
    var p = MXProxyBouncingScrollPhysics();
    p.className = regClassName;
    return p;
  }

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    return {regClassName: createProxy};
  }

  @override
  BouncingScrollPhysics constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = BouncingScrollPhysics(
      parent: mxj2d(bo, jsonMap["parent"]),
    );
    return obj;
  }
}

///ClampingScrollPhysics
class MXProxyClampingScrollPhysics extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "ClampingScrollPhysics";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyClampingScrollPhysics()..init(className: regClassName)
    };
  }

  @override
  ClampingScrollPhysics constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = ClampingScrollPhysics(
      parent: mxj2d(bo, jsonMap["parent"]),
    );
    return widget;
  }
}

///AlwaysScrollableScrollPhysics
class MXProxyAlwaysScrollableScrollPhysics extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "AlwaysScrollableScrollPhysics";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyAlwaysScrollableScrollPhysics()..init(className: regClassName)
    };
  }

  @override
  AlwaysScrollableScrollPhysics constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = AlwaysScrollableScrollPhysics(
      parent: mxj2d(bo, jsonMap["parent"]),
    );
    return widget;
  }
}

///NeverScrollableScrollPhysics
class MXProxyNeverScrollableScrollPhysics extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "NeverScrollableScrollPhysics";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyNeverScrollableScrollPhysics()..init(className: regClassName)
    };
  }

  @override
  NeverScrollableScrollPhysics constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = NeverScrollableScrollPhysics(
      parent: mxj2d(bo, jsonMap["parent"]),
    );
    return widget;
  }
}



class MXClip {
  static Clip parse(String value, {Clip defaultValue = Clip.none}) {
    Clip retValue = defaultValue;

    switch (value) {
      case 'Clip.hardEdge':
        retValue = Clip.hardEdge;
        break;
      case 'Clip.antiAlias':
        retValue = Clip.antiAlias;
        break;
      case 'Clip.antiAliasWithSaveLayer':
        retValue = Clip.antiAliasWithSaveLayer;
        break;
      default:
        retValue = defaultValue;
    }

    return retValue;
  }
}

///Rect
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyRect extends MXJsonObjProxy {
  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName1 = "Rect";

    ///**@@@  3 替换类构造函数
    return {
      regClassName1: () => MXProxyRect()..init(className: regClassName1)
    };
  }

  ///*********************************************************************
  @override
  void init({String className}) {
    super.init(className: className);

    final String regClassName1 = "Rect";

    registerConstructor(
        className: regClassName1,
        constructorName: "fromCircle",
        constructor: constructorFromCircle);

    registerConstructor(
        className: regClassName1,
        constructorName: "fromLTRB",
        constructor: constructorFromLTRB);

    registerConstructor(
        className: regClassName1,
        constructorName: "fromLTWH",
        constructor: constructorFromLTWH);

    registerConstructor(
        className: regClassName1,
        constructorName: "fromPoints",
        constructor: constructorFromPoints);
  }

  ///

  Rect constructorFromCircle(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Rect.fromCircle(
        center: mxj2d(bo, jsonMap["center"]),
        radius: mxj2d(bo, jsonMap["radius"]));
    return obj;
  }

  Rect constructorFromLTRB(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Rect.fromLTRB(
        mxj2d(bo, jsonMap["left"]),
        mxj2d(bo, jsonMap["top"]),
        mxj2d(bo, jsonMap["right"]),
        mxj2d(bo, jsonMap["bottom"]));
    return obj;
  }

  Rect constructorFromLTWH(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Rect.fromLTWH(
        mxj2d(bo, jsonMap["left"]),
        mxj2d(bo, jsonMap["top"]),
        mxj2d(bo, jsonMap["width"]),
        mxj2d(bo, jsonMap["height"]));
    return obj;
  }

  Rect constructorFromPoints(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Rect.fromPoints(mxj2d(bo, jsonMap["a"]), mxj2d(bo, jsonMap["b"]));
    return obj;
  }
}

///AssetBundle
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyAssetBundle extends MXJsonObjProxy {
  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName1 = "PlatformAssetBundle";
    final String regClassName2 = "NetworkAssetBundle";

    ///**@@@  3 替换类构造函数
    return {
      regClassName1: () => MXProxyAssetBundle()..init(className: regClassName1),
      regClassName2: () => MXProxyAssetBundle()..init(className: regClassName2)
    };
  }

  ///*********************************************************************
  @override
  void init({String className}) {
    super.init(className: className);

    final String regClassName1 = "PlatformAssetBundle";
    final String regClassName2 = "NetworkAssetBundle";

    registerConstructor(
        className: regClassName1, constructor: constructorPlatformAssetBundle);
    registerConstructor(
        className: regClassName2, constructor: constructorNetworkAssetBundle);
  }

  ///

  PlatformAssetBundle constructorPlatformAssetBundle(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = PlatformAssetBundle();
    return obj;
  }

  NetworkAssetBundle constructorNetworkAssetBundle(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = NetworkAssetBundle(mxj2d(bo, jsonMap["baseUrl"]));
    return obj;
  }
}

///File
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyFile extends MXJsonObjProxy {
  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName1 = "File";

    ///**@@@  3 替换类构造函数
    return {
      regClassName1: () => MXProxyFile()..init(className: regClassName1),
    };
  }

  ///*********************************************************************
  @override
  void init({String className}) {
    super.init(className: className);

    final String regClassName1 = "File";

    registerConstructor(
        className: regClassName1,
        constructorName: "fromRawPath",
        constructor: constructorFromRawPath);

    registerConstructor(
        className: regClassName1,
        constructorName: "fromUri",
        constructor: constructorFromUri);
  }

  @override
  File constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = File(mxj2d(bo, jsonMap["path"]));
    return obj;
  }

  ///
  File constructorFromRawPath(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    File obj = File.fromRawPath(mxj2d(bo, jsonMap["rawPath"]));
    return obj;
  }

  File constructorFromUri(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    File obj = File.fromUri(mxj2d(bo, jsonMap["uri"]));
    return obj;
  }
}

///Uint8List
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyUint8List extends MXJsonObjProxy {
  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName1 = "Uint8List";

    ///**@@@  3 替换类构造函数
    return {
      regClassName1: () => MXProxyUint8List()..init(className: regClassName1),
    };
  }

  ///*********************************************************************
  @override
  void init({String className}) {
    super.init(className: className);

    final String regClassName1 = "Uint8List";

    registerConstructor(
        className: regClassName1,
        constructorName: "fromList",
        constructor: constructorFromList);

    registerConstructor(
        className: regClassName1,
        constructorName: "view",
        constructor: constructorView);
  }

  @override
  Uint8List constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = Uint8List(mxj2d(bo, jsonMap["length"]));
    return obj;
  }

  ///
  Uint8List constructorFromList(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    Uint8List obj = Uint8List.fromList(mxj2d(bo, jsonMap["elements"]));
    return obj;
  }

  Uint8List constructorView(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    Uint8List obj = Uint8List.view(mxj2d(bo, jsonMap["buffer"]));
    return obj;
  }
}

///Radius
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyRadius extends MXJsonObjProxy {
  static String regClassName = "Radius";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {regClassName: () => MXProxyRadius()..init(className: regClassName)};
  }

  @override
  void init({String className}) {
    super.init(className: className);
    registerConstructor(
        className: regClassName,
        constructorName: "circular",
        constructor: constructorCircular);
    registerConstructor(
        className: regClassName,
        constructorName: "elliptical",
        constructor: constructorElliptical);
  }

  ///

  ///*********************************************************************

  @override
  Radius constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = Radius.circular(0.0);
    return widget;
  }

  Radius constructorCircular(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = Radius.circular(mxj2d(bo, jsonMap["radius"]));
    return widget;
  }

  Radius constructorElliptical(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget =
        Radius.elliptical(mxj2d(bo, jsonMap["x"]), mxj2d(bo, jsonMap["y"]));
    return widget;
  }
}

///BorderRadius
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyBorderRadius extends MXJsonObjProxy {
  static String regClassName = "BorderRadius";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyBorderRadius()..init(className: regClassName)
    };
  }

  @override
  void init({String className}) {
    super.init(className: className);
    registerConstructor(
        className: regClassName,
        constructorName: "all",
        constructor: constructorAll);
    registerConstructor(
        className: regClassName,
        constructorName: "circular",
        constructor: constructorCircular);
    registerConstructor(
        className: regClassName,
        constructorName: "vertical",
        constructor: constructorVertical);
    registerConstructor(
        className: regClassName,
        constructorName: "horizontal",
        constructor: constructorHorizontal);
    registerConstructor(
        className: regClassName,
        constructorName: "only",
        constructor: constructorOnly);
  }

  ///

  ///*********************************************************************

  @override
  BorderRadius constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = BorderRadius.all(Radius.zero);
    return widget;
  }

  BorderRadius constructorAll(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = BorderRadius.all(mxj2d(bo, jsonMap["radius"]));
    return widget;
  }

  BorderRadius constructorCircular(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = BorderRadius.circular(mxj2d(bo, jsonMap["radius"]));
    return widget;
  }

  BorderRadius constructorVertical(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = BorderRadius.vertical(
      top: mxj2d(bo, jsonMap["top"], defaultValue: Radius.zero),
      bottom: mxj2d(bo, jsonMap["bottom"], defaultValue: Radius.zero),
    );
    return widget;
  }

  BorderRadius constructorHorizontal(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = BorderRadius.horizontal(
      left: mxj2d(bo, jsonMap["left"], defaultValue: Radius.zero),
      right: mxj2d(bo, jsonMap["right"], defaultValue: Radius.zero),
    );
    return widget;
  }

  BorderRadius constructorOnly(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = BorderRadius.only(
      topLeft: mxj2d(bo, jsonMap["topLeft"], defaultValue: Radius.zero),
      topRight: mxj2d(bo, jsonMap["topRight"], defaultValue: Radius.zero),
      bottomLeft: mxj2d(bo, jsonMap["bottomLeft"], defaultValue: Radius.zero),
      bottomRight: mxj2d(bo, jsonMap["bottomRight"], defaultValue: Radius.zero),
    );
    return widget;
  }
}

///BottomNavigationBarItem
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyBottomNavigationBarItem extends MXJsonObjProxy {
  static String regClassName = "BottomNavigationBarItem";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyBottomNavigationBarItem()..init(className: regClassName)
    };
  }

  ///*********************************************************************

  @override
  BottomNavigationBarItem constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = BottomNavigationBarItem(
      icon: mxj2d(bo, jsonMap["icon"]),
      title: mxj2d(bo, jsonMap["title"]),
      activeIcon: mxj2d(bo, jsonMap["activeIcon"]),
      backgroundColor: mxj2d(bo, jsonMap["backgroundColor"]),
    );
    return widget;
  }
}

class MXBottomNavigationBarType {
  static BottomNavigationBarType parse(String value,
      {BottomNavigationBarType defaultValue = BottomNavigationBarType.fixed}) {
    BottomNavigationBarType retValue = defaultValue;

    switch (value) {
      case 'BottomNavigationBarType.fixed':
        retValue = BottomNavigationBarType.fixed;
        break;
      case 'BottomNavigationBarType.shifting':
        retValue = BottomNavigationBarType.shifting;
        break;
      default:
        retValue = defaultValue;
    }

    return retValue;
  }
}

class MXProxyIconData extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName1 = "IconData";

    ///**@@@  3 替换类构造函数
    return {
      regClassName1: () => MXProxyIconData()..init(className: regClassName1)
    };
  }

  @override
  IconData constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = IconData(mxj2d(bo, jsonMap["codePoint"]),
        fontFamily: mxj2d(bo, jsonMap["fontFamily"]),
        fontPackage: mxj2d(bo, jsonMap["fontPackage"]),
        matchTextDirection:
            mxj2d(bo, jsonMap["matchTextDirection"], defaultValue: false));
    return widget;
  }
}

class MXTabBarIndicatorSize {
  static TabBarIndicatorSize parse(String value,
      {TabBarIndicatorSize defaultValue = TabBarIndicatorSize.tab}) {
    TabBarIndicatorSize retValue = defaultValue;

    switch (value) {
      case 'TabBarIndicatorSize.tab':
        retValue = TabBarIndicatorSize.tab;
        break;
      case 'TabBarIndicatorSize.label':
        retValue = TabBarIndicatorSize.label;
        break;
      default:
        retValue = defaultValue;
    }

    return retValue;
  }
}

class MXProxyBorder extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "Border";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxyBorder()..init(className: regClassName)};
	}

@override
  void init({String className}) {
    super.init(className: className);

    final String regClassName1 = "Border";

    registerConstructor(
        className: regClassName1,
        constructorName: "all",
        constructor: constructorAll);
  }

	@override
	Border constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = Border(
			top: mxj2d(bo, jsonMap["top"], defaultValue:BorderSide.none),
			right: mxj2d(bo, jsonMap["right"], defaultValue:BorderSide.none),
			bottom: mxj2d(bo, jsonMap["bottom"], defaultValue:BorderSide.none),
			left: mxj2d(bo, jsonMap["left"], defaultValue:BorderSide.none),
		);
		return widget;
	}

  Border constructorAll(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = Border.all(
      color: mxj2d(bo, jsonMap["color"], defaultValue: const Color(0xFF000000)),
      width: mxj2d(bo, jsonMap["width"], defaultValue: 1.0)?.toDouble(),
      style: MXBorderStyle.parse(mxj2d(bo, jsonMap["style"]), defaultValue: BorderStyle.solid),
    );
		return widget;
	}
}

class MXCollapseMode {
  static CollapseMode parse(String value, {CollapseMode defaultValue = CollapseMode.parallax}) {
    CollapseMode retValue = defaultValue;

    switch (value) {
      case 'CollapseMode.parallax':
        retValue = CollapseMode.parallax;
        break;
      case 'CollapseMode.pin':
        retValue = CollapseMode.pin;
        break;
      case 'CollapseMode.none':
        retValue = CollapseMode.none;
        break;
      default:
        retValue = defaultValue;
    }

    return retValue;
  }
}

class MXProxyAnnotatedRegion extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "AnnotatedRegion";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxyAnnotatedRegion()..init(className: regClassName)};
	}

	@override
	AnnotatedRegion constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = AnnotatedRegion(
			key: mxj2d(bo, jsonMap["key"]),
			child: mxj2d(bo, jsonMap["child"]),
			value: mxj2d(bo, jsonMap["value"]),
			sized: mxj2d(bo, jsonMap["sized"], defaultValue:true),
		);
		return widget;
	}
}

class MXProxySystemUiOverlayStyle extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "SystemUiOverlayStyle";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxySystemUiOverlayStyle()..init(className: regClassName)};
	}

  @override
  void init({String className}) {
    super.init(className: className);

    final String regClassName = "SystemUiOverlayStyle";
    registerConstructor(className: regClassName, constructorName: "constructor", constructor: constructor);
    registerConstructor(className: regClassName, constructorName: "light", constructor: constructorLight);
    registerConstructor(className: regClassName, constructorName: "dark", constructor: constructorDark);
  }

  @override
	SystemUiOverlayStyle constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = SystemUiOverlayStyle(
			systemNavigationBarColor: mxj2d(bo, jsonMap["systemNavigationBarColor"]),
			systemNavigationBarDividerColor: mxj2d(bo, jsonMap["systemNavigationBarDividerColor"]),
			systemNavigationBarIconBrightness: MXBrightness.parse(mxj2d(bo, jsonMap["systemNavigationBarIconBrightness"])),
			statusBarColor: mxj2d(bo, jsonMap["statusBarColor"]),
			statusBarBrightness: MXBrightness.parse(mxj2d(bo, jsonMap["statusBarBrightness"])),
			statusBarIconBrightness: MXBrightness.parse(mxj2d(bo, jsonMap["statusBarIconBrightness"])),
		);
		return widget;
	}

  SystemUiOverlayStyle constructorLight(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		return SystemUiOverlayStyle.light;
	}

  SystemUiOverlayStyle constructorDark(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		return SystemUiOverlayStyle.dark;
	}
}

class MXBrightness {
  static Brightness parse(String value, {Brightness defaultValue = Brightness.dark}) {
    Brightness retValue = defaultValue;

    switch (value) {
      case 'Brightness.dark':
        retValue = Brightness.dark;
        break;
      case 'Brightness.light':
        retValue = Brightness.light;
        break;
      default:
        retValue = defaultValue;
    }

    return retValue;
  }
}

class MXProxyTheme extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "Theme";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxyTheme()..init(className: regClassName)};
	}

	@override
	Theme constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = Theme(
			key: mxj2d(bo, jsonMap["key"]),
			data: mxj2d(bo, jsonMap["data"]),
			isMaterialAppTheme: mxj2d(bo, jsonMap["isMaterialAppTheme"], defaultValue:false),
			child: mxj2d(bo, jsonMap["child"]),
		);
		return widget;
	}
}

class MXProxyMaterialColor extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "MaterialColor";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxyMaterialColor()..init(className: regClassName)};
	}

	@override
	MaterialColor constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = MaterialColor(
      mxj2d(bo, jsonMap["primary"]),
			toMapIntT<Color>(mxj2d(bo, jsonMap["swatch"])),
		);
		return widget;
	}
}

class MXProxyThemeData extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "ThemeData";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxyThemeData()..init(className: regClassName)};
	}

	@override
	ThemeData constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = ThemeData(
			brightness: MXBrightness.parse(mxj2d(bo, jsonMap["brightness"])),
			primarySwatch: mxj2d(bo, jsonMap["primarySwatch"]),
			primaryColor: mxj2d(bo, jsonMap["primaryColor"]),
			primaryColorBrightness: mxj2d(bo, jsonMap["primaryColorBrightness"]),
			primaryColorLight: mxj2d(bo, jsonMap["primaryColorLight"]),
			primaryColorDark: mxj2d(bo, jsonMap["primaryColorDark"]),
			accentColor: mxj2d(bo, jsonMap["accentColor"]),
			accentColorBrightness: mxj2d(bo, jsonMap["accentColorBrightness"]),
			canvasColor: mxj2d(bo, jsonMap["canvasColor"]),
			scaffoldBackgroundColor: mxj2d(bo, jsonMap["scaffoldBackgroundColor"]),
			bottomAppBarColor: mxj2d(bo, jsonMap["bottomAppBarColor"]),
			cardColor: mxj2d(bo, jsonMap["cardColor"]),
			dividerColor: mxj2d(bo, jsonMap["dividerColor"]),
			highlightColor: mxj2d(bo, jsonMap["highlightColor"]),
			splashColor: mxj2d(bo, jsonMap["splashColor"]),
			splashFactory: mxj2d(bo, jsonMap["splashFactory"]),
			selectedRowColor: mxj2d(bo, jsonMap["selectedRowColor"]),
			unselectedWidgetColor: mxj2d(bo, jsonMap["unselectedWidgetColor"]),
			disabledColor: mxj2d(bo, jsonMap["disabledColor"]),
			buttonColor: mxj2d(bo, jsonMap["buttonColor"]),
			buttonTheme: mxj2d(bo, jsonMap["buttonTheme"]),
			secondaryHeaderColor: mxj2d(bo, jsonMap["secondaryHeaderColor"]),
			textSelectionColor: mxj2d(bo, jsonMap["textSelectionColor"]),
			cursorColor: mxj2d(bo, jsonMap["cursorColor"]),
			textSelectionHandleColor: mxj2d(bo, jsonMap["textSelectionHandleColor"]),
			backgroundColor: mxj2d(bo, jsonMap["backgroundColor"]),
			dialogBackgroundColor: mxj2d(bo, jsonMap["dialogBackgroundColor"]),
			indicatorColor: mxj2d(bo, jsonMap["indicatorColor"]),
			hintColor: mxj2d(bo, jsonMap["hintColor"]),
			errorColor: mxj2d(bo, jsonMap["errorColor"]),
			toggleableActiveColor: mxj2d(bo, jsonMap["toggleableActiveColor"]),
			fontFamily: mxj2d(bo, jsonMap["fontFamily"]),
			textTheme: mxj2d(bo, jsonMap["textTheme"]),
			primaryTextTheme: mxj2d(bo, jsonMap["primaryTextTheme"]),
			accentTextTheme: mxj2d(bo, jsonMap["accentTextTheme"]),
			inputDecorationTheme: mxj2d(bo, jsonMap["inputDecorationTheme"]),
			iconTheme: mxj2d(bo, jsonMap["iconTheme"]),
			primaryIconTheme: mxj2d(bo, jsonMap["primaryIconTheme"]),
			accentIconTheme: mxj2d(bo, jsonMap["accentIconTheme"]),
			sliderTheme: mxj2d(bo, jsonMap["sliderTheme"]),
			tabBarTheme: mxj2d(bo, jsonMap["tabBarTheme"]),
			chipTheme: mxj2d(bo, jsonMap["chipTheme"]),
			platform: MXTargetPlatform.parse(mxj2d(bo, jsonMap["platform"])),
			materialTapTargetSize: mxj2d(bo, jsonMap["materialTapTargetSize"]),
			pageTransitionsTheme: mxj2d(bo, jsonMap["pageTransitionsTheme"]),
			colorScheme: mxj2d(bo, jsonMap["colorScheme"]),
			dialogTheme: mxj2d(bo, jsonMap["dialogTheme"]),
			typography: mxj2d(bo, jsonMap["typography"]),
		);
		return widget;
	}
}

class MXProxyInputDecorationTheme extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "InputDecorationTheme";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxyInputDecorationTheme()..init(className: regClassName)};
	}

	@override
	InputDecorationTheme constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = InputDecorationTheme(
			labelStyle: mxj2d(bo, jsonMap["labelStyle"]),
			helperStyle: mxj2d(bo, jsonMap["helperStyle"]),
			hintStyle: mxj2d(bo, jsonMap["hintStyle"]),
			errorStyle: mxj2d(bo, jsonMap["errorStyle"]),
			errorMaxLines: mxj2d(bo, jsonMap["errorMaxLines"]),
			hasFloatingPlaceholder: mxj2d(bo, jsonMap["hasFloatingPlaceholder"], defaultValue:true),
			isDense: mxj2d(bo, jsonMap["isDense"], defaultValue:false),
			contentPadding: mxj2d(bo, jsonMap["contentPadding"]),
			isCollapsed: mxj2d(bo, jsonMap["isCollapsed"], defaultValue:false),
			prefixStyle: mxj2d(bo, jsonMap["prefixStyle"]),
			suffixStyle: mxj2d(bo, jsonMap["suffixStyle"]),
			counterStyle: mxj2d(bo, jsonMap["counterStyle"]),
			filled: mxj2d(bo, jsonMap["filled"], defaultValue:false),
			fillColor: mxj2d(bo, jsonMap["fillColor"]),
			errorBorder: mxj2d(bo, jsonMap["errorBorder"]),
			focusedBorder: mxj2d(bo, jsonMap["focusedBorder"]),
			focusedErrorBorder: mxj2d(bo, jsonMap["focusedErrorBorder"]),
			disabledBorder: mxj2d(bo, jsonMap["disabledBorder"]),
			enabledBorder: mxj2d(bo, jsonMap["enabledBorder"]),
			border: mxj2d(bo, jsonMap["border"]),
		);
		return widget;
	}
}

class MXTargetPlatform {
  static TargetPlatform parse(String value, {TargetPlatform defaultValue = TargetPlatform.android}) {
    TargetPlatform retValue = defaultValue;

    switch (value) {
      case 'TargetPlatform.android':
        retValue = TargetPlatform.android;
        break;
      case 'TargetPlatform.fuchsia':
        retValue = TargetPlatform.fuchsia;
        break;
        case 'TargetPlatform.iOS':
        retValue = TargetPlatform.iOS;
        break;
      default:
        retValue = defaultValue;
    }

    return retValue;
  }
}


class MXProxyCircularNotchedRectangle extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "CircularNotchedRectangle";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxyCircularNotchedRectangle()..init(className: regClassName)};
	}

	@override
	CircularNotchedRectangle constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = CircularNotchedRectangle();
		return widget;
	}
}

class MXProxyIconTheme extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "IconTheme";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxyIconTheme()..init(className: regClassName)};
	}

	@override
	IconTheme constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = IconTheme(
			key: mxj2d(bo, jsonMap["key"]),
			data: mxj2d(bo, jsonMap["data"]),
			child: mxj2d(bo, jsonMap["child"]),
		);
		return widget;
	}
}

class MXProxyIconThemeData extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "IconThemeData";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxyIconThemeData()..init(className: regClassName)};
	}

	@override
	IconThemeData constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = IconThemeData(
			color: mxj2d(bo, jsonMap["color"]),
			opacity: mxj2d(bo, jsonMap["opacity"])?.toDouble(),
			size: mxj2d(bo, jsonMap["size"])?.toDouble(),
		);
		return widget;
	}
}

class MXProxyDropdownMenuItem extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "DropdownMenuItem";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxyDropdownMenuItem()..init(className: regClassName)};
	}

	@override
	DropdownMenuItem constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = DropdownMenuItem(
			key: mxj2d(bo, jsonMap["key"]),
			value: mxj2d(bo, jsonMap["value"]),
			child: mxj2d(bo, jsonMap["child"]),
		);
		return widget;
	}
}

class MXProxyBoxShadow extends MXJsonObjProxy {
	static Map<String, CreateJsonObjProxyFun> registerProxy() {
		///**@@@  2 替换类名字符串
		final String regClassName = "BoxShadow";
		///**@@@  3 替换类构造函数
		return {regClassName: () => MXProxyBoxShadow()..init(className: regClassName)};
	}

	@override
	BoxShadow constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
		var widget = BoxShadow(
			color: mxj2d(bo, jsonMap["color"], defaultValue:const Color(0xFF000000)),
			offset: mxj2d(bo, jsonMap["offset"], defaultValue:Offset.zero),
			blurRadius: mxj2d(bo, jsonMap["blurRadius"], defaultValue:0.0),
			spreadRadius: mxj2d(bo, jsonMap["spreadRadius"], defaultValue:0.0),
		);
		return widget;
	}
}

class MXBoxShape {
  static BoxShape parse(String value,
      {BoxShape defaultValue = BoxShape.circle}) {
    BoxShape retValut = defaultValue;
    switch (value) {
      case 'BoxShape.circle':
        retValut = BoxShape.circle;
        break;
      case 'BoxShape.rectangle':
        retValut = BoxShape.rectangle;
        break;
      default:
        retValut = defaultValue;
    }

    return retValut;
  }
}