//VSCode Run support=====================================================================================
//为便于在JS IDE如VSCode，webStorm里脱离APP环境执行JS，以快速验证JS代码正确性
//如果不在App环境，Native接口重定向到JS同名函数打印调用
//jsFlutterRequire 转调Node运行环境中的require
//只有JSFlutterJSFrameworkLib中的文件，才能用这个头
let jsFlutterRequire = typeof mxRequire != "undefined" ? mxRequire : require;
//VSCode Run support end ================================================================================

//js_flutter_text.js 正式开始，😝

let {
    DartClass,
    FlutterWidget,
    Color,
    Locale,
} = jsFlutterRequire("./js_flutter_basic_types.js");

/// Creates a text widget.
///
/// If the [style] argument is null, the text will use the style from the
/// closest enclosing [DefaultTextStyle].
class Text extends FlutterWidget {
    constructor(data, {
        key,
        style,
        textAlign,
        textDirection,
        locale,
        softWrap,
        overflow,
        textScaleFactor,
        maxLines,
        semanticsLabel,
    }={}) {
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

    static rich(
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
            semanticsLabel,
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
    }

}


class RichText extends FlutterWidget {
    constructor ({
        key,
        text,
        textAlign,
        textDirection,
        softWrap,
        overflow,
        textScaleFactor,
        maxLines,
        locale,
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


class DefaultTextStyle extends FlutterWidget {
    constructor ({
        key,
        style,
        textAlign,
        softWrap,
        overflow,
        maxLines,
        child,
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


class TextStyle extends DartClass {
    constructor ({
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
        packages,    // 此处因为和 js 的关键字 package 冲突了，所以改成 packages
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

    static fromJson(mapObj) {
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
    }
}

class TextSpan extends FlutterWidget {
    constructor ({
        style,
        text,
        children,
        recognizer,
    } = {}) {
        super();

        this.style = style;
        this.text = text;
        this.children = children;
        this.recognizer = recognizer;
    }
}

TextDecoration = {
    none: 'TextDecoration.none',
    underline: 'TextDecoration.underline',
    overline: 'TextDecoration.overline',
    lineThrough: 'TextDecoration.lineThrough',
}

TextAlign = {
    left: "TextAlign.left",
    right: "TextAlign.right",
    center: "TextAlign.center",
    justify: "TextAlign.justify",
    start: "TextAlign.start",
    end: "TextAlign.end",
};


TextOverflow = {
    clip: "TextOverflow.clip",
    fade: "TextOverflow.fade",
    ellipsis: "TextOverflow.ellipsis",
};


class TextTheme extends DartClass {
    constructor ({
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
        overline,
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

    static fromJson(mapObj) {
        if (mapObj == null || mapObj == undefined) {
            return null;
        }

        let obj = new TextTheme({
            display4: TextStyle.fromJson(mapObj['display4']),
            display3: TextStyle.fromJson(mapObj['display3']),
            display2: TextStyle.fromJson(mapObj['display2']),
            display1: TextStyle.fromJson(mapObj['display1']),
            headline: TextStyle.fromJson(mapObj['headline']),
            title: TextStyle.fromJson(mapObj['title']),
            subhead: TextStyle.fromJson(mapObj['subhead']),
            body2: TextStyle.fromJson(mapObj['body2']),
            body1: TextStyle.fromJson(mapObj['body1']),
            caption: TextStyle.fromJson(mapObj['caption']),
            button: TextStyle.fromJson(mapObj['button']),
            subtitle: TextStyle.fromJson(mapObj['subtitle']),
            overline: TextStyle.fromJson(mapObj['overline']),
        });

        return obj;
    }
}

TextDecorationStyle = {
    dashed: "TextDecorationStyle.dashed",
    dotted: "TextDecorationStyle.dotted",
    double: "TextDecorationStyle.double",
    solid: "TextDecorationStyle.solid",
  }
      
TextBaseline = {
    alphabetic: "TextBaseline.alphabetic",
    ideographic: "TextBaseline.ideographic",
}
      

TextDirection = {
    rtl: "TextDirection.rtl",
    ltr: "TextDirection.ltr",
}

FontWeight = {
    bold: "FontWeight.bold",
    normal: "FontWeight.normal",
    w100: "FontWeight.w100",
    w200: "FontWeight.w200",
    w300: "FontWeight.w300",
    w400: "FontWeight.w500",
    w500: "FontWeight.w500",
    w600: "FontWeight.w600",
    w700: "FontWeight.w700",
    w800: "FontWeight.w800",
    w900: "FontWeight.w900",
}

FontStyle = {
    italic: "FontStyle.italic",
    normal: "FontStyle.normal",
}
  
class Shadow extends FlutterWidget {
    constructor ({
        color,
        offset,
        blurRadius,
    } = {}) {
        super();

        this.color = color;
        this.offset = offset;
        this.blurRadius = blurRadius;
    }

    static fromJson(mapObj) {

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
    }
}

class TextFormField extends FlutterWidget {
    constructor ({
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
        buildCounter,
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


class InputDecoration extends FlutterWidget {
    constructor ({
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
        alignLabelWithHint,
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

    static collapsed({
        hintText,
        hasFloatingPlaceholder,
        hintStyle,
        filled,
        fillColor,
        border,
        enabled,
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
    }
}

class TextEditingController extends FlutterWidget {
    constructor ({
        text,
    } = {}) {
        super();

        this.text = text;
    }
}

class TextInputType extends DartClass {
    constructor(

    ) {
        super();


    }

    static numberWithOptions(
        signed,
        decimal,
    ) {
        let v = new TextInputType();
        v.constructorName = "numberWithOptions";

        v.signed = signed;
        v.decimal = decimal;

        return v;
    }

    static text() {
        let v = new TextInputType();
        v.constructorName = "text";

        return v;
    }

    static multiline() {
        let v = new TextInputType();
        v.constructorName = "multiline";
        
        return v;
    }

    static number() {
        let v = new TextInputType();
        v.constructorName = "number";
        
        return v;
    }

    static phone() {
        let v = new TextInputType();
        v.constructorName = "phone";
        
        return v;
    }

    static datetime() {
        let v = new TextInputType();
        v.constructorName = "datetime";
        
        return v;
    }

    static emailAddress() {
        let v = new TextInputType();
        v.constructorName = "emailAddress";
            
        return v;
    }

    static url() {
        let v = new TextInputType();
        v.constructorName = "url";

        return v;
    }
}

TextCapitalization = {
    words: "TextCapitalization.words",
    sentences: "TextCapitalization.sentences",
    characters: "TextCapitalization.characters",
    none: "TextCapitalization.none",
};


TextInputAction = {
    none: "TextInputAction.none",
    unspecified: "TextInputAction.unspecified",
    done: "TextInputAction.done",
    go: "TextInputAction.go",
    search: "TextInputAction.search",
    send: "TextInputAction.send",
    next: "TextInputAction.next",
    previous: "TextInputAction.previous",
    continueAction: "TextInputAction.continueAction",
    join: "TextInputAction.join",
    route: "TextInputAction.route",
    emergencyCall: "TextInputAction.emergencyCall",
    newline: "TextInputAction.newline",
};

class UnderlineInputBorder extends FlutterWidget {
    constructor ({
        borderSide,
        borderRadius,
    } = {}) {
        super();

        this.borderSide = borderSide;
        this.borderRadius = borderRadius;
    }
}

class OutlineInputBorder extends FlutterWidget {
    constructor ({
        borderSide,
        borderRadius,
        gapPadding,
    } = {}) {
        super();

        this.borderSide = borderSide;
        this.borderRadius = borderRadius;
        this.gapPadding = gapPadding;
    }
}

class TextField extends FlutterWidget {
    constructor ({
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
        buildCounter,
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