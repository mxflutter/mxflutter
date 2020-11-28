//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';

class MXJSLog {
  static debug(Object object) {
    if (kDebugMode) {
      String log = "MXJSFlutter:[Flutter]-[DEBUG]::";
      callNativelog(log, object);
    }
  }

  static log(Object object) {
    if (kDebugMode) {
      String log = "MXJSFlutter:[Flutter]-";
      callNativelog(log, object);
    }
  }

  static error(Object object) {
    String log = "MXJSFlutter:[Flutter]-[ERR]::";
    callNativelog(log, object);
  }

  static callNativelog(String prefix, Object object) {
    String log = "$prefix$object";
    print(log);
    //MXJSFlutter.getInstance().mxLog(log);
  }
}

class MXUtil {
  //MediaQueryData

  static Map compressMap(Map map) {
    if (map == null) {
      return map;
    }
    Map retMap = {};
    for (var k in map.keys) {
      var v = map[k];
      if (v != null) {
        retMap[k] = v;
      }
    }
    return retMap;
  }

  static Map cMediaQueryDataToJson(MediaQueryData data) {
    var map = {
      "size": cSizeToJson(data.size),
      "devicePixelRatio": data.devicePixelRatio,
      "textScaleFactor": data.textScaleFactor,
      "padding": cEdgeInsetsToJson(data.padding),
      "viewInsets": cEdgeInsetsToJson(data.viewInsets),
      "alwaysUse24HourFormat": data.alwaysUse24HourFormat,
      "accessibleNavigation": data.accessibleNavigation,
      "invertColors": data.invertColors,
      "disableAnimations": data.disableAnimations,
      "boldText": data.boldText,
    };

    return compressMap(map);
  }

  static Map cSizeToJson(Size sz) {
    var map = {"width": sz.width, "height": sz.height};
    return compressMap(map);
  }

  //const EdgeInsets.fromLTRB(this.left, this.top, this.right, this.bottom);

  static Map cEdgeInsetsToJson(EdgeInsets insets) {
    var map = {
      "left": insets.left,
      "top": insets.top,
      "right": insets.right,
      "bottom": insets.bottom
    };
    return compressMap(map);
  }

  static Map cThemeDataToJson(ThemeData data) {
    var map = {
      "__mx_brightness": cBrightnessToJson(data.brightness),
      "primaryColor": data.primaryColor?.value,
      "primaryColorBrightness": cBrightnessToJson(data.primaryColorBrightness),
      "primaryColorLight": data.primaryColorLight?.value,
      "primaryColorDark": data.primaryColorDark?.value,
      "accentColor": data.accentColor?.value,
      "accentColorBrightness": cBrightnessToJson(data.accentColorBrightness),
      "canvasColor": data.canvasColor?.value,
      "scaffoldBackgroundColor": data.scaffoldBackgroundColor?.value,
      "bottomAppBarColor": data.bottomAppBarColor?.value,
      "cardColor": data.cardColor?.value,
      "dividerColor": data.dividerColor?.value,
      "highlightColor": data.highlightColor?.value,
      "splashColor": data.splashColor?.value,
      // "splashFactory": data.splashFactory,
      "selectedRowColor": data.selectedRowColor?.value,
      "unselectedWidgetColor": data.unselectedWidgetColor?.value,
      "disabledColor": data.disabledColor?.value,
      "buttonColor": data.buttonColor?.value,
      // "buttonTheme": data.buttonTheme,
      "secondaryHeaderColor": data.secondaryHeaderColor?.value,
      "textSelectionColor": data.textSelectionColor?.value,
      "backgroundColor": data.backgroundColor?.value,
      "dialogBackgroundColor": data.dialogBackgroundColor?.value,
      "indicatorColor": data.indicatorColor?.value,
      "hintColor": data.hintColor?.value,
      "errorColor": data.errorColor?.value,
      "toggleableActiveColor": data.toggleableActiveColor?.value,
      "textTheme": cTextThemeToJson(data.textTheme),
      "primaryTextTheme": cTextThemeToJson(data.primaryTextTheme),
      "accentTextTheme": cTextThemeToJson(data.accentTextTheme),
      // "inputDecorationTheme": cInputDecorationThemeToJson(data.inputDecorationTheme),
      // "iconTheme": data.iconTheme,
      // "primaryIconTheme": data.primaryIconTheme,
      // "accentIconTheme": data.accentIconTheme,
      // "sliderTheme": data.sliderTheme,
      // "tabBarTheme": data.tabBarTheme,
      // "chipTheme": data.chipTheme,
      "platform": cTargetPlatformToJson(data.platform),
      "materialTapTargetSize":
          cMaterialTapTargetSizeToJson(data.materialTapTargetSize),
      // "pageTransitionsTheme": data.pageTransitionsTheme,
      // "colorScheme": data.colorScheme,
      // "dialogTheme": data.dialogTheme,
      // "typography": data.typography,
    };

    return compressMap(map);
  }

  static Map cIconThemeDataToJson(IconThemeData data) {
    var map = {
      "color": data.color?.value,
      "size": data.size,
      "opacity": data.opacity,
    };

    return compressMap(map);
  }

  static Map cBrightnessToJson(Brightness data) {
    Map v;

    switch (data) {
      case Brightness.light:
        {
          v = {"_name": "Brightness.light", "index": 0};
          break;
        }

      case Brightness.dark:
        {
          v = {"_name": "Brightness.dark", "index": 1};
          break;
        }
    }

    return v;
  }

  static Map cTextThemeToJson(TextTheme data) {
    if (data == null) {
      return null;
    }

    Map map = {
      "headline1": cTextStyleToJson(data.headline1),
      "headline2": cTextStyleToJson(data.headline2),
      "headline4": cTextStyleToJson(data.headline4),
      "headline4": cTextStyleToJson(data.headline4),
      "headline5": cTextStyleToJson(data.headline5),
      "headline6": cTextStyleToJson(data.headline6),
      "subtitle1": cTextStyleToJson(data.subtitle1),
      "subtitle2": cTextStyleToJson(data.subtitle2),
      "bodyText1": cTextStyleToJson(data.bodyText1),
      "bodyText2": cTextStyleToJson(data.bodyText2),
      "caption": cTextStyleToJson(data.caption),
      "button": cTextStyleToJson(data.button),
      "overline": cTextStyleToJson(data.overline),
    };

    return compressMap(map);
  }

  static Map cTextStyleToJson(TextStyle data) {
    if (data == null) {
      return null;
    }

    Map map = {
      "inherit": data.inherit,
      "color": data.color?.value,
      "fontSize": data.fontSize,
      "fontWeight": cFontWeightToJson(data.fontWeight),
      "fontStyle": cFontStyleToJson(data.fontStyle),
      "letterSpacing": data.letterSpacing,
      "wordSpacing": data.wordSpacing,
      "textBaseline": cTextBaselineToJson(data.textBaseline),
      "height": data.height,
      "locale": cLocaleToJson(data.locale),
      // "foreground": data.foreground,
      // "background": data.background,
      "shadows": cShadowToJson(data.shadows),
      "decoration": cTextDecorationToJson(data.decoration),
      "decorationColor": data.decorationColor?.value,
      "decorationStyle": cTextDecorationStyleToJson(data.decorationStyle),
      "debugLabel": data.debugLabel,
      "fontFamily": data.fontFamily,
    };

    return compressMap(map);
  }

  static Map cInputDecorationThemeToJson(InputDecorationTheme data) {
    if (data == null) {
      return null;
    }

    Map map = {
      "labelStyle": data.labelStyle,
      "helperStyle": data.helperStyle,
      "hintStyle": data.hintStyle,
      "errorStyle": data.errorStyle,
      "errorMaxLines": data.errorMaxLines,
      // ignore: deprecated_member_use
      "hasFloatingPlaceholder": data.hasFloatingPlaceholder,
      "isDense": data.isDense,
      "contentPadding": data.contentPadding,
      "isCollapsed": data.isCollapsed,
      "prefixStyle": data.prefixStyle,
      "suffixStyle": data.suffixStyle,
      "counterStyle": data.counterStyle,
      "filled": data.filled,
      "fillColor": data.fillColor,
      "errorBorder": data.errorBorder,
      "focusedBorder": data.focusedBorder,
      "focusedErrorBorder": data.focusedErrorBorder,
      "disabledBorder": data.disabledBorder,
      "enabledBorder": data.enabledBorder,
      "border": data.border,
    };

    return compressMap(map);
  }

  static Map cTargetPlatformToJson(TargetPlatform data) {
    Map v;

    switch (data) {
      case TargetPlatform.android:
        {
          v = {"_name": "TargetPlatform.android", "index": 0};
          break;
        }

      case TargetPlatform.fuchsia:
        {
          v = {"_name": "TargetPlatform.fuchsia", "index": 1};
          break;
        }

      case TargetPlatform.iOS:
        {
          v = {"_name": "TargetPlatform.iOS", "index": 2};
          break;
        }
//github based Channel stable, v1.12.13+hotfix.9
//      case TargetPlatform.linux:
//        {
//          v = {"_name": "TargetPlatform.linux", "index": 3};
//          break;
//        }
//      case TargetPlatform.macOS:
//        {
//          v = {"_name": "TargetPlatform.macOS", "index": 4};
//          break;
//        }
//      case TargetPlatform.windows:
//        {
//          v = {"_name": "TargetPlatform.windows", "index": 5};
//          break;
//        }
      default:
        break;
    }

    return v;
  }

  static Map cMaterialTapTargetSizeToJson(MaterialTapTargetSize data) {
    Map v;

    switch (data) {
      case MaterialTapTargetSize.padded:
        {
          v = {"_name": "aterialTapTargetSize.padded", "index": 0};
          break;
        }

      case MaterialTapTargetSize.shrinkWrap:
        {
          v = {"_name": "MaterialTapTargetSize.shrinkWrap", "index": 1};
          break;
        }
    }

    return v;
  }

  static Map cFontWeightToJson(FontWeight data) {
    Map v;

    switch (data.index) {
      case 0:
        {
          v = {"className": "FontWeight", "constructorName": "w100"};
          break;
        }

      case 1:
        {
          v = {"className": "FontWeight", "constructorName": "w200"};
          break;
        }

      case 2:
        {
          v = {"className": "FontWeight", "constructorName": "w300"};
          break;
        }

      case 3:
        {
          v = {"className": "FontWeight", "constructorName": "w400"};
          break;
        }

      case 4:
        {
          v = {"className": "FontWeight", "constructorName": "w500"};
          break;
        }

      case 5:
        {
          v = {"className": "FontWeight", "constructorName": "w600"};
          break;
        }

      case 6:
        {
          v = {"className": "FontWeight", "constructorName": "w700"};
          break;
        }

      case 7:
        {
          v = {"className": "FontWeight", "constructorName": "w800"};
          break;
        }

      case 8:
        {
          v = {"className": "FontWeight", "constructorName": "w900"};
          break;
        }
    }

    if (data == FontWeight.normal) {
      v = {"className": "FontWeight", "constructorName": "normal"};
    } else if (data == FontWeight.bold) {
      v = {"className": "FontWeight", "constructorName": "bold"};
    }

    return v;
  }

  static Map cFontStyleToJson(FontStyle data) {
    Map v;

    switch (data) {
      case FontStyle.normal:
        {
          v = {"_name": "FontStyle.normal", "index": 0};
          break;
        }

      case FontStyle.italic:
        {
          v = {"_name": "FontStyle.italic", "index": 1};
          break;
        }
    }

    return v;
  }

  static Map cTextBaselineToJson(TextBaseline data) {
    Map v;

    switch (data) {
      case TextBaseline.alphabetic:
        {
          v = {"_name": "TextBaseline.alphabetic", "index": 0};
          break;
        }

      case TextBaseline.ideographic:
        {
          v = {"_name": "TextBaseline.ideographic", "index": 1};
          break;
        }
    }

    return v;
  }

  static Map cLocaleToJson(Locale data) {
    if (data == null) {
      return null;
    }

    var map = {
      "languageCode": data.languageCode,
      "countryCode": data.countryCode,
    };

    return map;
  }

  static Map cTextDecorationToJson(TextDecoration data) {
    Map v = {"_name": "TextDecoration.none", "index": 0};

    if (data == TextDecoration.none) {
      v = {"className": "TextDecoration", "constructorName": "none"};
    } else if (data == TextDecoration.underline) {
      v = {"className": "TextDecoration", "constructorName": "underline"};
    } else if (data == TextDecoration.overline) {
      v = {"className": "TextDecoration", "constructorName": "overline"};
    } else if (data == TextDecoration.lineThrough) {
      v = {"className": "TextDecoration", "constructorName": "lineThrough"};
    }

    return v;
  }

  static Map cTextDecorationStyleToJson(TextDecorationStyle data) {
    Map v;

    switch (data) {
      case TextDecorationStyle.solid:
        {
          v = {"_name": "TextDecorationStyle.solid", "index": 0};
          break;
        }

      case TextDecorationStyle.double:
        {
          v = {"_name": "TextDecorationStyle.double", "index": 1};
          break;
        }

      case TextDecorationStyle.dotted:
        {
          v = {"_name": "TextDecorationStyle.dotted", "index": 2};
          break;
        }

      case TextDecorationStyle.dashed:
        {
          v = {"_name": "TextDecorationStyle.dashed", "index": 3};
          break;
        }

      case TextDecorationStyle.wavy:
        {
          v = {"_name": "TextDecorationStyle.wavy", "index": 4};
          break;
        }
    }

    return v;
  }

  static List<Map> cShadowToJson(List<Shadow> data) {
    if (data == null) {
      return null;
    }

    List v = [];
    data.forEach((item) {
      Map s = {
        "color": item.color?.value,
        "offset": item.offset,
        "blurRadius": item.blurRadius
      };
      v.add(s);
    });

    return v;
  }

  static Map cBoxConstraintsToJson(BoxConstraints data) {
    if (data == null) {
      return null;
    }

    Map map = {
      "minWidth": data.minWidth,
      "maxWidth": data.maxWidth,
      "minHeight": data.minHeight,
      "maxHeight": data.maxHeight,
    };

    return map;
  }
}

/// 获取flutter的运行时环境变量 传递给JS
Map get flutterAppEnvironmentInfo {
  return {
    "kReleaseMode": kReleaseMode,
    "kProfileMode": kProfileMode,
    "kDebugMode": kDebugMode,
    //
    "Platform": _platformInfo,
  };
}

Map get _platformInfo {
  return {
    "isAndroid": Platform.isAndroid,
    "isIOS": Platform.isIOS,
    "operatingSystem":Platform.operatingSystem
  };
}
