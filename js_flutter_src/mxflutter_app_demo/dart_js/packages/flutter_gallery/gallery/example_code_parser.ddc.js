'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const async = dart_sdk.async;
const _js_helper = dart_sdk._js_helper;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const example_code_parser = Object.create(dart.library);
const $_get = dartx._get;
const $split = dartx.split;
const $startsWith = dartx.startsWith;
const $substring = dartx.substring;
const $trim = dartx.trim;
const $join = dartx.join;
const $_set = dartx._set;
const $trimRight = dartx.trimRight;
const $add = dartx.add;
let IdentityMapOfString$String = () => (IdentityMapOfString$String = dart.constFn(_js_helper.IdentityMap$(core.String, core.String)))();
let JSArrayOfString = () => (JSArrayOfString = dart.constFn(_interceptors.JSArray$(core.String)))();
const CT = Object.create(null);
example_code_parser.getExampleCode = function getExampleCode(tag, bundle) {
  return async.async(core.String, function* getExampleCode() {
    if (example_code_parser._exampleCode == null) yield example_code_parser._parseExampleCode(bundle);
    return example_code_parser._exampleCode[$_get](tag);
  });
};
example_code_parser._parseExampleCode = function _parseExampleCode(bundle) {
  return async.async(dart.void, function* _parseExampleCode() {
    let t0;
    let code = (t0 = (yield bundle.loadString("lib/gallery/example_code.dart")), t0 == null ? "// lib/gallery/example_code.dart not found\n" : t0);
    example_code_parser._exampleCode = new (IdentityMapOfString$String()).new();
    let lines = code[$split]("\n");
    let codeBlock = null;
    let codeTag = null;
    for (let line of lines) {
      if (codeBlock == null) {
        if (line[$startsWith]("// START ")) {
          codeBlock = JSArrayOfString().of([]);
          codeTag = line[$substring]("// START ".length)[$trim]();
        } else {
        }
      } else {
        if (line[$startsWith]("// END")) {
          example_code_parser._exampleCode[$_set](codeTag, codeBlock[$join]("\n"));
          codeBlock = null;
          codeTag = null;
        } else {
          codeBlock[$add](line[$trimRight]());
        }
      }
    }
  });
};
dart.defineLazy(example_code_parser, {
  /*example_code_parser._kStartTag*/get _kStartTag() {
    return "// START ";
  },
  /*example_code_parser._kEndTag*/get _kEndTag() {
    return "// END";
  },
  /*example_code_parser._exampleCode*/get _exampleCode() {
    return null;
  },
  set _exampleCode(_) {}
});
dart.trackLibraries("packages/flutter_gallery/gallery/example_code_parser", {
  "package:flutter_gallery/gallery/example_code_parser.dart": example_code_parser
}, {
}, '{"version":3,"sourceRoot":"","sources":["example_code_parser.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;6DAaqC,KAAiB;AAAzB;AAC3B,QAAI,AAAa,oCAAG,MAClB,AAA+B,MAAzB,sCAAkB,MAAM;AAChC,UAAO,AAAY,yCAAC,GAAG;EACzB;;mEAE2C;AAAb;;AACf,gBAAgE,MAAzD,MAAM,AAAO,MAAD,YAAY,yCAAxB,OAClB;AAC+B,IAAjC,mCAA+B;AAEZ,gBAAQ,AAAK,IAAD,SAAO;AAEzB;AACN;AAEP,aAAY,OAAQ,MAAK;AACvB,UAAI,AAAU,SAAD,IAAI;AAEf,YAAI,AAAK,IAAD;AAEgB,UAAtB,YAAoB;AAC8B,UAAlD,UAAU,AAAK,AAA6B,IAA9B,aAAsB;;;;AAMtC,YAAI,AAAK,IAAD;AAEsC,UAA5C,AAAY,wCAAC,OAAO,EAAI,AAAU,SAAD,QAAM;AACvB,UAAhB,YAAY;AACE,UAAd,UAAU;;AAKqB,UAA/B,AAAU,SAAD,OAAK,AAAK,IAAD;;;;EAI1B;;;IA9Ca,8BAAU;;;IACV,4BAAQ;;;IAED,gCAAY","file":"example_code_parser.ddc.js"}');
// Exports:
exports.gallery__example_code_parser = example_code_parser;

//# sourceMappingURL=example_code_parser.ddc.js.map
