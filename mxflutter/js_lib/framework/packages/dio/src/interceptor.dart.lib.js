//define(['dart_sdk', '/packages/dio/src/cancel_token.dart.lib.js'], function(dart_sdk, packages__dio__src__cancel_token) {

'use strict';
const dart_sdk = require("dart_sdk");
let packages__dio__src__cancel_token = require('packages/dio/src/cancel_token.dart.lib.js');
const core = dart_sdk.core;
const async = dart_sdk.async;
const _interceptors = dart_sdk._interceptors;
const collection = dart_sdk.collection;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const options = packages__dio__src__cancel_token.src__options;
const response = packages__dio__src__cancel_token.src__response;
const dio_error = packages__dio__src__cancel_token.src__dio_error;
var interceptor = Object.create(dart.library);
var $_get = dartx._get;
var $length = dartx.length;
var $add = dartx.add;
var $_set = dartx._set;
var dynamicToFutureOr = () => (dynamicToFutureOr = dart.constFn(dart.fnType(dart.dynamic, [dart.dynamic])))();
var JSArrayOfInterceptor = () => (JSArrayOfInterceptor = dart.constFn(_interceptors.JSArray$(interceptor.Interceptor)))();
const CT = Object.create(null);
var L0 = "package:dio/src/interceptor.dart";
var _lock = dart.privateName(interceptor, "_lock");
var _completer = dart.privateName(interceptor, "_completer");
interceptor.Lock = class Lock extends core.Object {
  get locked() {
    return this[_lock] != null;
  }
  lock() {
    if (!dart.test(this.locked)) {
      this[_completer] = async.Completer.new();
      this[_lock] = this[_completer].future;
    }
  }
  unlock() {
    if (dart.test(this.locked)) {
      this[_completer].complete();
      this[_lock] = null;
    }
  }
  clear(msg = "cancelled") {
    if (dart.test(this.locked)) {
      this[_completer].completeError(msg);
      this[_lock] = null;
    }
  }
  enqueue(callback) {
    if (dart.test(this.locked)) {
      return this[_lock].then(dart.dynamic, dart.fn(d => callback(), dynamicToFutureOr()));
    }
    return null;
  }
};
(interceptor.Lock.new = function () {
  this[_lock] = null;
  this[_completer] = null;
  ;
}).prototype = interceptor.Lock.prototype;
dart.addTypeTests(interceptor.Lock);
dart.addTypeCaches(interceptor.Lock);
dart.setMethodSignature(interceptor.Lock, () => ({
  __proto__: dart.getMethods(interceptor.Lock.__proto__),
  lock: dart.fnType(dart.void, []),
  unlock: dart.fnType(dart.void, []),
  clear: dart.fnType(dart.void, [], [core.String]),
  enqueue: dart.fnType(async.Future, [dart.fnType(dart.dynamic, [])])
}));
dart.setGetterSignature(interceptor.Lock, () => ({
  __proto__: dart.getGetters(interceptor.Lock.__proto__),
  locked: core.bool
}));
dart.setLibraryUri(interceptor.Lock, L0);
dart.setFieldSignature(interceptor.Lock, () => ({
  __proto__: dart.getFields(interceptor.Lock.__proto__),
  [_lock]: dart.fieldType(async.Future),
  [_completer]: dart.fieldType(async.Completer)
}));
interceptor.Interceptor = class Interceptor extends core.Object {
  onRequest(options) {
    return async.async(dart.dynamic, function* onRequest() {
      return options;
    });
  }
  onResponse(response) {
    return async.async(dart.dynamic, function* onResponse() {
      return response;
    });
  }
  onError(err) {
    return async.async(dart.dynamic, function* onError() {
      return err;
    });
  }
};
(interceptor.Interceptor.new = function () {
  ;
}).prototype = interceptor.Interceptor.prototype;
dart.addTypeTests(interceptor.Interceptor);
dart.addTypeCaches(interceptor.Interceptor);
dart.setMethodSignature(interceptor.Interceptor, () => ({
  __proto__: dart.getMethods(interceptor.Interceptor.__proto__),
  onRequest: dart.fnType(async.Future, [options.RequestOptions]),
  onResponse: dart.fnType(async.Future, [response.Response]),
  onError: dart.fnType(async.Future, [dio_error.DioError])
}));
dart.setLibraryUri(interceptor.Interceptor, L0);
var _onRequest = dart.privateName(interceptor, "_onRequest");
var _onResponse = dart.privateName(interceptor, "_onResponse");
var _onError = dart.privateName(interceptor, "_onError");
interceptor.InterceptorsWrapper = class InterceptorsWrapper extends interceptor.Interceptor {
  onRequest(options) {
    return async.async(dart.dynamic, (function* onRequest() {
      let t0;
      if (this[_onRequest] != null) {
        t0 = options;
        return this[_onRequest](t0);
      }
    }).bind(this));
  }
  onResponse(response) {
    return async.async(dart.dynamic, (function* onResponse() {
      let t0;
      if (this[_onResponse] != null) {
        t0 = response;
        return this[_onResponse](t0);
      }
    }).bind(this));
  }
  onError(err) {
    return async.async(dart.dynamic, (function* onError() {
      let t0;
      if (this[_onError] != null) {
        t0 = err;
        return this[_onError](t0);
      }
    }).bind(this));
  }
};
(interceptor.InterceptorsWrapper.new = function (opts) {
  let onRequest = opts && 'onRequest' in opts ? opts.onRequest : null;
  let onResponse = opts && 'onResponse' in opts ? opts.onResponse : null;
  let onError = opts && 'onError' in opts ? opts.onError : null;
  this[_onRequest] = onRequest;
  this[_onResponse] = onResponse;
  this[_onError] = onError;
  ;
}).prototype = interceptor.InterceptorsWrapper.prototype;
dart.addTypeTests(interceptor.InterceptorsWrapper);
dart.addTypeCaches(interceptor.InterceptorsWrapper);
dart.setLibraryUri(interceptor.InterceptorsWrapper, L0);
dart.setFieldSignature(interceptor.InterceptorsWrapper, () => ({
  __proto__: dart.getFields(interceptor.InterceptorsWrapper.__proto__),
  [_onRequest]: dart.finalFieldType(dart.fnType(dart.dynamic, [options.RequestOptions])),
  [_onResponse]: dart.finalFieldType(dart.fnType(dart.dynamic, [response.Response])),
  [_onError]: dart.finalFieldType(dart.fnType(dart.dynamic, [dio_error.DioError]))
}));
var _list = dart.privateName(interceptor, "_list");
var _requestLock = dart.privateName(interceptor, "_requestLock");
var _responseLock = dart.privateName(interceptor, "_responseLock");
var _errorLock = dart.privateName(interceptor, "_errorLock");
var length = dart.privateName(interceptor, "Interceptors.length");
interceptor.Interceptors = class Interceptors extends collection.ListMixin$(interceptor.Interceptor) {
  get length() {
    return this[length];
  }
  set length(value) {
    this[length] = value;
  }
  get requestLock() {
    return this[_requestLock];
  }
  get responseLock() {
    return this[_responseLock];
  }
  get errorLock() {
    return this[_errorLock];
  }
  _get(index) {
    return this[_list][$_get](index);
  }
  _set(index, value$) {
    let value = value$;
    interceptor.Interceptor.as(value);
    if (this[_list][$length] == index) {
      this[_list][$add](value);
    } else {
      this[_list][$_set](index, value);
    }
    return value$;
  }
};
(interceptor.Interceptors.new = function () {
  this[_list] = JSArrayOfInterceptor().of([]);
  this[_requestLock] = new interceptor.Lock.new();
  this[_responseLock] = new interceptor.Lock.new();
  this[_errorLock] = new interceptor.Lock.new();
  this[length] = 0;
  ;
}).prototype = interceptor.Interceptors.prototype;
dart.addTypeTests(interceptor.Interceptors);
dart.addTypeCaches(interceptor.Interceptors);
dart.setMethodSignature(interceptor.Interceptors, () => ({
  __proto__: dart.getMethods(interceptor.Interceptors.__proto__),
  _get: dart.fnType(interceptor.Interceptor, [core.int]),
  [$_get]: dart.fnType(interceptor.Interceptor, [core.int]),
  _set: dart.fnType(dart.void, [core.int, core.Object]),
  [$_set]: dart.fnType(dart.void, [core.int, core.Object])
}));
dart.setGetterSignature(interceptor.Interceptors, () => ({
  __proto__: dart.getGetters(interceptor.Interceptors.__proto__),
  requestLock: interceptor.Lock,
  responseLock: interceptor.Lock,
  errorLock: interceptor.Lock
}));
dart.setLibraryUri(interceptor.Interceptors, L0);
dart.setFieldSignature(interceptor.Interceptors, () => ({
  __proto__: dart.getFields(interceptor.Interceptors.__proto__),
  [_list]: dart.finalFieldType(core.List$(interceptor.Interceptor)),
  [_requestLock]: dart.finalFieldType(interceptor.Lock),
  [_responseLock]: dart.finalFieldType(interceptor.Lock),
  [_errorLock]: dart.finalFieldType(interceptor.Lock),
  length: dart.fieldType(core.int)
}));
dart.defineExtensionMethods(interceptor.Interceptors, ['_get', '_set']);
dart.defineExtensionAccessors(interceptor.Interceptors, ['length']);
dart.trackLibraries("packages/dio/src/interceptor.dart", {
  "package:dio/src/interceptor.dart": interceptor
}, {
}, '{"version":3,"sourceRoot":"","sources":["interceptor.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;AAkBqB,YAAA,AAAM,gBAAG;IAAI;;AAQ9B,qBAAK;AACqB,QAAxB,mBAAa;AACY,QAAzB,cAAQ,AAAW;;IAEvB;;AAIE,oBAAI;AACmB,QAArB,AAAW;AACC,QAAZ,cAAQ;;IAEZ;UAGmB;AACjB,oBAAI;AAC2B,QAA7B,AAAW,+BAAc,GAAG;AAChB,QAAZ,cAAQ;;IAEZ;YAO+B;AAC7B,oBAAI;AAEF,cAAO,AAAM,gCAAK,QAAC,KAAM,AAAQ,QAAA;;AAEnC,YAAO;IACT;;;IA7CO;IACG;;EA6CZ;;;;;;;;;;;;;;;;;;;;;cAiBkC;AAAhB;AAAkC,sBAAO;;;eAO9B;AAAV;AAA6B,uBAAQ;;;YAO9B;AAAV;AAAwB,kBAAG;;;;;;EAC3C;;;;;;;;;;;;;;cAgBkC;AAAhB;;AACd,YAAI,oBAAc;AAChB,eAAkB,OAAO;gBAAlB;;MAEX;;eAG2B;AAAV;;AACf,YAAI,qBAAe;AACjB,eAAmB,QAAQ;gBAApB;;MAEX;;YAGwB;AAAV;;AACZ,YAAI,kBAAY;AACd,eAAgB,GAAG;gBAAZ;;MAEX;;;;QA1B0B;QACG;QACF;IACV,mBAAE,SAAS;IACV,oBAAE,UAAU;IACf,iBAAE,OAAO;;;;;;;;;;;;;;;;;;IAqCpB;;;;;;;AAPoB;IAAY;;AAEX;IAAa;;AAEhB;IAAU;SAMJ;AAC1B,YAAO,AAAK,oBAAC,KAAK;IACpB;SAGsB;UAAO;;AAC3B,UAAI,AAAM,AAAO,wBAAG,KAAK;AACP,QAAhB,AAAM,kBAAI,KAAK;;AAEK,QAApB,AAAK,mBAAC,KAAK,EAAI,KAAK;;;IAExB;;;IA1BM,cAAqB;IAChB,qBAAe;IACf,sBAAgB;IAChB,mBAAa;IASpB,eAAS;;EAef","file":"../../../../../../../../../../../../../packages/dio/src/interceptor.dart.lib.js"}');
// Exports:
exports.src__interceptor = interceptor;

//# sourceMappingURL=interceptor.dart.lib.js.map
