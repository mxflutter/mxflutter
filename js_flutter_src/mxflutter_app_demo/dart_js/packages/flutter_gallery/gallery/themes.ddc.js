'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const ui = dart_sdk.ui;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__material = require('packages/flutter/material');
const color_scheme = packages__flutter__material.src__material__color_scheme;
const theme_data = packages__flutter__material.src__material__theme_data;
const colors = packages__flutter__material.src__material__colors;
const button_theme = packages__flutter__material.src__material__button_theme;
const ink_ripple = packages__flutter__material.src__material__ink_ripple;
const themes = Object.create(dart.library);
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4278285762.0
    });
  },
  get C1() {
    return C1 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4279482877.0
    });
  },
  get C3() {
    return C3 = dart.const({
      __proto__: ui.Brightness.prototype,
      [_name]: "Brightness.dark",
      index: 0
    });
  },
  get C4() {
    return C4 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4278190080.0
    });
  },
  get C5() {
    return C5 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4294967295.0
    });
  },
  get C6() {
    return C6 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4291782265.0
    });
  },
  get C7() {
    return C7 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4279374354.0
    });
  },
  get C8() {
    return C8 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4278442694.0
    });
  },
  get C9() {
    return C9 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4281794739.0
    });
  },
  get C10() {
    return C10 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4290479868.0
    });
  },
  get C2() {
    return C2 = dart.const({
      __proto__: color_scheme.ColorScheme.prototype,
      [ColorScheme_brightness]: C3 || CT.C3,
      [ColorScheme_onError]: C4 || CT.C4,
      [ColorScheme_onBackground]: C5 || CT.C5,
      [ColorScheme_onSurface]: C5 || CT.C5,
      [ColorScheme_onSecondary]: C4 || CT.C4,
      [ColorScheme_onPrimary]: C4 || CT.C4,
      [ColorScheme_error]: C6 || CT.C6,
      [ColorScheme_background]: C7 || CT.C7,
      [ColorScheme_surface]: C7 || CT.C7,
      [ColorScheme_secondaryVariant]: C8 || CT.C8,
      [ColorScheme_secondary]: C8 || CT.C8,
      [ColorScheme_primaryVariant]: C9 || CT.C9,
      [ColorScheme_primary]: C10 || CT.C10
    });
  },
  get C11() {
    return C11 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4278210720.0
    });
  },
  get C12() {
    return C12 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4285110239.0
    });
  },
  get C13() {
    return C13 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4280295716.0
    });
  },
  get C14() {
    return C14 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4289724448.0
    });
  },
  get C16() {
    return C16 = dart.const({
      __proto__: ui.Brightness.prototype,
      [_name]: "Brightness.light",
      index: 1
    });
  },
  get C17() {
    return C17 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4278290310.0
    });
  },
  get C18() {
    return C18 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4284612846.0
    });
  },
  get C15() {
    return C15 = dart.const({
      __proto__: color_scheme.ColorScheme.prototype,
      [ColorScheme_brightness]: C16 || CT.C16,
      [ColorScheme_onError]: C5 || CT.C5,
      [ColorScheme_onBackground]: C4 || CT.C4,
      [ColorScheme_onSurface]: C4 || CT.C4,
      [ColorScheme_onSecondary]: C4 || CT.C4,
      [ColorScheme_onPrimary]: C5 || CT.C5,
      [ColorScheme_error]: C14 || CT.C14,
      [ColorScheme_background]: C5 || CT.C5,
      [ColorScheme_surface]: C5 || CT.C5,
      [ColorScheme_secondaryVariant]: C17 || CT.C17,
      [ColorScheme_secondary]: C8 || CT.C8,
      [ColorScheme_primaryVariant]: C9 || CT.C9,
      [ColorScheme_primary]: C18 || CT.C18
    });
  },
  get C19() {
    return C19 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4280191205.0
    });
  }
});
const Color_value = dart.privateName(ui, "Color.value");
let C0;
let C1;
const _name = dart.privateName(ui, "_name");
let C3;
const ColorScheme_brightness = dart.privateName(color_scheme, "ColorScheme.brightness");
let C4;
const ColorScheme_onError = dart.privateName(color_scheme, "ColorScheme.onError");
let C5;
const ColorScheme_onBackground = dart.privateName(color_scheme, "ColorScheme.onBackground");
const ColorScheme_onSurface = dart.privateName(color_scheme, "ColorScheme.onSurface");
const ColorScheme_onSecondary = dart.privateName(color_scheme, "ColorScheme.onSecondary");
const ColorScheme_onPrimary = dart.privateName(color_scheme, "ColorScheme.onPrimary");
let C6;
const ColorScheme_error = dart.privateName(color_scheme, "ColorScheme.error");
let C7;
const ColorScheme_background = dart.privateName(color_scheme, "ColorScheme.background");
const ColorScheme_surface = dart.privateName(color_scheme, "ColorScheme.surface");
let C8;
const ColorScheme_secondaryVariant = dart.privateName(color_scheme, "ColorScheme.secondaryVariant");
const ColorScheme_secondary = dart.privateName(color_scheme, "ColorScheme.secondary");
let C9;
const ColorScheme_primaryVariant = dart.privateName(color_scheme, "ColorScheme.primaryVariant");
let C10;
const ColorScheme_primary = dart.privateName(color_scheme, "ColorScheme.primary");
let C2;
let C11;
let C12;
let C13;
let C14;
let C16;
let C17;
let C18;
let C15;
let C19;
themes._buildTextTheme = function _buildTextTheme(base) {
  return base.copyWith({title: base.title.copyWith({fontFamily: "GoogleSans"})});
};
themes._buildDarkTheme = function _buildDarkTheme() {
  let primaryColor = C0 || CT.C0;
  let secondaryColor = C1 || CT.C1;
  let colorScheme = (C2 || CT.C2).copyWith({primary: primaryColor, secondary: secondaryColor});
  let base = theme_data.ThemeData.new({brightness: ui.Brightness.dark, accentColorBrightness: ui.Brightness.dark, primaryColor: primaryColor, primaryColorDark: C11 || CT.C11, primaryColorLight: secondaryColor, buttonColor: primaryColor, indicatorColor: colors.Colors.white, toggleableActiveColor: C12 || CT.C12, accentColor: secondaryColor, canvasColor: C13 || CT.C13, scaffoldBackgroundColor: C13 || CT.C13, backgroundColor: C13 || CT.C13, errorColor: C14 || CT.C14, buttonTheme: new button_theme.ButtonThemeData.new({colorScheme: colorScheme, textTheme: button_theme.ButtonTextTheme.primary})});
  return base.copyWith({textTheme: themes._buildTextTheme(base.textTheme), primaryTextTheme: themes._buildTextTheme(base.primaryTextTheme), accentTextTheme: themes._buildTextTheme(base.accentTextTheme)});
};
themes._buildLightTheme = function _buildLightTheme() {
  let primaryColor = C0 || CT.C0;
  let secondaryColor = C1 || CT.C1;
  let colorScheme = (C15 || CT.C15).copyWith({primary: primaryColor, secondary: secondaryColor});
  let base = theme_data.ThemeData.new({brightness: ui.Brightness.light, accentColorBrightness: ui.Brightness.dark, colorScheme: colorScheme, primaryColor: primaryColor, buttonColor: primaryColor, indicatorColor: colors.Colors.white, toggleableActiveColor: C19 || CT.C19, splashColor: colors.Colors.white24, splashFactory: ink_ripple.InkRipple.splashFactory, accentColor: secondaryColor, canvasColor: colors.Colors.white, scaffoldBackgroundColor: colors.Colors.white, backgroundColor: colors.Colors.white, errorColor: C14 || CT.C14, buttonTheme: new button_theme.ButtonThemeData.new({colorScheme: colorScheme, textTheme: button_theme.ButtonTextTheme.primary})});
  return base.copyWith({textTheme: themes._buildTextTheme(base.textTheme), primaryTextTheme: themes._buildTextTheme(base.primaryTextTheme), accentTextTheme: themes._buildTextTheme(base.accentTextTheme)});
};
dart.defineLazy(themes, {
  /*themes.kLightGalleryTheme*/get kLightGalleryTheme() {
    return themes._buildLightTheme();
  },
  /*themes.kDarkGalleryTheme*/get kDarkGalleryTheme() {
    return themes._buildDarkTheme();
  }
});
dart.trackLibraries("packages/flutter_gallery/gallery/themes", {
  "package:flutter_gallery/gallery/themes.dart": themes
}, {
}, '{"version":3,"sourceRoot":"","sources":["themes.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;kDASoC;AAClC,QAAO,AAAK,KAAD,kBACF,AAAK,AAAM,IAAP,6BACG;AAGlB;;AAGc;AACA;AACM,oBAAuC,iCAC9C,YAAY,aACV,cAAc;AAEX,aAAO,sCACE,2CACW,kCACpB,YAAY,sDAEP,cAAc,eACpB,YAAY,kBACF,wEAEV,cAAc,8IAKd,mDACE,WAAW,aACG;AAG/B,QAAO,AAAK,KAAD,sBACE,uBAAgB,AAAK,IAAD,+BACb,uBAAgB,AAAK,IAAD,qCACrB,uBAAgB,AAAK,IAAD;AAEzC;;AAGc;AACA;AACM,oBAAwC,mCAC/C,YAAY,aACV,cAAc;AAEX,aAAO,sCACE,4CACW,iCACrB,WAAW,gBACV,YAAY,eACb,YAAY,kBACF,wEAEH,sCACK,iDACZ,cAAc,eACP,8CACY,sCACR,6DAEX,mDACE,WAAW,aACG;AAG/B,QAAO,AAAK,KAAD,sBACE,uBAAgB,AAAK,IAAD,+BACb,uBAAgB,AAAK,IAAD,qCACrB,uBAAgB,AAAK,IAAD;AAEzC;;IA5EgB,yBAAkB;UAAG;;IACrB,wBAAiB;UAAG","file":"themes.ddc.js"}');
// Exports:
exports.gallery__themes = themes;

//# sourceMappingURL=themes.ddc.js.map
