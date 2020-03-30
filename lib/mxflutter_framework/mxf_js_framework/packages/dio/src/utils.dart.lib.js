//define(['dart_sdk'], function(dart_sdk) {
const dart_sdk = require("dart_sdk");
'use strict';
const core = dart_sdk.core;
const async = dart_sdk.async;
const convert = dart_sdk.convert;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
var utils = Object.create(dart.library);
var $length = dartx.length;
var $_get = dartx._get;
var $forEach = dartx.forEach;
var VoidTovoid = () => (VoidTovoid = dart.constFn(dart.fnType(dart.void, [])))();
var String__ToString = () => (String__ToString = dart.constFn(dart.fnType(core.String, [core.String], { encoding: convert.Encoding }, {})))();
var dynamicTodynamic = () => (dynamicTodynamic = dart.constFn(dart.fnType(dart.dynamic, [dart.dynamic])))();
var dynamicAnddynamicToNull = () => (dynamicAnddynamicToNull = dart.constFn(dart.fnType(core.Null, [dart.dynamic, dart.dynamic])))();
var dynamicAndStringTovoid = () => (dynamicAndStringTovoid = dart.constFn(dart.fnType(dart.void, [dart.dynamic, core.String])))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: convert.Latin1Codec.prototype,
      [Latin1Codec__allowInvalid]: false
    });
  },
  get C1() {
    return C1 = dart.fn(core.Uri.encodeQueryComponent, String__ToString());
  }
}, false);
var Latin1Codec__allowInvalid = dart.privateName(convert, "Latin1Codec._allowInvalid");
var C0;
var C1;
utils.isPlainAscii = function isPlainAscii(string) {
  return utils._ASCII_ONLY.hasMatch(string);
};
utils.writeStreamToSink = function writeStreamToSink(stream, sink) {
  let completer = async.Completer.new();
  stream.listen(dart.bind(sink, 'add'), { onError: dart.bind(sink, 'addError'), onDone: dart.fn(() => completer.complete(), VoidTovoid()) });
  return completer.future;
};
utils.encodingForCharset = function encodingForCharset(charset, fallback = C0 || CT.C0) {
  let t0;
  if (charset == null) return fallback;
  let encoding = convert.Encoding.getByName(charset);
  t0 = encoding;
  return t0 == null ? fallback : t0;
};
utils.encodeMap = function encodeMap(data, handler, opts) {
  let encode = opts && 'encode' in opts ? opts.encode : true;
  let urlData = new core.StringBuffer.new("");
  let first = true;
  let leftBracket = dart.test(encode) ? "%5B" : "[";
  let rightBracket = dart.test(encode) ? "%5D" : "]";
  let encodeComponent = dart.test(encode) ? C1 || CT.C1 : dart.fn(e => e, dynamicTodynamic());
  function urlEncode(sub, path) {
    if (core.List.is(sub)) {
      for (let i = 0; i < dart.notNull(sub[$length]); i = i + 1) {
        urlEncode(sub[$_get](i), dart.str(path) + leftBracket + dart.str(core.Map.is(sub[$_get](i)) || core.List.is(sub[$_get](i)) ? i : "") + rightBracket);
      }
    } else if (core.Map.is(sub)) {
      sub[$forEach](dart.fn((k, v) => {
        if (path === "") {
          urlEncode(v, dart.str(encodeComponent(core.String.as(k))));
        } else {
          urlEncode(v, dart.str(path) + leftBracket + dart.str(encodeComponent(core.String.as(k))) + rightBracket);
        }
      }, dynamicAnddynamicToNull()));
    } else {
      let str = handler(path, sub);
      let isNotEmpty = str != null && dart.dtest(dart.dload(dart.dsend(str, 'trim', []), 'isNotEmpty'));
      if (!first && isNotEmpty) {
        urlData.write("&");
      }
      first = false;
      if (isNotEmpty) {
        urlData.write(str);
      }
    }
  }
  dart.fn(urlEncode, dynamicAndStringTovoid());
  urlEncode(data, "");
  return urlData.toString();
};
dart.defineLazy(utils, {
    /*utils._ASCII_ONLY*/get _ASCII_ONLY() {
    return core.RegExp.new("^[\\x00-\\x7F]+$");
  }
}, true);
dart.trackLibraries("packages/dio/src/utils.dart", {
  "package:dio/src/utils.dart": utils
}, {
}, '{"version":3,"sourceRoot":"","sources":["utils.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;6CAUyB;AAAW,UAAA,AAAY,4BAAS,MAAM;EAAC;uDAKhC,QAAkB;AAC5C,oBAAY;AAE+C,IAD/D,AAAO,MAAD,QAAa,UAAL,IAAI,oBACA,UAAL,IAAI,uBAAmB,cAAM,AAAU,SAAD;AACnD,UAAO,AAAU,UAAD;EAClB;yDAKmC,SAAmB;;AACpD,QAAI,AAAQ,OAAD,IAAI,MAAM,MAAO,SAAQ;AAChC,mBAAoB,2BAAU,OAAO;AACzC,SAAO,QAAQ;iBAAR,OAAY,QAAQ;EAC7B;uCAIiB,MAAuB;QAAe;AACjD,kBAAU,0BAAa;AACvB,gBAAQ;AACR,gCAAc,MAAM,IAAG,QAAQ;AAC/B,iCAAe,MAAM,IAAG,QAAQ;AAChC,oCAAkB,MAAM,kBAA8B,QAAC,KAAM,CAAC;AAClE,aAAK,UAAkB,KAAY;AACjC,UAAQ,aAAJ,GAAG;AACL,iBAAS,IAAI,GAAG,AAAE,CAAD,gBAAG,AAAI,GAAD,YAAS,IAAA,AAAC,CAAA;AAEmD,UADlF,AAAS,SAAA,CAAC,AAAG,GAAA,QAAC,CAAC,GACkE,SAA3E,IAAI,IAAC,WAAW,YAAU,AAAO,YAAd,AAAG,GAAA,QAAC,CAAC,MAAmB,aAAP,AAAG,GAAA,QAAC,CAAC,KAAa,CAAC,GAAG,MAAI,YAAY;;YAE7E,KAAQ,YAAJ,GAAG;AAOV,QANF,AAAI,GAAD,WAAS,SAAC,GAAG;AACd,cAAI,AAAK,IAAD,KAAI;AAC2B,YAArC,AAAS,SAAA,CAAC,CAAC,EAAyB,SAApB,AAAe,eAAA,gBAAC,CAAC;;AAEkC,YAAnE,AAAS,SAAA,CAAC,CAAC,EAAuD,SAAnD,IAAI,IAAC,WAAW,YAAE,AAAe,eAAA,gBAAC,CAAC,MAAG,YAAY;;;;AAIjE,kBAAM,AAAO,OAAA,CAAC,IAAI,EAAE,GAAG;AACvB,yBAAa,AAAY,GAAT,IAAI,mBAAmB,WAAP,WAAJ,GAAG;AACnC,aAAK,KAAK,IAAI,UAAU;AACJ,UAAlB,AAAQ,OAAD,OAAO;;AAEH,QAAb,QAAQ;AACR,YAAI,UAAU;AACM,UAAlB,AAAQ,OAAD,OAAO,GAAG;;;;;AAKJ,IAAnB,AAAS,SAAA,CAAC,IAAI,EAAE;AAChB,UAAO,AAAQ,QAAD;EAChB;;MA9Da,iBAAW;YAAG,iBAAO","file":"../../../../../../../../../../../../../packages/dio/src/utils.dart.lib.js"}');
// Exports:
// return {
//   src__utils: utils
// };

exports.src__utils = utils;
//# sourceMappingURL=utils.dart.lib.js.map
