//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

let {
  DartClass,
  FlutterWidget,
  Color,
  Locale
} = require("./js_flutter_basic_types.js");

/// Creates a text widget.
///
/// If the [style] argument is null, the text will use the style from the
/// closest enclosing [DefaultTextStyle].
class Text extends FlutterWidget {
  constructor(
    data,
    {
      key,
      style,
      textAlign,
      textDirection,
      locale,
      softWrap,
      overflow,
      textScaleFactor,
      maxLines,
      semanticsLabel
    } = {}
  ) {
    super();

    this.data = data;
    this.key = key;
    this.style = style;
    this.textAlign = textAlign;
    this.textDirection = textDirection;
    this.locale = locale;
    this.softWrap = softWrap;
    this.overflow = overflow;
    this.textScaleFactor = textScaleFactor;
    this.maxLines = maxLines;
    this.semanticsLabel = semanticsLabel;
  }

  //       /// Creates a text widget with a [TextSpan].
  //   const Text.rich(this.textSpan, {
  //     Key key,
  //     this.style,
  //     this.textAlign,
  //     this.textDirection,
  //     this.locale,
  //     this.softWrap,
  //     this.overflow,
  //     this.textScaleFactor,
  //     this.maxLines,
  //     this.semanticsLabel,
  //   })
}

Text.new = function(data, args) {
  return new Text(data, args);
};

Text.rich = function(
  textSpan,
  {
    key,
    style,
    textAlign,
    textDirection,
    locale,
    softWrap,
    overflow,
    textScaleFactor,
    maxLines,
    semanticsLabel
  } = {}
) {
  var t = new Text();
  c.constructorName = "rich";

  t.textSpan = textSpan;
  t.key = key;
  t.style = style;
  t.textAlign = textAlign;
  t.textDirection = textDirection;
  t.locale = locale;
  t.softWrap = softWrap;
  t.overflow = overflow;
  t.textScaleFactor = textScaleFactor;
  t.maxLines = maxLines;
  t.semanticsLabel = semanticsLabel;
};

class RichText extends FlutterWidget {
  constructor({
    key,
    text,
    textAlign,
    textDirection,
    softWrap,
    overflow,
    textScaleFactor,
    maxLines,
    locale
  } = {}) {
    super();

    this.key = key;
    this.text = text;
    this.textAlign = textAlign;
    this.textDirection = textDirection;
    this.softWrap = softWrap;
    this.overflow = overflow;
    this.textScaleFactor = textScaleFactor;
    this.maxLines = maxLines;
    this.locale = locale;
  }
}

RichText.new = function(args) {
  return new RichText(args);
};

class DefaultTextStyle extends FlutterWidget {
  constructor({
    key,
    style,
    textAlign,
    softWrap,
    overflow,
    maxLines,
    child
  } = {}) {
    super();

    this.key = key;
    this.style = style;
    this.textAlign = textAlign;
    this.softWrap = softWrap;
    this.overflow = overflow;
    this.maxLines = maxLines;
    this.child = child;
  }
}

DefaultTextStyle.new = function(args) {
  return new DefaultTextStyle(args);
};

class TextStyle extends DartClass {
  constructor({
    inherit,
    color,
    fontSize,
    fontWeight,
    fontStyle,
    letterSpacing,
    wordSpacing,
    textBaseline,
    height,
    locale,
    foreground,
    background,
    shadows,
    decoration,
    decorationColor,
    decorationStyle,
    debugLabel,
    fontFamily,
    packages // 此处因为和 js 的关键字 package 冲突了，所以改成 packages
  } = {}) {
    super();

    this.inherit = inherit;
    this.color = color;
    this.fontSize = fontSize;
    this.fontWeight = fontWeight;
    this.fontStyle = fontStyle;
    this.letterSpacing = letterSpacing;
    this.wordSpacing = wordSpacing;
    this.textBaseline = textBaseline;
    this.height = height;
    this.locale = locale;
    this.foreground = foreground;
    this.background = background;
    this.shadows = shadows;
    this.decoration = decoration;
    this.decorationColor = decorationColor;
    this.decorationStyle = decorationStyle;
    this.debugLabel = debugLabel;
    this.fontFamily = fontFamily;
    this.packages = packages;
  }
}

TextStyle.new = function({
  inherit,
  color,
  fontSize,
  fontWeight,
  fontStyle,
  letterSpacing,
  wordSpacing,
  textBaseline,
  height,
  locale,
  foreground,
  background,
  shadows,
  decoration,
  decorationColor,
  decorationStyle,
  debugLabel,
  fontFamily,
  package
} = {}) {
  this.className = "TextStyle";

  this.inherit = inherit;
  this.color = color;
  this.fontSize = fontSize;
  this.fontWeight = fontWeight;
  this.fontStyle = fontStyle;
  this.letterSpacing = letterSpacing;
  this.wordSpacing = wordSpacing;
  this.textBaseline = textBaseline;
  this.height = height;
  this.locale = locale;
  this.foreground = foreground;
  this.background = background;
  this.shadows = shadows;
  this.decoration = decoration;
  this.decorationColor = decorationColor;
  this.decorationStyle = decorationStyle;
  this.debugLabel = debugLabel;
  this.fontFamily = fontFamily;
  this.package = package;

  return this;
};

// TextStyle.new = function(args) {
//   return new TextStyle(args);
// };

TextStyle.fromJson = function(mapObj) {
  if (mapObj == null || mapObj == undefined) {
    return null;
  }

  let obj = new TextStyle();

  for (var p in mapObj) {
    if (mapObj.hasOwnProperty(p)) {
      let v = mapObj[p];
      if (v == null || v == undefined) {
        obj[p] = v;
        continue;
      }

      switch (p) {
        case "color":
        case "decorationColor":
          obj[p] = new Color(v);
          break;

        case "locale":
          obj[p] = Locale.fromJson(v);
          break;

        case "shadows":
          {
            let shadowArray = [];
            for (shadow of v) {
              shadowArray.push(Shadow.fromJson(shadow));
            }
            obj[p] = shadowArray;
          }
          break;

        default:
          obj[p] = v;
          break;
      }
    }
  }

  return obj;
};

class TextSpan extends FlutterWidget {
  constructor({ style, text, children, recognizer } = {}) {
    super();

    this.style = style;
    this.text = text;
    this.children = children;
    this.recognizer = recognizer;
  }
}

TextSpan.new = function(args) {
  return new TextSpan(args);
};

// TextDecoration = {
//   none: "TextDecoration.none",
//   underline: "TextDecoration.underline",
//   overline: "TextDecoration.overline",
//   lineThrough: "TextDecoration.lineThrough"
// };
//
// TextAlign = {
//   left: "TextAlign.left",
//   right: "TextAlign.right",
//   center: "TextAlign.center",
//   justify: "TextAlign.justify",
//   start: "TextAlign.start",
//   end: "TextAlign.end"
// };
//
// TextOverflow = {
//   clip: "TextOverflow.clip",
//   fade: "TextOverflow.fade",
//   ellipsis: "TextOverflow.ellipsis"
// };

TextDecoration = {
  none: { _name: "TextDecoration.none", index: 0 },
  underline: { _name: "TextDecoration.underline", index: 1 },
  overline: { _name: "TextDecoration.overline", index: 2 },
  lineThrough: { _name: "TextDecoration.lineThrough", index: 3 }
};

TextAlign = {
  left: { _name: "TextAlign.left", index: 0 },
  right: { _name: "TextAlign.right", index: 1 },
  center: { _name: "TextAlign.center", index: 2 },
  justify: { _name: "TextAlign.justify", index: 3 },
  start: { _name: "TextAlign.start", index: 4 },
  end: { _name: "TextAlign.end", index: 5 }
};

TextOverflow = {
  clip: { _name: "TextOverflow.clip", index: 0 },
  fade: { _name: "TextOverflow.fade", index: 1 },
  ellipsis: { _name: "TextOverflow.ellipsis", index: 2 }
};

class TextTheme extends DartClass {
  constructor({
    display4,
    display3,
    display2,
    display1,
    headline,
    title,
    subhead,
    body2,
    body1,
    caption,
    button,
    subtitle,
    overline
  } = {}) {
    super();

    this.display4 = display4;
    this.display3 = display3;
    this.display2 = display2;
    this.display1 = display1;
    this.headline = headline;
    this.title = title;
    this.subhead = subhead;
    this.body2 = body2;
    this.body1 = body1;
    this.caption = caption;
    this.button = button;
    this.subtitle = subtitle;
    this.overline = overline;
  }
}

TextTheme.new = function(args) {
  return new TextTheme(args);
};

TextTheme.fromJson = function(mapObj) {
  if (mapObj == null || mapObj == undefined) {
    return null;
  }

  let obj = new TextTheme({
    display4: TextStyle.fromJson(mapObj["display4"]),
    display3: TextStyle.fromJson(mapObj["display3"]),
    display2: TextStyle.fromJson(mapObj["display2"]),
    display1: TextStyle.fromJson(mapObj["display1"]),
    headline: TextStyle.fromJson(mapObj["headline"]),
    title: TextStyle.fromJson(mapObj["title"]),
    subhead: TextStyle.fromJson(mapObj["subhead"]),
    body2: TextStyle.fromJson(mapObj["body2"]),
    body1: TextStyle.fromJson(mapObj["body1"]),
    caption: TextStyle.fromJson(mapObj["caption"]),
    button: TextStyle.fromJson(mapObj["button"]),
    subtitle: TextStyle.fromJson(mapObj["subtitle"]),
    overline: TextStyle.fromJson(mapObj["overline"])
  });

  return obj;
};
// TextDecorationStyle = {
//   dashed: "TextDecorationStyle.dashed",
//   dotted: "TextDecorationStyle.dotted",
//   double: "TextDecorationStyle.double",
//   solid: "TextDecorationStyle.solid"
// };

TextDecorationStyle = {
  dashed: { _name: "TextDecorationStyle.dashed", index: 0 },
  dotted: { _name: "TextDecorationStyle.dotted", index: 1 },
  double: { _name: "TextDecorationStyle.double", index: 2 },
  solid: { _name: "TextDecorationStyle.solid", index: 3 }
};

// TextBaseline = {
//   alphabetic: "TextBaseline.alphabetic",
//   ideographic: "TextBaseline.ideographic"
// };

TextBaseline = {
  alphabetic: { _name: "TextBaseline.alphabetic", index: 0 },
  ideographic: { _name: "TextBaseline.ideographic", index: 1 }
};

// TextDirection = {
//   rtl: "TextDirection.rtl",
//   ltr: "TextDirection.ltr"
// };

TextDirection = {
  rtl: { _name: "TextDirection.rtl", index: 0 },
  ltr: { _name: "TextDirection.ltr", index: 1 }
};

// FontWeight = {
//   bold: "FontWeight.bold",
//   normal: "FontWeight.normal",
//   w100: "FontWeight.w100",
//   w200: "FontWeight.w200",
//   w300: "FontWeight.w300",
//   w400: "FontWeight.w500",
//   w500: "FontWeight.w500",
//   w600: "FontWeight.w600",
//   w700: "FontWeight.w700",
//   w800: "FontWeight.w800",
//   w900: "FontWeight.w900"
// };

FontWeight = {
  bold: { _name: "FontWeight.bold", index: 0 },
  normal: { _name: "FontWeight.normal", index: 1 },
  w100: { _name: "FontWeight.w100", index: 2 },
  w200: { _name: "FontWeight.w200", index: 3 },
  w300: { _name: "FontWeight.w300", index: 4 },
  w400: { _name: "FontWeight.w400", index: 5 },
  w500: { _name: "FontWeight.w500", index: 6 },
  w600: { _name: "FontWeight.w600", index: 7 },
  w700: { _name: "FontWeight.w700", index: 8 },
  w800: { _name: "FontWeight.w800", index: 9 },
  w900: { _name: "FontWeight.w900", index: 10 }
};
// FontStyle = {
//   italic: "FontStyle.italic",
//   normal: "FontStyle.normal"
// };

FontStyle = {
  italic: { _name: "FontStyle.italic", index: 0 },
  normal: { _name: "FontStyle.normal", index: 1 }
};

class Shadow extends FlutterWidget {
  constructor({ color, offset, blurRadius } = {}) {
    super();

    this.color = color;
    this.offset = offset;
    this.blurRadius = blurRadius;
  }
}

Shadow.new = function(args) {
  return new Shadow(args);
};

Shadow.fromJson = function(mapObj) {
  if (mapObj == null || mapObj == undefined) {
    return null;
  }

  let obj = new Shadow();

  for (var p in mapObj) {
    if (mapObj.hasOwnProperty(p)) {
      let v = mapObj[p];
      if (v == null || v == undefined) {
        obj[p] = v;
        continue;
      }

      switch (p) {
        case "color":
          obj[p] = new Color(v);
          break;

        default:
          obj[p] = v;
          break;
      }
    }
  }

  return obj;
};

class TextFormField extends FlutterWidget {
  constructor({
    key,
    controller,
    initialValue,
    focusNode,
    decoration,
    keyboardType,
    textCapitalization,
    textInputAction,
    style,
    textDirection,
    textAlign,
    autofocus,
    obscureText,
    autocorrect,
    autovalidate,
    maxLengthEnforced,
    maxLines,
    maxLength,
    onEditingComplete,
    onFieldSubmitted,
    onSaved,
    validator,
    inputFormatters,
    enabled,
    cursorWidth,
    cursorRadius,
    cursorColor,
    keyboardAppearance,
    scrollPadding,
    enableInteractiveSelection,
    buildCounter
  } = {}) {
    super();

    this.key = key;
    this.controller = controller;
    this.initialValue = initialValue;
    this.focusNode = focusNode;
    this.decoration = decoration;
    this.keyboardType = keyboardType;
    this.textCapitalization = textCapitalization;
    this.textInputAction = textInputAction;
    this.style = style;
    this.textDirection = textDirection;
    this.textAlign = textAlign;
    this.autofocus = autofocus;
    this.obscureText = obscureText;
    this.autocorrect = autocorrect;
    this.autovalidate = autovalidate;
    this.maxLengthEnforced = maxLengthEnforced;
    this.maxLines = maxLines;
    this.maxLength = maxLength;
    this.onEditingComplete = onEditingComplete;
    this.onFieldSubmitted = onFieldSubmitted;
    this.onSaved = onSaved;
    this.validator = validator;
    this.inputFormatters = inputFormatters;
    this.enabled = enabled;
    this.cursorWidth = cursorWidth;
    this.cursorRadius = cursorRadius;
    this.cursorColor = cursorColor;
    this.keyboardAppearance = keyboardAppearance;
    this.scrollPadding = scrollPadding;
    this.enableInteractiveSelection = enableInteractiveSelection;
    this.buildCounter = buildCounter;
  }
}

TextFormField.new = function(args) {
  return new TextFormField(args);
};

class InputDecoration extends FlutterWidget {
  constructor({
    icon,
    labelText,
    labelStyle,
    helperText,
    helperStyle,
    hintText,
    hintStyle,
    hintMaxLines,
    errorText,
    errorStyle,
    errorMaxLines,
    hasFloatingPlaceholder,
    isDense,
    contentPadding,
    prefixIcon,
    prefix,
    prefixText,
    prefixStyle,
    suffixIcon,
    suffix,
    suffixText,
    suffixStyle,
    counter,
    counterText,
    counterStyle,
    filled,
    fillColor,
    errorBorder,
    focusedBorder,
    focusedErrorBorder,
    disabledBorder,
    enabledBorder,
    border,
    enabled,
    semanticCounterText,
    alignLabelWithHint
  } = {}) {
    super();

    this.icon = icon;
    this.labelText = labelText;
    this.labelStyle = labelStyle;
    this.helperText = helperText;
    this.helperStyle = helperStyle;
    this.hintText = hintText;
    this.hintStyle = hintStyle;
    this.hintMaxLines = hintMaxLines;
    this.errorText = errorText;
    this.errorStyle = errorStyle;
    this.errorMaxLines = errorMaxLines;
    this.hasFloatingPlaceholder = hasFloatingPlaceholder;
    this.isDense = isDense;
    this.contentPadding = contentPadding;
    this.prefixIcon = prefixIcon;
    this.prefix = prefix;
    this.prefixText = prefixText;
    this.prefixStyle = prefixStyle;
    this.suffixIcon = suffixIcon;
    this.suffix = suffix;
    this.suffixText = suffixText;
    this.suffixStyle = suffixStyle;
    this.counter = counter;
    this.counterText = counterText;
    this.counterStyle = counterStyle;
    this.filled = filled;
    this.fillColor = fillColor;
    this.errorBorder = errorBorder;
    this.focusedBorder = focusedBorder;
    this.focusedErrorBorder = focusedErrorBorder;
    this.disabledBorder = disabledBorder;
    this.enabledBorder = enabledBorder;
    this.border = border;
    this.enabled = enabled;
    this.semanticCounterText = semanticCounterText;
    this.alignLabelWithHint = alignLabelWithHint;
  }
}

InputDecoration.new = function(args) {
  return new InputDecoration(args);
};

InputDecoration.collapsed = function({
  hintText,
  hasFloatingPlaceholder,
  hintStyle,
  filled,
  fillColor,
  border,
  enabled
}) {
  let v = new InputDecoration();
  v.staticFunctionName = "collapsed";

  v.hintText = hintText;
  v.hasFloatingPlaceholder = hasFloatingPlaceholder;
  v.hintStyle = hintStyle;
  v.filled = filled;
  v.fillColor = fillColor;
  v.border = border;
  v.enabled = enabled;

  return v;
};
class TextEditingController extends FlutterWidget {
  constructor({ text } = {}) {
    super();

    this.text = text;
  }
}

TextEditingController.new = function(args) {
  return new TextEditingController(args);
};

class TextInputType extends DartClass {
  constructor() {
    super();
  }
}

TextInputType.new = function(args) {
  return new TextInputType(args);
};

TextInputType.numberWithOptions = function(signed, decimal) {
  let v = new TextInputType();
  v.constructorName = "numberWithOptions";

  v.signed = signed;
  v.decimal = decimal;

  return v;
};

TextInputType.text = function() {
  let v = new TextInputType();
  v.constructorName = "text";

  return v;
};

TextInputType.multiline = function() {
  let v = new TextInputType();
  v.constructorName = "multiline";

  return v;
};

TextInputType.number = function() {
  let v = new TextInputType();
  v.constructorName = "number";

  return v;
};

TextInputType.phone = function() {
  let v = new TextInputType();
  v.constructorName = "phone";

  return v;
};

TextInputType.datetime = function() {
  let v = new TextInputType();
  v.constructorName = "datetime";

  return v;
};

TextInputType.emailAddress = function() {
  let v = new TextInputType();
  v.constructorName = "emailAddress";

  return v;
};

TextInputType.url = function() {
  let v = new TextInputType();
  v.constructorName = "url";

  return v;
};

// TextCapitalization = {
//   words: "TextCapitalization.words",
//   sentences: "TextCapitalization.sentences",
//   characters: "TextCapitalization.characters",
//   none: "TextCapitalization.none"
// };

// TextInputAction = {
//   none: "TextInputAction.none",
//   unspecified: "TextInputAction.unspecified",
//   done: "TextInputAction.done",
//   go: "TextInputAction.go",
//   search: "TextInputAction.search",
//   send: "TextInputAction.send",
//   next: "TextInputAction.next",
//   previous: "TextInputAction.previous",
//   continueAction: "TextInputAction.continueAction",
//   join: "TextInputAction.join",
//   route: "TextInputAction.route",
//   emergencyCall: "TextInputAction.emergencyCall",
//   newline: "TextInputAction.newline"
// };

TextCapitalization = {
  words: { _name: "TextCapitalization.words", index: 0 },
  sentences: { _name: "TextCapitalization.sentences", index: 1 },
  characters: { _name: "TextCapitalization.characters", index: 2 },
  none: { _name: "TextCapitalization.none", index: 3 }
};

TextInputAction = {
  none: { _name: "TextInputAction.none", index: 0 },
  unspecified: { _name: "TextInputAction.unspecified", index: 1 },
  done: { _name: "TextInputAction.done", index: 2 },
  go: { _name: "TextInputAction.go", index: 3 },
  search: { _name: "TextInputAction.search", index: 4 },
  send: { _name: "TextInputAction.send", index: 5 },
  next: { _name: "TextInputAction.next", index: 6 },
  previous: { _name: "TextInputAction.previous", index: 7 },
  continueAction: { _name: "TextInputAction.continueAction", index: 8 },
  join: { _name: "TextInputAction.join", index: 9 },
  route: { _name: "TextInputAction.route", index: 10 },
  emergencyCall: { _name: "TextInputAction.emergencyCall", index: 11 },
  newline: { _name: "TextInputAction.newline", index: 12 }
};

class UnderlineInputBorder extends FlutterWidget {
  constructor({ borderSide, borderRadius } = {}) {
    super();

    this.borderSide = borderSide;
    this.borderRadius = borderRadius;
  }
}

UnderlineInputBorder.new = function(args) {
  return new UnderlineInputBorder(args);
};

class OutlineInputBorder extends FlutterWidget {
  constructor({ borderSide, borderRadius, gapPadding } = {}) {
    super();

    this.borderSide = borderSide;
    this.borderRadius = borderRadius;
    this.gapPadding = gapPadding;
  }
}

OutlineInputBorder.new = function(args) {
  return new OutlineInputBorder(args);
};

class TextField extends FlutterWidget {
  constructor({
    key,
    controller,
    focusNode,
    decoration,
    keyboardType,
    textInputAction,
    textCapitalization,
    style,
    textAlign,
    textDirection,
    autofocus,
    obscureText,
    autocorrect,
    maxLines,
    maxLength,
    maxLengthEnforced,
    onChanged,
    onEditingComplete,
    onSubmitted,
    inputFormatters,
    enabled,
    cursorWidth,
    cursorRadius,
    cursorColor,
    keyboardAppearance,
    scrollPadding,
    dragStartBehavior,
    enableInteractiveSelection,
    onTap,
    buildCounter
  } = {}) {
    super();

    this.key = key;
    this.controller = controller;
    this.focusNode = focusNode;
    this.decoration = decoration;
    this.keyboardType = keyboardType;
    this.textInputAction = textInputAction;
    this.textCapitalization = textCapitalization;
    this.style = style;
    this.textAlign = textAlign;
    this.textDirection = textDirection;
    this.autofocus = autofocus;
    this.obscureText = obscureText;
    this.autocorrect = autocorrect;
    this.maxLines = maxLines;
    this.maxLength = maxLength;
    this.maxLengthEnforced = maxLengthEnforced;
    this.onChanged = onChanged;
    this.onEditingComplete = onEditingComplete;
    this.onSubmitted = onSubmitted;
    this.inputFormatters = inputFormatters;
    this.enabled = enabled;
    this.cursorWidth = cursorWidth;
    this.cursorRadius = cursorRadius;
    this.cursorColor = cursorColor;
    this.keyboardAppearance = keyboardAppearance;
    this.scrollPadding = scrollPadding;
    this.dragStartBehavior = dragStartBehavior;
    this.enableInteractiveSelection = enableInteractiveSelection;
    this.onTap = onTap;
    this.buildCounter = buildCounter;
  }
}

TextField.new = function(args) {
  return new TextField(args);
};

module.exports = {
  Text,
  RichText,
  DefaultTextStyle,
  TextStyle,
  TextSpan,
  TextDecoration,
  TextAlign,
  TextOverflow,
  TextTheme,
  TextDecorationStyle,
  TextBaseline,
  TextDirection,
  FontWeight,
  FontStyle,
  Shadow,
  TextFormField,
  TextEditingController,
  TextInputType,
  TextCapitalization,
  TextInputAction,
  InputDecoration,
  UnderlineInputBorder,
  OutlineInputBorder,
  TextField
};
