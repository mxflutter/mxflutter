//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'dart:io';
import 'dart:math' as math;
import 'dart:typed_data';

import 'package:vector_math/vector_math_64.dart' hide Colors;
import 'package:flutter/material.dart';

import 'mx_json_to_dart.dart';
import 'mx_build_owner.dart';
import 'package:flutter/services.dart';
import 'package:flutter/physics.dart';

import "mx_json_proxy_material.dart";

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
    m.addAll(MXProxyFixedColumnWidth.registerProxy());
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
    m.addAll(MXProxyQuaternion.registerProxy());
    m.addAll(MXProxySlider.registerProxy());
    m.addAll(MXProxyCircleAvatar.registerProxy());
    m.addAll(MXProxyBorderDirectional.registerProxy());
    m.addAll(MXProxyChip.registerProxy());
    m.addAll(MXProxyInputBorder.registerProxy());
    m.addAll(MXProxyGlobalKey.registerProxy());
    m.addAll(MXProxyOpacity.registerProxy());
    m.addAll(MXProxyPositioned.registerProxy());
    m.addAll(MXProxyMaterialAccentColor.registerProxy());
    m.addAll(MXProxyColorScheme.registerProxy());
    m.addAll(MXProxyButtonThemeData.registerProxy());
    m.addAll(MXProxyNotificationListener.registerProxy());
    m.addAll(MXProxyPreferredSize.registerProxy());
    m.addAll(MXProxyClipRRect.registerProxy());
    m.addAll(MXProxySpringDescription.registerProxy());
    m.addAll(MXProxyUniqueKey.registerProxy());
    return m;
  }
}

///Key
///
class MXProxyKey extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中

  static String regClassName = "Key";

  ///工厂函数 用于延迟加载转换器
  static MXJsonObjProxy createProxy() {
    var p = MXProxyKey();
    p.className = regClassName;
    return p;
  }

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    return {regClassName: createProxy};
  }

  @override
  Key constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    //Key(String value)

    String key = jsonMap["value"];

    if (key is String && key.isNotEmpty) {
      return Key(key);
    }

    return null;
  }
}

///AlignmentDirectional
///
class MXProxyAlignmentDirectional extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中

  static String regClassName = "AlignmentDirectional";

  ///工厂函数 用于延迟加载转换器
  static MXJsonObjProxy createProxy() {
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
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = AlignmentDirectional(mxj2d(bo, jsonMap["start"])?.toDouble(),
        mxj2d(bo, jsonMap["y"])?.toDouble());

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
  EdgeInsets constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = EdgeInsets.fromLTRB(
      mxj2d(bo, jsonMap["left"])?.toDouble(),
      mxj2d(bo, jsonMap["top"])?.toDouble(),
      mxj2d(bo, jsonMap["right"])?.toDouble(),
      mxj2d(bo, jsonMap["bottom"])?.toDouble(),
    );
    return widget;
  }

  EdgeInsets constructorFromLTRB(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = EdgeInsets.fromLTRB(
      mxj2d(bo, jsonMap["left"])?.toDouble(),
      mxj2d(bo, jsonMap["top"])?.toDouble(),
      mxj2d(bo, jsonMap["right"])?.toDouble(),
      mxj2d(bo, jsonMap["bottom"])?.toDouble(),
    );
    return widget;
  }

  EdgeInsets constructorAll(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = EdgeInsets.all(
      mxj2d(bo, jsonMap["value"])?.toDouble(),
    );
    return widget;
  }

  EdgeInsets constructorOnly(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = EdgeInsets.only(
      left: mxj2d(bo, jsonMap["left"], defaultValue: 0.0)?.toDouble(),
      top: mxj2d(bo, jsonMap["top"], defaultValue: 0.0)?.toDouble(),
      right: mxj2d(bo, jsonMap["right"], defaultValue: 0.0)?.toDouble(),
      bottom: mxj2d(bo, jsonMap["bottom"], defaultValue: 0.0)?.toDouble(),
    );
    return widget;
  }

  EdgeInsets constructorSymmetric(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
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
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = EdgeInsetsDirectional.fromSTEB(
      mxj2d(bo, jsonMap["start"])?.toDouble(),
      mxj2d(bo, jsonMap["top"])?.toDouble(),
      mxj2d(bo, jsonMap["end"])?.toDouble(),
      mxj2d(bo, jsonMap["bottom"])?.toDouble(),
    );
    return widget;
  }

  EdgeInsetsDirectional constructorOnly(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
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
///
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
  Color constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Color(mxj2d(bo, jsonMap["value"]));

    return obj;
  }

  Color constructorFromARGB(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Color.fromARGB(
      mxj2d(bo, jsonMap["a"]),
      mxj2d(bo, jsonMap["r"]),
      mxj2d(bo, jsonMap["g"]),
      mxj2d(bo, jsonMap["b"]),
    );

    return obj;
  }

  Color constructorFromRGBO(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
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
  static Map str2VMap = {
    "BlendMode.clear": BlendMode.clear,
    "BlendMode.src": BlendMode.src,
    "BlendMode.dst": BlendMode.dst,
    "BlendMode.srcOver": BlendMode.srcOver,
    "BlendMode.dstOver": BlendMode.dstOver,
    "BlendMode.srcIn": BlendMode.srcIn,
    "BlendMode.dstIn": BlendMode.dstIn,
    "BlendMode.srcOut": BlendMode.srcOut,
    "BlendMode.dstOut": BlendMode.dstOut,
    "BlendMode.srcATop": BlendMode.srcATop,
    "BlendMode.dstATop": BlendMode.dstATop,
    "BlendMode.xor": BlendMode.xor,
    "BlendMode.plus": BlendMode.plus,
    "BlendMode.modulate": BlendMode.modulate,
    "BlendMode.screen": BlendMode.screen,
    "BlendMode.overlay": BlendMode.overlay,
    "BlendMode.darken": BlendMode.darken,
    "BlendMode.lighten": BlendMode.lighten,
    "BlendMode.colorDodge": BlendMode.colorDodge,
    "BlendMode.colorBurn": BlendMode.colorBurn,
    "BlendMode.hardLight": BlendMode.hardLight,
    "BlendMode.softLight": BlendMode.softLight,
    "BlendMode.difference": BlendMode.difference,
    "BlendMode.exclusion": BlendMode.exclusion,
    "BlendMode.multiply": BlendMode.multiply,
    "BlendMode.hue": BlendMode.hue,
    "BlendMode.saturation": BlendMode.saturation,
    "BlendMode.color": BlendMode.color,
    "BlendMode.luminosity": BlendMode.luminosity,
  };

  static BlendMode parse(Map valueMap, {BlendMode defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

///FilterQuality
class MXFilterQuality {
  static Map str2VMap = {
    "FilterQuality.none": FilterQuality.none,
    "FilterQuality.low": FilterQuality.low,
    "FilterQuality.medium": FilterQuality.medium,
    "FilterQuality.high": FilterQuality.high,
  };

  static FilterQuality parse(Map valueMap, {FilterQuality defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

///BlurStyle
class MXBlurStyle {
  static Map str2VMap = {
    "BlurStyle.normal": BlurStyle.normal,
    "BlurStyle.solid": BlurStyle.solid,
    "BlurStyle.outer": BlurStyle.outer,
    "BlurStyle.inner": BlurStyle.inner,
  };

  static BlurStyle parse(Map valueMap, {BlurStyle defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
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
  Alignment constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Alignment(
      mxj2d(bo, jsonMap["x"])?.toDouble(),
      mxj2d(bo, jsonMap["y"])?.toDouble(),
    );
    return widget;
  }
}

///StrokeCap
class MXStrokeCap {
  static Map str2VMap = {
    "StrokeCap.butt": StrokeCap.butt,
    "StrokeCap.round": StrokeCap.round,
    "StrokeCap.square": StrokeCap.square,
  };

  static StrokeCap parse(Map valueMap, {StrokeCap defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

///StrokeJoin
class MXStrokeJoin {
  static Map str2VMap = {
    "StrokeJoin.miter": StrokeJoin.miter,
    "StrokeJoin.round": StrokeJoin.round,
    "StrokeJoin.bevel": StrokeJoin.bevel,
  };

  static StrokeJoin parse(Map valueMap, {StrokeJoin defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

///PaintingStyle
class MXPaintingStyle {
  static Map str2VMap = {
    "PaintingStyle.fill": PaintingStyle.fill,
    "PaintingStyle.stroke": PaintingStyle.stroke,
  };

  static PaintingStyle parse(Map valueMap, {PaintingStyle defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

///Paint
///
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
  }

  ///

  @override
  Paint constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
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
      ..strokeMiterLimit = mxj2d(bo, jsonMap["strokeMiterLimit"])?.toDouble()
      ..strokeWidth = mxj2d(bo, jsonMap["strokeWidth"])?.toDouble()
      ..style = MXPaintingStyle.parse(mxj2d(bo, jsonMap["style"]));

    return obj;
  }
}

///ColorFilter
///
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

  ColorFilter constructorMode(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    ColorFilter obj = ColorFilter.mode(mxj2d(bo, jsonMap["color"]),
        MXBlendMode.parse(mxj2d(bo, jsonMap["blendMode"])));

    return obj;
  }

  MaskFilter constructorBlur(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    MaskFilter obj = MaskFilter.blur(
        MXBlurStyle.parse(mxj2d(bo, jsonMap["_style"])),
        mxj2d(bo, jsonMap["_sigma"])?.toDouble());

    return obj;
  }
}

///TileMode
class MXTileMode {
  static Map str2VMap = {
    "TileMode.clamp": TileMode.clamp,
    "TileMode.repeated": TileMode.repeated,
    "TileMode.mirror": TileMode.mirror,
  };

  static TileMode parse(Map valueMap, {TileMode defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

///Shader
///
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
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    LinearGradient obj = LinearGradient(
        begin: mxj2d(bo, jsonMap["begin"], defaultValue: Alignment.centerLeft),
        end: mxj2d(bo, jsonMap["end"], defaultValue: Alignment.centerRight),
        colors: toListT<Color>(mxj2d(bo, jsonMap["colors"])),
        stops: toListT<double>(mxj2d(bo, jsonMap["stops"])));

    return obj;
  }

  RadialGradient constructorRadial(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    RadialGradient obj = RadialGradient(
        center: mxj2d(bo, jsonMap["center"], defaultValue: Alignment.center),
        radius: mxj2d(bo, jsonMap["radius"], defaultValue: 0.5)?.toDouble(),
        colors: toListT<Color>(mxj2d(bo, jsonMap["colors"])),
        stops: toListT<double>(mxj2d(bo, jsonMap["stops"])),
        tileMode: MXTileMode.parse(mxj2d(bo, jsonMap["tileMode"]),
            defaultValue: TileMode.clamp),
        focal: mxj2d(bo, jsonMap["focal"]),
        focalRadius: mxj2d(bo, jsonMap["focalRadius"])?.toDouble());

    return obj;
  }

  SweepGradient constructorSweep(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    SweepGradient obj = SweepGradient(
      center: mxj2d(bo, jsonMap["center"], defaultValue: Alignment.center),
      startAngle:
          mxj2d(bo, jsonMap["startAngle"], defaultValue: 0.0)?.toDouble(),
      endAngle:
          mxj2d(bo, jsonMap["endAngle"], defaultValue: math.pi * 2)?.toDouble(),
      colors: toListT<Color>(mxj2d(bo, jsonMap["colors"])),
      stops: toListT<double>(mxj2d(bo, jsonMap["stops"])),
      tileMode: MXTileMode.parse(mxj2d(bo, jsonMap["tileMode"]),
          defaultValue: TileMode.clamp),
    );

    return obj;
  }

  ImageShader constructorImageShader(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
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
  BoxDecoration constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = BoxDecoration(
      color: mxj2d(bo, jsonMap["color"]),
      image: mxj2d(bo, jsonMap["image"]),
      border: mxj2d(bo, jsonMap["border"]),
      borderRadius: mxj2d(bo, jsonMap["borderRadius"]),
      boxShadow: toListT<BoxShadow>(mxj2d(bo, jsonMap["boxShadow"])),
      gradient: mxj2d(bo, jsonMap["gradient"]),
      backgroundBlendMode: mxj2d(bo, jsonMap["backgroundBlendMode"]),
      shape: MXBoxShape.parse(mxj2d(bo, jsonMap["shape"]),
          defaultValue: BoxShape.rectangle),
    );
    return widget;
  }
}

///Locale
///
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
  Locale constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Locale(
        mxj2d(bo, jsonMap["languageCode"]), mxj2d(bo, jsonMap["countryCode"]));

    return obj;
  } //

  Locale constructorFromSubtags(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Locale.fromSubtags(
        languageCode: mxj2d(bo, jsonMap["languageCode"], defaultValue: 'und'),
        scriptCode: mxj2d(bo, jsonMap["scriptCode"]),
        countryCode: mxj2d(bo, jsonMap["countryCode"]));

    return obj;
  }
}

class MXMainAxisAlignment {
  static Map str2VMap = {
    "MainAxisAlignment.start": MainAxisAlignment.start,
    "MainAxisAlignment.end": MainAxisAlignment.end,
    "MainAxisAlignment.center": MainAxisAlignment.center,
    "MainAxisAlignment.spaceBetween": MainAxisAlignment.spaceBetween,
    "MainAxisAlignment.spaceAround": MainAxisAlignment.spaceAround,
    "MainAxisAlignment.spaceEvenly": MainAxisAlignment.spaceEvenly,
  };

  static MainAxisAlignment parse(Map valueMap,
      {MainAxisAlignment defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXMainAxisSize {
  static Map str2VMap = {
    "MainAxisSize.min": MainAxisSize.min,
    "MainAxisSize.max": MainAxisSize.max,
  };

  static MainAxisSize parse(Map valueMap, {MainAxisSize defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXCrossAxisAlignment {
  static Map str2VMap = {
    "CrossAxisAlignment.start": CrossAxisAlignment.start,
    "CrossAxisAlignment.end": CrossAxisAlignment.end,
    "CrossAxisAlignment.center": CrossAxisAlignment.center,
    "CrossAxisAlignment.stretch": CrossAxisAlignment.stretch,
    "CrossAxisAlignment.baseline": CrossAxisAlignment.baseline,
  };

  static CrossAxisAlignment parse(Map valueMap,
      {CrossAxisAlignment defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXVerticalDirection {
  static Map str2VMap = {
    "VerticalDirection.up": VerticalDirection.up,
    "VerticalDirection.down": VerticalDirection.down,
  };

  static VerticalDirection parse(Map valueMap,
      {VerticalDirection defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

///BoxConstraints
///
class MXProxyBoxConstraints extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中

  static String regClassName = "BoxConstraints";

  ///工厂函数 用于延迟加载转换器
  static MXJsonObjProxy createProxy() {
    var p = MXProxyBoxConstraints();
    p.className = regClassName;
    return p;
  }

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    return {regClassName: createProxy};
  }

  @override
  BoxConstraints constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = BoxConstraints(
      minWidth: mxj2d(bo, jsonMap["minWidth"], defaultValue: 0.0)?.toDouble(),
      maxWidth: mxj2d(bo, jsonMap["maxWidth"], defaultValue: double.infinity)
          ?.toDouble(),
      minHeight: mxj2d(bo, jsonMap["minHeight"], defaultValue: 0.0)?.toDouble(),
      maxHeight: mxj2d(bo, jsonMap["maxHeight"], defaultValue: double.infinity)
          ?.toDouble(),
    );

    return obj;
  }
}

///Size
///
class MXProxySize extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中

  static String regClassName = "Size";

  ///工厂函数 用于延迟加载转换器
  static MXJsonObjProxy createProxy() {
    var p = MXProxySize();
    p.className = regClassName;
    return p;
  }

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    return {regClassName: createProxy};
  }

  @override
  Size constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Size(mxj2d(bo, jsonMap["width"])?.toDouble(),
        mxj2d(bo, jsonMap["height"])?.toDouble());
    return obj;
  }
}

///Offset
///
class MXProxyOffset extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中

  static String regClassName = "Offset";

  ///工厂函数 用于延迟加载转换器
  static MXJsonObjProxy createProxy() {
    var p = MXProxyOffset();
    p.className = regClassName;
    return p;
  }

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    return {regClassName: createProxy};
  }

  @override
  Offset constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Offset(mxj2d(bo, jsonMap["dx"])?.toDouble(),
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
  TableRow constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = TableRow(
      key: mxj2d(bo, jsonMap["key"]),
      decoration: mxj2d(bo, jsonMap["decoration"]),
      children: toListT<Widget>(mxj2d(bo, jsonMap["children"])),
    );
    return widget;
  }
}

///枚举类型处理，使��类方法来解析JSON的值

class MXBoxFit {
  static Map str2VMap = {
    "BoxFit.fill": BoxFit.fill,
    "BoxFit.contain": BoxFit.contain,
    "BoxFit.cover": BoxFit.cover,
    "BoxFit.fitWidth": BoxFit.fitWidth,
    "BoxFit.fitHeight": BoxFit.fitHeight,
    "BoxFit.none": BoxFit.none,
    "BoxFit.scaleDown": BoxFit.scaleDown,
  };

  static BoxFit parse(Map valueMap, {BoxFit defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXOverflow {
  static Map str2VMap = {
    "Overflow.visible": Overflow.visible,
    "Overflow.clip": Overflow.clip,
  };

  static Overflow parse(Map valueMap, {Overflow defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXStackFit {
  static Map str2VMap = {
    "StackFit.loose": StackFit.loose,
    "StackFit.expand": StackFit.expand,
    "StackFit.passthrough": StackFit.passthrough,
  };

  static StackFit parse(Map valueMap, {StackFit defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXAxis {
  static Map str2VMap = {
    "Axis.horizontal": Axis.horizontal,
    "Axis.vertical": Axis.vertical,
  };

  static Axis parse(Map valueMap, {Axis defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXTableCellVerticalAlignment {
  static Map str2VMap = {
    "TableCellVerticalAlignment.top": TableCellVerticalAlignment.top,
    "TableCellVerticalAlignment.middle": TableCellVerticalAlignment.middle,
    "TableCellVerticalAlignment.bottom": TableCellVerticalAlignment.bottom,
    "TableCellVerticalAlignment.baseline": TableCellVerticalAlignment.baseline,
    "TableCellVerticalAlignment.fill": TableCellVerticalAlignment.fill,
  };

  static TableCellVerticalAlignment parse(Map valueMap,
      {TableCellVerticalAlignment defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

///TableBorder
///
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
  TableBorder constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
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

  TableBorder constructorAll(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = TableBorder.all(
      color: mxj2d(bo, jsonMap["color"], defaultValue: const Color(0xFF000000)),
      width: mxj2d(bo, jsonMap["width"], defaultValue: 1.0)?.toDouble(),
      style: MXBorderStyle.parse(mxj2d(bo, jsonMap["width"]),
          defaultValue: BorderStyle.solid),
    );

    return obj;
  }

  TableBorder constructorSymmetric(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = TableBorder.symmetric(
      inside: mxj2d(bo, jsonMap["inside"], defaultValue: BorderSide.none),
      outside: mxj2d(bo, jsonMap["outside"], defaultValue: BorderSide.none),
    );

    return obj;
  }
}

///BorderSide
///
class MXProxyBorderSide extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中

  static String regClassName = "BorderSide";

  ///工厂函数 用于延迟加载转换器
  static MXJsonObjProxy createProxy() {
    var p = MXProxyBorderSide();
    p.className = regClassName;
    return p;
  }

  ///把��己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    return {regClassName: createProxy};
  }

  @override
  BorderSide constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
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
  static Map str2VMap = {
    "BorderStyle.none": BorderStyle.none,
    "BorderStyle.solid": BorderStyle.solid,
  };

  static BorderStyle parse(Map valueMap, {BorderStyle defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

///FlexColumnWidth
///
class MXProxyFlexColumnWidth extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中

  static String regClassName = "FlexColumnWidth";

  ///工厂函数 用于延迟加载转换器
  static MXJsonObjProxy createProxy() {
    var p = MXProxyFlexColumnWidth();
    p.className = regClassName;
    return p;
  }

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    return {regClassName: createProxy};
  }

  @override
  FlexColumnWidth constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = FlexColumnWidth(
      mxj2d(bo, jsonMap["value"], defaultValue: 1.0)?.toDouble(),
    );
    return obj;
  }
}

class MXProxyFixedColumnWidth extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "FixedColumnWidth";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyFixedColumnWidth()..init(className: regClassName)
    };
  }

  @override
  FixedColumnWidth constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = FixedColumnWidth(mxj2d(bo, jsonMap["value"]).toDouble());
    return widget;
  }
}

class MXWrapAlignment {
  static Map str2VMap = {
    "WrapAlignment.start": WrapAlignment.start,
    "WrapAlignment.end": WrapAlignment.end,
    "WrapAlignment.center": WrapAlignment.center,
    "WrapAlignment.spaceBetween": WrapAlignment.spaceBetween,
    "WrapAlignment.spaceAround": WrapAlignment.spaceAround,
    "WrapAlignment.spaceEvenly": WrapAlignment.spaceEvenly,
  };

  static WrapAlignment parse(Map valueMap, {WrapAlignment defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXWrapCrossAlignment {
  static Map str2VMap = {
    "WrapCrossAlignment.start": WrapCrossAlignment.start,
    "WrapCrossAlignment.end": WrapCrossAlignment.end,
    "WrapCrossAlignment.center": WrapCrossAlignment.center,
  };

  static WrapCrossAlignment parse(Map valueMap,
      {WrapCrossAlignment defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

///Matrix4
///
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
  Matrix4 constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Matrix4(
      mxj2d(bo, jsonMap["arg0"])?.toDouble(),
      mxj2d(bo, jsonMap["arg1"])?.toDouble(),
      mxj2d(bo, jsonMap["arg2"])?.toDouble(),
      mxj2d(bo, jsonMap["arg3"])?.toDouble(),
      mxj2d(bo, jsonMap["arg4"])?.toDouble(),
      mxj2d(bo, jsonMap["arg5"])?.toDouble(),
      mxj2d(bo, jsonMap["arg6"])?.toDouble(),
      mxj2d(bo, jsonMap["arg7"])?.toDouble(),
      mxj2d(bo, jsonMap["arg8"])?.toDouble(),
      mxj2d(bo, jsonMap["arg9"])?.toDouble(),
      mxj2d(bo, jsonMap["arg10"])?.toDouble(),
      mxj2d(bo, jsonMap["arg11"])?.toDouble(),
      mxj2d(bo, jsonMap["arg12"])?.toDouble(),
      mxj2d(bo, jsonMap["arg13"])?.toDouble(),
      mxj2d(bo, jsonMap["arg14"])?.toDouble(),
      mxj2d(bo, jsonMap["arg15"])?.toDouble(),
    );
    return obj;
  }

  Matrix4 constructorFromList(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    List<double> values = toListT<double>(mxj2d(bo, jsonMap["values"]));
    var obj = Matrix4.fromList(values);
    return obj;
  }

  Matrix4 constructorZero(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    return Matrix4.zero();
  }

  Matrix4 constructorIdentity(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    return Matrix4.identity();
  }

  Matrix4 constructorColumns(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Matrix4.columns(
      mxj2d(bo, jsonMap["arg0"]),
      mxj2d(bo, jsonMap["arg1"]),
      mxj2d(bo, jsonMap["arg2"]),
      mxj2d(bo, jsonMap["arg3"]),
    );
    return obj;
  }

  Matrix4 constructorOuter(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Matrix4.outer(
      mxj2d(bo, jsonMap["u"]),
      mxj2d(bo, jsonMap["v"]),
    );

    return obj;
  }

  Matrix4 constructorRotationX(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Matrix4.rotationX(
      mxj2d(bo, jsonMap["radians"])?.toDouble(),
    );

    return obj;
  }

  Matrix4 constructorRotationY(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Matrix4.rotationY(
      mxj2d(bo, jsonMap["radians"])?.toDouble(),
    );

    return obj;
  }

  Matrix4 constructorRotationZ(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Matrix4.rotationZ(
      mxj2d(bo, jsonMap["radians"])?.toDouble(),
    );

    return obj;
  }

  Matrix4 constructorTranslation(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Matrix4.translation(
      mxj2d(bo, jsonMap["translation"]),
    );

    return obj;
  }

  Matrix4 constructorTranslationValues(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Matrix4.translationValues(
      mxj2d(bo, jsonMap["x"])?.toDouble(),
      mxj2d(bo, jsonMap["y"])?.toDouble(),
      mxj2d(bo, jsonMap["z"])?.toDouble(),
    );

    return obj;
  }

  Matrix4 constructorDiagonal3(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Matrix4.diagonal3(
      mxj2d(bo, jsonMap["scale"]),
    );

    return obj;
  }

  Matrix4 constructorDiagonal3Values(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Matrix4.diagonal3Values(
      mxj2d(bo, jsonMap["x"])?.toDouble(),
      mxj2d(bo, jsonMap["y"])?.toDouble(),
      mxj2d(bo, jsonMap["z"])?.toDouble(),
    );

    return obj;
  }

  Matrix4 constructorSkewX(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Matrix4.skewX(
      mxj2d(bo, jsonMap["alpha"])?.toDouble(),
    );

    return obj;
  }

  Matrix4 constructorSkewY(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Matrix4.skewY(
      mxj2d(bo, jsonMap["beta"])?.toDouble(),
    );

    return obj;
  }

  Matrix4 constructorSkew(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Matrix4.skew(
      mxj2d(bo, jsonMap["alpha"])?.toDouble(),
      mxj2d(bo, jsonMap["beta"])?.toDouble(),
    );

    return obj;
  }

  Matrix4 constructorCompose(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Matrix4.compose(
      mxj2d(bo, jsonMap["translation"]),
      mxj2d(bo, jsonMap["rotation"]),
      mxj2d(bo, jsonMap["scale"]),
    );
    return widget;
  }
}

///Vector4
///
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
  Vector4 constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Vector4(
      mxj2d(bo, jsonMap["x"])?.toDouble(),
      mxj2d(bo, jsonMap["y"])?.toDouble(),
      mxj2d(bo, jsonMap["z"])?.toDouble(),
      mxj2d(bo, jsonMap["w"])?.toDouble(),
    );
    return obj;
  }

  Vector4 constructorArray(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Vector4.array(toListT<double>(mxj2d(bo, jsonMap["array"])),
        mxj2d(bo, jsonMap["offset"], defaultValue: 0));
    return obj;
  }

  Vector4 constructorZero(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    return Vector4.zero();
  }

  Vector4 constructorIdentity(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    return Vector4.identity();
  }

  Vector4 constructorAll(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Vector4.all(mxj2d(bo, jsonMap["value"])?.toDouble());
    return obj;
  }

  Vector4 constructorRandom(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Vector4.random();
    return obj;
  }
}

///Vector3
///
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
  Vector3 constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Vector3(
      mxj2d(bo, jsonMap["x"])?.toDouble(),
      mxj2d(bo, jsonMap["y"])?.toDouble(),
      mxj2d(bo, jsonMap["z"])?.toDouble(),
    );
    return obj;
  }

  Vector3 constructorArray(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Vector3.array(mxj2d(bo, jsonMap["array"]),
        mxj2d(bo, jsonMap["offset"], defaultValue: 0));
    return obj;
  }

  Vector3 constructorZero(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    return Vector3.zero();
  }

  Vector3 constructorAll(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Vector3.all(mxj2d(bo, jsonMap["value"])?.toDouble());
    return obj;
  }

  Vector3 constructorRandom(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
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
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = ScrollController(
      initialScrollOffset: mxj2d(bo, jsonMap["initialScrollOffset"]?.toDouble(),
          defaultValue: 0.0),
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
  ScrollPhysics constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = ScrollPhysics(
      parent: mxj2d(bo, jsonMap["parent"]),
    );
    return widget;
  }
}

///BouncingScrollPhysics
///
class MXProxyBouncingScrollPhysics extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中

  static String regClassName = "BouncingScrollPhysics";

  ///工厂函数 用于延迟加载转换器
  static MXJsonObjProxy createProxy() {
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
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
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
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
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
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
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
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = NeverScrollableScrollPhysics(
      parent: mxj2d(bo, jsonMap["parent"]),
    );
    return widget;
  }
}

class MXClip {
  static Map str2VMap = {
    "Clip.none": Clip.none,
    "Clip.hardEdge": Clip.hardEdge,
    "Clip.antiAlias": Clip.antiAlias,
    "Clip.antiAliasWithSaveLayer": Clip.antiAliasWithSaveLayer,
  };

  static Clip parse(Map valueMap, {Clip defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

///Rect
///
class MXProxyRect extends MXJsonObjProxy {
  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName1 = "Rect";

    ///**@@@  3 替换类构造函数
    return {regClassName1: () => MXProxyRect()..init(className: regClassName1)};
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

  Rect constructorFromCircle(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Rect.fromCircle(
        center: mxj2d(bo, jsonMap["center"]),
        radius: mxj2d(bo, jsonMap["radius"])?.toDouble());
    return obj;
  }

  Rect constructorFromLTRB(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Rect.fromLTRB(
        mxj2d(bo, jsonMap["left"])?.toDouble(),
        mxj2d(bo, jsonMap["top"])?.toDouble(),
        mxj2d(bo, jsonMap["right"])?.toDouble(),
        mxj2d(bo, jsonMap["bottom"])?.toDouble());
    return obj;
  }

  Rect constructorFromLTWH(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Rect.fromLTWH(
        mxj2d(bo, jsonMap["left"])?.toDouble(),
        mxj2d(bo, jsonMap["top"])?.toDouble(),
        mxj2d(bo, jsonMap["width"])?.toDouble(),
        mxj2d(bo, jsonMap["height"])?.toDouble());
    return obj;
  }

  Rect constructorFromPoints(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Rect.fromPoints(mxj2d(bo, jsonMap["a"]), mxj2d(bo, jsonMap["b"]));
    return obj;
  }
}

///AssetBundle
///
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
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = PlatformAssetBundle();
    return obj;
  }

  NetworkAssetBundle constructorNetworkAssetBundle(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = NetworkAssetBundle(mxj2d(bo, jsonMap["baseUrl"]));
    return obj;
  }
}

///File
///
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
  File constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = File(mxj2d(bo, jsonMap["path"]));
    return obj;
  }

  ///
  File constructorFromRawPath(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    File obj = File.fromRawPath(mxj2d(bo, jsonMap["rawPath"]));
    return obj;
  }

  File constructorFromUri(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    File obj = File.fromUri(mxj2d(bo, jsonMap["uri"]));
    return obj;
  }
}

///Uint8List
///
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
  Uint8List constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Uint8List(mxj2d(bo, jsonMap["length"]));
    return obj;
  }

  ///
  Uint8List constructorFromList(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    Uint8List obj =
        Uint8List.fromList(toListT<int>(mxj2d(bo, jsonMap["elements"])));
    return obj;
  }

  Uint8List constructorView(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    Uint8List obj = Uint8List.view(
        mxj2d(bo, jsonMap["buffer"]),
        mxj2d(bo, jsonMap["offsetInBytes"], defaultValue: 0),
        mxj2d(bo, jsonMap["length"]));
    return obj;
  }
}

///Radius
///
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
  Radius constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Radius.circular(0.0);
    return widget;
  }

  Radius constructorCircular(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Radius.circular(mxj2d(bo, jsonMap["radius"])?.toDouble());
    return widget;
  }

  Radius constructorElliptical(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Radius.elliptical(mxj2d(bo, jsonMap["x"])?.toDouble(),
        mxj2d(bo, jsonMap["y"])?.toDouble());
    return widget;
  }
}

///BorderRadius
///
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
  BorderRadius constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = BorderRadius.all(Radius.zero);
    return widget;
  }

  BorderRadius constructorAll(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = BorderRadius.all(mxj2d(bo, jsonMap["radius"]));
    return widget;
  }

  BorderRadius constructorCircular(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget =
        BorderRadius.circular(mxj2d(bo, jsonMap["radius"])?.toDouble());
    return widget;
  }

  BorderRadius constructorVertical(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = BorderRadius.vertical(
      top: mxj2d(bo, jsonMap["top"], defaultValue: Radius.zero),
      bottom: mxj2d(bo, jsonMap["bottom"], defaultValue: Radius.zero),
    );
    return widget;
  }

  BorderRadius constructorHorizontal(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = BorderRadius.horizontal(
      left: mxj2d(bo, jsonMap["left"], defaultValue: Radius.zero),
      right: mxj2d(bo, jsonMap["right"], defaultValue: Radius.zero),
    );
    return widget;
  }

  BorderRadius constructorOnly(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
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
///
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
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
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
  static Map str2VMap = {
    "BottomNavigationBarType.fixed": BottomNavigationBarType.fixed,
    "BottomNavigationBarType.shifting": BottomNavigationBarType.shifting,
  };

  static BottomNavigationBarType parse(Map valueMap,
      {BottomNavigationBarType defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
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
  IconData constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = IconData(mxj2d(bo, jsonMap["codePoint"]),
        fontFamily: mxj2d(bo, jsonMap["fontFamily"]),
        fontPackage: mxj2d(bo, jsonMap["fontPackage"]),
        matchTextDirection:
            mxj2d(bo, jsonMap["matchTextDirection"], defaultValue: false));
    return widget;
  }
}

class MXTabBarIndicatorSize {
  static Map str2VMap = {
    "TabBarIndicatorSize.tab": TabBarIndicatorSize.tab,
    "TabBarIndicatorSize.label": TabBarIndicatorSize.label,
  };

  static TabBarIndicatorSize parse(Map valueMap,
      {TabBarIndicatorSize defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
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
  Border constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Border(
      top: mxj2d(bo, jsonMap["top"], defaultValue: BorderSide.none),
      right: mxj2d(bo, jsonMap["right"], defaultValue: BorderSide.none),
      bottom: mxj2d(bo, jsonMap["bottom"], defaultValue: BorderSide.none),
      left: mxj2d(bo, jsonMap["left"], defaultValue: BorderSide.none),
    );
    return widget;
  }

  Border constructorAll(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Border.all(
      color: mxj2d(bo, jsonMap["color"], defaultValue: const Color(0xFF000000)),
      width: mxj2d(bo, jsonMap["width"], defaultValue: 1.0)?.toDouble(),
      style: MXBorderStyle.parse(mxj2d(bo, jsonMap["style"]),
          defaultValue: BorderStyle.solid),
    );
    return widget;
  }
}

class MXProxyAnnotatedRegion extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "AnnotatedRegion";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyAnnotatedRegion()..init(className: regClassName)
    };
  }

  @override
  AnnotatedRegion constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = AnnotatedRegion(
      key: mxj2d(bo, jsonMap["key"]),
      child: mxj2d(bo, jsonMap["child"]),
      value: mxj2d(bo, jsonMap["value"]),
      sized: mxj2d(bo, jsonMap["sized"], defaultValue: true),
    );
    return widget;
  }
}

class MXProxySystemUiOverlayStyle extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "SystemUiOverlayStyle";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxySystemUiOverlayStyle()..init(className: regClassName)
    };
  }

  @override
  void init({String className}) {
    super.init(className: className);

    final String regClassName = "SystemUiOverlayStyle";
    registerConstructor(
        className: regClassName,
        constructorName: "constructor",
        constructor: constructor);
    registerConstructor(
        className: regClassName,
        constructorName: "light",
        constructor: constructorLight);
    registerConstructor(
        className: regClassName,
        constructorName: "dark",
        constructor: constructorDark);
  }

  @override
  SystemUiOverlayStyle constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = SystemUiOverlayStyle(
      systemNavigationBarColor: mxj2d(bo, jsonMap["systemNavigationBarColor"]),
      systemNavigationBarDividerColor:
          mxj2d(bo, jsonMap["systemNavigationBarDividerColor"]),
      systemNavigationBarIconBrightness: MXBrightness.parse(
          mxj2d(bo, jsonMap["systemNavigationBarIconBrightness"])),
      statusBarColor: mxj2d(bo, jsonMap["statusBarColor"]),
      statusBarBrightness:
          MXBrightness.parse(mxj2d(bo, jsonMap["statusBarBrightness"])),
      statusBarIconBrightness:
          MXBrightness.parse(mxj2d(bo, jsonMap["statusBarIconBrightness"])),
    );
    return widget;
  }

  SystemUiOverlayStyle constructorLight(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    return SystemUiOverlayStyle.light;
  }

  SystemUiOverlayStyle constructorDark(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    return SystemUiOverlayStyle.dark;
  }
}

class MXBrightness {
  static Map str2VMap = {
    "Brightness.dark": Brightness.dark,
    "Brightness.light": Brightness.light,
  };

  static Brightness parse(Map valueMap, {Brightness defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
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
  Theme constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Theme(
      key: mxj2d(bo, jsonMap["key"]),
      data: mxj2d(bo, jsonMap["data"]),
      isMaterialAppTheme:
          mxj2d(bo, jsonMap["isMaterialAppTheme"], defaultValue: false),
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
    return {
      regClassName: () => MXProxyMaterialColor()..init(className: regClassName)
    };
  }

  @override
  MaterialColor constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
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
    return {
      regClassName: () => MXProxyThemeData()..init(className: regClassName)
    };
  }

  @override
  ThemeData constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = ThemeData(
      brightness: MXBrightness.parse(mxj2d(bo, jsonMap["brightness"])),
      primarySwatch: mxj2d(bo, jsonMap["primarySwatch"]),
      primaryColor: mxj2d(bo, jsonMap["primaryColor"]),
      primaryColorBrightness:
          MXBrightness.parse(mxj2d(bo, jsonMap["primaryColorBrightness"])),
      primaryColorLight: mxj2d(bo, jsonMap["primaryColorLight"]),
      primaryColorDark: mxj2d(bo, jsonMap["primaryColorDark"]),
      accentColor: mxj2d(bo, jsonMap["accentColor"]),
      accentColorBrightness:
          MXBrightness.parse(mxj2d(bo, jsonMap["accentColorBrightness"])),
      canvasColor: mxj2d(bo, jsonMap["canvasColor"]),
      scaffoldBackgroundColor: mxj2d(bo, jsonMap["scaffoldBackgroundColor"]),
      bottomAppBarColor: mxj2d(bo, jsonMap["bottomAppBarColor"]),
      cardColor: mxj2d(bo, jsonMap["cardColor"]),
      dividerColor: mxj2d(bo, jsonMap["dividerColor"]),
      focusColor: mxj2d(bo, jsonMap["focusColor"]),
      hoverColor: mxj2d(bo, jsonMap["hoverColor"]),
      highlightColor: mxj2d(bo, jsonMap["highlightColor"]),
      splashColor: mxj2d(bo, jsonMap["splashColor"]),
      splashFactory: mxj2d(bo, jsonMap["splashFactory"]),
      selectedRowColor: mxj2d(bo, jsonMap["selectedRowColor"]),
      unselectedWidgetColor: mxj2d(bo, jsonMap["unselectedWidgetColor"]),
      disabledColor: mxj2d(bo, jsonMap["disabledColor"]),
      buttonColor: mxj2d(bo, jsonMap["buttonColor"]),
      buttonTheme: mxj2d(bo, jsonMap["buttonTheme"]),
      toggleButtonsTheme: mxj2d(bo, jsonMap["toggleButtonsTheme"]),
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
      tooltipTheme: mxj2d(bo, jsonMap["tooltipTheme"]),
      cardTheme: mxj2d(bo, jsonMap["cardTheme"]),
      chipTheme: mxj2d(bo, jsonMap["chipTheme"]),
      platform: MXTargetPlatform.parse(mxj2d(bo, jsonMap["platform"])),
      materialTapTargetSize: MXMaterialTapTargetSize.parse(
          mxj2d(bo, jsonMap["materialTapTargetSize"])),
      applyElevationOverlayColor:
          mxj2d(bo, jsonMap["applyElevationOverlayColor"]),
      pageTransitionsTheme: mxj2d(bo, jsonMap["pageTransitionsTheme"]),
      appBarTheme: mxj2d(bo, jsonMap["appBarTheme"]),
      bottomAppBarTheme: mxj2d(bo, jsonMap["bottomAppBarTheme"]),
      colorScheme: mxj2d(bo, jsonMap["colorScheme"]),
      dialogTheme: mxj2d(bo, jsonMap["dialogTheme"]),
      floatingActionButtonTheme:
          mxj2d(bo, jsonMap["floatingActionButtonTheme"]),
      typography: mxj2d(bo, jsonMap["typography"]),
      cupertinoOverrideTheme: mxj2d(bo, jsonMap["cupertinoOverrideTheme"]),
      snackBarTheme: mxj2d(bo, jsonMap["snackBarTheme"]),
      bottomSheetTheme: mxj2d(bo, jsonMap["bottomSheetTheme"]),
      popupMenuTheme: mxj2d(bo, jsonMap["popupMenuTheme"]),
      bannerTheme: mxj2d(bo, jsonMap["bannerTheme"]),
      dividerTheme: mxj2d(bo, jsonMap["dividerTheme"]),
      buttonBarTheme: mxj2d(bo, jsonMap["buttonBarTheme"]),
    );
    return widget;
  }
}

class MXProxyInputDecorationTheme extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "InputDecorationTheme";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyInputDecorationTheme()..init(className: regClassName)
    };
  }

  @override
  InputDecorationTheme constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = InputDecorationTheme(
      labelStyle: mxj2d(bo, jsonMap["labelStyle"]),
      helperStyle: mxj2d(bo, jsonMap["helperStyle"]),
      hintStyle: mxj2d(bo, jsonMap["hintStyle"]),
      errorStyle: mxj2d(bo, jsonMap["errorStyle"]),
      errorMaxLines: mxj2d(bo, jsonMap["errorMaxLines"]),
      // ignore: deprecated_member_use
      hasFloatingPlaceholder:
          mxj2d(bo, jsonMap["hasFloatingPlaceholder"], defaultValue: true),
      isDense: mxj2d(bo, jsonMap["isDense"], defaultValue: false),
      contentPadding: mxj2d(bo, jsonMap["contentPadding"]),
      isCollapsed: mxj2d(bo, jsonMap["isCollapsed"], defaultValue: false),
      prefixStyle: mxj2d(bo, jsonMap["prefixStyle"]),
      suffixStyle: mxj2d(bo, jsonMap["suffixStyle"]),
      counterStyle: mxj2d(bo, jsonMap["counterStyle"]),
      filled: mxj2d(bo, jsonMap["filled"], defaultValue: false),
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
  static Map str2VMap = {
    "TargetPlatform.android": TargetPlatform.android,
    "TargetPlatform.fuchsia": TargetPlatform.fuchsia,
    "TargetPlatform.iOS": TargetPlatform.iOS,
  };

  static TargetPlatform parse(Map valueMap, {TargetPlatform defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXProxyCircularNotchedRectangle extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "CircularNotchedRectangle";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyCircularNotchedRectangle()..init(className: regClassName)
    };
  }

  @override
  CircularNotchedRectangle constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = CircularNotchedRectangle();
    return widget;
  }
}

class MXProxyIconTheme extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "IconTheme";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyIconTheme()..init(className: regClassName)
    };
  }

  @override
  IconTheme constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
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
    return {
      regClassName: () => MXProxyIconThemeData()..init(className: regClassName)
    };
  }

  @override
  IconThemeData constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
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
    return {
      regClassName: () =>
          MXProxyDropdownMenuItem()..init(className: regClassName)
    };
  }

  @override
  DropdownMenuItem constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
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
    return {
      regClassName: () => MXProxyBoxShadow()..init(className: regClassName)
    };
  }

  @override
  BoxShadow constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = BoxShadow(
      color: mxj2d(bo, jsonMap["color"], defaultValue: const Color(0xFF000000)),
      offset: mxj2d(bo, jsonMap["offset"], defaultValue: Offset.zero),
      blurRadius:
          mxj2d(bo, jsonMap["blurRadius"], defaultValue: 0.0)?.toDouble(),
      spreadRadius:
          mxj2d(bo, jsonMap["spreadRadius"], defaultValue: 0.0)?.toDouble(),
    );
    return widget;
  }
}

class MXBoxShape {
  static Map str2VMap = {
    "BoxShape.rectangle": BoxShape.rectangle,
    "BoxShape.circle": BoxShape.circle,
  };

  static BoxShape parse(Map valueMap, {BoxShape defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXProxyQuaternion extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "Quaternion";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyQuaternion()..init(className: regClassName)
    };
  }

  @override
  Quaternion constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Quaternion(
      mxj2d(bo, jsonMap["x"])?.toDouble(),
      mxj2d(bo, jsonMap["y"])?.toDouble(),
      mxj2d(bo, jsonMap["z"])?.toDouble(),
      mxj2d(bo, jsonMap["w"])?.toDouble(),
    );
    return widget;
  }
}

class MXProxySlider extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "Slider";

    ///**@@@  3 替换类构造函数
    return {regClassName: () => MXProxySlider()..init(className: regClassName)};
  }

  @override
  Slider constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Slider(
      key: mxj2d(bo, jsonMap["key"]),
      value: mxj2d(bo, jsonMap["value"])?.toDouble(),
      onChanged:
          createValueGenericHandle<double>(bo, mxj2d(bo, jsonMap["onChanged"])),
      onChangeStart: createValueGenericHandle<double>(
          bo, mxj2d(bo, jsonMap["onChangeStart"])),
      onChangeEnd: createValueGenericHandle<double>(
          bo, mxj2d(bo, jsonMap["onChangeEnd"])),
      min: mxj2d(bo, jsonMap["min"], defaultValue: 0.0)?.toDouble(),
      max: mxj2d(bo, jsonMap["max"], defaultValue: 1.0)?.toDouble(),
      divisions: mxj2d(bo, jsonMap["divisions"]),
      label: mxj2d(bo, jsonMap["label"]),
      activeColor: mxj2d(bo, jsonMap["activeColor"]),
      inactiveColor: mxj2d(bo, jsonMap["inactiveColor"]),
      semanticFormatterCallback: createStringValueGenericHandle<double>(
          bo, mxj2d(bo, jsonMap["semanticFormatterCallback"])),
    );
    return widget;
  }
}

class MXProxyCircleAvatar extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "CircleAvatar";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyCircleAvatar()..init(className: regClassName)
    };
  }

  @override
  CircleAvatar constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = CircleAvatar(
      key: mxj2d(bo, jsonMap["key"]),
      child: mxj2d(bo, jsonMap["child"]),
      backgroundColor: mxj2d(bo, jsonMap["backgroundColor"]),
      backgroundImage: mxj2d(bo, jsonMap["backgroundImage"]),
      foregroundColor: mxj2d(bo, jsonMap["foregroundColor"]),
      radius: mxj2d(bo, jsonMap["radius"])?.toDouble(),
      minRadius: mxj2d(bo, jsonMap["minRadius"])?.toDouble(),
      maxRadius: mxj2d(bo, jsonMap["maxRadius"])?.toDouble(),
    );
    return widget;
  }
}

class MXProxyBorderDirectional extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName1 = "BorderDirectional";

    ///**@@@  3 替换类构造函数
    return {
      regClassName1: () =>
          MXProxyBorderDirectional()..init(className: regClassName1)
    };
  }

  @override
  BorderDirectional constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = BorderDirectional(
      top: mxj2d(bo, jsonMap["top"], defaultValue: BorderSide.none),
      start: mxj2d(bo, jsonMap["start"], defaultValue: BorderSide.none),
      end: mxj2d(bo, jsonMap["end"], defaultValue: BorderSide.none),
      bottom: mxj2d(bo, jsonMap["bottom"], defaultValue: BorderSide.none),
    );

    return obj;
  }
}

class MXButtonTextTheme {
  static Map str2VMap = {
    "ButtonTextTheme.normal": ButtonTextTheme.normal,
    "ButtonTextTheme.accent": ButtonTextTheme.accent,
    "ButtonTextTheme.primary": ButtonTextTheme.primary,
  };

  static ButtonTextTheme parse(Map valueMap, {ButtonTextTheme defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXProxyChip extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "Chip";

    ///**@@@  3 替换类构造函数
    return {regClassName: () => MXProxyChip()..init(className: regClassName)};
  }

  @override
  Chip constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Chip(
      key: mxj2d(bo, jsonMap["key"]),
      avatar: mxj2d(bo, jsonMap["avatar"]),
      label: mxj2d(bo, jsonMap["label"]),
      labelStyle: mxj2d(bo, jsonMap["labelStyle"]),
      labelPadding: mxj2d(bo, jsonMap["labelPadding"]),
      deleteIcon: mxj2d(bo, jsonMap["deleteIcon"]),
      onDeleted: mxj2d(bo, jsonMap["onDeleted"]),
      deleteIconColor: mxj2d(bo, jsonMap["deleteIconColor"]),
      deleteButtonTooltipMessage:
          mxj2d(bo, jsonMap["deleteButtonTooltipMessage"]),
      shape: mxj2d(bo, jsonMap["shape"]),
      clipBehavior: MXClip.parse(mxj2d(bo, jsonMap["clipBehavior"]),
          defaultValue: Clip.none),
      backgroundColor: mxj2d(bo, jsonMap["backgroundColor"]),
      padding: mxj2d(bo, jsonMap["padding"]),
      materialTapTargetSize: mxj2d(bo, jsonMap["materialTapTargetSize"]),
      elevation: mxj2d(bo, jsonMap["elevation"])?.toDouble(),
    );
    return widget;
  }
}

class MXProxyInputBorder extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "InputBorder";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyInputBorder()..init(className: regClassName)
    };
  }

  @override
  void init({String className}) {
    super.init(className: className);

    final String regClassName = "InputBorder";

    registerStaticFunction(
        className: regClassName,
        staticFunctionName: "none",
        staticFunction: functionNone);
  }

  @override
  InputBorder constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    return null;
  }

  InputBorder functionNone(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    return InputBorder.none;
  }
}

class MXProxyGlobalKey extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "GlobalKey";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyGlobalKey()..init(className: regClassName)
    };
  }

  @override
  GlobalKey constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = GlobalKey(
      debugLabel: mxj2d(bo, jsonMap["debugLabel"]),
    );
    return widget;
  }
}

class MXProxyPositioned extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "Positioned";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyPositioned()..init(className: regClassName)
    };
  }

  @override
  void init({String className}) {
    super.init(className: className);

    final String regClassName = "Positioned";
    registerConstructor(
        className: regClassName,
        constructorName: "fromRect",
        constructor: constructorFromRect);
  }

  Positioned constructorFromRect(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Positioned(
      key: mxj2d(bo, jsonMap["key"]),
      left: mxj2d(bo, jsonMap["rect"]),
      child: mxj2d(bo, jsonMap["child"]),
    );
    return widget;
  }

  @override
  Positioned constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Positioned(
      key: mxj2d(bo, jsonMap["key"]),
      left: mxj2d(bo, jsonMap["left"])?.toDouble(),
      top: mxj2d(bo, jsonMap["top"])?.toDouble(),
      right: mxj2d(bo, jsonMap["right"])?.toDouble(),
      bottom: mxj2d(bo, jsonMap["bottom"])?.toDouble(),
      width: mxj2d(bo, jsonMap["width"])?.toDouble(),
      height: mxj2d(bo, jsonMap["height"])?.toDouble(),
      child: mxj2d(bo, jsonMap["child"]),
    );
    return widget;
  }
}

class MXProxyOpacity extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "Opacity";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyOpacity()..init(className: regClassName)
    };
  }

  @override
  Opacity constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Opacity(
      key: mxj2d(bo, jsonMap["key"]),
      opacity: mxj2d(bo, jsonMap["opacity"]),
      alwaysIncludeSemantics:
          mxj2d(bo, jsonMap["alwaysIncludeSemantics"], defaultValue: false),
      child: mxj2d(bo, jsonMap["child"]),
    );
    return widget;
  }
}

class MXProxyMaterialAccentColor extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "MaterialAccentColor";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyMaterialAccentColor()..init(className: regClassName)
    };
  }

  @override
  MaterialAccentColor constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = MaterialAccentColor(
      mxj2d(bo, jsonMap["primary"]),
      toMapIntT<Color>(mxj2d(bo, jsonMap["swatch"])),
    );
    return widget;
  }
}

class MXProxyColorScheme extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "ColorScheme";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyColorScheme()..init(className: regClassName)
    };
  }

  @override
  void init({String className}) {
    super.init(className: className);

    final String regClassName = "ColorScheme";
    registerConstructor(
        className: regClassName,
        constructorName: "fromSwatch",
        constructor: constructorFromSwatch);
  }

  @override
  ColorScheme constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = ColorScheme(
      primary: mxj2d(bo, jsonMap["primary"]),
      primaryVariant: mxj2d(bo, jsonMap["primaryVariant"]),
      secondary: mxj2d(bo, jsonMap["secondary"]),
      secondaryVariant: mxj2d(bo, jsonMap["secondaryVariant"]),
      surface: mxj2d(bo, jsonMap["surface"]),
      background: mxj2d(bo, jsonMap["background"]),
      error: mxj2d(bo, jsonMap["error"]),
      onPrimary: mxj2d(bo, jsonMap["onPrimary"]),
      onSecondary: mxj2d(bo, jsonMap["onSecondary"]),
      onSurface: mxj2d(bo, jsonMap["onSurface"]),
      onBackground: mxj2d(bo, jsonMap["onBackground"]),
      onError: mxj2d(bo, jsonMap["onError"]),
      brightness: MXBrightness.parse(mxj2d(bo, jsonMap["brightness"])),
    );
    return widget;
  }

  ColorScheme constructorFromSwatch(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = ColorScheme.fromSwatch(
      primarySwatch:
          mxj2d(bo, jsonMap["primarySwatch"], defaultValue: Colors.blue),
      primaryColorDark: mxj2d(bo, jsonMap["primaryColorDark"]),
      accentColor: mxj2d(bo, jsonMap["accentColor"]),
      cardColor: mxj2d(bo, jsonMap["cardColor"]),
      backgroundColor: mxj2d(bo, jsonMap["backgroundColor"]),
      errorColor: mxj2d(bo, jsonMap["errorColor"]),
      brightness: MXBrightness.parse(mxj2d(bo, jsonMap["brightness"]),
          defaultValue: Brightness.light),
    );
    return widget;
  }
}

class MXProxyButtonThemeData extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "ButtonThemeData";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyButtonThemeData()..init(className: regClassName)
    };
  }

  @override
  ButtonThemeData constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = ButtonThemeData(
      textTheme:
          mxj2d(bo, jsonMap["textTheme"], defaultValue: ButtonTextTheme.normal),
      minWidth: mxj2d(bo, jsonMap["minWidth"], defaultValue: 88.0).toDouble(),
      height: mxj2d(bo, jsonMap["height"], defaultValue: 36.0).toDouble(),
      padding: mxj2d(bo, jsonMap["padding"]),
      shape: mxj2d(bo, jsonMap["shape"]),
      layoutBehavior: MXButtonBarLayoutBehavior.parse(
          mxj2d(bo, jsonMap["layoutBehavior"]),
          defaultValue: ButtonBarLayoutBehavior.padded),
      alignedDropdown:
          mxj2d(bo, jsonMap["alignedDropdown"], defaultValue: false),
      buttonColor: mxj2d(bo, jsonMap["buttonColor"]),
      disabledColor: mxj2d(bo, jsonMap["disabledColor"]),
      focusColor: mxj2d(bo, jsonMap["focusColor"]),
      hoverColor: mxj2d(bo, jsonMap["hoverColor"]),
      highlightColor: mxj2d(bo, jsonMap["highlightColor"]),
      splashColor: mxj2d(bo, jsonMap["splashColor"]),
      colorScheme: mxj2d(bo, jsonMap["colorScheme"]),
      materialTapTargetSize: mxj2d(bo, jsonMap["materialTapTargetSize"]),
    );
    return widget;
  }
}

class MXButtonBarLayoutBehavior {
  static Map str2VMap = {
    "ButtonBarLayoutBehavior.constrained": ButtonBarLayoutBehavior.constrained,
    "ButtonBarLayoutBehavior.padded": ButtonBarLayoutBehavior.padded,
  };

  static ButtonBarLayoutBehavior parse(Map valueMap,
      {ButtonBarLayoutBehavior defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXProxyNotificationListener extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "NotificationListener";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyNotificationListener()..init(className: regClassName)
    };
  }

  @override
  NotificationListener constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = NotificationListener(
      key: mxj2d(bo, jsonMap["key"]),
      child: mxj2d(bo, jsonMap["child"]),
      onNotification: mxj2d(bo, jsonMap["onNotification"]),
    );
    return widget;
  }
}

class MXProxyPreferredSize extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "PreferredSize";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyPreferredSize()..init(className: regClassName)
    };
  }

  @override
  PreferredSize constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = PreferredSize(
      key: mxj2d(bo, jsonMap["key"]),
      child: mxj2d(bo, jsonMap["child"]),
      preferredSize: mxj2d(bo, jsonMap["preferredSize"]),
    );
    return widget;
  }
}

// class MXProxyNotification extends MXJsonObjProxy {
// 	static Map<String, CreateJsonObjProxyFun> registerProxy() {
// 		///**@@@  2 替换类名字符串
// 		final String regClassName = "Notification";
// 		///**@@@  3 替换类构造函数
// 		return {regClassName: () => MXProxyNotification()..init(className: regClassName)};
// 	}

// 	@override
// 	Notification constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap, {BuildContext context}) {
// 		var widget = Notification(

// 		);
// 		return widget;
// 	}
// }

class MXProxyClipRRect extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "ClipRRect";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyClipRRect()..init(className: regClassName)
    };
  }

  @override
  ClipRRect constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = ClipRRect(
      key: mxj2d(bo, jsonMap["key"]),
      borderRadius:
          mxj2d(bo, jsonMap["borderRadius"], defaultValue: BorderRadius.zero),
      clipper: mxj2d(bo, jsonMap["clipper"]),
      clipBehavior: MXClip.parse(mxj2d(bo, jsonMap["clipBehavior"]),
          defaultValue: Clip.antiAlias),
      child: mxj2d(bo, jsonMap["child"]),
    );
    return widget;
  }
}

class MXProxySpringDescription extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "SpringDescription";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxySpringDescription()..init(className: regClassName)
    };
  }

  @override
  SpringDescription constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = SpringDescription(
      mass: mxj2d(bo, jsonMap["mass"]).toDouble(),
      stiffness: mxj2d(bo, jsonMap["stiffness"]).toDouble(),
      damping: mxj2d(bo, jsonMap["damping"]).toDouble(),
    );
    return widget;
  }
}

class MXProxyUniqueKey extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "UniqueKey";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyUniqueKey()..init(className: regClassName)
    };
  }

  @override
  UniqueKey constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = UniqueKey();
    return widget;
  }
}
