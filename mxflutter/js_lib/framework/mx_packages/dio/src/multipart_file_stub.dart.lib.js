//define(['dart_sdk', '/packages/http_parser/src/media_type.dart.lib.js', 
//'/packages/dio/src/utils.dart.lib.js'], function(dart_sdk, packages__http_parser__src__media_type, packages__dio__src__utils) {

'use strict';
const dart_sdk = require("dart_sdk");
//let packages__http_parser__src__media_type = require('packages/dio/media_type.dart.lib.js');
let packages__dio__src__utils = require('packages/dio/src/utils.dart.lib.js');
const core = dart_sdk.core;
const async = dart_sdk.async;
const _interceptors = dart_sdk._interceptors;
const convert = dart_sdk.convert;
const _js_helper = dart_sdk._js_helper;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const media_type = {};//TODO:packages__http_parser__src__media_type.src__media_type;
const utils = packages__dio__src__utils.src__utils;
var multipart_file_stub = Object.create(dart.library);
var multipart_file = Object.create(dart.library);
var $length = dartx.length;
var $_get = dartx._get;
var ListOfint = () => (ListOfint = dart.constFn(core.List$(core.int)))();
var StreamOfListOfint = () => (StreamOfListOfint = dart.constFn(async.Stream$(ListOfint())))();
var JSArrayOfListOfint = () => (JSArrayOfListOfint = dart.constFn(_interceptors.JSArray$(ListOfint())))();
var IdentityMapOfString$String = () => (IdentityMapOfString$String = dart.constFn(_js_helper.IdentityMap$(core.String, core.String)))();
const CT = Object.create(null);
var L0 = "package:dio/src/multipart_file.dart";
multipart_file_stub.multipartFileFromPath = function multipartFileFromPath(filePath, opts) {
  let filename = opts && 'filename' in opts ? opts.filename : null;
  let contentType = opts && 'contentType' in opts ? opts.contentType : null;
  return dart.throw(multipart_file_stub._err);
};
multipart_file_stub.multipartFileFromPathSync = function multipartFileFromPathSync(filePath, opts) {
  let filename = opts && 'filename' in opts ? opts.filename : null;
  let contentType = opts && 'contentType' in opts ? opts.contentType : null;
  return dart.throw(multipart_file_stub._err);
};
dart.defineLazy(multipart_file_stub, {
    /*multipart_file_stub._err*/get _err() {
    return new core.UnsupportedError.new("MultipartFile is only supported where dart:io is available.");
  }
}, true);
var _isFinalized = dart.privateName(multipart_file, "_isFinalized");
var _stream = dart.privateName(multipart_file, "_stream");
var length$ = dart.privateName(multipart_file, "MultipartFile.length");
var filename$ = dart.privateName(multipart_file, "MultipartFile.filename");
var contentType$ = dart.privateName(multipart_file, "MultipartFile.contentType");
multipart_file.MultipartFile = class MultipartFile extends core.Object {
  get length() {
    return this[length$];
  }
  set length(value) {
    super.length = value;
  }
  get filename() {
    return this[filename$];
  }
  set filename(value) {
    super.filename = value;
  }
  get contentType() {
    return this[contentType$];
  }
  set contentType(value) {
    super.contentType = value;
  }
  get isFinalized() {
    return this[_isFinalized];
  }
  static fromBytes(value, opts) {
    let filename = opts && 'filename' in opts ? opts.filename : null;
    let contentType = opts && 'contentType' in opts ? opts.contentType : null;
    let stream = StreamOfListOfint().fromIterable(JSArrayOfListOfint().of([value]));
    return new multipart_file.MultipartFile.new(stream, value[$length], { filename: filename, contentType: contentType });
  }
  static fromString(value, opts) {
    let filename = opts && 'filename' in opts ? opts.filename : null;
    let contentType = opts && 'contentType' in opts ? opts.contentType : null;
    //contentType == null ? contentType = new media_type.MediaType.new("text", "plain") : null;
    contentType == null ? contentType = "text/plain" : null;
    let encoding = utils.encodingForCharset(contentType.parameters[$_get]("charset"), convert.utf8);
    contentType = contentType.change({ parameters: new (IdentityMapOfString$String()).from(["charset", encoding.name]) });
    return multipart_file.MultipartFile.fromBytes(encoding.encode(value), { filename: filename, contentType: contentType });
  }
  static fromFile(filePath, opts) {
    let filename = opts && 'filename' in opts ? opts.filename : null;
    let contentType = opts && 'contentType' in opts ? opts.contentType : null;
    return multipart_file_stub.multipartFileFromPath(filePath, { filename: filename, contentType: contentType });
  }
  static fromFileSync(filePath, opts) {
    let filename = opts && 'filename' in opts ? opts.filename : null;
    let contentType = opts && 'contentType' in opts ? opts.contentType : null;
    return multipart_file_stub.multipartFileFromPathSync(filePath, { filename: filename, contentType: contentType });
  }
  finalize() {
    if (dart.test(this.isFinalized)) {
      dart.throw(new core.StateError.new("Can't finalize a finalized MultipartFile."));
    }
    this[_isFinalized] = true;
    return this[_stream];
  }
};
(multipart_file.MultipartFile.new = function (stream, length, opts) {
  let t0;
  let filename = opts && 'filename' in opts ? opts.filename : null;
  let contentType = opts && 'contentType' in opts ? opts.contentType : null;
  this[_isFinalized] = false;
  this[length$] = length;
  this[filename$] = filename;
  this[_stream] = stream;
  this[contentType$] = (t0 = contentType, t0 == null ? new media_type.MediaType.new("application", "octet-stream") : t0);
  ;
}).prototype = multipart_file.MultipartFile.prototype;
dart.addTypeTests(multipart_file.MultipartFile);
dart.addTypeCaches(multipart_file.MultipartFile);
dart.setMethodSignature(multipart_file.MultipartFile, () => ({
  __proto__: dart.getMethods(multipart_file.MultipartFile.__proto__),
  finalize: dart.fnType(async.Stream$(core.List$(core.int)), [])
}));
dart.setGetterSignature(multipart_file.MultipartFile, () => ({
  __proto__: dart.getGetters(multipart_file.MultipartFile.__proto__),
  isFinalized: core.bool
}));
dart.setLibraryUri(multipart_file.MultipartFile, L0);
dart.setFieldSignature(multipart_file.MultipartFile, () => ({
  __proto__: dart.getFields(multipart_file.MultipartFile.__proto__),
  length: dart.finalFieldType(core.int),
  filename: dart.finalFieldType(core.String),
  contentType: dart.finalFieldType(media_type.MediaType),
  [_stream]: dart.finalFieldType(async.Stream$(core.List$(core.int))),
  [_isFinalized]: dart.fieldType(core.bool)
}));
dart.trackLibraries("packages/dio/src/multipart_file_stub.dart", {
  "package:dio/src/multipart_file_stub.dart": multipart_file_stub,
  "package:dio/src/multipart_file.dart": multipart_file
}, {
}, '{"version":3,"sourceRoot":"","sources":["multipart_file_stub.dart","multipart_file.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;6EAOmD;QACnC;QAAoB;AAChC,sBAAM;EAAI;qFAEiC;QAC/B;QAAoB;AAChC,sBAAM;EAAI;;MATR,wBAAI;YAAG,+BACT;;;;;;;;;ICaQ;;;;;;IAGG;;;;;;IAGG;;;;;;;AAMQ;IAAY;qBAsBxB;UACH;UACG;AAEN,mBAAgB,iCAAa,yBAAC,KAAK;AACvC,YAAO,sCACL,MAAM,EACN,AAAM,KAAD,sBACK,QAAQ,eACL,WAAW;IAE5B;sBASS;UACA;UACG;AAEgC,MAA1C,AAAY,WAAD,IAAC,OAAZ,cAAgB,6BAAU,QAAQ,WAAtB;AACR,qBAAW,yBAAmB,AAAY,AAAU,WAAX,mBAAY,YAAY;AACG,MAAxE,cAAc,AAAY,WAAD,qBAAoB,yCAAC,WAAW,AAAS,QAAD;AAEjE,YAAqB,wCACnB,AAAS,QAAD,QAAQ,KAAK,cACX,QAAQ,eACL,WAAW;IAE5B;oBAWS;UACA;UACG;AAER,uDACE,QAAQ,aACE,QAAQ,eACL,WAAW;IACzB;wBAGI;UACA;UACG;AAER,2DACE,QAAQ,aACE,QAAQ,eACL,WAAW;IACzB;;AAGH,oBAAI;AAC2D,QAA7D,WAAM,wBAAW;;AAEA,MAAnB,qBAAe;AACf,YAAO;IACT;;+CAnFoB,QACb;;QACA;QACK;IAZP,qBAAe;IAUb;IACA;IAEO,gBAAE,MAAM;IACJ,sBAAc,KAAZ,WAAW,QAAX,OAAe,6BAAU,eAAe;;EAAe","file":"../../../../../../../../../../../../../packages/dio/src/multipart_file_stub.dart.lib.js"}');
// Exports:
exports.src__multipart_file = multipart_file_stub;
exports.src__multipart_file = multipart_file;


//# sourceMappingURL=multipart_file_stub.dart.lib.js.map
