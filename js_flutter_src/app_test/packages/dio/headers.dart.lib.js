// define(['dart_sdk',
//  '/packages/http_parser/src/media_type.dart.lib.js'],
//   function(dart_sdk, packages__http_parser__src__media_type) {

'use strict';
const dart_sdk = require("dart_sdk");
//let packages__http_parser__src__media_type = require('packages/dio/media_type.dart.lib.js');
const core = dart_sdk.core;
const _js_helper = dart_sdk._js_helper;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const media_type = {} //TODO: = packages__http_parser__src__media_type.src__media_type;
var headers = Object.create(dart.library);
var $trim = dartx.trim;
var $toLowerCase = dartx.toLowerCase;
var $map = dartx.map;
var $_get = dartx._get;
var $length = dartx.length;
var $first = dartx.first;
var $add = dartx.add;
var $join = dartx.join;
var $toString = dartx.toString;
var $toList = dartx.toList;
var $_set = dartx._set;
var $removeWhere = dartx.removeWhere;
var $remove = dartx.remove;
var $clear = dartx.clear;
var $keys = dartx.keys;
var $forEach = dartx.forEach;
var ListOfString = () => (ListOfString = dart.constFn(core.List$(core.String)))();
var IdentityMapOfString$ListOfString = () => (IdentityMapOfString$ListOfString = dart.constFn(_js_helper.IdentityMap$(core.String, ListOfString())))();
var MapEntryOfString$ListOfString = () => (MapEntryOfString$ListOfString = dart.constFn(core.MapEntry$(core.String, ListOfString())))();
var StringAndListOfStringToMapEntryOfString$ListOfString = () => (StringAndListOfStringToMapEntryOfString$ListOfString = dart.constFn(dart.fnType(MapEntryOfString$ListOfString(), [core.String, ListOfString()])))();
var dynamicToString = () => (dynamicToString = dart.constFn(dart.fnType(core.String, [dart.dynamic])))();
var JSArrayOfString = () => (JSArrayOfString = dart.constFn(_interceptors.JSArray$(core.String)))();
var StringTobool = () => (StringTobool = dart.constFn(dart.fnType(core.bool, [core.String])))();
var StringTovoid = () => (StringTovoid = dart.constFn(dart.fnType(dart.void, [core.String])))();
var StringAndListOfStringToNull = () => (StringAndListOfStringToNull = dart.constFn(dart.fnType(core.Null, [core.String, ListOfString()])))();
const CT = Object.create(null);
var L0 = "package:dio/src/headers.dart";
var _map = dart.privateName(headers, "_map");
headers.Headers = class Headers extends core.Object {
  get map() {
    return this[_map];
  }
  _get(name) {
    return this[_map][$_get](name[$trim]()[$toLowerCase]());
  }
  value(name) {
    let arr = this._get(name);
    if (arr == null) return null;
    if (arr[$length] === 1) return arr[$first];
    dart.throw(core.Exception.new("\"" + dart.str(name) + "\" header has more than one value, please use Headers[name]"));
  }
  add(name, value) {
    let arr = this._get(name);
    if (arr == null) return this.set(name, value);
    arr[$add](value);
    this.set(name, arr[$join](","));
  }
  set(name, value) {
    name = name[$trim]()[$toLowerCase]();
    if (core.List.is(value)) {
      this[_map][$_set](name, value[$map](core.String, dart.fn(e => dart.toString(e), dynamicToString()))[$toList]());
    } else {
      this[_map][$_set](name, JSArrayOfString().of([core.String.as(dart.dsend(value, 'trim', []))]));
    }
  }
  remove(name, value) {
    let arr = this._get(name);
    if (arr == null) return;
    arr[$removeWhere](dart.fn(v => v == value, StringTobool()));
  }
  removeAll(name) {
    this[_map][$remove](name);
  }
  clear() {
    this[_map][$clear]();
  }
  forEach(f) {
    this[_map][$keys][$forEach](dart.fn(key => f(key, this._get(key)), StringTovoid()));
  }
  toString() {
    let stringBuffer = new core.StringBuffer.new();
    this[_map][$forEach](dart.fn((key, value) => {
      value[$forEach](dart.fn(e => stringBuffer.writeln(dart.str(key) + ": " + dart.str(e)), StringTovoid()));
    }, StringAndListOfStringToNull()));
    return stringBuffer.toString();
  }
};
(headers.Headers.new = function () {
  this[_map] = new (IdentityMapOfString$ListOfString()).new();
  ;
}).prototype = headers.Headers.prototype;
(headers.Headers.fromMap = function (map) {
  this[_map] = map[$map](core.String, ListOfString(), dart.fn((k, v) => new (MapEntryOfString$ListOfString()).__(k[$trim]()[$toLowerCase](), v), StringAndListOfStringToMapEntryOfString$ListOfString()));
  ;
}).prototype = headers.Headers.prototype;
dart.addTypeTests(headers.Headers);
dart.addTypeCaches(headers.Headers);
dart.setMethodSignature(headers.Headers, () => ({
  __proto__: dart.getMethods(headers.Headers.__proto__),
  _get: dart.fnType(core.List$(core.String), [core.String]),
  value: dart.fnType(core.String, [core.String]),
  add: dart.fnType(dart.void, [core.String, core.String]),
  set: dart.fnType(dart.void, [core.String, dart.dynamic]),
  remove: dart.fnType(dart.void, [core.String, core.String]),
  removeAll: dart.fnType(dart.void, [core.String]),
  clear: dart.fnType(dart.void, []),
  forEach: dart.fnType(dart.void, [dart.fnType(dart.void, [core.String, core.List$(core.String)])])
}));
dart.setGetterSignature(headers.Headers, () => ({
  __proto__: dart.getGetters(headers.Headers.__proto__),
  map: core.Map$(core.String, core.List$(core.String))
}));
dart.setLibraryUri(headers.Headers, L0);
dart.setFieldSignature(headers.Headers, () => ({
  __proto__: dart.getFields(headers.Headers.__proto__),
  [_map]: dart.finalFieldType(core.Map$(core.String, core.List$(core.String)))
}));
dart.defineExtensionMethods(headers.Headers, ['toString']);
dart.defineLazy(headers.Headers, {
    /*headers.Headers.acceptHeader*/get acceptHeader() {
    return "accept";
  },
    /*headers.Headers.contentEncodingHeader*/get contentEncodingHeader() {
    return "content-encoding";
  },
    /*headers.Headers.contentLengthHeader*/get contentLengthHeader() {
    return "content-length";
  },
    /*headers.Headers.contentTypeHeader*/get contentTypeHeader() {
    return "content-type";
  },
    /*headers.Headers.wwwAuthenticateHeader*/get wwwAuthenticateHeader() {
    return "www-authenticate";
  },
    /*headers.Headers.jsonContentType*/get jsonContentType() {
    return "application/json; charset=utf-8";
  },
    /*headers.Headers.formUrlEncodedContentType*/get formUrlEncodedContentType() {
    return "application/x-www-form-urlencoded";
  },
  //   /*headers.Headers.jsonMimeType*/get jsonMimeType() {
  //   return media_type.MediaType.parse("application/json; charset=utf-8");
  // }
}, true);
dart.trackLibraries("packages/dio/src/headers.dart", {
  "package:dio/src/headers.dart": headers
}, {
}, '{"version":3,"sourceRoot":"","sources":["headers.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;AAoBuC;IAAI;SAST;AAC9B,YAAO,AAAI,mBAAC,AAAK,AAAO,IAAR;IAClB;UAMoB;AACd,gBAAU,UAAC,IAAI;AACnB,UAAI,AAAI,GAAD,IAAI,MAAM,MAAO;AACxB,UAAI,AAAI,AAAO,GAAR,cAAW,GAAG,MAAO,AAAI,IAAD;AAEwC,MADvE,WAAM,mBACF,AAAkE,gBAA/D,IAAI;IACb;QAIgB,MAAa;AACvB,gBAAU,UAAC,IAAI;AACnB,UAAI,AAAI,GAAD,IAAI,MAAM,MAAO,UAAI,IAAI,EAAE,KAAK;AACzB,MAAd,AAAI,GAAD,OAAK,KAAK;AACW,MAAxB,SAAI,IAAI,EAAE,AAAI,GAAD,QAAM;IACrB;QAIgB,MAAc;AACI,MAAhC,OAAO,AAAK,AAAO,IAAR;AACX,UAAU,aAAN,KAAK;AACqD,QAA5D,AAAI,kBAAC,IAAI,EAAI,AAAM,AAAiC,KAAlC,oBAAa,QAAC,KAAQ,cAAF,CAAC;;AAEZ,QAA3B,AAAI,kBAAC,IAAI,EAAI,qCAAO,WAAN,KAAK;;IAEvB;WAGmB,MAAa;AAC1B,gBAAU,UAAC,IAAI;AACnB,UAAI,AAAI,GAAD,IAAI,MAAM;AACiB,MAAlC,AAAI,GAAD,eAAa,QAAC,KAAM,AAAE,CAAD,IAAI,KAAK;IACnC;cAGsB;AACH,MAAjB,AAAK,oBAAO,IAAI;IAClB;;AAGc,MAAZ,AAAK;IACP;YAKmC;AACY,MAA7C,AAAK,AAAK,4BAAQ,QAAC,OAAQ,AAAC,CAAA,CAAC,GAAG,EAAM,UAAC,GAAG;IAC5C;;AAIM,yBAAe;AAGjB,MAFF,AAAK,qBAAQ,SAAC,KAAK;AACqC,QAAtD,AAAM,KAAD,WAAS,QAAC,KAAM,AAAa,YAAD,SAAmB,SAAR,GAAG,oBAAG,CAAC;;AAErD,YAAO,AAAa,aAAD;IACrB;;;IAzEiB,aAAwB;;EAAE;sCAED;IAC/B,aAAE,AAAI,GAAD,oCAAK,SAAC,GAAG,MAAM,yCAAS,AAAE,AAAO,CAAR,2BAAuB,CAAC;;EAAE;;;;;;;;;;;;;;;;;;;;;;;;;MAnBtD,4BAAY;;;MACZ,qCAAqB;;;MACrB,mCAAmB;;;MACnB,iCAAiB;;;MACjB,qCAAqB;;;MAGrB,+BAAe;;;MACf,yCAAyB;;;MAEzB,4BAAY;YAAa","file":"../../../../../../../../../../../../../packages/dio/src/headers.dart.lib.js"}');

exports.src__headers = headers;


//# sourceMappingURL=headers.dart.lib.js.map
