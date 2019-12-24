'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const ui = dart_sdk.ui;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const text_style = packages__flutter__src__painting___network_image_web.src__painting__text_style;
const text_span = packages__flutter__src__painting___network_image_web.src__painting__text_span;
const packages__string_scanner__src__eager_span_scanner = require('packages/string_scanner/src/eager_span_scanner');
const string_scanner = packages__string_scanner__src__eager_span_scanner.src__string_scanner;
const syntax_highlighter = Object.create(dart.library);
const $substring = dartx.substring;
const $add = dartx.add;
const $startsWith = dartx.startsWith;
const $contains = dartx.contains;
const $length = dartx.length;
const $_get = dartx._get;
const $_set = dartx._set;
const $removeAt = dartx.removeAt;
const $isNotEmpty = dartx.isNotEmpty;
const $toUpperCase = dartx.toUpperCase;
let JSArrayOf_HighlightSpan = () => (JSArrayOf_HighlightSpan = dart.constFn(_interceptors.JSArray$(syntax_highlighter._HighlightSpan)))();
let JSArrayOfTextSpan = () => (JSArrayOfTextSpan = dart.constFn(_interceptors.JSArray$(text_span.TextSpan)))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C1() {
    return C1 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4278190080.0
    });
  },
  get C0() {
    return C0 = dart.const({
      __proto__: text_style.TextStyle.prototype,
      [TextStyle_fontFeatures]: null,
      [TextStyle_shadows]: null,
      [TextStyle_debugLabel]: null,
      [TextStyle_decorationThickness]: null,
      [TextStyle_decorationStyle]: null,
      [TextStyle_decorationColor]: null,
      [TextStyle_decoration]: null,
      [TextStyle_background]: null,
      [TextStyle_foreground]: null,
      [TextStyle_locale]: null,
      [TextStyle_height]: null,
      [TextStyle_textBaseline]: null,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: null,
      [TextStyle_fontSize]: null,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: null,
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C1 || CT.C1,
      [TextStyle_inherit]: true
    });
  },
  get C3() {
    return C3 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4279592384.0
    });
  },
  get C2() {
    return C2 = dart.const({
      __proto__: text_style.TextStyle.prototype,
      [TextStyle_fontFeatures]: null,
      [TextStyle_shadows]: null,
      [TextStyle_debugLabel]: null,
      [TextStyle_decorationThickness]: null,
      [TextStyle_decorationStyle]: null,
      [TextStyle_decorationColor]: null,
      [TextStyle_decoration]: null,
      [TextStyle_background]: null,
      [TextStyle_foreground]: null,
      [TextStyle_locale]: null,
      [TextStyle_height]: null,
      [TextStyle_textBaseline]: null,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: null,
      [TextStyle_fontSize]: null,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: null,
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C3 || CT.C3,
      [TextStyle_inherit]: true
    });
  },
  get C5() {
    return C5 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4288585374.0
    });
  },
  get C4() {
    return C4 = dart.const({
      __proto__: text_style.TextStyle.prototype,
      [TextStyle_fontFeatures]: null,
      [TextStyle_shadows]: null,
      [TextStyle_debugLabel]: null,
      [TextStyle_decorationThickness]: null,
      [TextStyle_decorationStyle]: null,
      [TextStyle_decorationColor]: null,
      [TextStyle_decoration]: null,
      [TextStyle_background]: null,
      [TextStyle_foreground]: null,
      [TextStyle_locale]: null,
      [TextStyle_height]: null,
      [TextStyle_textBaseline]: null,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: null,
      [TextStyle_fontSize]: null,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: null,
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C5 || CT.C5,
      [TextStyle_inherit]: true
    });
  },
  get C7() {
    return C7 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4288423856.0
    });
  },
  get C6() {
    return C6 = dart.const({
      __proto__: text_style.TextStyle.prototype,
      [TextStyle_fontFeatures]: null,
      [TextStyle_shadows]: null,
      [TextStyle_debugLabel]: null,
      [TextStyle_decorationThickness]: null,
      [TextStyle_decorationStyle]: null,
      [TextStyle_decorationColor]: null,
      [TextStyle_decoration]: null,
      [TextStyle_background]: null,
      [TextStyle_foreground]: null,
      [TextStyle_locale]: null,
      [TextStyle_height]: null,
      [TextStyle_textBaseline]: null,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: null,
      [TextStyle_fontSize]: null,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: null,
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C7 || CT.C7,
      [TextStyle_inherit]: true
    });
  },
  get C9() {
    return C9 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4282622023.0
    });
  },
  get C8() {
    return C8 = dart.const({
      __proto__: text_style.TextStyle.prototype,
      [TextStyle_fontFeatures]: null,
      [TextStyle_shadows]: null,
      [TextStyle_debugLabel]: null,
      [TextStyle_decorationThickness]: null,
      [TextStyle_decorationStyle]: null,
      [TextStyle_decorationColor]: null,
      [TextStyle_decoration]: null,
      [TextStyle_background]: null,
      [TextStyle_foreground]: null,
      [TextStyle_locale]: null,
      [TextStyle_height]: null,
      [TextStyle_textBaseline]: null,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: null,
      [TextStyle_fontSize]: null,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: null,
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C9 || CT.C9,
      [TextStyle_inherit]: true
    });
  },
  get C11() {
    return C11 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4283510184.0
    });
  },
  get C10() {
    return C10 = dart.const({
      __proto__: text_style.TextStyle.prototype,
      [TextStyle_fontFeatures]: null,
      [TextStyle_shadows]: null,
      [TextStyle_debugLabel]: null,
      [TextStyle_decorationThickness]: null,
      [TextStyle_decorationStyle]: null,
      [TextStyle_decorationColor]: null,
      [TextStyle_decoration]: null,
      [TextStyle_background]: null,
      [TextStyle_foreground]: null,
      [TextStyle_locale]: null,
      [TextStyle_height]: null,
      [TextStyle_textBaseline]: null,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: null,
      [TextStyle_fontSize]: null,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: null,
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C11 || CT.C11,
      [TextStyle_inherit]: true
    });
  },
  get C13() {
    return C13 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4286141768.0
    });
  },
  get C12() {
    return C12 = dart.const({
      __proto__: text_style.TextStyle.prototype,
      [TextStyle_fontFeatures]: null,
      [TextStyle_shadows]: null,
      [TextStyle_debugLabel]: null,
      [TextStyle_decorationThickness]: null,
      [TextStyle_decorationStyle]: null,
      [TextStyle_decorationColor]: null,
      [TextStyle_decoration]: null,
      [TextStyle_background]: null,
      [TextStyle_foreground]: null,
      [TextStyle_locale]: null,
      [TextStyle_height]: null,
      [TextStyle_textBaseline]: null,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: null,
      [TextStyle_fontSize]: null,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: null,
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C13 || CT.C13,
      [TextStyle_inherit]: true
    });
  },
  get C15() {
    return C15 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4294967295.0
    });
  },
  get C14() {
    return C14 = dart.const({
      __proto__: text_style.TextStyle.prototype,
      [TextStyle_fontFeatures]: null,
      [TextStyle_shadows]: null,
      [TextStyle_debugLabel]: null,
      [TextStyle_decorationThickness]: null,
      [TextStyle_decorationStyle]: null,
      [TextStyle_decorationColor]: null,
      [TextStyle_decoration]: null,
      [TextStyle_background]: null,
      [TextStyle_foreground]: null,
      [TextStyle_locale]: null,
      [TextStyle_height]: null,
      [TextStyle_textBaseline]: null,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: null,
      [TextStyle_fontSize]: null,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: null,
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C15 || CT.C15,
      [TextStyle_inherit]: true
    });
  },
  get C17() {
    return C17 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4286630852.0
    });
  },
  get C16() {
    return C16 = dart.const({
      __proto__: text_style.TextStyle.prototype,
      [TextStyle_fontFeatures]: null,
      [TextStyle_shadows]: null,
      [TextStyle_debugLabel]: null,
      [TextStyle_decorationThickness]: null,
      [TextStyle_decorationStyle]: null,
      [TextStyle_decorationColor]: null,
      [TextStyle_decoration]: null,
      [TextStyle_background]: null,
      [TextStyle_foreground]: null,
      [TextStyle_locale]: null,
      [TextStyle_height]: null,
      [TextStyle_textBaseline]: null,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: null,
      [TextStyle_fontSize]: null,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: null,
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C17 || CT.C17,
      [TextStyle_inherit]: true
    });
  },
  get C19() {
    return C19 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4278228616.0
    });
  },
  get C18() {
    return C18 = dart.const({
      __proto__: text_style.TextStyle.prototype,
      [TextStyle_fontFeatures]: null,
      [TextStyle_shadows]: null,
      [TextStyle_debugLabel]: null,
      [TextStyle_decorationThickness]: null,
      [TextStyle_decorationStyle]: null,
      [TextStyle_decorationColor]: null,
      [TextStyle_decoration]: null,
      [TextStyle_background]: null,
      [TextStyle_foreground]: null,
      [TextStyle_locale]: null,
      [TextStyle_height]: null,
      [TextStyle_textBaseline]: null,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: null,
      [TextStyle_fontSize]: null,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: null,
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C19 || CT.C19,
      [TextStyle_inherit]: true
    });
  },
  get C20() {
    return C20 = dart.constList(["abstract", "as", "assert", "async", "await", "break", "case", "catch", "class", "const", "continue", "default", "deferred", "do", "dynamic", "else", "enum", "export", "external", "extends", "factory", "false", "final", "finally", "for", "get", "if", "implements", "import", "in", "is", "library", "new", "null", "operator", "part", "rethrow", "return", "set", "static", "super", "switch", "sync", "this", "throw", "true", "try", "typedef", "var", "void", "while", "with", "yield"], core.String);
  },
  get C21() {
    return C21 = dart.constList(["int", "double", "num", "bool"], core.String);
  },
  get C22() {
    return C22 = dart.const({
      __proto__: syntax_highlighter._HighlightType.prototype,
      [_name$]: "_HighlightType.number",
      index: 0
    });
  },
  get C23() {
    return C23 = dart.const({
      __proto__: syntax_highlighter._HighlightType.prototype,
      [_name$]: "_HighlightType.comment",
      index: 1
    });
  },
  get C24() {
    return C24 = dart.const({
      __proto__: syntax_highlighter._HighlightType.prototype,
      [_name$]: "_HighlightType.keyword",
      index: 2
    });
  },
  get C25() {
    return C25 = dart.const({
      __proto__: syntax_highlighter._HighlightType.prototype,
      [_name$]: "_HighlightType.string",
      index: 3
    });
  },
  get C26() {
    return C26 = dart.const({
      __proto__: syntax_highlighter._HighlightType.prototype,
      [_name$]: "_HighlightType.punctuation",
      index: 4
    });
  },
  get C27() {
    return C27 = dart.const({
      __proto__: syntax_highlighter._HighlightType.prototype,
      [_name$]: "_HighlightType.klass",
      index: 5
    });
  },
  get C28() {
    return C28 = dart.const({
      __proto__: syntax_highlighter._HighlightType.prototype,
      [_name$]: "_HighlightType.constant",
      index: 6
    });
  },
  get C29() {
    return C29 = dart.constList([C22 || CT.C22, C23 || CT.C23, C24 || CT.C24, C25 || CT.C25, C26 || CT.C26, C27 || CT.C27, C28 || CT.C28], syntax_highlighter._HighlightType);
  }
});
const TextStyle_fontFeatures = dart.privateName(text_style, "TextStyle.fontFeatures");
const TextStyle_shadows = dart.privateName(text_style, "TextStyle.shadows");
const TextStyle_debugLabel = dart.privateName(text_style, "TextStyle.debugLabel");
const TextStyle_decorationThickness = dart.privateName(text_style, "TextStyle.decorationThickness");
const TextStyle_decorationStyle = dart.privateName(text_style, "TextStyle.decorationStyle");
const TextStyle_decorationColor = dart.privateName(text_style, "TextStyle.decorationColor");
const TextStyle_decoration = dart.privateName(text_style, "TextStyle.decoration");
const TextStyle_background = dart.privateName(text_style, "TextStyle.background");
const TextStyle_foreground = dart.privateName(text_style, "TextStyle.foreground");
const TextStyle_locale = dart.privateName(text_style, "TextStyle.locale");
const TextStyle_height = dart.privateName(text_style, "TextStyle.height");
const TextStyle_textBaseline = dart.privateName(text_style, "TextStyle.textBaseline");
const TextStyle_wordSpacing = dart.privateName(text_style, "TextStyle.wordSpacing");
const TextStyle_letterSpacing = dart.privateName(text_style, "TextStyle.letterSpacing");
const TextStyle_fontStyle = dart.privateName(text_style, "TextStyle.fontStyle");
const TextStyle_fontWeight = dart.privateName(text_style, "TextStyle.fontWeight");
const TextStyle_fontSize = dart.privateName(text_style, "TextStyle.fontSize");
const TextStyle__package = dart.privateName(text_style, "TextStyle._package");
const TextStyle__fontFamilyFallback = dart.privateName(text_style, "TextStyle._fontFamilyFallback");
const TextStyle_fontFamily = dart.privateName(text_style, "TextStyle.fontFamily");
const TextStyle_backgroundColor = dart.privateName(text_style, "TextStyle.backgroundColor");
const Color_value = dart.privateName(ui, "Color.value");
let C1;
const TextStyle_color = dart.privateName(text_style, "TextStyle.color");
const TextStyle_inherit = dart.privateName(text_style, "TextStyle.inherit");
let C0;
let C3;
let C2;
let C5;
let C4;
let C7;
let C6;
let C9;
let C8;
let C11;
let C10;
let C13;
let C12;
let C15;
let C14;
let C17;
let C16;
let C19;
let C18;
const baseStyle$ = dart.privateName(syntax_highlighter, "SyntaxHighlighterStyle.baseStyle");
const numberStyle$ = dart.privateName(syntax_highlighter, "SyntaxHighlighterStyle.numberStyle");
const commentStyle$ = dart.privateName(syntax_highlighter, "SyntaxHighlighterStyle.commentStyle");
const keywordStyle$ = dart.privateName(syntax_highlighter, "SyntaxHighlighterStyle.keywordStyle");
const stringStyle$ = dart.privateName(syntax_highlighter, "SyntaxHighlighterStyle.stringStyle");
const punctuationStyle$ = dart.privateName(syntax_highlighter, "SyntaxHighlighterStyle.punctuationStyle");
const classStyle$ = dart.privateName(syntax_highlighter, "SyntaxHighlighterStyle.classStyle");
const constantStyle$ = dart.privateName(syntax_highlighter, "SyntaxHighlighterStyle.constantStyle");
syntax_highlighter.SyntaxHighlighterStyle = class SyntaxHighlighterStyle extends core.Object {
  get baseStyle() {
    return this[baseStyle$];
  }
  set baseStyle(value) {
    super.baseStyle = value;
  }
  get numberStyle() {
    return this[numberStyle$];
  }
  set numberStyle(value) {
    super.numberStyle = value;
  }
  get commentStyle() {
    return this[commentStyle$];
  }
  set commentStyle(value) {
    super.commentStyle = value;
  }
  get keywordStyle() {
    return this[keywordStyle$];
  }
  set keywordStyle(value) {
    super.keywordStyle = value;
  }
  get stringStyle() {
    return this[stringStyle$];
  }
  set stringStyle(value) {
    super.stringStyle = value;
  }
  get punctuationStyle() {
    return this[punctuationStyle$];
  }
  set punctuationStyle(value) {
    super.punctuationStyle = value;
  }
  get classStyle() {
    return this[classStyle$];
  }
  set classStyle(value) {
    super.classStyle = value;
  }
  get constantStyle() {
    return this[constantStyle$];
  }
  set constantStyle(value) {
    super.constantStyle = value;
  }
  static lightThemeStyle() {
    return new syntax_highlighter.SyntaxHighlighterStyle.new({baseStyle: C0 || CT.C0, numberStyle: C2 || CT.C2, commentStyle: C4 || CT.C4, keywordStyle: C6 || CT.C6, stringStyle: C8 || CT.C8, punctuationStyle: C0 || CT.C0, classStyle: C10 || CT.C10, constantStyle: C12 || CT.C12});
  }
  static darkThemeStyle() {
    return new syntax_highlighter.SyntaxHighlighterStyle.new({baseStyle: C14 || CT.C14, numberStyle: C2 || CT.C2, commentStyle: C4 || CT.C4, keywordStyle: C16 || CT.C16, stringStyle: C18 || CT.C18, punctuationStyle: C14 || CT.C14, classStyle: C18 || CT.C18, constantStyle: C12 || CT.C12});
  }
};
(syntax_highlighter.SyntaxHighlighterStyle.new = function(opts) {
  let baseStyle = opts && 'baseStyle' in opts ? opts.baseStyle : null;
  let numberStyle = opts && 'numberStyle' in opts ? opts.numberStyle : null;
  let commentStyle = opts && 'commentStyle' in opts ? opts.commentStyle : null;
  let keywordStyle = opts && 'keywordStyle' in opts ? opts.keywordStyle : null;
  let stringStyle = opts && 'stringStyle' in opts ? opts.stringStyle : null;
  let punctuationStyle = opts && 'punctuationStyle' in opts ? opts.punctuationStyle : null;
  let classStyle = opts && 'classStyle' in opts ? opts.classStyle : null;
  let constantStyle = opts && 'constantStyle' in opts ? opts.constantStyle : null;
  this[baseStyle$] = baseStyle;
  this[numberStyle$] = numberStyle;
  this[commentStyle$] = commentStyle;
  this[keywordStyle$] = keywordStyle;
  this[stringStyle$] = stringStyle;
  this[punctuationStyle$] = punctuationStyle;
  this[classStyle$] = classStyle;
  this[constantStyle$] = constantStyle;
  ;
}).prototype = syntax_highlighter.SyntaxHighlighterStyle.prototype;
dart.addTypeTests(syntax_highlighter.SyntaxHighlighterStyle);
dart.setLibraryUri(syntax_highlighter.SyntaxHighlighterStyle, "package:flutter_gallery/gallery/syntax_highlighter.dart");
dart.setFieldSignature(syntax_highlighter.SyntaxHighlighterStyle, () => ({
  __proto__: dart.getFields(syntax_highlighter.SyntaxHighlighterStyle.__proto__),
  baseStyle: dart.finalFieldType(text_style.TextStyle),
  numberStyle: dart.finalFieldType(text_style.TextStyle),
  commentStyle: dart.finalFieldType(text_style.TextStyle),
  keywordStyle: dart.finalFieldType(text_style.TextStyle),
  stringStyle: dart.finalFieldType(text_style.TextStyle),
  punctuationStyle: dart.finalFieldType(text_style.TextStyle),
  classStyle: dart.finalFieldType(text_style.TextStyle),
  constantStyle: dart.finalFieldType(text_style.TextStyle)
}));
syntax_highlighter.SyntaxHighlighter = class SyntaxHighlighter extends core.Object {};
(syntax_highlighter.SyntaxHighlighter.new = function() {
  ;
}).prototype = syntax_highlighter.SyntaxHighlighter.prototype;
dart.addTypeTests(syntax_highlighter.SyntaxHighlighter);
dart.setLibraryUri(syntax_highlighter.SyntaxHighlighter, "package:flutter_gallery/gallery/syntax_highlighter.dart");
const _src = dart.privateName(syntax_highlighter, "_src");
const _scanner = dart.privateName(syntax_highlighter, "_scanner");
const _spans = dart.privateName(syntax_highlighter, "_spans");
const _style$ = dart.privateName(syntax_highlighter, "_style");
const _generateSpans = dart.privateName(syntax_highlighter, "_generateSpans");
const _firstLetterIsUpperCase = dart.privateName(syntax_highlighter, "_firstLetterIsUpperCase");
const _simplify = dart.privateName(syntax_highlighter, "_simplify");
let C20;
let C21;
syntax_highlighter.DartSyntaxHighlighter = class DartSyntaxHighlighter extends syntax_highlighter.SyntaxHighlighter {
  format(src) {
    this[_src] = src;
    this[_scanner] = new string_scanner.StringScanner.new(this[_src]);
    if (dart.test(this[_generateSpans]())) {
      let formattedText = JSArrayOfTextSpan().of([]);
      let currentPosition = 0;
      for (let span of this[_spans]) {
        if (currentPosition != span.start) formattedText[$add](new text_span.TextSpan.new({text: this[_src][$substring](currentPosition, span.start)}));
        formattedText[$add](new text_span.TextSpan.new({style: span.textStyle(this[_style$]), text: span.textForSpan(this[_src])}));
        currentPosition = span.end;
      }
      if (currentPosition !== this[_src].length) formattedText[$add](new text_span.TextSpan.new({text: this[_src][$substring](currentPosition, this[_src].length)}));
      return new text_span.TextSpan.new({style: this[_style$].baseStyle, children: formattedText});
    } else {
      return new text_span.TextSpan.new({style: this[_style$].baseStyle, text: src});
    }
  }
  [_generateSpans]() {
    let lastLoopPosition = this[_scanner].position;
    while (!dart.test(this[_scanner].isDone)) {
      this[_scanner].scan(core.RegExp.new("\\s+"));
      if (dart.test(this[_scanner].scan(core.RegExp.new("/\\*(.|\\n)*\\*/")))) {
        this[_spans][$add](new syntax_highlighter._HighlightSpan.new(syntax_highlighter._HighlightType.comment, this[_scanner].lastMatch.start, this[_scanner].lastMatch.end));
        continue;
      }
      if (dart.test(this[_scanner].scan("//"))) {
        let startComment = this[_scanner].lastMatch.start;
        let eof = false;
        let endComment = null;
        if (dart.test(this[_scanner].scan(core.RegExp.new(".*\\n")))) {
          endComment = dart.notNull(this[_scanner].lastMatch.end) - 1;
        } else {
          eof = true;
          endComment = this[_src].length;
        }
        this[_spans][$add](new syntax_highlighter._HighlightSpan.new(syntax_highlighter._HighlightType.comment, startComment, endComment));
        if (eof) break;
        continue;
      }
      if (dart.test(this[_scanner].scan(core.RegExp.new("r\".*\"")))) {
        this[_spans][$add](new syntax_highlighter._HighlightSpan.new(syntax_highlighter._HighlightType.string, this[_scanner].lastMatch.start, this[_scanner].lastMatch.end));
        continue;
      }
      if (dart.test(this[_scanner].scan(core.RegExp.new("r'.*'")))) {
        this[_spans][$add](new syntax_highlighter._HighlightSpan.new(syntax_highlighter._HighlightType.string, this[_scanner].lastMatch.start, this[_scanner].lastMatch.end));
        continue;
      }
      if (dart.test(this[_scanner].scan(core.RegExp.new("\"\"\"(?:[^\"\\\\]|\\\\(.|\\n))*\"\"\"")))) {
        this[_spans][$add](new syntax_highlighter._HighlightSpan.new(syntax_highlighter._HighlightType.string, this[_scanner].lastMatch.start, this[_scanner].lastMatch.end));
        continue;
      }
      if (dart.test(this[_scanner].scan(core.RegExp.new("'''(?:[^'\\\\]|\\\\(.|\\n))*'''")))) {
        this[_spans][$add](new syntax_highlighter._HighlightSpan.new(syntax_highlighter._HighlightType.string, this[_scanner].lastMatch.start, this[_scanner].lastMatch.end));
        continue;
      }
      if (dart.test(this[_scanner].scan(core.RegExp.new("\"(?:[^\"\\\\]|\\\\.)*\"")))) {
        this[_spans][$add](new syntax_highlighter._HighlightSpan.new(syntax_highlighter._HighlightType.string, this[_scanner].lastMatch.start, this[_scanner].lastMatch.end));
        continue;
      }
      if (dart.test(this[_scanner].scan(core.RegExp.new("'(?:[^'\\\\]|\\\\.)*'")))) {
        this[_spans][$add](new syntax_highlighter._HighlightSpan.new(syntax_highlighter._HighlightType.string, this[_scanner].lastMatch.start, this[_scanner].lastMatch.end));
        continue;
      }
      if (dart.test(this[_scanner].scan(core.RegExp.new("\\d+\\.\\d+")))) {
        this[_spans][$add](new syntax_highlighter._HighlightSpan.new(syntax_highlighter._HighlightType.number, this[_scanner].lastMatch.start, this[_scanner].lastMatch.end));
        continue;
      }
      if (dart.test(this[_scanner].scan(core.RegExp.new("\\d+")))) {
        this[_spans][$add](new syntax_highlighter._HighlightSpan.new(syntax_highlighter._HighlightType.number, this[_scanner].lastMatch.start, this[_scanner].lastMatch.end));
        continue;
      }
      if (dart.test(this[_scanner].scan(core.RegExp.new("[\\[\\]{}().!=<>&\\|\\?\\+\\-\\*/%\\^~;:,]")))) {
        this[_spans][$add](new syntax_highlighter._HighlightSpan.new(syntax_highlighter._HighlightType.punctuation, this[_scanner].lastMatch.start, this[_scanner].lastMatch.end));
        continue;
      }
      if (dart.test(this[_scanner].scan(core.RegExp.new("@\\w+")))) {
        this[_spans][$add](new syntax_highlighter._HighlightSpan.new(syntax_highlighter._HighlightType.keyword, this[_scanner].lastMatch.start, this[_scanner].lastMatch.end));
        continue;
      }
      if (dart.test(this[_scanner].scan(core.RegExp.new("\\w+")))) {
        let type = null;
        let word = this[_scanner].lastMatch._get(0);
        if (word[$startsWith]("_")) word = word[$substring](1);
        if (dart.test(syntax_highlighter.DartSyntaxHighlighter._keywords[$contains](word)))
          type = syntax_highlighter._HighlightType.keyword;
        else if (dart.test(syntax_highlighter.DartSyntaxHighlighter._builtInTypes[$contains](word)))
          type = syntax_highlighter._HighlightType.keyword;
        else if (dart.test(this[_firstLetterIsUpperCase](word)))
          type = syntax_highlighter._HighlightType.klass;
        else if (word.length >= 2 && word[$startsWith]("k") && dart.test(this[_firstLetterIsUpperCase](word[$substring](1)))) type = syntax_highlighter._HighlightType.constant;
        if (type != null) {
          this[_spans][$add](new syntax_highlighter._HighlightSpan.new(type, this[_scanner].lastMatch.start, this[_scanner].lastMatch.end));
        }
      }
      if (lastLoopPosition == this[_scanner].position) {
        return false;
      }
      lastLoopPosition = this[_scanner].position;
    }
    this[_simplify]();
    return true;
  }
  [_simplify]() {
    for (let i = dart.notNull(this[_spans][$length]) - 2; i >= 0; i = i - 1) {
      if (dart.equals(this[_spans][$_get](i).type, this[_spans][$_get](i + 1).type) && this[_spans][$_get](i).end == this[_spans][$_get](i + 1).start) {
        this[_spans][$_set](i, new syntax_highlighter._HighlightSpan.new(this[_spans][$_get](i).type, this[_spans][$_get](i).start, this[_spans][$_get](i + 1).end));
        this[_spans][$removeAt](i + 1);
      }
    }
  }
  [_firstLetterIsUpperCase](str) {
    if (str[$isNotEmpty]) {
      let first = str[$substring](0, 1);
      return first === first[$toUpperCase]();
    }
    return false;
  }
};
(syntax_highlighter.DartSyntaxHighlighter.new = function(_style) {
  if (_style === void 0) _style = null;
  this[_src] = null;
  this[_scanner] = null;
  this[_spans] = null;
  this[_style$] = _style;
  this[_spans] = JSArrayOf_HighlightSpan().of([]);
  this[_style$] == null ? this[_style$] = syntax_highlighter.SyntaxHighlighterStyle.darkThemeStyle() : null;
}).prototype = syntax_highlighter.DartSyntaxHighlighter.prototype;
dart.addTypeTests(syntax_highlighter.DartSyntaxHighlighter);
dart.setMethodSignature(syntax_highlighter.DartSyntaxHighlighter, () => ({
  __proto__: dart.getMethods(syntax_highlighter.DartSyntaxHighlighter.__proto__),
  format: dart.fnType(text_span.TextSpan, [core.String]),
  [_generateSpans]: dart.fnType(core.bool, []),
  [_simplify]: dart.fnType(dart.void, []),
  [_firstLetterIsUpperCase]: dart.fnType(core.bool, [core.String])
}));
dart.setLibraryUri(syntax_highlighter.DartSyntaxHighlighter, "package:flutter_gallery/gallery/syntax_highlighter.dart");
dart.setFieldSignature(syntax_highlighter.DartSyntaxHighlighter, () => ({
  __proto__: dart.getFields(syntax_highlighter.DartSyntaxHighlighter.__proto__),
  [_style$]: dart.fieldType(syntax_highlighter.SyntaxHighlighterStyle),
  [_src]: dart.fieldType(core.String),
  [_scanner]: dart.fieldType(string_scanner.StringScanner),
  [_spans]: dart.fieldType(core.List$(syntax_highlighter._HighlightSpan))
}));
dart.defineLazy(syntax_highlighter.DartSyntaxHighlighter, {
  /*syntax_highlighter.DartSyntaxHighlighter._keywords*/get _keywords() {
    return C20 || CT.C20;
  },
  /*syntax_highlighter.DartSyntaxHighlighter._builtInTypes*/get _builtInTypes() {
    return C21 || CT.C21;
  }
});
const _name$ = dart.privateName(syntax_highlighter, "_name");
let C22;
let C23;
let C24;
let C25;
let C26;
let C27;
let C28;
let C29;
syntax_highlighter._HighlightType = class _HighlightType extends core.Object {
  toString() {
    return this[_name$];
  }
};
(syntax_highlighter._HighlightType.new = function(index, _name) {
  this.index = index;
  this[_name$] = _name;
  ;
}).prototype = syntax_highlighter._HighlightType.prototype;
dart.addTypeTests(syntax_highlighter._HighlightType);
dart.setLibraryUri(syntax_highlighter._HighlightType, "package:flutter_gallery/gallery/syntax_highlighter.dart");
dart.setFieldSignature(syntax_highlighter._HighlightType, () => ({
  __proto__: dart.getFields(syntax_highlighter._HighlightType.__proto__),
  index: dart.finalFieldType(core.int),
  [_name$]: dart.finalFieldType(core.String)
}));
dart.defineExtensionMethods(syntax_highlighter._HighlightType, ['toString']);
syntax_highlighter._HighlightType.number = C22 || CT.C22;
syntax_highlighter._HighlightType.comment = C23 || CT.C23;
syntax_highlighter._HighlightType.keyword = C24 || CT.C24;
syntax_highlighter._HighlightType.string = C25 || CT.C25;
syntax_highlighter._HighlightType.punctuation = C26 || CT.C26;
syntax_highlighter._HighlightType.klass = C27 || CT.C27;
syntax_highlighter._HighlightType.constant = C28 || CT.C28;
syntax_highlighter._HighlightType.values = C29 || CT.C29;
syntax_highlighter._HighlightSpan = class _HighlightSpan extends core.Object {
  textForSpan(src) {
    return src[$substring](this.start, this.end);
  }
  textStyle(style) {
    if (dart.equals(this.type, syntax_highlighter._HighlightType.number))
      return style.numberStyle;
    else if (dart.equals(this.type, syntax_highlighter._HighlightType.comment))
      return style.commentStyle;
    else if (dart.equals(this.type, syntax_highlighter._HighlightType.keyword))
      return style.keywordStyle;
    else if (dart.equals(this.type, syntax_highlighter._HighlightType.string))
      return style.stringStyle;
    else if (dart.equals(this.type, syntax_highlighter._HighlightType.punctuation))
      return style.punctuationStyle;
    else if (dart.equals(this.type, syntax_highlighter._HighlightType.klass))
      return style.classStyle;
    else if (dart.equals(this.type, syntax_highlighter._HighlightType.constant))
      return style.constantStyle;
    else
      return style.baseStyle;
  }
};
(syntax_highlighter._HighlightSpan.new = function(type, start, end) {
  this.type = type;
  this.start = start;
  this.end = end;
  ;
}).prototype = syntax_highlighter._HighlightSpan.prototype;
dart.addTypeTests(syntax_highlighter._HighlightSpan);
dart.setMethodSignature(syntax_highlighter._HighlightSpan, () => ({
  __proto__: dart.getMethods(syntax_highlighter._HighlightSpan.__proto__),
  textForSpan: dart.fnType(core.String, [core.String]),
  textStyle: dart.fnType(text_style.TextStyle, [syntax_highlighter.SyntaxHighlighterStyle])
}));
dart.setLibraryUri(syntax_highlighter._HighlightSpan, "package:flutter_gallery/gallery/syntax_highlighter.dart");
dart.setFieldSignature(syntax_highlighter._HighlightSpan, () => ({
  __proto__: dart.getFields(syntax_highlighter._HighlightSpan.__proto__),
  type: dart.finalFieldType(syntax_highlighter._HighlightType),
  start: dart.finalFieldType(core.int),
  end: dart.finalFieldType(core.int)
}));
dart.trackLibraries("packages/flutter_gallery/gallery/syntax_highlighter", {
  "package:flutter_gallery/gallery/syntax_highlighter.dart": syntax_highlighter
}, {
}, '{"version":3,"sourceRoot":"","sources":["syntax_highlighter.dart"],"names":[],"mappings":"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","file":"syntax_highlighter.ddc.js"}');
// Exports:
exports.gallery__syntax_highlighter = syntax_highlighter;

//# sourceMappingURL=syntax_highlighter.ddc.js.map
