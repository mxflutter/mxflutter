
'use strict';
const dart_sdk = require("dart_sdk");
const core = dart_sdk.core;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
var redirect_record = Object.create(dart.library);
const CT = Object.create(null);
var L0 = "package:dio/src/redirect_record.dart";
var statusCode$ = dart.privateName(redirect_record, "RedirectRecord.statusCode");
var method$ = dart.privateName(redirect_record, "RedirectRecord.method");
var location$ = dart.privateName(redirect_record, "RedirectRecord.location");
redirect_record.RedirectRecord = class RedirectRecord extends core.Object {
  get statusCode() {
    return this[statusCode$];
  }
  set statusCode(value) {
    super.statusCode = value;
  }
  get method() {
    return this[method$];
  }
  set method(value) {
    super.method = value;
  }
  get location() {
    return this[location$];
  }
  set location(value) {
    super.location = value;
  }
};
(redirect_record.RedirectRecord.new = function (statusCode, method, location) {
  this[statusCode$] = statusCode;
  this[method$] = method;
  this[location$] = location;
  ;
}).prototype = redirect_record.RedirectRecord.prototype;
dart.addTypeTests(redirect_record.RedirectRecord);
dart.addTypeCaches(redirect_record.RedirectRecord);
dart.setLibraryUri(redirect_record.RedirectRecord, L0);
dart.setFieldSignature(redirect_record.RedirectRecord, () => ({
  __proto__: dart.getFields(redirect_record.RedirectRecord.__proto__),
  statusCode: dart.finalFieldType(core.int),
  method: dart.finalFieldType(core.String),
  location: dart.finalFieldType(core.Uri)
}));
dart.trackLibraries("packages/dio/src/redirect_record.dart", {
  "package:dio/src/redirect_record.dart": redirect_record
}, {
}, '{"version":3,"sourceRoot":"","sources":["redirect_record.dart"],"names":[],"mappings":";;;;;;;;;;;;IAIY;;;;;;IAGG;;;;;;IAGH;;;;;;;iDATU,YAAiB,QAAa;IAA9B;IAAiB;IAAa;;EAAS","file":"../../../../../../../../../../../../../packages/dio/src/redirect_record.dart.lib.js"}');
// Exports:

exports.src__redirect_record = redirect_record;



//# sourceMappingURL=redirect_record.dart.lib.js.map
