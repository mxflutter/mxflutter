import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class MXJSLog {
  static log(Object object) {
    print("MXJSFlutter:[Flutter]-$object");
  }

  static error(Object object) {
    print("MXJSFlutter:[Flutter]-[ERR]::$object");
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
      "brightness": cBrightnessToJson(data.brightness),
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
      "materialTapTargetSize": cMaterialTapTargetSizeToJson(data.materialTapTargetSize),
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

  static String cBrightnessToJson(Brightness data) {
    String v;

    switch (data) {
      case Brightness.light:
        {
          v = "Brightness.light";
          break;
        }

      case Brightness.dark:
        {
          v = "Brightness.dark";
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
      "display4": cTextStyleToJson(data.display4),
      "display3": cTextStyleToJson(data.display3),
      "display2": cTextStyleToJson(data.display2),
      "display1": cTextStyleToJson(data.display1),
      "headline": cTextStyleToJson(data.headline),
      "title": cTextStyleToJson(data.title),
      "subhead": cTextStyleToJson(data.subhead),
      "body2": cTextStyleToJson(data.body2),
      "body1": cTextStyleToJson(data.body1),
      "caption": cTextStyleToJson(data.caption),
      "button": cTextStyleToJson(data.button),
      "subtitle": cTextStyleToJson(data.subtitle),
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

  static String cTargetPlatformToJson(TargetPlatform data) {
    String v;

    switch (data) {
      case TargetPlatform.android:
        {
          v = "TargetPlatform.android";
          break;
        }

      case TargetPlatform.fuchsia:
        {
          v = "TargetPlatform.fuchsia";
          break;
        }

      case TargetPlatform.iOS:
        {
          v = "TargetPlatform.iOS";
          break;
        }
    }

    return v;
  }

  static String cMaterialTapTargetSizeToJson(MaterialTapTargetSize data) {
    String v;

    switch (data) {
      case MaterialTapTargetSize.padded:
        {
          v = "MaterialTapTargetSize.padded";
          break;
        }

      case MaterialTapTargetSize.shrinkWrap:
        {
          v = "MaterialTapTargetSize.shrinkWrap";
          break;
        }
    }

    return v;
  }

  static String cFontWeightToJson(FontWeight data) {
    String v;

    switch (data.index) {
      case 0:
        {
          v = "FontWeight.w100";
          break;
        }

      case 1:
        {
          v = "FontWeight.w200";
          break;
        }

      case 2:
        {
          v = "FontWeight.w300";
          break;
        }

      case 3:
        {
          v = "FontWeight.w400";
          break;
        }

        case 4:
        {
          v = "FontWeight.w500";
          break;
        }

        case 5:
        {
          v = "FontWeight.w600";
          break;
        }

        case 6:
        {
          v = "FontWeight.w700";
          break;
        }

        case 7:
        {
          v = "FontWeight.w800";
          break;
        }

        case 8:
        {
          v = "FontWeight.w900";
          break;
        }
    }

    return v;
  }

  static String cFontStyleToJson(FontStyle data) {
    String v;

    switch (data) {
      case FontStyle.normal:
        {
          v = "FontStyle.normal";
          break;
        }

      case FontStyle.italic:
        {
          v = "FontStyle.italic";
          break;
        }
    }

    return v;
  }

  static String cTextBaselineToJson(TextBaseline data) {
    String v;

    switch (data) {
      case TextBaseline.alphabetic:
        {
          v = "TextBaseline.alphabetic";
          break;
        }

      case TextBaseline.ideographic:
        {
          v = "TextBaseline.ideographic";
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

static String cTextDecorationToJson(TextDecoration data) {
    String v = "TextDecoration.none";

    if (data == TextDecoration.none) {
      v = "TextDecoration.none";  
    }
    else if (data == TextDecoration.underline) {
      v = "TextDecoration.underline";  
    }
    else if (data == TextDecoration.overline) {
      v = "TextDecoration.overline";  
    }
    else if (data == TextDecoration.lineThrough) {
      v = "TextDecoration.lineThrough";  
    }

    return v;
  }

  static String cTextDecorationStyleToJson(TextDecorationStyle data) {
    String v;

    switch (data) {
      case TextDecorationStyle.solid:
        {
          v = "TextDecorationStyle.solid";
          break;
        }

      case TextDecorationStyle.double:
        {
          v = "TextDecorationStyle.double";
          break;
        }

      case TextDecorationStyle.dotted:
        {
          v = "TextDecorationStyle.dotted";
          break;
        }
      
      case TextDecorationStyle.dashed:
        {
          v = "TextDecorationStyle.dashed";
          break;
        }

      case TextDecorationStyle.wavy:
        {
          v = "TextDecorationStyle.wavy";
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

}
