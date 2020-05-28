//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:flutter/material.dart';
import 'mx_json_to_dart.dart';
import 'mx_build_owner.dart';
import 'mx_json_proxy_basic_types.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui' as ui show Shadow;

///把Widget按分类注册，方便写代码，
///分类：Material/Layout/Text/(Assets.Images.icons)/input...
///参照了官网https://flutter.io/docs/development/ui/widgets，
class MXProxyRegisterHelperTextSeries {
  static Map<String, CreateJsonObjProxyFun> registerProxys() {
    Map<String, CreateJsonObjProxyFun> m = {};

    m.addAll(MXProxyText.registerProxy());
    m.addAll(MXProxyRichText.registerProxy());
    m.addAll(MXProxyDefaultTextStyle.registerProxy());
    m.addAll(MXProxyTextStyle.registerProxy());
    m.addAll(MXProxyTextSpan.registerProxy());
    m.addAll(MXProxyTextTheme.registerProxy());
    m.addAll(MXProxyShadow.registerProxy());
    m.addAll(MXProxyTextFormField.registerProxy());
    m.addAll(MXProxyTextEditingController.registerProxy());
    m.addAll(MXTextInputType.registerProxy());
    m.addAll(MXProxyInputDecoration.registerProxy());
    m.addAll(MXProxyUnderlineInputBorder.registerProxy());
    m.addAll(MXProxyOutlineInputBorder.registerProxy());
    m.addAll(MXProxyTextField.registerProxy());
    m.addAll(MXFontWeight.registerProxy());

    return m;
  }
}

///Text
///
class MXProxyText extends MXJsonObjProxy {
  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName1 = "Text";

    ///**@@@  3 替换类构造函数
    return {regClassName1: () => MXProxyText()..init(className: regClassName1)};
  }

  ///*********************************************************************
  @override
  void init({String className}) {
    super.init(className: className);

    final String regClassName1 = "Text";
    registerConstructor(className: regClassName1, constructor: constructor);
    registerConstructor(
        className: regClassName1,
        constructorName: "rich",
        constructor: constructorRich);
  }

  ///
//  const Text(this.data, {
//    Key key,
//    this.style,
//    this.textAlign,
//    this.textDirection,
//    this.locale,
//    this.softWrap,
//    this.overflow,
//    this.textScaleFactor,
//    this.maxLines,
//    this.semanticsLabel,
//  }) : assert(data != null),
//        textSpan = null,
//        super(key: key);
  @override
  Text constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Text(
      mxj2d(bo, jsonMap["data"]),
      key: mxj2d(bo, jsonMap["key"]),
      style: mxj2d(bo, jsonMap["style"]),
      textAlign: MXTextAlign.parse(jsonMap["textAlign"]),
      textDirection: MXTextDirection.parse(jsonMap["textDirection"]),
      locale: mxj2d(bo, jsonMap["locale"]),
      softWrap: mxj2d(bo, jsonMap["softWrap"]),
      overflow: MXTextOverflow.parse(jsonMap["overflow"]),
      textScaleFactor: mxj2d(bo, jsonMap["textScaleFactor"])?.toDouble(),
      maxLines: mxj2d(bo, jsonMap["maxLines"]),
      semanticsLabel: mxj2d(bo, jsonMap["semanticsLabel"]),
    );

    return widget;
  }

//
//  /// Creates a text widget with a [TextSpan].
//  const Text.rich(this.textSpan, {
//    Key key,
//    this.style,
//    this.textAlign,
//    this.textDirection,
//    this.locale,
//    this.softWrap,
//    this.overflow,
//    this.textScaleFactor,
//    this.maxLines,
//    this.semanticsLabel,
//  }): assert(textSpan != null),
//        data = null,
//        super(key: key);

  Text constructorRich(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Text.rich(
      mxj2d(bo, jsonMap["textSpan"]),
      key: mxj2d(bo, jsonMap["key"]),
      style: mxj2d(bo, jsonMap["style"]),
      textAlign: MXTextAlign.parse(jsonMap["textAlign"]),
      textDirection: MXTextDirection.parse(jsonMap["textDirection"]),
      locale: mxj2d(bo, jsonMap["locale"]),
      softWrap: mxj2d(bo, jsonMap["softWrap"]),
      overflow: MXTextOverflow.parse(jsonMap["overflow"]),
      textScaleFactor: mxj2d(bo, jsonMap["textScaleFactor"])?.toDouble(),
      maxLines: mxj2d(bo, jsonMap["maxLines"]),
      semanticsLabel: mxj2d(bo, jsonMap["semanticsLabel"]),
    );
    return widget;
  }
}

///RichText
class MXProxyRichText extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "RichText";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyRichText()..init(className: regClassName)
    };
  }

  @override
  RichText constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = RichText(
      key: mxj2d(bo, jsonMap["key"]),
      text: mxj2d(bo, jsonMap["text"]),
      textAlign: MXTextAlign.parse(mxj2d(bo, jsonMap["textAlign"]),
          defaultValue: TextAlign.start),
      textDirection: MXTextDirection.parse(mxj2d(bo, jsonMap["textDirection"])),
      softWrap: mxj2d(bo, jsonMap["softWrap"], defaultValue: true),
      overflow: MXTextOverflow.parse(mxj2d(bo, jsonMap["overflow"]),
          defaultValue: TextOverflow.clip),
      textScaleFactor:
          mxj2d(bo, jsonMap["textScaleFactor"], defaultValue: 1.0)?.toDouble(),
      maxLines: mxj2d(bo, jsonMap["maxLines"]),
      locale: mxj2d(bo, jsonMap["locale"]),
    );
    return widget;
  }
}

///DefaultTextStyle
///
class MXProxyDefaultTextStyle extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName1 = "DefaultTextStyle";

    ///**@@@  3 替换类构造函数
    return {
      regClassName1: () =>
          MXProxyDefaultTextStyle()..init(className: regClassName1)
    };
  }

  ///*********************************************************************
  @override
  void init({String className}) {
    super.init(className: className);

    final String regClassName1 = "DefaultTextStyle";

    registerConstructor(
        className: regClassName1,
        constructorName: "fallback",
        constructor: constructorFallback);
  }

  @override
  DefaultTextStyle constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = DefaultTextStyle(
      key: mxj2d(bo, jsonMap["key"]),
      style: mxj2d(bo, jsonMap["style"]),
      textAlign: MXTextAlign.parse(jsonMap["textAlign"]),
      softWrap: mxj2d(bo, jsonMap["softWrap"], defaultValue: true),
      overflow: MXTextOverflow.parse(jsonMap["overflow"],
          defaultValue: TextOverflow.clip),
      maxLines: mxj2d(bo, jsonMap["maxLines"]),
      child: mxj2d(bo, jsonMap["child"]),
    );

    return widget;
  }

  DefaultTextStyle constructorFallback(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = DefaultTextStyle.fallback();

    return widget;
  }
}

///TextStyle
///
class MXProxyTextStyle extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName1 = "TextStyle";

    ///**@@@  3 替换类构造函数
    return {
      regClassName1: () => MXProxyTextStyle()..init(className: regClassName1)
    };
  }

  @override
  TextStyle constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    Map fontWeightMap = jsonMap["fontWeight"];
    var fontWeight;
    if (fontWeightMap != null &&
        fontWeightMap.containsKey("FontWeight.index")) {
      fontWeight = mxj2d(bo, fontWeightMap);
    } else {
      fontWeight = MXFontWeight.parse(mxj2d(bo, fontWeightMap));
    }

    var widget = TextStyle(
      inherit: mxj2d(bo, jsonMap["inherit"], defaultValue: true),
      color: mxj2d(bo, jsonMap["color"]),
      fontSize: mxj2d(bo, jsonMap["fontSize"])?.toDouble(),
      fontWeight: fontWeight,
      fontStyle: MXFontStyle.parse(mxj2d(bo, jsonMap["fontStyle"])),
      letterSpacing: mxj2d(bo, jsonMap["letterSpacing"])?.toDouble(),
      wordSpacing: mxj2d(bo, jsonMap["wordSpacing"])?.toDouble(),
      textBaseline: MXTextBaseline.parse(mxj2d(bo, jsonMap["textBaseline"])),
      height: mxj2d(bo, jsonMap["height"])?.toDouble(),
      locale: mxj2d(bo, jsonMap["locale"]),
      foreground: mxj2d(bo, jsonMap["foreground"]),
      background: mxj2d(bo, jsonMap["background"]),
      shadows: toListT<ui.Shadow>(mxj2d(bo, jsonMap["shadows"])),
      decoration: MXTextDecoration.parse(mxj2d(bo, jsonMap["decoration"])),
      decorationColor: mxj2d(bo, jsonMap["decorationColor"]),
      decorationStyle:
          MXTextDecorationStyle.parse(mxj2d(bo, jsonMap["decorationStyle"])),
      debugLabel: mxj2d(bo, jsonMap["debugLabel"]),
      fontFamily: mxj2d(bo, jsonMap["fontFamily"]),
      package:
          mxj2d(bo, jsonMap["packages"]), // 因为 package 在 js 中是保留字，所以改成 packages
    );

    return widget;
  }
}

///TextSpan
///
class MXProxyTextSpan extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中

  static String regClassName = "TextSpan";

  ///工厂函数 用于延迟加载转换器
  static MXJsonObjProxy createProxy() {
    var p = MXProxyTextSpan();
    p.className = regClassName;
    return p;
  }

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    return {regClassName: createProxy};
  }

//  TextSpan({TextStyle style, String text, List<TextSpan> children, GestureRecognizer recognizer });
//  Creates a TextSpan with the given values. [...]
//  const
  @override
  TextSpan constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = TextSpan(
      style: mxj2d(bo, jsonMap["style"]),
      text: mxj2d(bo, jsonMap["text"]),
      children: toListT<TextSpan>(mxj2d(bo, jsonMap["children"])),
      recognizer: mxj2d(bo, jsonMap["recognizer"]),
    );

    return widget;
  }
}

class MXTextDecoration {
  static Map str2VMap = {
    "TextDecoration.none": TextDecoration.none,
    "TextDecoration.underline": TextDecoration.underline,
    "TextDecoration.overline": TextDecoration.overline,
    "TextDecoration.lineThrough": TextDecoration.lineThrough,
  };

  static TextDecoration parse(Map valueMap, {TextDecoration defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

///TextOverflow
///

class MXTextOverflow {
  static Map str2VMap = {
    "TextOverflow.clip": TextOverflow.clip,
    "TextOverflow.fade": TextOverflow.fade,
    "TextOverflow.ellipsis": TextOverflow.ellipsis,
  };

  static TextOverflow parse(Map valueMap, {TextOverflow defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXProxyTextTheme extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "TextTheme";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyTextTheme()..init(className: regClassName)
    };
  }

  @override
  TextTheme constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = TextTheme(
      // ignore: deprecated_member_use
      display4: mxj2d(bo, jsonMap["display4"]),
      // ignore: deprecated_member_use
      display3: mxj2d(bo, jsonMap["display3"]),
      // ignore: deprecated_member_use
      display2: mxj2d(bo, jsonMap["display2"]),
      // ignore: deprecated_member_use
      display1: mxj2d(bo, jsonMap["display1"]),
      // ignore: deprecated_member_use
      headline: mxj2d(bo, jsonMap["headline"]),
      // ignore: deprecated_member_use
      title: mxj2d(bo, jsonMap["title"]),
      // ignore: deprecated_member_use
      subhead: mxj2d(bo, jsonMap["subhead"]),
      // ignore: deprecated_member_use
      body2: mxj2d(bo, jsonMap["body2"]),
      // ignore: deprecated_member_use
      body1: mxj2d(bo, jsonMap["body1"]),
      caption: mxj2d(bo, jsonMap["caption"]),
      button: mxj2d(bo, jsonMap["button"]),
      // ignore: deprecated_member_use
      subtitle: mxj2d(bo, jsonMap["subtitle"]),
      overline: mxj2d(bo, jsonMap["overline"]),
    );
    return widget;
  }
}

///TextAlign
///
class MXTextAlign {
  static Map str2VMap = {
    "TextAlign.left": TextAlign.left,
    "TextAlign.right": TextAlign.right,
    "TextAlign.center": TextAlign.center,
    "TextAlign.justify": TextAlign.justify,
    "TextAlign.start": TextAlign.start,
    "TextAlign.end": TextAlign.end,
  };

  static TextAlign parse(Map valueMap, {TextAlign defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

///TextDecorationStyle
///
class MXTextDecorationStyle {
  static Map str2VMap = {
    "TextDecorationStyle.solid": TextDecorationStyle.solid,
    "TextDecorationStyle.double": TextDecorationStyle.double,
    "TextDecorationStyle.dotted": TextDecorationStyle.dotted,
    "TextDecorationStyle.dashed": TextDecorationStyle.dashed,
    "TextDecorationStyle.wavy": TextDecorationStyle.wavy,
  };

  static TextDecorationStyle parse(Map valueMap,
      {TextDecorationStyle defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXTextBaseline {
  static Map str2VMap = {
    "TextBaseline.alphabetic": TextBaseline.alphabetic,
    "TextBaseline.ideographic": TextBaseline.ideographic,
  };

  static TextBaseline parse(Map valueMap, {TextBaseline defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXTextDirection {
  static Map str2VMap = {
    "TextDirection.rtl": TextDirection.rtl,
    "TextDirection.ltr": TextDirection.ltr,
  };

  static TextDirection parse(Map valueMap, {TextDirection defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXFontWeight extends MXJsonObjProxy {
  static Map str2VMap = {
    "FontWeight.bold": FontWeight.bold,
    "FontWeight.normal": FontWeight.normal,
    "FontWeight.w100": FontWeight.w100,
    "FontWeight.w200": FontWeight.w200,
    "FontWeight.w300": FontWeight.w300,
    "FontWeight.w400": FontWeight.w400,
    "FontWeight.w500": FontWeight.w500,
    "FontWeight.w600": FontWeight.w600,
    "FontWeight.w700": FontWeight.w700,
    "FontWeight.w800": FontWeight.w800,
    "FontWeight.w900": FontWeight.w900,
  };

  static Map index2VMap = {
    0: FontWeight.w100,
    1: FontWeight.w200,
    2: FontWeight.w300,
    3: FontWeight.w400,
    4: FontWeight.w500,
    5: FontWeight.w600,
    6: FontWeight.w700,
    7: FontWeight.w800,
    8: FontWeight.w900,
    9: FontWeight.bold,
    10: FontWeight.values
  };

  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "FontWeight";

    ///**@@@  3 替换类构造函数
    return {regClassName: () => MXFontWeight()..init(className: regClassName)};
  }

  @override
  FontWeight constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    int index = jsonMap["index"];

    return index2VMap[index];
  }

  static FontWeight parse(Map valueMap, {FontWeight defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXFontStyle {
  static Map str2VMap = {
    "FontStyle.normal": FontStyle.normal,
    "FontStyle.italic": FontStyle.italic,
  };

  static FontStyle parse(Map valueMap, {FontStyle defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXProxyShadow extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "Shadow";

    ///**@@@  3 替换类构造函数
    return {regClassName: () => MXProxyShadow()..init(className: regClassName)};
  }

  @override
  Shadow constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Shadow(
      color: mxj2d(bo, jsonMap["color"], defaultValue: const Color(0xFF000000)),
      offset: mxj2d(bo, jsonMap["offset"], defaultValue: Offset.zero),
      blurRadius:
          mxj2d(bo, jsonMap["blurRadius"], defaultValue: 0.0)?.toDouble(),
    );
    return widget;
  }
}

class MXProxyTextFormField extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "TextFormField";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyTextFormField()..init(className: regClassName)
    };
  }

  @override
  TextFormField constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = TextFormField(
      key: mxj2d(bo, jsonMap["key"]),
      controller: mxj2d(bo, jsonMap["controller"]),
      initialValue: mxj2d(bo, jsonMap["initialValue"]),
      focusNode: mxj2d(bo, jsonMap["focusNode"]), //TODO:focusNode
      decoration: mxj2d(bo, jsonMap["decoration"],
          defaultValue: const InputDecoration()),
      keyboardType: mxj2d(bo, jsonMap["keyboardType"]),
      textCapitalization: MXTextCapitalization.parse(
          mxj2d(bo, jsonMap["textCapitalization"]),
          defaultValue: TextCapitalization.none),
      textInputAction:
          MXTextInputAction.parse(mxj2d(bo, jsonMap["textInputAction"])),
      style: mxj2d(bo, jsonMap["style"]),
      textDirection: MXTextDirection.parse(mxj2d(bo, jsonMap["textDirection"])),
      textAlign: MXTextAlign.parse(mxj2d(bo, jsonMap["textAlign"]),
          defaultValue: TextAlign.start),
      autofocus: mxj2d(bo, jsonMap["autofocus"], defaultValue: false),
      obscureText: mxj2d(bo, jsonMap["obscureText"], defaultValue: false),
      autocorrect: mxj2d(bo, jsonMap["autocorrect"], defaultValue: true),
      autovalidate: mxj2d(bo, jsonMap["autovalidate"], defaultValue: false),
      maxLengthEnforced:
          mxj2d(bo, jsonMap["maxLengthEnforced"], defaultValue: true),
      maxLines: mxj2d(bo, jsonMap["maxLines"], defaultValue: 1),
      maxLength: mxj2d(bo, jsonMap["maxLength"]),
      onEditingComplete:
          createVoidCallbackHandle(bo, mxj2d(bo, jsonMap["onEditingComplete"])),
      onFieldSubmitted: createValueGenericHandle<String>(
          bo, mxj2d(bo, jsonMap["onFieldSubmitted"])),
      onSaved:
          createValueGenericHandle<String>(bo, mxj2d(bo, jsonMap["onSaved"])),
      validator: createFormValidatorGenericHandle<String>(
          bo, mxj2d(bo, jsonMap["validator"])),
      inputFormatters:
          mxj2d(bo, jsonMap["inputFormatters"]), //TODO:inputFormatters
      enabled: mxj2d(bo, jsonMap["enabled"], defaultValue: true),
      cursorWidth:
          mxj2d(bo, jsonMap["cursorWidth"], defaultValue: 2.0)?.toDouble(),
      cursorRadius: mxj2d(bo, jsonMap["cursorRadius"]),
      cursorColor: mxj2d(bo, jsonMap["cursorColor"]),
      keyboardAppearance:
          MXBrightness.parse(mxj2d(bo, jsonMap["keyboardAppearance"])),
      scrollPadding: mxj2d(bo, jsonMap["scrollPadding"],
          defaultValue: const EdgeInsets.all(20.0)),
      enableInteractiveSelection:
          mxj2d(bo, jsonMap["enableInteractiveSelection"], defaultValue: true),
      buildCounter:
          createBuildCounterHandle(bo, mxj2d(bo, jsonMap["buildCounter"])),
    );
    return widget;
  }

  //生成ValueChanged<T> 闭包
  FormFieldValidator<T> createFormValidatorGenericHandle<T>(
      MXJsonBuildOwner bo, dynamic eventCallbackID) {
    if (eventCallbackID == null) {
      return null;
    }

    FormFieldValidator<T> cb = (T b) {
      bo.eventCallback(eventCallbackID, p: b);
      //TODO:return string
      return null;
    };

    return cb;
  }

  InputCounterWidgetBuilder createBuildCounterHandle(
      MXJsonBuildOwner bo, dynamic eventCallbackID) {
    if (eventCallbackID == null) {
      return null;
    }

    InputCounterWidgetBuilder cb = (
      BuildContext context, {
      @required int currentLength,
      @required int maxLength,
      @required bool isFocused,
    }) {
      bo.eventCallback(eventCallbackID);
      //TODO:return widget
      return null;
    };

    return cb;
  }
}

class MXProxyInputDecoration extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "InputDecoration";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyInputDecoration()..init(className: regClassName)
    };
  }

  @override
  void init({String className}) {
    super.init(className: className);

    registerStaticFunction(
        className: className,
        staticFunctionName: "collapsed",
        staticFunction: functionCollapsed);
  }

  @override
  InputDecoration constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = InputDecoration(
      icon: mxj2d(bo, jsonMap["icon"]),
      labelText: mxj2d(bo, jsonMap["labelText"]),
      labelStyle: mxj2d(bo, jsonMap["labelStyle"]),
      helperText: mxj2d(bo, jsonMap["helperText"]),
      helperStyle: mxj2d(bo, jsonMap["helperStyle"]),
      hintText: mxj2d(bo, jsonMap["hintText"]),
      hintStyle: mxj2d(bo, jsonMap["hintStyle"]),
      hintMaxLines: mxj2d(bo, jsonMap["hintMaxLines"]),
      errorText: mxj2d(bo, jsonMap["errorText"]),
      errorStyle: mxj2d(bo, jsonMap["errorStyle"]),
      errorMaxLines: mxj2d(bo, jsonMap["errorMaxLines"]),
      // ignore: deprecated_member_use
      hasFloatingPlaceholder:
          mxj2d(bo, jsonMap["hasFloatingPlaceholder"], defaultValue: true),
      isDense: mxj2d(bo, jsonMap["isDense"]),
      contentPadding: mxj2d(bo, jsonMap["contentPadding"]),
      prefixIcon: mxj2d(bo, jsonMap["prefixIcon"]),
      prefix: mxj2d(bo, jsonMap["prefix"]),
      prefixText: mxj2d(bo, jsonMap["prefixText"]),
      prefixStyle: mxj2d(bo, jsonMap["prefixStyle"]),
      suffixIcon: mxj2d(bo, jsonMap["suffixIcon"]),
      suffix: mxj2d(bo, jsonMap["suffix"]),
      suffixText: mxj2d(bo, jsonMap["suffixText"]),
      suffixStyle: mxj2d(bo, jsonMap["suffixStyle"]),
      counter: mxj2d(bo, jsonMap["counter"]),
      counterText: mxj2d(bo, jsonMap["counterText"]),
      counterStyle: mxj2d(bo, jsonMap["counterStyle"]),
      filled: mxj2d(bo, jsonMap["filled"]),
      fillColor: mxj2d(bo, jsonMap["fillColor"]),
      errorBorder: mxj2d(bo, jsonMap["errorBorder"]),
      focusedBorder: mxj2d(bo, jsonMap["focusedBorder"]),
      focusedErrorBorder: mxj2d(bo, jsonMap["focusedErrorBorder"]),
      disabledBorder: mxj2d(bo, jsonMap["disabledBorder"]),
      enabledBorder: mxj2d(bo, jsonMap["enabledBorder"]),
      border: mxj2d(bo, jsonMap["border"]),
      enabled: mxj2d(bo, jsonMap["enabled"], defaultValue: true),
      semanticCounterText: mxj2d(bo, jsonMap["semanticCounterText"]),
      alignLabelWithHint: mxj2d(bo, jsonMap["alignLabelWithHint"]),
    );
    return widget;
  }

  InputDecoration functionCollapsed(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    return InputDecoration.collapsed(
      hintText: mxj2d(bo, jsonMap["hintText"]),
      // ignore: deprecated_member_use
      hasFloatingPlaceholder:
          mxj2d(bo, jsonMap["hasFloatingPlaceholder"], defaultValue: true),
      hintStyle: mxj2d(bo, jsonMap["hintStyle"]),
      filled: mxj2d(bo, jsonMap["filled"], defaultValue: false),
      fillColor: mxj2d(bo, jsonMap["fillColor"]),
      border: mxj2d(bo, jsonMap["border"]),
      enabled: mxj2d(bo, jsonMap["enabled"], defaultValue: true),
    );
  }
}

class MXProxyTextEditingController extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "TextEditingController";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyTextEditingController()..init(className: regClassName)
    };
  }

  @override
  TextEditingController constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = TextEditingController(
      text: mxj2d(bo, jsonMap["text"]),
    );
    return widget;
  }
}

class MXTextInputType extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "TextInputType";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXTextInputType()..init(className: regClassName)
    };
  }

  @override
  void init({String className}) {
    super.init(className: className);

    final String regClassName1 = "TextInputType";

    registerConstructor(
        className: regClassName1,
        constructorName: "numberWithOptions",
        constructor: constructorNumberWithOptions);

    registerConstructor(
        className: regClassName1,
        constructorName: "text",
        constructor: constructorText);

    registerConstructor(
        className: regClassName1,
        constructorName: "multiline",
        constructor: constructorMultiline);

    registerConstructor(
        className: regClassName1,
        constructorName: "number",
        constructor: constructorNumber);

    registerConstructor(
        className: regClassName1,
        constructorName: "phone",
        constructor: constructorPhone);

    registerConstructor(
        className: regClassName1,
        constructorName: "datetime",
        constructor: constructorDatetime);

    registerConstructor(
        className: regClassName1,
        constructorName: "emailAddress",
        constructor: constructorEmailAddress);

    registerConstructor(
        className: regClassName1,
        constructorName: "url",
        constructor: constructorUrl);
  }

  TextInputType constructorNumberWithOptions(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    TextInputType object = TextInputType.numberWithOptions(
      signed: mxj2d(bo, jsonMap["signed"]),
      decimal: mxj2d(bo, jsonMap["decimal"]),
    );
    return object;
  }

  TextInputType constructorText(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    return TextInputType.text;
  }

  TextInputType constructorMultiline(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    return TextInputType.multiline;
  }

  TextInputType constructorNumber(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    return TextInputType.number;
  }

  TextInputType constructorPhone(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    return TextInputType.phone;
  }

  TextInputType constructorDatetime(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    return TextInputType.datetime;
  }

  TextInputType constructorEmailAddress(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    return TextInputType.emailAddress;
  }

  TextInputType constructorUrl(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    return TextInputType.url;
  }
}

class MXTextCapitalization {
  static Map str2VMap = {
    "TextCapitalization.words": TextCapitalization.words,
    "TextCapitalization.sentences": TextCapitalization.sentences,
    "TextCapitalization.characters": TextCapitalization.characters,
    "TextCapitalization.none": TextCapitalization.none,
  };

  static TextCapitalization parse(Map valueMap,
      {TextCapitalization defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXTextInputAction {
  static Map str2VMap = {
    "TextInputAction.none": TextInputAction.none,
    "TextInputAction.unspecified": TextInputAction.unspecified,
    "TextInputAction.done": TextInputAction.done,
    "TextInputAction.go": TextInputAction.go,
    "TextInputAction.search": TextInputAction.search,
    "TextInputAction.send": TextInputAction.send,
    "TextInputAction.next": TextInputAction.next,
    "TextInputAction.previous": TextInputAction.previous,
    "TextInputAction.continueAction": TextInputAction.continueAction,
    "TextInputAction.join": TextInputAction.join,
    "TextInputAction.route": TextInputAction.route,
    "TextInputAction.emergencyCall": TextInputAction.emergencyCall,
    "TextInputAction.newline": TextInputAction.newline,
  };

  static TextInputAction parse(Map valueMap, {TextInputAction defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXProxyUnderlineInputBorder extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "UnderlineInputBorder";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyUnderlineInputBorder()..init(className: regClassName)
    };
  }

  @override
  UnderlineInputBorder constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = UnderlineInputBorder(
        borderSide:
            mxj2d(bo, jsonMap["borderSide"], defaultValue: const BorderSide()),
        borderRadius: mxj2d(bo, jsonMap["borderRadius"],
            defaultValue: const BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0))));
    return widget;
  }
}

class MXProxyOutlineInputBorder extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "OutlineInputBorder";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyOutlineInputBorder()..init(className: regClassName)
    };
  }

  @override
  OutlineInputBorder constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = OutlineInputBorder(
      borderSide:
          mxj2d(bo, jsonMap["borderSide"], defaultValue: const BorderSide()),
      borderRadius: mxj2d(bo, jsonMap["borderRadius"],
          defaultValue: const BorderRadius.all(Radius.circular(4.0))),
      gapPadding: mxj2d(bo, jsonMap["gapPadding"], defaultValue: 4.0),
    );
    return widget;
  }
}

class MXProxyTextField extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "TextField";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyTextField()..init(className: regClassName)
    };
  }

  @override
  TextField constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = TextField(
      key: mxj2d(bo, jsonMap["key"]),
      controller: mxj2d(bo, jsonMap["controller"]),
      focusNode: mxj2d(bo, jsonMap["focusNode"]), //TODO: focusNode
      decoration: mxj2d(bo, jsonMap["decoration"],
          defaultValue: const InputDecoration()),
      keyboardType: mxj2d(bo, jsonMap["keyboardType"]),
      textInputAction:
          MXTextInputAction.parse(mxj2d(bo, jsonMap["textInputAction"])),
      textCapitalization: MXTextCapitalization.parse(
          mxj2d(bo, jsonMap["textCapitalization"]),
          defaultValue: TextCapitalization.none),
      style: mxj2d(bo, jsonMap["style"]),
      textAlign: MXTextAlign.parse(mxj2d(bo, jsonMap["textAlign"]),
          defaultValue: TextAlign.start),
      textDirection: MXTextDirection.parse(mxj2d(bo, jsonMap["textDirection"])),
      autofocus: mxj2d(bo, jsonMap["autofocus"], defaultValue: false),
      obscureText: mxj2d(bo, jsonMap["obscureText"], defaultValue: false),
      autocorrect: mxj2d(bo, jsonMap["autocorrect"], defaultValue: true),
      maxLines: mxj2d(bo, jsonMap["maxLines"], defaultValue: 1),
      maxLength: mxj2d(bo, jsonMap["maxLength"]),
      maxLengthEnforced:
          mxj2d(bo, jsonMap["maxLengthEnforced"], defaultValue: true),
      onChanged:
          createValueGenericHandle<String>(bo, mxj2d(bo, jsonMap["onChanged"])),
      onEditingComplete:
          createVoidCallbackHandle(bo, mxj2d(bo, jsonMap["onEditingComplete"])),
      onSubmitted: createValueGenericHandle<String>(
          bo, mxj2d(bo, jsonMap["onSubmitted"])),
      inputFormatters:
          mxj2d(bo, jsonMap["inputFormatters"]), //TODO:inputFormatters
      enabled: mxj2d(bo, jsonMap["enabled"]),
      cursorWidth:
          mxj2d(bo, jsonMap["cursorWidth"], defaultValue: 2.0)?.toDouble(),
      cursorRadius: mxj2d(bo, jsonMap["cursorRadius"]),
      cursorColor: mxj2d(bo, jsonMap["cursorColor"]),
      keyboardAppearance:
          MXBrightness.parse(mxj2d(bo, jsonMap["keyboardAppearance"])),
      scrollPadding: mxj2d(bo, jsonMap["scrollPadding"],
          defaultValue: const EdgeInsets.all(20.0)),
      // dragStartBehavior: MXDragStartBehavior.parse(mxj2d(bo, jsonMap["dragStartBehavior"]), defaultValue:DragStartBehavior.down),
      enableInteractiveSelection:
          mxj2d(bo, jsonMap["enableInteractiveSelection"], defaultValue: true),
      onTap: createVoidCallbackHandle(bo, mxj2d(bo, jsonMap["onTap"])),
      buildCounter: mxj2d(bo, jsonMap["buildCounter"]),
    );
    return widget;
  }
}
